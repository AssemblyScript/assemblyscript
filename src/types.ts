import { Class } from "./program";
import { sb } from "./util";

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

  VOID
}

export class Type {

  kind: TypeKind;
  size: i32;
  classType: Class | null;
  nullable: bool = false;
  nullableType: Type | null = null; // cached, of this type

  constructor(kind: TypeKind, size: i32) {
    this.kind = kind;
    this.size = size;
    this.classType = null;
  }

  get smallIntegerShift(): i32 { return 32 - this.size; }
  get smallIntegerMask(): i32 { return -1 >>> (32 - this.size); }

  get isAnyInteger(): bool { return this.kind >= TypeKind.I8 && this.kind <= TypeKind.BOOL; }
  get isSmallInteger(): bool { return this.size != 0 && this.size < 32; }
  get isLongInteger(): bool { return this.size == 64 && this.kind != TypeKind.F64; }
  get isUnsignedInteger(): bool { return this.kind >= TypeKind.U8 && this.kind <= TypeKind.BOOL; }
  get isSignedInteger(): bool { return this.kind >= TypeKind.I8 && this.kind <= TypeKind.ISIZE; }
  get isAnySize(): bool { return this.kind == TypeKind.ISIZE || this.kind == TypeKind.USIZE; }
  get isAnyFloat(): bool { return this.kind == TypeKind.F32 || this.kind == TypeKind.F64; }

  asClass(classType: Class): Type {
    const ret: Type = new Type(this.kind, this.size);
    ret.classType = classType;
    return ret;
  }

  asNullable(): Type {
    if (this.kind != TypeKind.USIZE)
      throw new Error("unexpected non-usize nullable");
    if (!this.nullableType)
      (this.nullableType = new Type(this.kind, this.size)).nullable = true;
    return <Type>this.nullableType;
  }

  toString(kindOnly: bool = false): string {
    switch (this.kind) {
      case TypeKind.I8: return "i8";
      case TypeKind.I16: return "i16";
      case TypeKind.I32: return "i32";
      case TypeKind.ISIZE: return "isize";
      case TypeKind.U8: return "u8";
      case TypeKind.U16: return "u16";
      case TypeKind.U32: return "u32";
      case TypeKind.U64: return "u64";
      case TypeKind.USIZE: return this.classType != null && !kindOnly ? this.classType.toString() : "usize";
      case TypeKind.BOOL: return "bool";
      case TypeKind.F32: return "f32";
      case TypeKind.F64: return "f64";
      case TypeKind.VOID: return "void";
      default:
        throw new Error("unexpected type kind");
    }
  }

  static readonly i8: Type  = new Type(TypeKind.I8, 8);
  static readonly i16: Type = new Type(TypeKind.I16, 16);
  static readonly i32: Type = new Type(TypeKind.I32, 32);
  static readonly i64: Type = new Type(TypeKind.I64, 64);
  static readonly isize32: Type = new Type(TypeKind.I32, 32);
  static readonly isize64: Type = new Type(TypeKind.I64, 64);
  static readonly u8: Type = new Type(TypeKind.U8, 8);
  static readonly u16: Type = new Type(TypeKind.U16, 16);
  static readonly u32: Type = new Type(TypeKind.U32, 32);
  static readonly u64: Type = new Type(TypeKind.U64, 64);
  static readonly usize32: Type = new Type(TypeKind.U32, 32);
  static readonly usize64: Type = new Type(TypeKind.U64, 64);
  static readonly bool: Type = new Type(TypeKind.BOOL, 1);
  static readonly f32: Type = new Type(TypeKind.F32, 32);
  static readonly f64: Type = new Type(TypeKind.F64, 64);
  static readonly void: Type = new Type(TypeKind.VOID, 0);
}

export function typesToString(types: Type[], prefix: string = "<", postfix: string = ">"): string {
  const k: i32 = types.length;
  if (!k)
    return "";
  sb.length = 0;
  for (let i: i32 = 0; i < k; ++i)
    sb[i] = types[i].toString();
  return prefix + sb.join(",") + postfix;
}
