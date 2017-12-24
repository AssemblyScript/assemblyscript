import {
  Class,
  Function
} from "./program";

import {
  sb
} from "./util/sb";

import {
  NativeType, ExpressionRef, Module
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
  // SYMBOL ?
}

/** Represents a resolved type. */
export class Type {

  /** Type kind. */
  kind: TypeKind;
  /** Size in bits. */
  size: i32;
  /** Size in bytes. */
  byteSize: i32;
  /** Underlying class type, if a class type. */
  classType: Class | null;
  /** Underlying function type, if a function type. */
  functionType: Function | null;
  /** Whether nullable or not. */
  isNullable: bool = false;
  /** Respective nullable type, if nullable. */
  nullableType: Type | null = null;

  /** Constructs a new resolved type. */
  constructor(kind: TypeKind, size: i32) {
    this.kind = kind;
    this.size = size;
    this.byteSize = <i32>ceil<f64>(<f64>size / 8);
    this.classType = null;
  }

  /** Sign-extending 32-bit shift, if a small signed integer. */
  get smallIntegerShift(): i32 { return 32 - this.size; }
  /** Truncating 32-bit mask, if a small unsigned integer. */
  get smallIntegerMask(): i32 { return -1 >>> (32 - this.size); }

  /** Tests if this type is of any integer kind. */
  get isAnyInteger(): bool { return this.kind >= TypeKind.I8 && this.kind <= TypeKind.BOOL; }
  /** Tests if this type is of any small integer kind. */
  get isSmallInteger(): bool { return this.size != 0 && this.size < 32; }
  /** Tests if this type is of any long integer kind. */
  get isLongInteger(): bool { return this.size == 64 && this.kind != TypeKind.F64; }
  /** Tests if this type is of any unsigned integer kind. */
  get isUnsignedInteger(): bool { return this.kind >= TypeKind.U8 && this.kind <= TypeKind.BOOL; }
  /** Tests if this type is of any signed integer kind. */
  get isSignedInteger(): bool { return this.kind >= TypeKind.I8 && this.kind <= TypeKind.ISIZE; }
  /** Tests if this type is of any size kind, i.e., `isize` or `usize`. */
  get isAnySize(): bool { return this.kind == TypeKind.ISIZE || this.kind == TypeKind.USIZE; }
  /** Tests if this type is of any float kind, i.e., `f32` or `f64`. */
  get isAnyFloat(): bool { return this.kind == TypeKind.F32 || this.kind == TypeKind.F64; }

  /** Composes a class type from this type and a class. */
  asClass(classType: Class): Type {
    assert(this.kind == TypeKind.USIZE);
    const ret: Type = new Type(this.kind, this.size);
    ret.classType = classType;
    return ret;
  }

  /** Composes a function type from this type and a function. */
  asFunction(functionType: Function): Type {
    assert(this.kind == TypeKind.USIZE);
    const ret: Type = new Type(this.kind, this.size);
    ret.functionType = functionType;
    return ret;
  }

  /** Composes the respective nullable type of this type. */
  asNullable(): Type | null {
    assert(this.kind == TypeKind.USIZE);
    if (this.isNullable && !this.nullableType)
      (this.nullableType = new Type(this.kind, this.size)).isNullable = true;
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
    return this.kind == TypeKind.F32
      ? NativeType.F32
      : this.kind == TypeKind.F64
      ? NativeType.F64
      : this.isLongInteger
      ? NativeType.I64
      : this.isAnyInteger || this.kind == TypeKind.BOOL
      ? NativeType.I32
      : NativeType.None;
  }

  /** Converts this type to its native `0` value. */
  toNativeZero(module: Module): ExpressionRef {
    return this.kind == TypeKind.F32 ? module.createF32(0)
         : this.kind == TypeKind.F64 ? module.createF64(0)
         : this.isLongInteger ? module.createI64(0, 0)
         : module.createI32(0);
  }

  /** Converts this type to its native `1` value. */
  toNativeOne(module: Module): ExpressionRef {
    return this.kind == TypeKind.F32 ? module.createF32(1)
         : this.kind == TypeKind.F64 ? module.createF64(1)
         : this.isLongInteger ? module.createI64(1, 0)
         : module.createI32(1);
  }

  /** Converts this type to its signature name. */
  toSignatureName(): string {
    return this.kind == TypeKind.VOID ? "v"
         : this.kind == TypeKind.F32 ? "f"
         : this.kind == TypeKind.F64 ? "F"
         : this.isLongInteger ? "I"
         : "i";
  }

  // Types

  /** An 8-bit signed integer. */
  static readonly i8: Type  = new Type(TypeKind.I8, 8);
  /** A 16-bit signed integer. */
  static readonly i16: Type = new Type(TypeKind.I16, 16);
  /** A 32-bit signed integer. */
  static readonly i32: Type = new Type(TypeKind.I32, 32);
  /** A 64-bit signed integer. */
  static readonly i64: Type = new Type(TypeKind.I64, 64);
  /** A 32-bit signed size. WASM32 only. */
  static readonly isize32: Type = new Type(TypeKind.I32, 32);
  /** A 64-bit signed size. WASM64 only. */
  static readonly isize64: Type = new Type(TypeKind.I64, 64);
  /** An 8-bit unsigned integer. */
  static readonly u8: Type = new Type(TypeKind.U8, 8);
  /** A 16-bit unsigned integer. */
  static readonly u16: Type = new Type(TypeKind.U16, 16);
  /** A 32-bit unsigned integer. */
  static readonly u32: Type = new Type(TypeKind.U32, 32);
  /** A 64-bit unsigned integer. */
  static readonly u64: Type = new Type(TypeKind.U64, 64);
  /** A 32-bit unsigned size. WASM32 only. */
  static readonly usize32: Type = new Type(TypeKind.U32, 32);
  /** A 64-bit unsigned size. WASM64 only. */
  static readonly usize64: Type = new Type(TypeKind.U64, 64);
  /** A 1-bit unsigned integer. */
  static readonly bool: Type = new Type(TypeKind.BOOL, 1);
  /** A 32-bit float. */
  static readonly f32: Type = new Type(TypeKind.F32, 32);
  /** A 64-bit float. */
  static readonly f64: Type = new Type(TypeKind.F64, 64);
  /** No return type. */
  static readonly void: Type = new Type(TypeKind.VOID, 0);
}

/** Converts an array of types to an array of native types. */
export function typesToNativeTypes(types: Type[]): NativeType[] {
  const k: i32 = types.length;
  const ret: NativeType[] = new Array(k);
  for (let i: i32 = 0; i < k; ++i)
    ret[i] = types[i].toNativeType();
  return ret;
}

/** Converts an array of types to its combined string representation. Usually type arguments. */
export function typesToString(types: Type[], prefix: string = "<", postfix: string = ">"): string {
  const k: i32 = types.length;
  if (!k)
    return "";
  sb.length = 0;
  for (let i: i32 = 0; i < k; ++i)
    sb[i] = types[i].toString();
  return prefix + sb.join(", ") + postfix;
}
