/**
 * Definition builders for WebIDL and TypeScript.
 * @module definitions
 *//***/

 import {
  CommonFlags
} from "./common";

import {
  Program,
  Element,
  ElementKind,
  Global,
  Enum,
  EnumValue,
  Field,
  Function,
  FunctionPrototype,
  Class,
  ClassPrototype,
  Namespace,
  ConstantValueKind,
  Interface,
  Property,
  PropertyPrototype,
  File
} from "./program";

import {
  Type,
  TypeKind
} from "./types";

import {
  indent
} from "./util";
import { Source, NodeKind, ImportStatement, DeclarationStatement, ExportStatement, Range } from "./ast";

/** Walker base class. */
abstract class ExportsWalker {

  /** Program reference. */
  program: Program;
  /** Whether to include private members */
  includePrivate: bool;
  /** Already seen elements. */
  seen: Map<Element,string> = new Map();

  /** Constructs a new Element walker. */
  constructor(program: Program, includePrivate: bool = false) {
    this.program = program;
    this.includePrivate;
  }

  /** Walks all elements and calls the respective handlers. */
  walk(): void {
    for (let file of this.program.filesByName.values()) {
      if (file.source.isEntry) this.visitFile(file);
    }
  }

  /** Visits all exported elements of a file. */
  visitFile(file: File): void {
    var members = file.exports;
    if (members) {
      for (let [name, member] of members) this.visitElement(name, member);
    }
    var exportsStar = file.exportsStar;
    if (exportsStar) {
      for (let exportStar of exportsStar) this.visitFile(exportStar);
    }
  }

  /** Visits an element.*/
  visitElement(name: string, element: Element): void {
    if (element.is(CommonFlags.PRIVATE) && !this.includePrivate) return;
    var seen = this.seen;
    if (seen.has(element)) {
      this.visitAlias(name, element, <string>seen.get(element));
      return;
    }
    seen.set(element, name);
    switch (element.kind) {
      case ElementKind.GLOBAL: {
        if (element.is(CommonFlags.COMPILED)) this.visitGlobal(name, <Global>element);
        break;
      }
      case ElementKind.ENUM: {
        if (element.is(CommonFlags.COMPILED)) this.visitEnum(name, <Enum>element);
        break;
      }
      case ElementKind.FUNCTION_PROTOTYPE: {
        this.visitFunctionInstances(name, <FunctionPrototype>element);
        break;
      }
      case ElementKind.CLASS_PROTOTYPE: {
        this.visitClassInstances(name, <ClassPrototype>element);
        break;
      }
      case ElementKind.FIELD: {
        if ((<Field>element).is(CommonFlags.COMPILED)) this.visitField(name, <Field>element);
        break;
      }
      case ElementKind.PROPERTY_PROTOTYPE: {
        this.visitPropertyInstances(name, <PropertyPrototype>element);
        break;
      }
      case ElementKind.PROPERTY: {
        let prop = <Property>element;
        let getter = prop.getterInstance;
        if (getter) this.visitFunction(name, getter);
        let setter = prop.setterInstance;
        if (setter) this.visitFunction(name, setter);
        break;
      }
      case ElementKind.NAMESPACE: {
        if (hasCompiledMember(element)) this.visitNamespace(name, element);
        break;
      }
      case ElementKind.TYPEDEFINITION: break;
      default: assert(false);
    }
  }

  private visitFunctionInstances(name: string, element: FunctionPrototype): void {
    var instances = element.instances;
    if (instances) {
      for (let instance of instances.values()) {
        if (instance.is(CommonFlags.COMPILED)) this.visitFunction(name, <Function>instance);
      }
    }
  }

  private visitClassInstances(name: string, element: ClassPrototype): void {
    var instances = element.instances;
    if (instances) {
      for (let instance of instances.values()) {
        if (instance.is(CommonFlags.COMPILED)) this.visitClass(name, <Class>instance);
      }
    }
  }

  private visitPropertyInstances(name: string, element: PropertyPrototype): void {
    // var instances = element.instances;
    // if (instances) {
    //   for (let instance of instances.values()) {
    //     if (instance.is(CommonFlags.COMPILED)) this.visitProperty(<Property>instance);
    //   }
    // }
    assert(false);
  }

  abstract visitGlobal(name: string, element: Global): void;
  abstract visitEnum(name: string, element: Enum): void;
  abstract visitFunction(name: string, element: Function): void;
  abstract visitClass(name: string, element: Class): void;
  abstract visitInterface(name: string, element: Interface): void;
  abstract visitField(name: string, element: Field): void;
  abstract visitNamespace(name: string, element: Element): void;
  abstract visitAlias(name: string, element: Element, originalName: string): void;
}

// TODO: Extract this into separate module, preferrable pluggable
export class NEARBindingsBuilder extends ExportsWalker {
  private typeMapping: { [key: string]: string } = {
    "i32": "Integer",
    "u32": "Integer",
    "i64": "String",
    "u64": "String",
    "String": "String",
    "bool": "Boolean",
    "Uint8Array": "String"
  };

  private nonNullableTypes = ["i32", "u32", "i64", "u64", "bool"];

  private sb: string[] = [];
  private generatedEncodeFunctions = new Set<string>();
  private generatedDecodeFunctions = new Set<string>();
  private exportedClasses: Class[] = [];
  private exportedFunctions: Function[] = [];
  classInjections = new Map<string, string>();
  classRanges = new Map<string, Range>();

  static build(program: Program): string {
    return new NEARBindingsBuilder(program).build();
  }

  visitGlobal(element: Global): void {
    // Do nothing
  }

  visitEnum(element: Enum): void {
    // Do nothing
  }

  visitClass(element: Class): void {
    this.classRanges.set(element.name, element.declaration.range);
    if (!element.is(CommonFlags.MODULE_EXPORT)) {
      return;
    }
    this.exportedClasses.push(element);
  }

  visitFunction(element: Function): void {
    if (!element.is(CommonFlags.MODULE_EXPORT)) {
      return;
    }
    this.generateArgsParser(element);
    this.generateWrapperFunction(element);
    this.exportedFunctions.push(element);
  }

  visitInterface(element: Interface): void {
    // Do nothing
  }

  visitField(element: Field): void {
    throw new Error("Shouldn't be called");
  }

  visitNamespace(element: Element): void {
    // Do nothing
  }

  private generateArgsParser(element: Function) {
    let signature = element.signature;
    let fields = signature.parameterNames ? signature.parameterNames.map((paramName, i) => {
      return { name: paramName, type: signature.parameterTypes[i] };
    }) : [];
    fields.forEach(field => this.generateDecodeFunction(field.type));
    this.sb.push(`export class __near_ArgsParser_${element.name} extends ThrowingJSONHandler {
        buffer: Uint8Array;
        decoder: JSONDecoder<__near_ArgsParser_${element.name}>;
        handledRoot: boolean = false;
      `);
    if (signature.parameterNames) {
      fields.forEach((field) => {
        this.sb.push(`__near_param_${field.name}: ${this.typeName(field.type)};`);
      });
      this.generateHandlerMethods("this.__near_param_", fields);
    } else {
      this.generateHandlerMethods("this.__near_param_", []);
    }
    this.sb.push(`}`);
  }

  private generateWrapperFunction(element: Function) {
    let signature = element.signature;
    let returnType = signature.returnType;
    this.generateEncodeFunction(returnType);
    this.sb.push(`export function ${element.name}(): void {
      // Reading input bytes.
      let json = storage._internalReadBytes(4, 0, 0);
      let handler = new __near_ArgsParser_${element.name}();
      handler.buffer = json;
      handler.decoder = new JSONDecoder<__near_ArgsParser_${element.name}>(handler);
      handler.decoder.deserialize(json);`);
    if (returnType != Type.void) {
      this.sb.push(`let result = wrapped_${element.name}(`);
    } else {
      this.sb.push(`wrapped_${element.name}(`);
    }
    if (signature.parameterNames) {
      this.sb.push(signature.parameterNames.map(paramName => `handler.__near_param_${paramName}`).join(","));
    }
    this.sb.push(");");
    if (returnType != Type.void) {
      this.sb.push(`
        let encoder = new JSONEncoder();
      `);
      this.generateFieldEncoder(returnType, "null", "result");
      this.sb.push(`
        let val = encoder.serialize();
        return_value(val.byteLength, val.buffer.data);
      `);
    }
    this.sb.push(`}`);
  }

  private generateHandlerMethods(valuePrefix: string, fields: any[]) : void {
    let fieldsWithTypes = (types: string[]): any[] =>
      fields.filter(field => types.indexOf(this.typeName(field.type)) != -1);

    this.generateBasicSetterHandlers(valuePrefix, "Integer", "i64", fieldsWithTypes(["i32", "u32"]));
    this.generateBasicSetterHandlers(valuePrefix, "String", "String", fieldsWithTypes(["String", "i64", "u64", "Uint8Array"]));
    this.generateBasicSetterHandlers(valuePrefix, "Boolean", "bool", fieldsWithTypes(["bool"]));

    this.sb.push("setNull(name: string): void {");
    fields.forEach((field) => {
      this.sb.push(`if (name == "${field.name}") {
        ${valuePrefix}${field.name} = <${this.typeName(field.type)}>null;
        return;
      }`);
    });
    this.sb.push(`
      super.setNull(name);
    }`);

    let nonBasicFields = fields.filter(field => field.type.classReference);
    this.sb.push(`
      pushObject(name: string): bool {`);
    this.sb.push(`if (!this.handledRoot) {
      assert(name == null);
      this.handledRoot = true;
      return true;
    } else {
      assert(name != null);
    }`);
    this.generatePushHandler(valuePrefix, nonBasicFields.filter(field => !this.isArrayType(field.type)));
    this.sb.push(`
        return super.pushObject(name);
      }`);
    this.sb.push(`
      pushArray(name: string): bool {`);
    this.generatePushHandler(valuePrefix, nonBasicFields.filter(field => this.isArrayType(field.type)));
    this.sb.push(`
        return super.pushArray(name);
      }`);
  }

  private generateBasicSetterHandlers(valuePrefix: string, setterType: string, setterValueType: string, matchingFields: any[]) {
    if (matchingFields.length > 0) {
      this.sb.push(`set${setterType}(name: string, value: ${setterValueType}): void {`);
      matchingFields.forEach(field => {
        let fieldTypeName = this.typeName(field.type);
        if (setterType == "String" && fieldTypeName != "String") {
          if (fieldTypeName == "Uint8Array") {
            this.sb.push(`if (name == "${field.name}") {
              ${valuePrefix}${field.name} = base64.decode(value);
              return; 
            }`);
          } else {
            let className = field.type == "u64" ? "U64" : "I64";
            this.sb.push(`if (name == "${field.name}") {
              ${valuePrefix}${field.name} = ${className}.parseInt(value);
              return;
            }`);
          }
        } else {
          this.sb.push(`if (name == "${field.name}") {
            ${valuePrefix}${field.name} = <${fieldTypeName}>value;
            return;
          }`);
        }
      });
      this.sb.push(`
        super.set${setterType}(name, value);
      }`);
    }
  }

  private generatePushHandler(valuePrefix: string, fields: any[]) {
    fields.forEach((field) => {
      if (!(this.typeName(field.type) in this.typeMapping)) {
        this.sb.push(`if (name == "${field.name}") {
          ${valuePrefix}${field.name} = __near_decode_${this.encodeType(field.type)}(this.buffer, this.decoder.state);
          return false;
        }`);
      }
    });
  }

  private generateArrayHandlerMethods(valuePrefix: string, fieldType: Type) : void {
    let fieldTypeName = this.typeName(fieldType);
    let setterTypeName = this.typeMapping[fieldTypeName];
    if (setterTypeName) {
      if (fieldTypeName == "u64" || fieldTypeName == "i64") {
        let className = fieldTypeName == "u64" ? "U64" : "I64";
        this.sb.push(`setString(name: string, value: string): void {
          ${valuePrefix}.push(${className}.parseInt(value));
        }`);
      } else {
        let valueType = fieldTypeName;
        if (valueType == "u32" || valueType == "i32") {
          valueType = "i64";
        }
        this.sb.push(`set${setterTypeName}(name: string, value: ${valueType}): void {
          ${valuePrefix}.push(<${fieldTypeName}>value);
        }`);
      }
      this.sb.push(`setNull(name: string): void {
        ${valuePrefix}.push(<${fieldTypeName}>null);
      }
      pushArray(name: string): bool {
        assert(name == null && !this.handledRoot);
        this.handledRoot = true;
        return true;
      }`);
    } else {
      this.sb.push(`pushObject(name: string): bool {
        ${valuePrefix}.push(__near_decode_${this.encodeType(fieldType)}(this.buffer, this.decoder.state));
        return false;
      }
      pushArray(name: string): bool {
        assert(name == null);
        if (!this.handledRoot) {
          this.handledRoot = true;
          return true;
        }
        ${valuePrefix}.push(__near_decode_${this.encodeType(fieldType)}(this.buffer, this.decoder.state));
        return false;
      }`);
    }
  }


  private generateEncodeFunction(type: Type) {
    if (!type.classReference) {
      return;
    }

    let encodedTypeName = this.encodeType(type);
    if (this.generatedEncodeFunctions.has(encodedTypeName) || encodedTypeName in this.typeMapping) {
      return;
    }
    this.generatedEncodeFunctions.add(encodedTypeName);

    let methodName = `__near_encode_${encodedTypeName}`;
    if (this.tryUsingImport(type, methodName)) {
      return;
    }

    let typeName = this.typeName(type);
    if (this.isArrayType(type)) {
      // Array
      this.generateEncodeFunction(type.classReference.typeArguments![0]);

      this.sb.push(`export function __near_encode_${encodedTypeName}(
          value: ${typeName},
          encoder: JSONEncoder): void {`);
      this.sb.push(`for (let i = 0; i < value.length; i++) {`);
      this.generateFieldEncoder(type.classReference.typeArguments![0], "null", "value[i]");
      this.sb.push("}");

    } else {
      // Object
      this.getFields(type.classReference).forEach(field => {
        this.generateEncodeFunction(field.type);
      });

      this.sb.push(`export function __near_encode_${encodedTypeName}(
          value: ${typeName},
          encoder: JSONEncoder): void {`);
      this.getFields(type.classReference).forEach(field => {
        let fieldType = field.type;
        let fieldName = field.name;
        let sourceExpr = `value.${fieldName}`;
        this.generateFieldEncoder(fieldType, `"${fieldName}"`, sourceExpr);
      });
    }

    this.sb.push("}");
    let className = this.typeName(type);

    let injections = `
        static decode(json: Uint8Array): ${className} {
          let value = new ${className}();
          value.decode(json);
          return value;
        }

        decode(json: Uint8Array): ${className} {
          __near_decode_${typeName}(json, null, this);
          return this;
        }

        private _encoder(): JSONEncoder {
          let encoder: JSONEncoder = new JSONEncoder();
          encoder.pushObject(null);
          __near_encode_${typeName}(this, encoder);
          encoder.popObject();
          return encoder;
        }

        encode(): Uint8Array {
          return this._encoder().serialize();
        }

        toString(): string {
          return this._encoder().toString();
        }
      `;
    this.classInjections.set(type.classReference.name, injections);
  }

  private tryUsingImport(type: Type, methodName: string): bool {
    let sourcesWithExport = this.program.sources.filter(source =>
      this.getExports(source).filter(d => d.name.text == methodName).length > 0);

    if (sourcesWithExport.length == 0) {
      return false;
    }

    if (sourcesWithExport.length > 1) {
      console.log(`WARN: more than one file exporting ${methodName}: ${sourcesWithExport.map(s => s.normalizedPath)}`);
    }

    let importPath = sourcesWithExport[0].normalizedPath.replace('.ts', '');
    this.sb.push(`import { ${methodName} } from "./${importPath}";`);
    return true;
  }

  private generateHandler(type: Type) {
    let typeName = this.encodeType(type);
    this.sb.push(`export class __near_JSONHandler_${typeName} extends ThrowingJSONHandler {
      buffer: Uint8Array;
      decoder: JSONDecoder<__near_JSONHandler_${typeName}>;
      handledRoot: boolean = false;
      value: ${this.typeName(type)};
      
      constructor(value_: ${this.typeName(type)}) {
        super();
        this.value = value_;
      }
    `);
    if (this.isArrayType(type)) {
      this.generateArrayHandlerMethods("this.value", type.classReference!.typeArguments![0]);
    } else {
      this.generateHandlerMethods("this.value.", this.getFields(type.classReference!));
    }
    this.sb.push("}\n");
  }

  private encodeType(type: Type) : string {
    return (<any>this.typeName(type))
      .replace(/_/g, '__')
      .replace(/>/g, '')
      .replace(/</g, '_');
  }

  private typeName(type: Type): string {
    if (!type.classReference) {
      return type.toString();
    }
    let cls = type.classReference;
    if (cls.typeArguments && cls.typeArguments.length > 0) {
      return cls.prototype.name + "<" +
        cls.typeArguments.map(argType => this.typeName(argType)).join(", ") +
        ">"
    }
    return cls.prototype.name;
  }

  private generateDecodeFunction(type: Type) {
    if (!type.classReference) {
      return;
    }

    let encodedTypeName = this.encodeType(type);
    if (this.generatedDecodeFunctions.has(encodedTypeName) || encodedTypeName in this.typeMapping) {
      return;
    }
    this.generatedDecodeFunctions.add(encodedTypeName);

    let methodName = `__near_decode_${encodedTypeName}`;
    if (this.tryUsingImport(type, methodName)) {
      return;
    }

    this.generateHandler(type);
    if (this.isArrayType(type)) {
      // Array
      this.generateDecodeFunction(type.classReference.typeArguments![0]);
    } else {
      // Object
      this.getFields(type.classReference).forEach(field => {
        this.generateDecodeFunction(field.type);
      });
    }

    let typeName = this.typeName(type);
    this.sb.push(`export function __near_decode_${encodedTypeName}(
        buffer: Uint8Array, state: DecoderState, value: ${typeName} = null):${typeName} {
      if (value == null) {
        value = new ${typeName}();
      }
      let handler = new __near_JSONHandler_${encodedTypeName}(value);
      handler.buffer = buffer;
      handler.decoder = new JSONDecoder<__near_JSONHandler_${encodedTypeName}>(handler);
      handler.decoder.deserialize(buffer, state);
      return value;
    }\n`);
  }

  private generateFieldEncoder(fieldType: Type, fieldExpr: string, sourceExpr: string) {
    let fieldTypeName = this.typeName(fieldType);
    let setterType = this.typeMapping[fieldTypeName];
    if (!setterType) {
      // Object / array
      let pushType = this.isArrayType(fieldType) ? "Array" : "Object";
      this.sb.push(`if (${sourceExpr} != null) {
          encoder.push${pushType}(${fieldExpr});
          __near_encode_${this.encodeType(fieldType)}(${sourceExpr}, encoder);
          encoder.pop${pushType}();
        } else {
          encoder.setNull(${fieldExpr});
        }`);
    } else {
      // Basic types
      if (this.nonNullableTypes.indexOf(fieldTypeName) != -1) {
        if (["i64", "u64"].indexOf(fieldTypeName) != -1) {
          this.sb.push(`encoder.set${setterType}(${fieldExpr}, ${sourceExpr}.toString());`);
        } else {
          this.sb.push(`encoder.set${setterType}(${fieldExpr}, ${sourceExpr});`);
        }
      } else if (fieldTypeName == "Uint8Array") {
        this.sb.push(`if (${sourceExpr} != null) {
            encoder.setString(${fieldExpr}, base64.encode(${sourceExpr}));
          } else {
            encoder.setNull(${fieldExpr});
          };`);
      } else {
        this.sb.push(`if (${sourceExpr} != null) {
            encoder.set${setterType}(${fieldExpr}, ${sourceExpr});
          } else {
            encoder.setNull(${fieldExpr});
          }`);
      }
    }
  }

  private isArrayType(type: Type): bool {
    return !!(type.classReference && type.classReference.prototype.name == "Array" && type.classReference.typeArguments);
  }

  private getFields(element: Class): Field[] {
    if (!element.members) {
      return [];
    }

    return <Field[]>[...element.members.values()].filter(member => member instanceof Field);
  }

  build(): string {
    let mainSource = this.program.sources
      .filter(s => s.isEntry)[0];
    this.copyImports(mainSource);

    this.walk();

    this.exportedClasses.forEach(c => {
      this.generateEncodeFunction(c.type);
      this.generateDecodeFunction(c.type);
    });

    let allExported = (<Element[]>this.exportedClasses).concat(<Element[]>this.exportedFunctions).filter(e => e.is(CommonFlags.MODULE_EXPORT));
    let allImportsStr = allExported.map(c => `${c.name} as wrapped_${c.name}`).join(", ");

    this.sb = [`
      import { storage, near, base64 } from "./near";
      import { JSONEncoder } from "./json/encoder";
      import { JSONDecoder, ThrowingJSONHandler, DecoderState } from "./json/decoder";
      import {${allImportsStr}} from "./${mainSource.normalizedPath.replace(".ts", "")}";
      
      // Runtime functions
      @external("env", "return_value")
      declare function return_value(value_len: usize, value_ptr: usize): void;
    `].concat(this.sb);

    for (let [key, value] of this.classRanges) {
      let injections = this.classInjections.get(key);
      if (injections) {
        let str = value.toString();
        let bracketIndex = str.lastIndexOf("}");
        let classText = str.substring(0, bracketIndex) + `\n${injections}\n}`;
        this.sb.push(classText);
      }
    }

    return this.sb.join("\n");
  }

  private copyImports(mainSource: Source): any {
    this.getImports(mainSource).forEach(statement => {
      if (statement.declarations) {
        let declarationsStr = statement.declarations!
          .map(declaration => `${declaration.foreignName.text} as ${declaration.name.text}`)
          .join(",");
        this.sb.push(`import {${declarationsStr}} from "${statement.path.value}";`);
      }
    });
  }

  private getImports(source: Source): ImportStatement[] {
    return <ImportStatement[]>source.statements
      .filter(statement => statement.kind == NodeKind.IMPORT);
  }

  private getExports(source: Source): DeclarationStatement[] {
    let declarations = <DeclarationStatement[]>source.statements
      .filter(statement =>
        statement.kind == NodeKind.FUNCTIONDECLARATION ||
        statement.kind == NodeKind.CLASSDECLARATION);
    return declarations.filter(d => d.is(CommonFlags.EXPORT));
  }
}

/** A WebIDL definitions builder. */
export class IDLBuilder extends ExportsWalker {

  /** Builds WebIDL definitions for the specified program. */
  static build(program: Program): string {
    return new IDLBuilder(program).build();
  }

  private sb: string[] = [];
  private indentLevel: i32 = 0;

  /** Constructs a new WebIDL builder. */
  constructor(program: Program, includePrivate: bool = false) {
    super(program, includePrivate);
  }

  visitGlobal(name: string, element: Global): void {
    var sb = this.sb;
    var isConst = element.is(CommonFlags.INLINED);
    indent(sb, this.indentLevel);
    if (isConst) sb.push("const ");
    sb.push(this.typeToString(element.type));
    sb.push(" ");
    sb.push(name);
    if (isConst) {
      switch (element.constantValueKind) {
        case ConstantValueKind.INTEGER: {
          sb.push(" = ");
          sb.push(i64_to_string(element.constantIntegerValue));
          break;
        }
        case ConstantValueKind.FLOAT: {
          sb.push(" = ");
          sb.push(element.constantFloatValue.toString());
          break;
        }
        default: assert(false);
      }
    }
    sb.push(";\n");
  }

  visitEnum(name: string, element: Enum): void {
    var sb = this.sb;
    indent(sb, this.indentLevel++);
    sb.push("interface ");
    sb.push(name);
    sb.push(" {\n");
    var members = element.members;
    if (members) {
      for (let [name, member] of members) {
        if (member.kind == ElementKind.ENUMVALUE) {
          let isConst = (<EnumValue>member).is(CommonFlags.INLINED);
          indent(sb, this.indentLevel);
          if (isConst) sb.push("const ");
          else sb.push("readonly ");
          sb.push("unsigned long ");
          sb.push(name);
          if (isConst) {
            sb.push(" = ");
            assert((<EnumValue>member).constantValueKind == ConstantValueKind.INTEGER);
            sb.push(i64_low((<EnumValue>member).constantIntegerValue).toString(10));
          }
          sb.push(";\n");
        }
      }
      for (let member of members.values()) {
        if (member.kind != ElementKind.ENUMVALUE) this.visitElement(member.name, member);
      }
    }
    indent(sb, --this.indentLevel);
    sb.push("}\n");
  }

  visitFunction(name: string, element: Function): void {
    var sb = this.sb;
    var signature = element.signature;
    indent(sb, this.indentLevel);
    sb.push(this.typeToString(signature.returnType));
    sb.push(" ");
    sb.push(name);
    sb.push("(");
    var parameters = signature.parameterTypes;
    var numParameters = parameters.length;
    // var requiredParameters = signature.requiredParameters;
    for (let i = 0; i < numParameters; ++i) {
      if (i) sb.push(", ");
      // if (i >= requiredParameters) sb.push("optional ");
      sb.push(this.typeToString(parameters[i]));
      sb.push(" ");
      sb.push(signature.getParameterName(i));
    }
    sb.push(");\n");
    var members = element.members;
    if (members && members.size) {
      indent(sb, this.indentLevel);
      sb.push("interface ");
      sb.push(element.name);
      sb.push(" {\n");
      for (let member of members.values()) this.visitElement(member.name, member);
      indent(sb, --this.indentLevel);
      sb.push("}\n");
    }
  }

  visitClass(name: string, element: Class): void {
    var sb = this.sb;
    indent(sb, this.indentLevel++);
    sb.push("interface ");
    sb.push(name);
    sb.push(" {\n");
    // TODO
    indent(sb, --this.indentLevel);
    sb.push("}\n");
  }

  visitInterface(name: string, element: Interface): void {
    this.visitClass(name, element);
  }

  visitField(name: string, element: Field): void {
    // TODO
  }

  visitNamespace(name: string, element: Namespace): void {
    var sb = this.sb;
    indent(sb, this.indentLevel++);
    sb.push("interface ");
    sb.push(name);
    sb.push(" {\n");
    var members = element.members;
    if (members) {
      for (let member of members.values()) this.visitElement(member.name, member);
    }
    indent(sb, --this.indentLevel);
    sb.push("}\n");
  }

  visitAlias(name: string, element: Element, originalName: string): void {
    // TODO
  }

  typeToString(type: Type): string {
    switch (type.kind) {
      case TypeKind.I8: return "byte";
      case TypeKind.I16: return "short";
      case TypeKind.I32: return "long";
      case TypeKind.I64: return "long long";
      case TypeKind.ISIZE: return this.program.options.isWasm64 ? "long long" : "long";
      case TypeKind.U8: return "octet";
      case TypeKind.U16: return "unsigned short";
      case TypeKind.U32: return "unsigned long";
        // ^ TODO: function types
      case TypeKind.U64: return "unsigned long long";
      case TypeKind.USIZE: return this.program.options.isWasm64 ? "unsigned long long" : "unsigned long";
        // ^ TODO: class types
      case TypeKind.BOOL: return "boolean";
      case TypeKind.F32: return "unrestricted float";
      case TypeKind.F64: return "unrestricted double";
      case TypeKind.VOID: return "void";
      default: {
        assert(false);
        return "";
      }
    }
  }

  build(): string {
    var sb = this.sb;
    sb.push("interface ASModule {\n");
    ++this.indentLevel;
    this.walk();
    --this.indentLevel;
    sb.push("}\n");
    return sb.join("");
  }
}

/** A TypeScript definitions builder. */
export class TSDBuilder extends ExportsWalker {

  /** Builds TypeScript definitions for the specified program. */
  static build(program: Program): string {
    return new TSDBuilder(program).build();
  }

  private sb: string[] = [];
  private indentLevel: i32 = 0;
  private unknown: Set<string> = new Set();

  /** Constructs a new WebIDL builder. */
  constructor(program: Program, includePrivate: bool = false) {
    super(program, includePrivate);
  }

  visitGlobal(name: string, element: Global): void {
    var sb = this.sb;
    var isConst = element.is(CommonFlags.INLINED);
    indent(sb, this.indentLevel);
    if (element.is(CommonFlags.STATIC)) {
      if (isConst) sb.push("static readonly ");
      else sb.push("static ");
    } else {
      if (isConst) sb.push("export const ");
      else sb.push("export var ");
    }
    sb.push(name);
    sb.push(": ");
    sb.push(this.typeToString(element.type));
    sb.push(";\n");
    this.visitNamespace(name, element);
  }

  visitEnum(name: string, element: Enum): void {
    var sb = this.sb;
    indent(sb, this.indentLevel++);
    sb.push("export enum ");
    sb.push(name);
    sb.push(" {\n");
    var members = element.members;
    if (members) {
      let numMembers = members.size;
      for (let [name, member] of members) {
        if (member.kind == ElementKind.ENUMVALUE) {
          indent(sb, this.indentLevel);
          sb.push(name);
          if (member.is(CommonFlags.INLINED)) {
            sb.push(" = ");
            assert((<EnumValue>member).constantValueKind == ConstantValueKind.INTEGER);
            sb.push(i64_low((<EnumValue>member).constantIntegerValue).toString(10));
          }
          sb.push(",\n");
          --numMembers;
        }
      }
      if (numMembers) this.visitNamespace(name, element);
    }
    indent(sb, --this.indentLevel);
    sb.push("}\n");
  }

  visitFunction(name: string, element: Function): void {
    if (element.isAny(CommonFlags.PRIVATE | CommonFlags.SET)) return;
    var sb = this.sb;
    var signature = element.signature;
    indent(sb, this.indentLevel);
    if (element.is(CommonFlags.PROTECTED)) sb.push("protected ");
    if (element.is(CommonFlags.STATIC)) sb.push("static ");
    if (element.is(CommonFlags.GET)) {
      sb.push("get ");
      sb.push(name); // 'get:funcName' internally
      sb.push("(): ");
      sb.push(this.typeToString(signature.returnType));
      sb.push(";\n");
      return;
    } else {
      if (!element.isAny(CommonFlags.STATIC | CommonFlags.INSTANCE)) sb.push("export function ");
      sb.push(name);
    }
    sb.push("(");
    var parameters = signature.parameterTypes;
    var numParameters = parameters.length;
    // var requiredParameters = signature.requiredParameters;
    for (let i = 0; i < numParameters; ++i) {
      if (i) sb.push(", ");
      // if (i >= requiredParameters) sb.push("optional ");
      sb.push(signature.getParameterName(i));
      sb.push(": ");
      sb.push(this.typeToString(parameters[i]));
    }
    if (element.isAny(CommonFlags.CONSTRUCTOR | CommonFlags.SET)) {
      sb.push(")");
    } else {
      sb.push("): ");
      sb.push(this.typeToString(signature.returnType));
    }
    sb.push(";\n");
    this.visitNamespace(name, element);
  }

  visitClass(name: string, element: Class): void {
    var sb = this.sb;
    var isInterface = element.kind == ElementKind.INTERFACE;
    indent(sb, this.indentLevel++);
    if (isInterface) {
      sb.push("export interface ");
    } else {
      if (element.is(CommonFlags.ABSTRACT)) sb.push("abstract ");
      sb.push("export class ");
    }
    sb.push(name);
    // var base = element.base;
    // if (base && base.is(CommonFlags.COMPILED | CommonFlags.MODULE_EXPORT)) {
    //   sb.push(" extends ");
    //   sb.push(base.name); // TODO: fqn
    // }
    sb.push(" {\n");
    var staticMembers = element.prototype.members;
    if (staticMembers) {
      for (let member of staticMembers.values()) this.visitElement(member.name, member);
    }
    var instanceMembers = element.members;
    if (instanceMembers) {
      for (let member of instanceMembers.values()) this.visitElement(member.name, member);
    }
    indent(sb, --this.indentLevel);
    sb.push("}\n");
  }

  visitInterface(name: string, element: Interface): void {
    this.visitClass(name, element);
  }

  visitField(name: string, element: Field): void {
    if (element.is(CommonFlags.PRIVATE)) return;
    var sb = this.sb;
    indent(sb, this.indentLevel);
    if (element.is(CommonFlags.PROTECTED)) sb.push("protected ");
    if (element.is(CommonFlags.STATIC)) sb.push("static ");
    if (element.is(CommonFlags.READONLY)) sb.push("readonly ");
    sb.push(name);
    sb.push(": ");
    sb.push(this.typeToString(element.type));
    sb.push(";\n");
  }

  visitNamespace(name: string, element: Element): void {
    var members = element.members;
    if (members && members.size) {
      let sb = this.sb;
      indent(sb, this.indentLevel++);
      sb.push("export namespace ");
      sb.push(name);
      sb.push(" {\n");
      for (let member of members.values()) this.visitElement(member.name, member);
      indent(sb, --this.indentLevel);
      sb.push("}\n");
    }
  }

  visitAlias(name: string, element: Element, originalName: string): void {
    var sb = this.sb;
    indent(sb, this.indentLevel);
    sb.push("export const ");
    sb.push(name);
    sb.push(" = typeof ");
    sb.push(originalName);
    sb.push(";\n");
  }

  typeToString(type: Type): string {
    switch (type.kind) {
      case TypeKind.I8: return "i8";
      case TypeKind.I16: return "i16";
      case TypeKind.I32: return "i32";
      case TypeKind.I64: return "I64";
      case TypeKind.ISIZE: return this.program.options.isWasm64 ? "I64" : "i32";
      case TypeKind.U8: return "u8";
      case TypeKind.U16: return "u16";
      case TypeKind.U32: return "u32";
        // ^ TODO: function types
      case TypeKind.U64: return "U64";
      case TypeKind.USIZE: return this.program.options.isWasm64 ? "U64" : "u32";
        // ^ TODO: class types
      case TypeKind.BOOL: return "bool";
      case TypeKind.F32: return "f32";
      case TypeKind.F64: return "f64";
      case TypeKind.V128: return "v128";
      case TypeKind.VOID: return "void";
      default: {
        assert(false);
        return "any";
      }
    }
  }

  build(): string {
    var sb = this.sb;
    sb.push("declare module ASModule {\n");
    sb.push("  type i8 = number;\n");
    sb.push("  type i16 = number;\n");
    sb.push("  type i32 = number;\n");
    sb.push("  type u8 = number;\n");
    sb.push("  type u16 = number;\n");
    sb.push("  type u32 = number;\n");
    sb.push("  type f32 = number;\n");
    sb.push("  type f64 = number;\n");
    sb.push("  type bool = any;\n");
    ++this.indentLevel;
    this.walk();
    --this.indentLevel;
    sb.push("}\n");
    sb.push("export default ASModule;\n");
    return this.sb.join("");
  }
}

// helpers

/** Tests if a namespace-like element has at least one compiled member. */
function hasCompiledMember(element: Element): bool {
  var members = element.members;
  if (members) {
    for (let member of members.values()) {
      switch (member.kind) {
        case ElementKind.FUNCTION_PROTOTYPE: {
          let instances = (<FunctionPrototype>member).instances;
          if (instances) {
            for (let instance of instances.values()) {
              if (instance.is(CommonFlags.COMPILED)) return true;
            }
          }
          break;
        }
        case ElementKind.CLASS_PROTOTYPE: {
          let instances = (<ClassPrototype>member).instances;
          if (instances) {
            for (let instance of instances.values()) {
              if (instance.is(CommonFlags.COMPILED)) return true;
            }
          }
          break;
        }
        default: {
          if (member.is(CommonFlags.COMPILED) || hasCompiledMember(member)) return true;
          break;
        }
      }
    }
  }
  return false;
}

