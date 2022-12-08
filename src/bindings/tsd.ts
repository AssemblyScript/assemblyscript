import {
  Source
} from "../ast";

import {
  CommonFlags
} from "../common";

import {
  Global,
  Program,
  Function,
  Class,
  Interface,
  Enum,
  ElementKind,
  Element,
  PropertyPrototype
} from "../program";

import {
  Type,
  TypeFlags
} from "../types";

import {
  CharCode,
  escapeString,
  indent, isIdentifier
} from "../util";

import {
  ExportsWalker
} from "./util";

/** A TypeScript definitions builder. */
export class TSDBuilder extends ExportsWalker {

  /** Builds TypeScript definitions for the specified program. */
  static build(program: Program, esm: bool = true): string {
    return new TSDBuilder(program, esm).build();
  }

  private esm: bool;
  private sb: string[] = [];
  private indentLevel: i32 = 0;
  private seenObjectTypes: Map<Class,string> = new Map();
  private deferredTypings: string[] = new Array();

  /** Constructs a new TypeScript definitions builder. */
  constructor(program: Program, esm: bool, includePrivate: bool = false) {
    super(program, includePrivate);
    this.esm = esm;
  }

  visitGlobal(name: string, element: Global): void {
    let sb = this.sb;
    let type = element.type;
    let tsType = this.toTypeScriptType(type, Mode.EXPORT);
    indent(sb, this.indentLevel);
    sb.push("/** ");
    sb.push(element.internalName);
    sb.push(" */\n");
    indent(sb, this.indentLevel);
    sb.push("export ");
    if (this.esm) sb.push("declare ");
    sb.push("const ");
    sb.push(name);
    sb.push(": {\n");
    indent(sb, ++this.indentLevel);
    sb.push("/** @type `");
    sb.push(type.toString());
    sb.push("` */\n");
    indent(sb, this.indentLevel);
    sb.push("get value(): ");
    sb.push(tsType);
    if (!element.is(CommonFlags.Const)) {
      sb.push(";\n");
      indent(sb, this.indentLevel);
      sb.push("set value(value: ");
      sb.push(tsType);
      sb.push(");\n");
    } else {
      sb.push("\n");
    }
    indent(sb, --this.indentLevel);
    sb.push("};\n");
  }

  visitEnum(name: string, element: Enum): void {
    let sb = this.sb;
    indent(sb, this.indentLevel);
    sb.push("/** ");
    sb.push(element.internalName);
    sb.push(" */\n");
    indent(sb, this.indentLevel++);
    sb.push("export ");
    if (this.esm) sb.push("declare ");
    sb.push("enum ");
    sb.push(name);
    sb.push(" {\n");
    let members = element.members;
    if (members) {
      // TODO: for (let [memberName, member] of members) {
      for (let _keys = Map_keys(members), i = 0, k = _keys.length; i < k; ++i) {
        let memberName = unchecked(_keys[i]);
        let member = assert(members.get(memberName));
        if (member.kind != ElementKind.EnumValue) continue;
        indent(sb, this.indentLevel);
        sb.push("/** @type `i32` */\n");
        indent(sb, this.indentLevel);
        sb.push(memberName);
        sb.push(",\n");
      }
    }
    indent(sb, --this.indentLevel);
    sb.push("}\n");
  }

  visitFunction(name: string, element: Function): void {
    let sb = this.sb;
    let signature = element.signature;
    indent(sb, this.indentLevel);
    sb.push("/**\n");
    indent(sb, this.indentLevel);
    sb.push(" * ");
    sb.push(element.internalName);
    sb.push("\n");
    let parameterTypes = signature.parameterTypes;
    let numParameters = parameterTypes.length;
    for (let i = 0; i < numParameters; ++i) {
      indent(sb, this.indentLevel);
      sb.push(" * @param ");
      sb.push(element.getParameterName(i));
      sb.push(" `");
      sb.push(parameterTypes[i].toString());
      sb.push("`\n");
    }
    let returnType = signature.returnType;
    if (returnType != Type.void) {
      indent(sb, this.indentLevel);
      sb.push(" * @returns `");
      sb.push(returnType.toString());
      sb.push("`\n");
    }
    indent(sb, this.indentLevel);
    sb.push(" */\n");
    indent(sb, this.indentLevel);
    sb.push("export ");
    if (this.esm) sb.push("declare ");
    sb.push("function ");
    sb.push(name);
    sb.push("(");
    let requiredParameters = signature.requiredParameters;
    for (let i = 0; i < numParameters; ++i) {
      if (i) sb.push(", ");
      sb.push(element.getParameterName(i));
      if (i >= requiredParameters) sb.push("?");
      sb.push(": ");
      sb.push(this.toTypeScriptType(parameterTypes[i], Mode.IMPORT));
    }
    sb.push("): ");
    sb.push(this.toTypeScriptType(returnType, Mode.EXPORT));
    sb.push(";\n");
  }

  visitClass(name: string, element: Class): void {
    // not implemented
  }

  visitInterface(name: string, element: Interface): void {
    // not implemented
  }

  visitNamespace(name: string, element: Element): void {
    // not implemented
  }

  visitAlias(name: string, element: Element, originalName: string): void {
    // not implemented
  }

  build(): string {
    let sb = this.sb;
    if (!this.esm) {
      sb.push("declare namespace __AdaptedExports {\n");
      ++this.indentLevel;
    }
    if (this.program.options.exportMemory) {
      indent(sb, this.indentLevel);
      sb.push("/** Exported memory */\n");
      indent(sb, this.indentLevel);
      sb.push(`export ${this.esm ? "declare " : ""}const memory: WebAssembly.Memory;\n`);
    }
    if (this.program.options.exportTable) {
      indent(sb, this.indentLevel);
      sb.push("/** Exported table */\n");
      indent(sb, this.indentLevel);
      sb.push(`export ${this.esm ? "declare " : ""}const table: WebAssembly.Table;\n`);
    }
    this.walk();
    if (!this.esm) {
      --this.indentLevel;
      sb.push("}\n");
    }
    let deferredTypes = this.deferredTypings;
    for (let i = 0, k = deferredTypes.length; i < k; ++i) {
      sb.push(deferredTypes[i]);
    }
    if (!this.esm) {
      sb.push("/** Instantiates the compiled WebAssembly module with the given imports. */\n");
      sb.push("export declare function instantiate(module: WebAssembly.Module, imports: {\n");
      let moduleImports = this.program.moduleImports;
      for (let _keys = Map_keys(moduleImports), i = 0, k = _keys.length; i < k; ++i) {
        let moduleName = _keys[i];
        sb.push("  ");
        if (isIdentifier(moduleName)) {
          sb.push(moduleName);
        } else {
          sb.push("\"");
          sb.push(escapeString(moduleName, CharCode.DoubleQuote));
          sb.push("\"");
        }
        sb.push(": unknown,\n");
      }
      sb.push("}): Promise<typeof __AdaptedExports>;\n");
    }
    return sb.join("");
  }

  isPlainObject(clazz: Class): bool {
    // A plain object does not inherit and does not have a constructor or private properties
    if (clazz.base && !clazz.prototype.implicitlyExtendsObject) return false;
    let members = clazz.members;
    if (members) {
      for (let _values = Map_values(members), i = 0, k = _values.length; i < k; ++i) {
        let member = _values[i];
        if (member.isAny(CommonFlags.Private | CommonFlags.Protected)) return false;
        if (member.is(CommonFlags.Constructor)) {
          // a generated constructor is ok
          if (member.declaration.range != Source.native.range) return false;
        }
      }
    }
    return true;
  }

  toTypeScriptType(type: Type, mode: Mode): string {
    if (type.isInternalReference) {
      const sb = new Array<string>();
      const clazz = assert(type.getClassOrWrapper(this.program));
      if (clazz.extendsPrototype(this.program.arrayBufferInstance.prototype)) {
        sb.push("ArrayBuffer");
      } else if (clazz.extendsPrototype(this.program.stringInstance.prototype)) {
        sb.push("string");
      } else if (clazz.extendsPrototype(this.program.arrayPrototype)) {
        const valueType = clazz.getArrayValueType();
        sb.push("Array<");
        sb.push(this.toTypeScriptType(valueType, mode));
        sb.push(">");
      } else if (clazz.extendsPrototype(this.program.staticArrayPrototype)) {
        const valueType = clazz.getArrayValueType();
        sb.push("ArrayLike<");
        sb.push(this.toTypeScriptType(valueType, mode));
        sb.push(">");
      } else if (clazz.extendsPrototype(this.program.arrayBufferViewInstance.prototype)) {
        const valueType = clazz.getArrayValueType();
        if (valueType == Type.i8) {
          sb.push("Int8Array");
        } else if (valueType == Type.u8) {
          if (clazz.extendsPrototype(this.program.uint8ClampedArrayPrototype)) {
            sb.push("Uint8ClampedArray");
          } else {
            sb.push("Uint8Array");
          }
        } else if (valueType == Type.i16) {
          sb.push("Int16Array");
        } else if (valueType == Type.u16) {
          sb.push("Uint16Array");
        } else if (valueType == Type.i32) {
          sb.push("Int32Array");
        } else if (valueType == Type.u32) {
          sb.push("Uint32Array");
        } else if (valueType == Type.i64) {
          sb.push("BigInt64Array");
        } else if (valueType == Type.u64) {
          sb.push("BigUint64Array");
        } else if (valueType == Type.f32) {
          sb.push("Float32Array");
        } else if (valueType == Type.f64) {
          sb.push("Float64Array");
        } else {
          sb.push("unknown");
        }
      } else {
        let seenObjectTypes = this.seenObjectTypes;
        let typeName: string;
        if (seenObjectTypes.has(clazz)) {
          typeName = assert(seenObjectTypes.get(clazz));
          sb.push(typeName);
          if (this.isPlainObject(clazz)) {
            sb.push(mode == Mode.EXPORT ? "<never>" : "<undefined>");
          }
        } else {
          let isPlain = this.isPlainObject(clazz);
          typeName = `${isPlain ? "__Record" : "__Internref"}${clazz.id}`;
          sb.push(typeName);
          seenObjectTypes.set(clazz, typeName);
          if (isPlain) {
            sb.push(mode == Mode.EXPORT ? "<never>" : "<undefined>");
            this.deferredTypings.push(this.makeRecordType(clazz, mode));
          } else {
            this.deferredTypings.push(this.makeInternrefType(clazz));
          }
        }
      }
      if (type.is(TypeFlags.Nullable)) {
        sb.push(" | null");
      }
      return sb.join("");
    } else {
      if (type == Type.bool) {
        return "boolean";
      }
      if (type == Type.void) {
        return "void";
      }
      if (type.isNumericValue) {
        if (type.isLongIntegerValue) {
          return "bigint";
        }
        return "number";
      }
    }
    return "unknown";
  }

  makeRecordType(clazz: Class, mode: Mode): string {
    let sb = new Array<string>();
    let members = clazz.members;
    sb.push("/** ");
    sb.push(clazz.internalName);
    sb.push(" */\ndeclare interface __Record");
    sb.push(clazz.id.toString());
    sb.push("<TOmittable> {\n");
    if (members) {
      for (let _keys = Map_keys(members), i = 0, k = _keys.length; i < k; ++i) {
        let memberName = _keys[i];
        let member = assert(members.get(memberName));
        if (member.kind != ElementKind.PropertyPrototype) continue;
        let property = (<PropertyPrototype>member).instance; // resolved during class finalization
        if (!property || !property.isField) continue;
        sb.push("  /** @type `");
        sb.push(property.type.toString());
        sb.push("` */\n  ");
        sb.push(property.name);
        sb.push(": ");
        sb.push(this.toTypeScriptType(property.type, mode));
        if (this.fieldAcceptsUndefined(property.type)) {
          sb.push(" | TOmittable");
        }
        sb.push(";\n");
      }
    }
    sb.push("}\n");
    return sb.join("");
  }

  fieldAcceptsUndefined(type: Type): bool {
    if (type.isInternalReference) {
      return type.is(TypeFlags.Nullable);
    }
    return true;
  }

  makeInternrefType(clazz: Class): string {
    let sb = new Array<string>();
    sb.push("/** ");
    sb.push(clazz.internalName);
    sb.push(" */\n");
    sb.push("declare class __Internref");
    sb.push(clazz.id.toString());
    sb.push(" extends Number {\n");
    let base: Class | null = clazz;
    do {
      sb.push("  private __nominal");
      sb.push(base.id.toString());
      sb.push(": symbol;\n");
      base = base.base;
    } while (base);
    sb.push("}\n");
    return sb.join("");
  }
}

// Helpers

enum Mode {
  IMPORT,
  EXPORT
}
