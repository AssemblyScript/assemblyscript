/**
 * @fileoverview Builders for various definitions describing a module.
 *
 * - TSDBuilder: Creates a TypeScript definition file (.d.ts)
 * - IDLBuilder: Creates a WebIDL interface definition (.webidl)
 *
 * @license Apache-2.0
 */

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
export abstract class ExportsWalker {

  /** Program reference. */
  program: Program;
  /** Whether to include private members */
  includePrivate: bool;
  /** Already seen elements. */
  seen: Map<Element,string> = new Map();

  /** Constructs a new Element walker. */
  constructor(program: Program, includePrivate: bool = false) {
    this.program = program;
    this.includePrivate = includePrivate;
  }

  /** Walks all elements and calls the respective handlers. */
  walk(): void {
    // TODO: for (let file of this.program.filesByName.values()) {
    for (let _values = Map_values(this.program.filesByName), i = 0, k = _values.length; i < k; ++i) {
      let file = unchecked(_values[i]);
      if (file.source.sourceKind == SourceKind.USER_ENTRY) this.visitFile(file);
    }
  }

  /** Visits all exported elements of a file. */
  visitFile(file: File): void {
    var exports = file.exports;
    if (exports) {
      // TODO: for (let [memberName, member] of exports) {
      for (let _keys = Map_keys(exports), i = 0, k = _keys.length; i < k; ++i) {
        let memberName = unchecked(_keys[i]);
        let member = assert(exports.get(memberName));
        this.visitElement(memberName, member);
      }
    }
    var exportsStar = file.exportsStar;
    if (exportsStar) {
      for (let i = 0, k = exportsStar.length; i < k; ++i) {
        let exportStar = unchecked(exportsStar[i]);
        this.visitFile(exportStar);
      }
    }
  }

  /** Visits an element.*/
  visitElement(name: string, element: Element): void {
    if (element.is(CommonFlags.PRIVATE) && !this.includePrivate) return;
    var seen = this.seen;
    if (!element.is(CommonFlags.INSTANCE) && seen.has(element)) {
      this.visitAlias(name, element, assert(seen.get(element)));
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
      case ElementKind.ENUMVALUE: break; // handled by visitEnum
      case ElementKind.FUNCTION_PROTOTYPE: {
        this.visitFunctionInstances(name, <FunctionPrototype>element);
        break;
      }
      case ElementKind.CLASS_PROTOTYPE: {
        this.visitClassInstances(name, <ClassPrototype>element);
        break;
      }
      case ElementKind.FIELD: {
        let fieldInstance = <Field>element;
        if (fieldInstance.is(CommonFlags.COMPILED)) this.visitField(name, fieldInstance);
        break;
      }
      case ElementKind.PROPERTY_PROTOTYPE: {
        let propertyInstance = (<PropertyPrototype>element).instance;
        if (!propertyInstance) break;
        element = propertyInstance;
        // fall-through
        break;
      }
      case ElementKind.PROPERTY: {
        let propertyInstance = <Property>element;
        let getterInstance = propertyInstance.getterInstance;
        if (getterInstance) this.visitFunction(name, getterInstance);
        let setterInstance = propertyInstance.setterInstance;
        if (setterInstance) this.visitFunction(name, setterInstance);
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
      // TODO: for (let instance of instances.values()) {
      for (let _values = Map_values(instances), i = 0, k = _values.length; i < k; ++i) {
        let instance = unchecked(_values[i]);
        if (instance.is(CommonFlags.COMPILED)) this.visitFunction(name, instance);
      }
    }
  }

  private visitClassInstances(name: string, element: ClassPrototype): void {
    var instances = element.instances;
    if (instances) {
      // TODO: for (let instance of instances.values()) {
      for (let _values = Map_values(instances), i = 0, k = _values.length; i < k; ++i) {
        let instance = unchecked(_values[i]);
        if (instance.is(CommonFlags.COMPILED)) this.visitClass(name, instance);
      }
    }
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
      // TODO: for (let [memberName, member] of members) {
      for (let _keys = Map_keys(members), i = 0, k = _keys.length; i < k; ++i) {
        let memberName = unchecked(_keys[i]);
        let member = assert(members.get(memberName));
        if (member.kind == ElementKind.ENUMVALUE) {
          let enumValue = <EnumValue>member;
          let isConst = enumValue.is(CommonFlags.INLINED);
          indent(sb, this.indentLevel);
          if (isConst) sb.push("const ");
          else sb.push("readonly ");
          sb.push("unsigned long ");
          sb.push(memberName);
          if (isConst) {
            sb.push(" = ");
            assert(enumValue.constantValueKind == ConstantValueKind.INTEGER);
            sb.push(i64_low(enumValue.constantIntegerValue).toString());
          }
          sb.push(";\n");
        }
      }
      // TODO: for (let member of members.values()) {
      for (let _values = Map_values(members), i = 0, k = _values.length; i < k; ++i) {
        let member = unchecked(_values[i]);
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
      sb.push(element.getParameterName(i));
    }
    sb.push(");\n");
    var members = element.members;
    if (members !== null && members.size > 0) {
      indent(sb, this.indentLevel);
      sb.push("interface ");
      sb.push(element.name);
      sb.push(" {\n");
      // TODO: for (let member of members.values()) {
      for (let _values = Map_values(members), i = 0, k = _values.length; i < k; ++i) {
        let member = unchecked(_values[i]);
        this.visitElement(member.name, member);
      }
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
      // TODO: for (let member of members.values()) {
      for (let _values = Map_values(members), i = 0, k = _values.length; i < k; ++i) {
        let member = unchecked(_values[i]);
        this.visitElement(member.name, member);
      }
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
    sb.push("export ");
    if (element.is(CommonFlags.CONST)) sb.push("const ");
    sb.push("enum ");
    sb.push(name);
    sb.push(" {\n");
    var members = element.members;
    var remainingMembers = 0;
    if (members) {
      remainingMembers = members.size;
      // TODO: for (let [memberName, member] of members) {
      for (let _keys = Map_keys(members), i = 0, k = _keys.length; i < k; ++i) {
        let memberName = unchecked(_keys[i]);
        let member = assert(members.get(memberName));
        if (member.kind == ElementKind.ENUMVALUE) {
          let enumValue = <EnumValue>member;
          indent(sb, this.indentLevel);
          sb.push(memberName);
          if (member.is(CommonFlags.INLINED)) {
            sb.push(" = ");
            assert(enumValue.constantValueKind == ConstantValueKind.INTEGER);
            sb.push(i64_low(enumValue.constantIntegerValue).toString());
          }
          sb.push(",\n");
          --remainingMembers;
        }
      }
    }
    indent(sb, --this.indentLevel);
    sb.push("}\n");
    if (remainingMembers) this.visitNamespace(name, element);
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
      sb.push(element.getParameterName(i));
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
      sb.push("export ");
      if (element.is(CommonFlags.ABSTRACT)) sb.push("abstract ");
      sb.push("class ");
    }
    sb.push(name);
    var base = element.base;
    if (base !== null && base.is(CommonFlags.COMPILED | CommonFlags.MODULE_EXPORT)) {
      sb.push(" extends ");
      let extendsNode = assert(element.prototype.extendsNode);
      sb.push(extendsNode.name.identifier.text); // TODO: fqn?
    }
    sb.push(" {\n");
    var staticMembers = element.prototype.members;
    if (staticMembers) {
      // TODO: for (let member of staticMembers.values()) {
      for (let _values = Map_values(staticMembers), i = 0, k = _values.length; i < k; ++i) {
        let member = unchecked(_values[i]);
        this.visitElement(member.name, member);
      }
    }
    var instanceMembers = element.members;
    if (instanceMembers) {
      // TODO: for (let member of instanceMembers.values()) {
      for (let _values = Map_values(instanceMembers), i = 0, k = _values.length; i < k; ++i) {
        let member = unchecked(_values[i]);
        if (member.parent == element) { // own member
          this.visitElement(member.name, member);
        }
      }
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
    if (members !== null && members.size > 0) {
      let sb = this.sb;
      indent(sb, this.indentLevel++);
      sb.push("export namespace ");
      sb.push(name);
      sb.push(" {\n");
      // TODO: for (let member of members.values()) {
      for (let _values = Map_values(members), i = 0, k = _values.length; i < k; ++i) {
        let member = unchecked(_values[i]);
        this.visitElement(member.name, member);
      }
      indent(sb, --this.indentLevel);
      sb.push("}\n");
    }
  }

  visitAlias(name: string, element: Element, originalName: string): void {
    var sb = this.sb;
    indent(sb, this.indentLevel);
    sb.push("export const ");
    sb.push(name);
    sb.push(": typeof ");
    sb.push(originalName);
    sb.push(";\n");
  }

  typeToString(type: Type): string {
    switch (type.kind) {
      case TypeKind.I8: return "i8";
      case TypeKind.I16: return "i16";
      case TypeKind.I32: return "i32";
      case TypeKind.I64: return "i64";
      case TypeKind.ISIZE: return "isize";
      case TypeKind.U8: return "u8";
      case TypeKind.U16: return "u16";
      case TypeKind.U32: return "u32";
        // ^ TODO: function types
      case TypeKind.U64: return "u64";
      case TypeKind.USIZE: return "usize";
        // ^ TODO: class types
      case TypeKind.BOOL: return "bool";
      case TypeKind.F32: return "f32";
      case TypeKind.F64: return "f64";
      case TypeKind.V128: return "v128";
      case TypeKind.VOID: return "void";
      case TypeKind.FUNCREF: return "funcref";
      case TypeKind.EXTERNREF: return "externref";
      case TypeKind.EXNREF: return "exnref";
      case TypeKind.ANYREF: return "anyref";
      default: {
        assert(false);
        return "any";
      }
    }
  }

  build(): string {
    var sb = this.sb;
    var isWasm64 = this.program.options.isWasm64;
    sb.push("declare module ASModule {\n");
    sb.push("  type i8 = number;\n");
    sb.push("  type i16 = number;\n");
    sb.push("  type i32 = number;\n");
    sb.push("  type i64 = bigint;\n");
    if (isWasm64) {
      sb.push("  type isize = bigint;\n");
    } else {
      sb.push("  type isize = number;\n");
    }
    sb.push("  type u8 = number;\n");
    sb.push("  type u16 = number;\n");
    sb.push("  type u32 = number;\n");
    sb.push("  type u64 = bigint;\n");
    if (isWasm64) {
      sb.push("  type usize = bigint;\n");
    } else {
      sb.push("  type usize = number;\n");
    }
    sb.push("  type f32 = number;\n");
    sb.push("  type f64 = number;\n");
    sb.push("  type bool = boolean | number;\n");
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
    // TODO: for (let member of members.values()) {
    for (let _values = Map_values(members), i = 0, k = _values.length; i < k; ++i) {
      let member = unchecked(_values[i]);
      switch (member.kind) {
        case ElementKind.FUNCTION_PROTOTYPE: {
          let instances = (<FunctionPrototype>member).instances;
          if (instances) {
            // TODO: for (let instance of instances.values()) {
            for (let _values = Map_values(instances), j = 0, l = _values.length; j < l; ++j) {
              let instance = unchecked(_values[j]);
              if (instance.is(CommonFlags.COMPILED)) return true;
            }
          }
          break;
        }
        case ElementKind.CLASS_PROTOTYPE: {
          let instances = (<ClassPrototype>member).instances;
          if (instances) {
            // TODO: for (let instance of instances.values()) {
            for (let _values = Map_values(instances), j = 0, l = _values.length; j < l; ++j) {
              let instance = unchecked(_values[j]);
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
