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
  SourceKind
 } from "./ast";

import {
  indent
} from "./util";

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
      if (file.source.sourceKind == SourceKind.USER_ENTRY) this.visitFile(file);
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
