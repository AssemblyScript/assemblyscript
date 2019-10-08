import { Parser } from "./mockTypes";

import { ASTBuilder } from "./sourceBuilder";
import { BaseVisitor } from "./base";
import {
  CommonFlags,
  Statement,
  FunctionDeclaration,
  NodeKind,
  Source,
  Node,
  SourceKind,
  TypeNode,
  ClassDeclaration,
  NamedTypeNode,
  DeclarationStatement,
  FieldDeclaration,
  ParameterNode
} from "./ast";
import { Transformer } from "./transformer";

export const preamble = `
import { JSONEncoder } from "assemblyscript-json";
`;

function returnsVoid(node: FunctionDeclaration): boolean {
  return toString(node.signature.returnType) === "void";
}

function numOfParameters(node: FunctionDeclaration): number {
  return node.signature.parameters.length;
}

function isComment(stmt: Statement): boolean {
  return stmt.kind == NodeKind.COMMENT;
}

function hasNearDecorator(stmt: Source): boolean {
  return stmt.text.includes("@nearfile") || isEntry(stmt);
}

function toString(node: Node): string {
  return ASTBuilder.build(node);
}

export function isEntry(source: Source | Node): boolean {
  let _source = <Source>(
    (source.kind == NodeKind.SOURCE ? source : source.range.source)
  );
  return _source.sourceKind == SourceKind.USER_ENTRY;
}

function isArrayType(type: TypeNode | ClassDeclaration): boolean {
  return !!(
    type.kind == NodeKind.NAMEDTYPE &&
    toString(type).startsWith("Array") &&
    (<NamedTypeNode>type).typeArguments &&
    (<NamedTypeNode>type).typeArguments!.length > 0
  );
}

function isClass(type: Node): boolean {
  return type.kind == NodeKind.CLASSDECLARATION;
}

function isField(mem: DeclarationStatement) {
  return mem.kind == NodeKind.FIELDDECLARATION;
}

function isReference(type: TypeNode): boolean {
  let simpleTypes = ["i32", "u32", "bool", "i64", "u64", "boolean"];
  return !simpleTypes.includes(toString(type));
}

// TODO: Extract this into separate module, preferrable pluggable
class JSONBindingsBuilder extends BaseVisitor {
  private typeMapping: { [key: string]: string } = {
    i32: "Integer",
    u32: "Integer",
    i64: "String",
    u64: "String",
    string: "String",
    bool: "Boolean",
    Uint8Array: "String"
  };

  private nonNullableTypes = ["i32", "u32", "i64", "u64", "bool", "boolean"];

  private sb: string[] = [];
  private exportedClasses: Map<string, ClassDeclaration> = new Map();
  wrappedFuncs: Set<string> = new Set();

  static build(parser: Parser, source: Source): string {
    return new JSONBindingsBuilder().build(source);
  }

  static nearFiles(parser: Parser): Source[] {
    return parser.program.sources.filter(hasNearDecorator);
  }

  visitClassDeclaration(node: ClassDeclaration): void {
    if (this.exportedClasses.has(toString(node.name))) return;
    this.exportedClasses.set(toString(node.name), node);
  }

  visitFunctionDeclaration(node: FunctionDeclaration): void {
    if (
      !isEntry(node) ||
      this.wrappedFuncs.has(toString(node.name)) ||
      !node.is(CommonFlags.EXPORT) ||
      (numOfParameters(node) == 0 && returnsVoid(node))
    ) {
      super.visitFunctionDeclaration(node);
      return;
    }
    // if (numOfParameters(node) > 0){
    //   this.generateArgsParser(node);
    // }
    this.generateWrapperFunction(node);
    // Change function to not be an export
    node.flags = node.flags ^ CommonFlags.EXPORT;
    this.wrappedFuncs.add(toString(node.name));
  }

  /*
  Create a wrapper function that will be export in the function's place.
  */
  private generateWrapperFunction(func: FunctionDeclaration) {
    let signature = func.signature;
    let params = signature.parameters;
    let returnType = signature.returnType;
    let returnTypeName = toString(returnType)
      .split("|")
      .filter(name => name.trim() !== "null")
      .join("|");
    let hasNull = toString(returnType).includes("null");
    let name = func.name.symbol;
    this.sb.push(`
//@ts-ignore
function __wrapper_${name}(): void {`);
    if (params.length > 0) {
      this.sb.push(
        ` const json = getInput();
  read_register(0, <usize>json.buffer);
  const obj: Obj = JSON.parse(json);`
      );
    }
    if (toString(returnType) !== "void") {
      this.sb.push(`  let result: ${toString(returnType)} = ${name}(`);
    } else {
      this.sb.push(`  ${name}(`);
    }
    if (params.length > 0) {
      this.sb[this.sb.length - 1] += params
        .map(param => createDecodeStatement(param))
        .join(", ");
    }
    this.sb[this.sb.length - 1] += ");";
    if (toString(returnType) !== "void") {
      this.sb.push(`
  let encoder = new JSONEncoder();
  let val: Uint8Array;
  if ((isString<${returnTypeName}>() || isNullable<${returnTypeName}>()) && result == null) {
    encoder.setNull(null);
    val = encoder.serialize();
  } else {
    val = encode<${returnTypeName}>(result${hasNull ? "!" : ""}, null, encoder);
  }
  value_return(val.byteLength, <usize>val.buffer);`);
    }
    this.sb.push(`}

export { __wrapper_${name} as ${name} }
`);
  }

  private typeName(type: TypeNode | ClassDeclaration): string {
    if (!isClass(type)) {
      return ASTBuilder.build(type);
    }
    type = <ClassDeclaration>type;
    let className = toString(type.name);
    if (type.isGeneric) {
      className += "<" + type.typeParameters!.map(toString).join(", ") + ">";
    }
    return className;
  }

  build(source: Source): string {
    this.sb = [preamble];
    this.visit(source);
    let sourceText = source.statements.map(stmt => {
      let str = ASTBuilder.build(stmt);
      if (isClass(stmt)) {
        let _class = <ClassDeclaration>stmt;
        str = str.slice(0, str.lastIndexOf("}"));
        let fields = _class.members
          .filter(isField)
          .map((field: FieldDeclaration) => field);
        if (fields.some(field => field.type == null)) {
          throw new Error("All Fields must have explict type declaration.");
        }
        let className = this.typeName(_class);
        str += `

  decode<V = Uint8Array>(buf: V): ${className} {
    let json: Obj;
    if (buf instanceof Uint8Array) {
      json = JSON.parse(buf);
    }else {
      assert(buf instanceof Obj, "argument must be Uint8Array or Json Object");
      json = <Obj> buf;
    }
    return this._decode(json);
  }

  private _decode(obj: Obj): ${className} {
    ${createDecodeStatements(_class).join("\n    ")}
    return this;
  }

  _encode(name: string | null = "", _encoder: JSONEncoder | null = null): JSONEncoder {
    let encoder = (_encoder != null ? _encoder : new JSONEncoder())!;
    encoder.pushObject(name);
    ${createEncodeStatements(_class).join("\n    ")}
    encoder.popObject();
    return encoder;
  }
  encode(): Uint8Array {
    return this._encode().serialize();
  }

  serialize(): Uint8Array {
    return this.encode();
  }

  toJSON(): string {
    return this._encode().toString();
  }
}`;
      }
      return str;
    });

    return this.sb.concat(sourceText).join("\n");
  }
}

function createDecodeStatements(_class: ClassDeclaration): string[] {
  return _class.members
    .filter(isField)
    .map((field: FieldDeclaration): string => {
      const name = toString(field.name);
      return (
        createDecodeStatement(field, `this.${name} = obj.has("${name}") ? `) +
        `: this.${name};`
      );
    });
}

function createDecodeStatement(
  field: FieldDeclaration | ParameterNode,
  setterPrefix: string = ""
): string {
  let T = toString(field.type!);
  let name = toString(field.name);
  return `${setterPrefix}decode<${T}, Obj>(obj, "${name}")`;
}

function createEncodeStatements(_class: ClassDeclaration): string[] {
  return _class.members
    .filter(isField)
    .map((field: FieldDeclaration): string => {
      let T = toString(field.type!);
      let name = toString(field.name);
      return `encode<${T}, JSONEncoder>(this.${name}, "${name}", encoder);`;
    });
}
// TODO: Make work for non-simple generics e.g. field: Array<T>
function isGeneric(_class: ClassDeclaration, field: FieldDeclaration): boolean {
  if (_class.typeParameters == null) {
    return false;
  }
  return _class.typeParameters.some(
    param => toString(param.name) == toString(field.type!)
  );
}

export class JSONTransformer extends Transformer {
  afterParse(): void {
    const parser = this.parser;
    const writeFile = this.writeFile;
    let files = JSONBindingsBuilder.nearFiles(parser);
    files.forEach(source => {
      let writeOut = source.text
        .substr(0, source.text.indexOf("\n"))
        .includes("out");
      // Remove from logs in parser
      parser.donelog.delete(source.internalPath);
      parser.seenlog.delete(source.internalPath);
      // Remove from programs sources
      parser.program.sources = parser.program.sources.filter(
        (_source: Source) => _source !== source
      );
      // Build new Source
      let sourceText = JSONBindingsBuilder.build(parser, source);
      console.log(sourceText);
      if (writeOut) {
        writeFile("out/" + source.normalizedPath, sourceText, baseDir);
      }
      // Parses file and any new imports added to the source
      parser.parseFile(
        sourceText,
        (isEntry(source) ? "" : "./") + source.normalizedPath,
        isEntry(source)
      );
    });
  }
}
