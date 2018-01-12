import {
  Target
} from "./compiler";

import {
  Class,
  Function
} from "./program";

import {
  sb
} from "./util/sb";

import {
  NativeType,
  ExpressionRef,
  Module
} from "./module";

/** Indicates the kind of a type. */
export const enum TypeKind {

  // signed integers
  I8,
  I16,
  I32,
  I64,
  ISIZE,

  // unsigned integers
  U8,
  U16,
  U32,
  U64,
  USIZE,
  BOOL, // sic

  // floats
  F32,
  F64,

  // other
  VOID
}

/** Indicates capabilities of a type. */
export const enum TypeFlags {
  NONE = 0,
  /** Is a signed type that can represent negative values. */
  SIGNED = 1 << 0,
  /** Is an unsigned type that cannot represent negative values. */
  UNSIGNED = 1 << 1,
  /** Is an integer type. */
  INTEGER = 1 << 2,
  /** Is a floating point type. */
  FLOAT = 1 << 3,
  /** Is a sized integer type with a target specific bit size. */
  SIZE = 1 << 4,
  /** Is a small type that is emulated in a larger type. */
  SMALL = 1 << 5,
  /** Is a long type larger than 32-bits. */
  LONG = 1 << 6,
  /** Is a value type. */
  VALUE = 1 << 7,
  /** Is a reference type. */
  REFERENCE = 1 << 8,
  /** Is a nullable type. */
  NULLABLE = 1 << 9
}

/** Represents a resolved type. */
export class Type {

  /** Type kind. */
  kind: TypeKind;
  /** Type flags. */
  flags: TypeFlags;
  /** Size in bits. */
  size: i32;
  /** Size in bytes. */
  byteSize: i32;
  /** Underlying class type, if a class type. */
  classType: Class | null;
  /** Underlying function type, if a function type. */
  functionType: Function | null;
  /** Respective nullable type, if non-nullable. */
  nullableType: Type | null = null;
  /** Respective non-nullable type, if nullable. */
  nonNullableType: Type;

  /** Constructs a new resolved type. */
  constructor(kind: TypeKind, flags: TypeFlags, size: i32) {
    this.kind = kind;
    this.flags = flags;
    this.size = size;
    this.byteSize = <i32>ceil<f64>(<f64>size / 8);
    this.classType = null;
    this.nonNullableType = this;
  }

  /** Computes the sign-extending shift in the target type. */
  computeSmallIntegerShift(targetType: Type) {
    return targetType.size - this.size;
  }

  /** Computes the truncating mask in the target type. */
  computeSmallIntegerMask(targetType: Type) {
    return -1 >>> (targetType.size - this.size);
  }

  /** Tests if this type has the specified capabilities. */
  is(flags: TypeFlags): bool {
    return (this.flags & flags) == flags;
  }

  /** Tests if this type is a class type. */
  get isClass(): bool { return this.classType != null; }
  /** Tests if this type is a function type. */
  get isFunction(): bool { return this.functionType != null; }
  /** Tests if this type is a reference type. */
  get isReference(): bool { return this.classType != null || this.functionType != null; }

  /** Composes a class type from this type and a class. */
  asClass(classType: Class): Type {
    assert(this.kind == TypeKind.USIZE);
    var ret = new Type(this.kind, this.flags & ~TypeFlags.VALUE | TypeFlags.REFERENCE, this.size);
    ret.classType = classType;
    return ret;
  }

  /** Composes a function type from this type and a function. */
  asFunction(functionType: Function): Type {
    assert(this.kind == TypeKind.USIZE && !this.isReference);
    var ret = new Type(this.kind, this.flags & ~TypeFlags.VALUE | TypeFlags.REFERENCE, this.size);
    ret.functionType = functionType;
    return ret;
  }

  /** Composes the respective nullable type of this type. */
  asNullable(): Type | null {
    assert(this.kind == TypeKind.USIZE);
    if (!this.nullableType) {
      assert(!this.is(TypeFlags.NULLABLE) && this.isReference);
      this.nullableType = new Type(this.kind, this.flags | TypeFlags.NULLABLE, this.size);
      this.nullableType.classType = this.classType;
      this.nullableType.functionType = this.functionType;
    }
    return this.nullableType;
  }

  /** Converts this type to its TypeScript representation. */
  toString(kindOnly: bool = false): string {
    switch (this.kind) {
      case TypeKind.I8: return "i8";
      case TypeKind.I16: return "i16";
      case TypeKind.I32: return "i32";
      case TypeKind.I64: return "i64";
      case TypeKind.ISIZE: return "isize";
      case TypeKind.U8: return "u8";
      case TypeKind.U16: return "u16";
      case TypeKind.U32: return "u32";
      case TypeKind.U64: return "u64";
      case TypeKind.USIZE:
        if (kindOnly) return "usize";
        return this.classType ? this.classType.toString()
             : this.functionType ? this.functionType.toTypeString()
             : "usize";
      case TypeKind.BOOL: return "bool";
      case TypeKind.F32: return "f32";
      case TypeKind.F64: return "f64";
      case TypeKind.VOID: return "void";
      default: assert(false); return "";
    }
  }

  // Binaryen specific

  /** Converts this type to its respective native type. */
  toNativeType(): NativeType {
    switch (this.kind) {

      default:
        return NativeType.I32;

      case TypeKind.I64:
      case TypeKind.U64:
        return NativeType.I64;

      case TypeKind.ISIZE:
      case TypeKind.USIZE:
        return this.size == 64 ? NativeType.I64 : NativeType.I32;

      case TypeKind.F32:
        return NativeType.F32;

      case TypeKind.F64:
        return NativeType.F64;

      case TypeKind.VOID:
        return NativeType.None;
    }
  }

  /** Converts this type to its native `0` value. */
  toNativeZero(module: Module): ExpressionRef {
    switch (this.kind) {

      case TypeKind.VOID:
        assert(false);

      default:
        return module.createI32(0);

      case TypeKind.ISIZE:
      case TypeKind.USIZE:
        if (this.size != 64)
          return module.createI32(0);
        // fall-through

      case TypeKind.I64:
      case TypeKind.U64:
        return module.createI64(0);

      case TypeKind.F32:
        return module.createF32(0);

      case TypeKind.F64:
        return module.createF64(0);
    }
  }

  /** Converts this type to its native `1` value. */
  toNativeOne(module: Module): ExpressionRef {
    switch (this.kind) {

      case TypeKind.VOID:
        assert(false);

      default:
        return module.createI32(1);

      case TypeKind.ISIZE:
      case TypeKind.USIZE:
        if (this.size != 64)
          return module.createI32(1);
        // fall-through

      case TypeKind.I64:
      case TypeKind.U64:
        return module.createI64(1);

      case TypeKind.F32:
        return module.createF32(1);

      case TypeKind.F64:
        return module.createF64(1);
    }
  }

  /** Converts this type to its native `-1` value. */
  toNativeNegOne(module: Module): ExpressionRef {
    switch (this.kind) {

      case TypeKind.VOID:
        assert(false);

      default:
        return module.createI32(-1);

      case TypeKind.ISIZE:
      case TypeKind.USIZE:
        if (this.size != 64)
          return module.createI32(-1);
        // fall-through

      case TypeKind.I64:
      case TypeKind.U64:
        return module.createI64(-1, -1);

      case TypeKind.F32:
        return module.createF32(-1);

      case TypeKind.F64:
        return module.createF64(-1);
    }
  }

  /** Converts this type to its signature string. */
  toSignatureString(): string {
    switch (this.kind) {

      default:
        return "i";

      case TypeKind.I64:
      case TypeKind.U64:
        return "I";

      case TypeKind.ISIZE:
      case TypeKind.USIZE:
        return this.size == 64 ? "I" : "i";

      case TypeKind.F32:
        return "f";

      case TypeKind.F64:
        return "F";

      case TypeKind.VOID:
        return "v";
    }
  }

  // Types

  /** An 8-bit signed integer. */
  static readonly i8: Type  = new Type(TypeKind.I8, TypeFlags.SIGNED | TypeFlags.SMALL | TypeFlags.INTEGER | TypeFlags.VALUE, 8);
  /** A 16-bit signed integer. */
  static readonly i16: Type = new Type(TypeKind.I16, TypeFlags.SIGNED | TypeFlags.SMALL | TypeFlags.INTEGER | TypeFlags.VALUE, 16);
  /** A 32-bit signed integer. */
  static readonly i32: Type = new Type(TypeKind.I32, TypeFlags.SIGNED | TypeFlags.INTEGER | TypeFlags.VALUE, 32);
  /** A 64-bit signed integer. */
  static readonly i64: Type = new Type(TypeKind.I64, TypeFlags.SIGNED | TypeFlags.LONG | TypeFlags.INTEGER | TypeFlags.VALUE, 64);
  /** A 32-bit signed size. WASM32 only. */
  static readonly isize32: Type = new Type(TypeKind.ISIZE, TypeFlags.SIGNED | TypeFlags.SIZE | TypeFlags.INTEGER | TypeFlags.VALUE, 32);
  /** A 64-bit signed size. WASM64 only. */
  static readonly isize64: Type = new Type(TypeKind.ISIZE, TypeFlags.SIGNED | TypeFlags.LONG | TypeFlags.SIZE | TypeFlags.INTEGER | TypeFlags.VALUE, 64);
  /** An 8-bit unsigned integer. */
  static readonly u8: Type = new Type(TypeKind.U8, TypeFlags.UNSIGNED | TypeFlags.SMALL | TypeFlags.INTEGER | TypeFlags.VALUE, 8);
  /** A 16-bit unsigned integer. */
  static readonly u16: Type = new Type(TypeKind.U16, TypeFlags.UNSIGNED | TypeFlags.SMALL | TypeFlags.INTEGER | TypeFlags.VALUE, 16);
  /** A 32-bit unsigned integer. */
  static readonly u32: Type = new Type(TypeKind.U32, TypeFlags.UNSIGNED | TypeFlags.INTEGER | TypeFlags.VALUE, 32);
  /** A 64-bit unsigned integer. */
  static readonly u64: Type = new Type(TypeKind.U64, TypeFlags.UNSIGNED | TypeFlags.LONG | TypeFlags.INTEGER | TypeFlags.VALUE, 64);
  /** A 32-bit unsigned size. WASM32 only. */
  static readonly usize32: Type = new Type(TypeKind.USIZE, TypeFlags.UNSIGNED | TypeFlags.SIZE | TypeFlags.INTEGER | TypeFlags.VALUE, 32);
  /** A 64-bit unsigned size. WASM64 only. */
  static readonly usize64: Type = new Type(TypeKind.USIZE, TypeFlags.UNSIGNED | TypeFlags.LONG | TypeFlags.SIZE | TypeFlags.INTEGER | TypeFlags.VALUE, 64);
  /** A 1-bit unsigned integer. */
  static readonly bool: Type = new Type(TypeKind.BOOL, TypeFlags.UNSIGNED | TypeFlags.SMALL | TypeFlags.INTEGER | TypeFlags.VALUE, 1);
  /** A 32-bit float. */
  static readonly f32: Type = new Type(TypeKind.F32, TypeFlags.SIGNED | TypeFlags.FLOAT | TypeFlags.VALUE, 32);
  /** A 64-bit float. */
  static readonly f64: Type = new Type(TypeKind.F64, TypeFlags.SIGNED | TypeFlags.LONG | TypeFlags.FLOAT | TypeFlags.VALUE, 64);
  /** No return type. */
  static readonly void: Type = new Type(TypeKind.VOID, TypeFlags.NONE, 0);
}

/** Converts an array of types to an array of native types. */
export function typesToNativeTypes(types: Type[]): NativeType[] {
  var k = types.length;
  var ret = new Array<NativeType>(k);
  for (var i = 0; i < k; ++i)
    ret[i] = types[i].toNativeType();
  return ret;
}

/** Converts an array of types to its combined string representation. Usually type arguments. */
export function typesToString(types: Type[]): string {
  var k = types.length;
  if (!k)
    return "";
  var sb = new Array<string>(k);
  for (var i = 0; i < k; ++i)
    sb[i] = types[i].toString();
  return sb.join(", ");
}
