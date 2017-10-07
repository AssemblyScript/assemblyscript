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
  classType: ClassType | null;
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

  asClass(classType: ClassType): Type {
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
      case TypeKind.USIZE: return this.classType && !kindOnly ? this.classType.toString() : "usize";
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

export class FunctionType {

  typeArguments: Type[];
  parameterTypes: Type[];
  returnType: Type;

  additionalLocals: Type[];
  typeArgumentsMap: Map<string, Type> | null = null;
  locals: Map<string, LocalType> = new Map();
  breakContext: string | null = null;

  private breakMajor: i32 = 0;
  private breakMinor: i32 = 0;

  constructor(typeArguments: Type[], parameterTypes: Type[], returnType: Type, parameterNames: string[] | null = null) {
    this.typeArguments = typeArguments;
    this.parameterTypes = parameterTypes;
    this.returnType = returnType;
    this.additionalLocals = new Array();
    if (parameterNames) {
      if (parameterTypes.length != (<string[]>parameterNames).length)
        throw new Error("unexpected parameter count mismatch");;
      for (let i: i32 = 0, k: i32 = parameterTypes.length; i < k; ++i) {
        const name: string = (<string[]>parameterNames)[i];
        if (this.locals.has(name))
          throw new Error("duplicate parameter name");
        this.locals.set(name, new LocalType(i, parameterTypes[i]));
      }
    }
  }

  enterBreakContext(): string {
    if (!this.breakMinor)
      this.breakMajor++;
    return this.breakContext = this.breakMajor.toString(10) + "." + (++this.breakMinor).toString(10);
  }

  leaveBreakContext(): void {
    if (--this.breakMinor < 0)
      throw new Error("unexpected unbalanced break context");
    if (this.breakMinor == 0 && !--this.breakMajor)
      this.breakContext = null;
  }

  addLocal(type: Type, name: string | null = null): i32 {
    // internal locals don't necessarily need names if referenced by index only
    if (name && this.locals.has(<string>name))
      throw new Error("duplicate local name");
    const index: i32 = this.parameterTypes.length + this.additionalLocals.length;
    this.additionalLocals.push(type);
    if (name)
      this.locals.set(<string>name, new LocalType(index, type));
    return index;
  }
}

export class LocalType {

  index: i32;
  type: Type;

  constructor(index: i32, type: Type) {
    this.index = index;
    this.type = type;
  }
}

export class ClassType {

  name: string;
  typeArguments: Type[];
  base: ClassType | null;

  type: Type;
  typeArgumentsMap: Map<string, Type> | null = null;

  constructor(name: string, usizeType: Type, typeArguments: Type[], base: ClassType | null = null) {
    this.name = name;
    this.typeArguments = typeArguments;
    this.base = base;
    this.type = usizeType.asClass(this);
  }

  toString(): string {
    let str: string = this.typeArguments.length ? this.name + typeArgumentsToString(this.typeArguments) : this.name;
    return this.type.nullable ? str + " | null" : str;
  }
}

export function typeArgumentsToString(typeArguments: Type[]): string {
  const k: i32 = typeArguments.length;
  if (!k)
    return "";
  sb.length = 0;
  for (let i: i32 = 0; i < k; ++i)
    sb[i] = typeArguments[i].toString();
  return "<" + sb.join(",") + ">";
}
