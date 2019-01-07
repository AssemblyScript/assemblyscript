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
  Property
} from "./program";

import {
  Type,
  TypeKind
} from "./types";

import {
  indent
} from "./util";

/** Walker base class. */
abstract class ExportsWalker {

  /** Program reference. */
  program: Program;
  /** Whether to include private members */
  includePrivate: bool;
  /** Elements still to do. */
  todo: Element[] = [];
  /** Already seen elements. */
  seen: Set<Element> = new Set();

  /** Constructs a new Element walker. */
  constructor(program: Program, includePrivate: bool = false) {
    this.program = program;
    this.includePrivate;
  }

  /** Walks all exports and calls the respective handlers. */
  walk(): void {
    for (let moduleExport of this.program.moduleLevelExports.values()) {
      // FIXME: doesn't honor the actual externally visible name
      this.visitElement(moduleExport.element);
    }
    var todo = this.todo;
    for (let i = 0; i < todo.length; ) this.visitElement(todo[i]);
  }

  /** Visits an element.*/
  visitElement(element: Element): void {
    if (element.is(CommonFlags.PRIVATE) && !this.includePrivate) return;
    if (this.seen.has(element)) return;
    this.seen.add(element);
    switch (element.kind) {
      case ElementKind.GLOBAL: {
        if (element.is(CommonFlags.COMPILED)) this.visitGlobal(<Global>element);
        break;
      }
      case ElementKind.ENUM: {
        if (element.is(CommonFlags.COMPILED)) this.visitEnum(<Enum>element);
        break;
      }
      case ElementKind.FUNCTION_PROTOTYPE: {
        this.visitFunctionInstances(<FunctionPrototype>element);
        break;
      }
      case ElementKind.CLASS_PROTOTYPE: {
        this.visitClassInstances(<ClassPrototype>element);
        break;
      }
      case ElementKind.FIELD: {
        if ((<Field>element).is(CommonFlags.COMPILED)) this.visitField(<Field>element);
        break;
      }
      case ElementKind.PROPERTY: {
        let prop = <Property>element;
        let getter = prop.getterPrototype;
        if (getter) this.visitFunctionInstances(getter);
        let setter = prop.setterPrototype;
        if (setter) this.visitFunctionInstances(setter);
        break;
      }
      case ElementKind.NAMESPACE: {
        if (hasCompiledMember(element)) this.visitNamespace(element);
        break;
      }
      default: assert(false);
    }
  }

  private visitFunctionInstances(element: FunctionPrototype): void {
    for (let instances of element.instances.values()) {
      for (let instance of instances.values()) {
        if (instance.is(CommonFlags.COMPILED)) this.visitFunction(<Function>instance);
      }
    }
  }

  private visitClassInstances(element: ClassPrototype): void {
    for (let instance of element.instances.values()) {
      if (instance.is(CommonFlags.COMPILED)) this.visitClass(<Class>instance);
    }
  }

  abstract visitGlobal(element: Global): void;
  abstract visitEnum(element: Enum): void;
  abstract visitFunction(element: Function): void;
  abstract visitClass(element: Class): void;
  abstract visitInterface(element: Interface): void;
  abstract visitField(element: Field): void;
  abstract visitNamespace(element: Element): void;
}

// TODO: Extract this into separate module, preferrable pluggable
export class NEARBindingsBuilder extends ExportsWalker {
  private typeMapping: { [key: string]: string } = {
    "i32": "Integer",
    "String": "String",
    "Uint8Array": "Uint8Array",
    "bool": "Boolean"
  };

  private nonNullableTypes = ["i32", "bool"];

  private sb: string[] = [];
  private generatedEncodeFunctions = new Set<string>();
  private generatedDecodeFunctions = new Set<string>();

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
    // Do nothing
  }

  visitFunction(element: Function): void {
    this.generateArgsParser(element);
    this.generateWrapperFunction(element);
  }

  private generateArgsParser(element: Function) {
    let signature = element.signature;
    let fields = signature.parameterNames ? signature.parameterNames.map((paramName, i) => {
      return { simpleName: paramName, type: signature.parameterTypes[i] };
    }) : [];
    fields.forEach(field => this.generateDecodeFunction(field.type));
    this.sb.push(`export class __near_ArgsParser_${element.simpleName} extends ThrowingBSONHandler {
        buffer: Uint8Array;
        decoder: BSONDecoder<__near_ArgsParser_${element.simpleName}>;
      `);
    if (signature.parameterNames) {
      fields.forEach((field) => {
        this.sb.push(`__near_param_${field.simpleName}: ${field.type};`);
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
    this.sb.push(`export function near_func_${element.simpleName}(): void {
      let bson = new Uint8Array(input_read_len());
      input_read_into(bson.buffer.data);
      let handler = new __near_ArgsParser_${element.simpleName}();
      handler.buffer = bson;
      handler.decoder = new BSONDecoder<__near_ArgsParser_${element.simpleName}>(handler);
      handler.decoder.deserialize(bson);`);
    if (returnType.toString() != "void") {
      this.sb.push(`let result = ${element.simpleName}(`);
    } else {
      this.sb.push(`${element.simpleName}(`);
    }
    if (signature.parameterNames) {
      this.sb.push(signature.parameterNames.map(paramName => `handler.__near_param_${paramName}`).join(","));
    }
    this.sb.push(");");
    if (returnType.toString() != "void") {
      this.sb.push(`
        let encoder = new BSONEncoder();`);
      this.generateFieldEncoder(returnType, '"result"', "result");
      this.sb.push(`
        return_value(near.bufferWithSize(encoder.serialize()).buffer.data);
      `);
    }
    this.sb.push(`}`);
  }

  private generateHandlerMethods(valuePrefix: string, fields: any[]) : void {
    for (let fieldType in this.typeMapping) {
      let setterType = this.typeMapping[fieldType];
      this.sb.push(`set${setterType}(name: string, value: ${fieldType}): void {`);
      fields.forEach((field) => {
        if (field.type.toString() == fieldType) {
            this.sb.push(`if (name == "${field.simpleName}") {
              ${valuePrefix}${field.simpleName} = value;
              return;
            }`);
        }
      });
      this.sb.push("}");
    }
    this.sb.push("setNull(name: string): void {");
    fields.forEach((field) => {
      this.sb.push(`if (name == "${field.simpleName}") {
        ${valuePrefix}${field.simpleName} = <${field.type.toString()}>null;
        return;
      }`);
    });
    this.sb.push(`
      super.setNull(name);
    }`);

    this.sb.push(`
      pushObject(name: string): bool {`);
    this.generatePushHandler(valuePrefix, fields);
    this.sb.push(`
        return super.pushObject(name);
      }`);
    this.sb.push(`
      pushArray(name: string): bool {`);
    this.generatePushHandler(valuePrefix, fields);
    this.sb.push(`
        return super.pushArray(name);
      }`);
  }

  private generatePushHandler(valuePrefix: string, fields: any[]) {
    fields.forEach((field) => {
      if (!(field.type.toString() in this.typeMapping)) {
        this.sb.push(`if (name == "${field.simpleName}") {
          ${valuePrefix}${field.simpleName} = __near_decode_${this.encodeType(field.type)}(this.buffer, this.decoder.readIndex);
          return false;
        }`);
      }
    });
  }

  private generateArrayHandlerMethods(valuePrefix: string, fieldType: Type) : void {
    let setterType = this.typeMapping[fieldType.toString()];
    if (setterType) {
      this.sb.push(`set${setterType}(name: string, value: ${fieldType}): void {
        ${valuePrefix}[i32(parseInt(name))] = value;
      }
      setNull(name: string): void {
        ${valuePrefix}[i32(parseInt(name))] = <${fieldType}>null;
      }`);
    } else {
      this.sb.push(`pushObject(name: string): bool {
        ${valuePrefix}[i32(parseInt(name))] = __near_decode_${this.encodeType(fieldType)}(this.buffer, this.decoder.readIndex);
        return false;
      }
      pushArray(name: string): bool {
        ${valuePrefix}[i32(parseInt(name))] = __near_decode_${this.encodeType(fieldType)}(this.buffer, this.decoder.readIndex);
        return false;
      }`);
    }
  }

  private generateEncodeFunction(type: Type) {
    if (!type.classReference) {
      return;
    }

    let typeName = this.encodeType(type);
    if (this.generatedEncodeFunctions.has(typeName) || typeName in this.typeMapping) {
      return;
    }
    this.generatedEncodeFunctions.add(typeName);

    if (type.classReference.prototype.simpleName == "Array" && type.classReference.typeArguments) {
      // Array
      this.generateEncodeFunction(type.classReference.typeArguments[0]);

      this.sb.push(`export function __near_encode_${typeName}(
          value: ${type.toString()},
          encoder: BSONEncoder): void {`);
      this.sb.push(`for (let i = 0; i < value.length; i++) {`);
      this.generateFieldEncoder(type.classReference.typeArguments[0], "near.str(i)", "value[i]");
      this.sb.push("}");

    } else {
      // Object
      this.getFields(type.classReference).forEach(field => {
        this.generateEncodeFunction(field.type);
      });

      this.sb.push(`export function __near_encode_${typeName}(
          value: ${type.toString()},
          encoder: BSONEncoder): void {`);
      this.getFields(type.classReference).forEach((field) => {
        let fieldType = field.type;
        let fieldName = field.simpleName;
        let sourceExpr = `value.${fieldName}`;
        this.generateFieldEncoder(fieldType, `"${fieldName}"`, sourceExpr);
      });
    }

    this.sb.push("}");
  }

  private generateHandler(type: Type) {
    let typeName = this.encodeType(type);
    this.sb.push(`export class __near_BSONHandler_${typeName} extends ThrowingBSONHandler {
      buffer: Uint8Array;
      decoder: BSONDecoder<__near_BSONHandler_${typeName}>;
      value: ${type} = new ${type}();`);
    if (type.classReference!.simpleName.startsWith("Array")) {
      this.generateArrayHandlerMethods("this.value", type.classReference!.typeArguments![0]);
    } else {
      this.generateHandlerMethods("this.value.", this.getFields(type.classReference!));
    }
    this.sb.push("}\n");
  }

  private generateDecodeFunction(type: Type) {
    if (!type.classReference) {
      return;
    }

    let typeName = this.encodeType(type);
    if (this.generatedDecodeFunctions.has(typeName) || typeName in this.typeMapping) {
      return;
    }
    this.generatedDecodeFunctions.add(typeName);

    this.generateHandler(type);
    if (type.classReference.prototype.simpleName == "Array" && type.classReference.typeArguments) {
      // Array
      this.generateDecodeFunction(type.classReference.typeArguments[0]);
    } else {
      // Object
      this.getFields(type.classReference).forEach(field => {
        this.generateDecodeFunction(field.type);
      });
    }

    this.sb.push(`export function __near_decode_${typeName}(
        buffer: Uint8Array, offset: i32): ${type} {
      let handler = new __near_BSONHandler_${typeName}();
      handler.buffer = buffer;
      handler.decoder = new BSONDecoder<__near_BSONHandler_${typeName}>(handler);
      handler.decoder.deserialize(buffer, offset);
      return handler.value;
    }\n`);
  }

  private generateFieldEncoder(fieldType: Type, fieldExpr: string, sourceExpr: string) {
    let setterType = this.typeMapping[fieldType.toString()];
    if (!setterType) {
      // Object / array
      let pushType = fieldType.classReference!.prototype.simpleName == "Array" ? "Array" : "Object";
      this.sb.push(`if (${sourceExpr} != null) {
          encoder.push${pushType}(${fieldExpr});
          __near_encode_${this.encodeType(fieldType)}(${sourceExpr}, encoder);
          encoder.pop${pushType}();
        } else {
          encoder.setNull(${fieldExpr});
        }`);
    } else {
      // Basic types
      if (this.nonNullableTypes.indexOf(fieldType.toString()) != -1) {
        this.sb.push(`encoder.set${setterType}(${fieldExpr}, ${sourceExpr});`);
      } else {
        this.sb.push(`if (${sourceExpr} != null) {
            encoder.set${setterType}(${fieldExpr}, ${sourceExpr});
          } else {
            encoder.setNull(${fieldExpr});
          }`);
      }
    }
  }

  private encodeType(type: Type) : string {
    return (<any>type.toString())
      .replace(/_/g, '__')
      .replace(/>/g, '')
      .replace(/</g, '_');
  }

  private getFields(element: Class): Field[] {
    if (!element.members) {
      return [];
    }

    return <Field[]>[...element.members.values()].filter(member => member instanceof Field);
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

  build(): string {
    let mainSource = this.program.sources
      .filter(s => s.normalizedPath.indexOf("~lib") != 0)[0];
    this.sb.push(mainSource.text);
    this.walk();
    return this.sb.join("\n");
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

  visitGlobal(element: Global): void {
    var sb = this.sb;
    var isConst = element.is(CommonFlags.INLINED);
    indent(sb, this.indentLevel);
    if (isConst) sb.push("const ");
    sb.push(this.typeToString(element.type));
    sb.push(" ");
    sb.push(element.simpleName);
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

  visitEnum(element: Enum): void {
    var sb = this.sb;
    indent(sb, this.indentLevel++);
    sb.push("interface ");
    sb.push(element.simpleName);
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
            sb.push((<EnumValue>member).constantValue.toString(10));
          }
          sb.push(";\n");
        }
      }
      for (let member of members.values()) {
        if (member.kind != ElementKind.ENUMVALUE) this.visitElement(member);
      }
    }
    indent(sb, --this.indentLevel);
    sb.push("}\n");
  }

  visitFunction(element: Function): void {
    var sb = this.sb;
    var signature = element.signature;
    indent(sb, this.indentLevel);
    sb.push(this.typeToString(signature.returnType));
    sb.push(" ");
    sb.push(element.simpleName);
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
      sb.push(element.simpleName);
      sb.push(" {\n");
      for (let member of members.values()) this.visitElement(member);
      indent(sb, --this.indentLevel);
      sb.push("}\n");
    }
  }

  visitClass(element: Class): void {
    var sb = this.sb;
    indent(sb, this.indentLevel++);
    sb.push("interface ");
    sb.push(element.simpleName);
    sb.push(" {\n");
    // TODO
    indent(sb, --this.indentLevel);
    sb.push("}\n");
  }

  visitInterface(element: Interface): void {
    this.visitClass(element);
  }

  visitField(element: Field): void {
    // TODO
  }

  visitNamespace(element: Namespace): void {
    var sb = this.sb;
    indent(sb, this.indentLevel++);
    sb.push("interface ");
    sb.push(element.simpleName);
    sb.push(" {\n");
    var members = element.members;
    if (members) {
      for (let member of members.values()) this.visitElement(member);
    }
    indent(sb, --this.indentLevel);
    sb.push("}\n");
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

  /** Constructs a new WebIDL builder. */
  constructor(program: Program, includePrivate: bool = false) {
    super(program, includePrivate);
  }

  visitGlobal(element: Global): void {
    var sb = this.sb;
    var isConst = element.is(CommonFlags.INLINED);
    indent(sb, this.indentLevel);
    if (element.is(CommonFlags.STATIC)) {
      if (isConst) sb.push("static readonly ");
      else sb.push("static ");
    } else {
      if (isConst) sb.push("const ");
      else sb.push("var ");
    }
    sb.push(element.simpleName);
    sb.push(": ");
    sb.push(this.typeToString(element.type));
    sb.push(";\n");
    this.visitNamespace(element);
  }

  visitEnum(element: Enum): void {
    var sb = this.sb;
    indent(sb, this.indentLevel++);
    sb.push("enum ");
    sb.push(element.simpleName);
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
            sb.push((<EnumValue>member).constantValue.toString(10));
          }
          sb.push(",\n");
          --numMembers;
        }
      }
      if (numMembers) this.visitNamespace(element);
    }
    indent(sb, --this.indentLevel);
    sb.push("}\n");
  }

  visitFunction(element: Function): void {
    if (element.isAny(CommonFlags.PRIVATE | CommonFlags.SET)) return;
    var sb = this.sb;
    var signature = element.signature;
    indent(sb, this.indentLevel);
    if (element.is(CommonFlags.PROTECTED)) sb.push("protected ");
    if (element.is(CommonFlags.STATIC)) sb.push("static ");
    if (element.is(CommonFlags.GET)) {
      sb.push(element.prototype.declaration.name.text); // 'get:funcName' internally
      sb.push(": ");
      sb.push(this.typeToString(signature.returnType));
      sb.push(";\n");
      return;
    } else {
      if (!element.isAny(CommonFlags.STATIC | CommonFlags.INSTANCE)) sb.push("function ");
      sb.push(element.simpleName);
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
    this.visitNamespace(element);
  }

  visitClass(element: Class): void {
    var sb = this.sb;
    var isInterface = element.kind == ElementKind.INTERFACE;
    indent(sb, this.indentLevel++);
    if (isInterface) {
      sb.push("interface ");
    } else {
      if (element.is(CommonFlags.ABSTRACT)) sb.push("abstract ");
      sb.push("class ");
    }
    sb.push(element.simpleName);
    var base = element.base;
    if (base && base.is(CommonFlags.COMPILED | CommonFlags.MODULE_EXPORT)) {
      sb.push(" extends ");
      sb.push(base.simpleName); // TODO: fqn
    }
    sb.push(" {\n");
    var members = element.prototype.members; // static
    if (members) {
      for (let member of members.values()) {
        this.visitElement(member);
      }
    }
    var ctor = element.constructorInstance;
    if (ctor) this.visitFunction(ctor);
    members = element.members; // instance
    if (members) {
      for (let member of members.values()) this.visitElement(member);
    }
    indent(sb, --this.indentLevel);
    sb.push("}\n");
  }

  visitInterface(element: Interface): void {
    this.visitClass(element);
  }

  visitField(element: Field): void {
    if (element.is(CommonFlags.PRIVATE)) return;
    var sb = this.sb;
    indent(sb, this.indentLevel);
    if (element.is(CommonFlags.PROTECTED)) sb.push("protected ");
    if (element.is(CommonFlags.STATIC)) sb.push("static ");
    if (element.is(CommonFlags.READONLY)) sb.push("readonly ");
    sb.push(element.simpleName);
    sb.push(": ");
    sb.push(this.typeToString(element.type));
    sb.push(";\n");
  }

  visitNamespace(element: Element): void {
    var members = element.members;
    if (members && members.size) {
      let sb = this.sb;
      indent(sb, this.indentLevel++);
      sb.push("namespace ");
      sb.push(element.simpleName);
      sb.push(" {\n");
      for (let member of members.values()) this.visitElement(member);
      indent(sb, --this.indentLevel);
      sb.push("}\n");
    }
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
      case TypeKind.VOID: return "void";
      default: {
        assert(false);
        return "";
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
          for (let instances of (<FunctionPrototype>member).instances.values()) {
            for (let instance of instances.values()) {
              if (instance.is(CommonFlags.COMPILED)) return true;
            }
          }
          break;
        }
        case ElementKind.CLASS_PROTOTYPE: {
          for (let instance of (<ClassPrototype>member).instances.values()) {
            if (instance.is(CommonFlags.COMPILED)) return true;
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
