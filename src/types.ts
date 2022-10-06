/**
 * @fileoverview Mappings from AssemblyScript types to WebAssembly types.
 * @license Apache-2.0
 */

import {
  Class,
  Program,
  DecoratorFlags
} from "./program";

import {
  TypeRef,
  createType
} from "./module";

/** Indicates the kind of a type. */
export const enum TypeKind {
  /** A 1-bit unsigned integer. */
  BOOL,

  // signed integers

  /** An 8-bit signed integer. */
  I8,
  /** A 16-bit signed integer. */
  I16,
  /** A 32-bit signed integer. */
  I32,
  /** A 64-bit signed integer. */
  I64,
  /** A 32-bit/64-bit signed integer, depending on the target. */
  ISIZE,

  // unsigned integers

  /** An 8-bit unsigned integer. */
  U8,
  /** A 16-bit unsigned integer. */
  U16,
  /** A 32-bit unsigned integer. Also the base of function types. */
  U32,
  /** A 64-bit unsigned integer. */
  U64,
  /** A 32-bit/64-bit unsigned integer, depending on the target. Also the base of class types. */
  USIZE,

  // floats

  /** A 32-bit float. */
  F32,
  /** A 64-bit double. */
  F64,

  // vectors

  /** A 128-bit vector. */
  V128,

  // references

  /** Function reference. */
  FUNCREF,
  /** External reference. */
  EXTERNREF,
  /** Any reference. */
  ANYREF,
  /** Equatable reference. */
  EQREF,
  /** 31-bit integer reference. */
  I31REF,
  /** Data reference. */
  DATAREF,
  /** String reference. */
  STRINGREF,
  /** WTF8 string view. */
  STRINGVIEW_WTF8,
  /** WTF16 string view. */
  STRINGVIEW_WTF16,
  /** String iterator. */
  STRINGVIEW_ITER,

  // other

  /** No return type. */
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
  /** Is a varying (in size) type. */
  VARYING = 1 << 4,
  /** Is smaller than 32-bits. */
  SHORT = 1 << 5,
  /** Is larger than 32-bits. */
  LONG = 1 << 6,
  /** Is a value type. */
  VALUE = 1 << 7,
  /** Is a reference type (either a class or a function type). */
  REFERENCE = 1 << 8,
  /** Is a nullable type. */
  NULLABLE = 1 << 9,
  /** Is a vector type. */
  VECTOR = 1 << 10,
  /** Is an external type. */
  EXTERNAL = 1 << 11,
  /** Is a class. */
  CLASS = 1 << 12,
  /** Is a function. */
  FUNCTION = 1 << 13
}

/** Represents a resolved type. */
export class Type {

  /** Type kind. */
  kind: TypeKind;
  /** Type flags. */
  flags: TypeFlags;
  /** Size in bits. */
  size: i32;
  /** Underlying class reference, if a class type. */
  classReference: Class | null = null;
  /** Underlying signature reference, if a function type. */
  signatureReference: Signature | null = null;
  /** Respective non-nullable type, if nullable. */
  private _nonNullableType: Type | null = null;
  /** Respective nullable type, if non-nullable. */
  private _nullableType: Type | null = null;

  /** Constructs a new resolved type. */
  constructor(kind: TypeKind, flags: TypeFlags, size: u32) {
    this.kind = kind;
    this.flags = flags;
    this.size = size;
    if (!(flags & TypeFlags.NULLABLE)) {
      this._nonNullableType = this;
    } else {
      this._nullableType = this;
    }
  }

  /** Returns the closest int type representing this type. */
  get intType(): Type {
    if (this == Type.auto) return this; // keep auto as a hint
    switch (this.kind) {
      case TypeKind.BOOL:
      case TypeKind.I32:
      case TypeKind.F32:   return Type.i32;
      case TypeKind.I8:    return Type.i8;
      case TypeKind.I16:   return Type.i16;
      case TypeKind.F64:
      case TypeKind.I64:   return Type.i64;
      case TypeKind.ISIZE: return this.size == 64 ? Type.isize64 : Type.isize32;
      case TypeKind.U8:    return Type.u8;
      case TypeKind.U16:   return Type.u16;
      case TypeKind.U32:   return Type.u32;
      case TypeKind.U64:   return Type.u64;
      case TypeKind.USIZE: return this.size == 64 ? Type.usize64 : Type.usize32;
      default: return Type.i32;
    }
  }

  /** Substitutes this type with the auto type if this type is void. */
  get exceptVoid(): Type {
    return this.kind == TypeKind.VOID ? Type.auto : this;
  }

  /** Size in bytes. */
  get byteSize(): i32 {
    // ceiled div by 8
    return this.size + 7 >>> 3;
  }

  /** Gets this type's logarithmic alignment in memory. */
  get alignLog2(): i32 {
    return 31 - clz<i32>(this.byteSize);
  }

  /** Tests if this type represents a basic value. */
  get isValue(): bool {
    return this.is(TypeFlags.VALUE);
  }

  /** Tests if this type represents an integer value. */
  get isIntegerValue(): bool {
    return this.is(TypeFlags.INTEGER | TypeFlags.VALUE);
  }

  /** Tests if this type represents a small (< 32 bits) integer value. */
  get isShortIntegerValue(): bool {
    return this.is(TypeFlags.SHORT | TypeFlags.INTEGER | TypeFlags.VALUE);
  }

  /** Tests if this type represents a long (> 32 bits) integer value. */
  get isLongIntegerValue(): bool {
    return this.is(TypeFlags.LONG | TypeFlags.INTEGER | TypeFlags.VALUE);
  }

  /** Tests if this type represents a signed integer value. */
  get isSignedIntegerValue(): bool {
    return this.is(TypeFlags.SIGNED | TypeFlags.INTEGER | TypeFlags.VALUE);
  }

  /** Tests if this type represents an unsigned integer value. */
  get isUnsignedIntegerValue(): bool {
    return this.is(TypeFlags.UNSIGNED | TypeFlags.INTEGER | TypeFlags.VALUE);
  }

  /** Tests if this type represents a varying (in size) integer value. */
  get isVaryingIntegerValue(): bool {
    return this.is(TypeFlags.VARYING | TypeFlags.INTEGER | TypeFlags.VALUE);
  }

  /** Tests if this type represents an integer, including references.  */
  get isIntegerInclReference(): bool {
    return this.is(TypeFlags.INTEGER);
  }

  /** Tests if this type represents a floating point value. */
  get isFloatValue(): bool {
    return this.is(TypeFlags.FLOAT | TypeFlags.VALUE);
  }

  /** Tests if this type represents a numeric (integer or floating point) value. */
  get isNumericValue(): bool {
    return this.isIntegerValue || this.isFloatValue;
  }

  /** Tests if this type represents a boolean value. */
  get isBooleanValue(): bool {
    return this == Type.bool;
  }

  /** Tests if this type represents a vector value. */
  get isVectorValue(): bool {
    return this.is(TypeFlags.VECTOR | TypeFlags.VALUE);
  }

  /** Tests if this type represents an internal or external reference. */
  get isReference(): bool {
    return this.is(TypeFlags.REFERENCE);
  }

  /** Tests if this type represents a nullable internal or external reference. */
  get isNullableReference(): bool {
    return this.is(TypeFlags.NULLABLE | TypeFlags.REFERENCE);
  }

  /** Tests if this type represents an internal object. */
  get isInternalReference(): bool {
    return this.is(TypeFlags.INTEGER | TypeFlags.REFERENCE);
  }

  /** Tests if this type represents an external object. */
  get isExternalReference(): bool {
    return this.is(TypeFlags.EXTERNAL | TypeFlags.REFERENCE);
  }

  /** Gets the underlying class of this type, if any. */
  getClass(): Class | null {
    return this.isInternalReference
      ? this.classReference
      : null;
  }

  /** Tests if this type represents a class. */
  get isClass(): bool {
    return this.getClass() != null;
  }

  /** Gets the underlying class or wrapper class of this type, if any. */
  getClassOrWrapper(program: Program): Class | null {
    let classReference = this.getClass();
    if (classReference) {
      // typical class
      return classReference;
    } else {
      let signatureReference = this.getSignature();
      if (signatureReference) {
        // function wrapper
        let type = signatureReference.type;
        let wrapper = assert(program.resolver.resolveClass(program.functionPrototype, [ type ]));
        wrapper.wrappedType = type;
        return wrapper;
      } else {
        let wrapperClasses = program.wrapperClasses;
        if (wrapperClasses.has(this)) {
          // value wrapper
          return assert(wrapperClasses.get(this));
        }
      }
    }
    return null;
  }

  /** Gets the underlying function signature of this type, if any. */
  getSignature(): Signature | null {
    return this.isInternalReference
      ? this.signatureReference
      : null;
  }

  /** Tests if this type represents a function. */
  get isFunction(): bool {
    return this.getSignature() != null;
  }

  /** Tests if this is a managed type that needs GC hooks. */
  get isManaged(): bool {
    if (this.isInternalReference) {
      let classReference = this.classReference;
      if (classReference) return !classReference.hasDecorator(DecoratorFlags.UNMANAGED);
      return this.signatureReference != null; // function references are managed
    }
    return false;
  }

  /** Tests if this is a class type explicitly annotated as unmanaged. */
  get isUnmanaged(): bool {
    var classReference = this.classReference;
    return classReference != null && classReference.hasDecorator(DecoratorFlags.UNMANAGED);
  }

  get isMemory(): bool {
    switch (this.kind) {
      case TypeKind.BOOL:
      case TypeKind.I8:
      case TypeKind.I16:
      case TypeKind.I32:
      case TypeKind.I64:
      case TypeKind.ISIZE:
      case TypeKind.U8:
      case TypeKind.U16:
      case TypeKind.U32:
      case TypeKind.U64:
      case TypeKind.USIZE:
      case TypeKind.F32:
      case TypeKind.F64:
      case TypeKind.V128: return true;
    }
    return false;
  }

  /** Gets the corresponding non-nullable type. */
  get nonNullableType(): Type {
    if (this.isExternalReference) {
      return this; // TODO
    }
    return assert(this._nonNullableType); // set either in ctor or asNullable
  }

  /** Gets the corresponding nullable type, if applicable. */
  get nullableType(): Type | null {
    return this._nullableType; // set either in ctor or asNullable
  }

  /** Computes the sign-extending shift in the target type. */
  computeSmallIntegerShift(targetType: Type): i32 {
    return targetType.size - this.size;
  }

  /** Computes the truncating mask in the target type. */
  computeSmallIntegerMask(targetType: Type): i32 {
    var size = this.size;
    if (!this.is(TypeFlags.UNSIGNED)) size -= 1;
    return ~0 >>> (targetType.size - size);
  }

  /** Tests if this type has (all of) the specified flags. */
  is(flags: TypeFlags): bool { return (this.flags & flags) == flags; }
  /** Tests if this type has any of the specified flags. */
  isAny(flags: TypeFlags): bool { return (this.flags & flags) != 0; }

  /** Composes the respective nullable type of this type. */
  asNullable(): Type {
    assert(this.isInternalReference);
    var nullableType = this._nullableType;
    if (!nullableType) {
      assert(!this.isNullableReference);
      this._nullableType = nullableType = new Type(this.kind, this.flags | TypeFlags.NULLABLE, this.size);
      nullableType.classReference = this.classReference;         // either a class reference
      nullableType.signatureReference = this.signatureReference; // or a function reference
      nullableType._nonNullableType = this;
    }
    return nullableType;
  }

  /** Use unsigned type for according size if possible. */
  toUnsigned(): Type {
    switch (this.kind) {
      case TypeKind.I8:    return Type.u8;
      case TypeKind.I16:   return Type.u16;
      case TypeKind.I32:   return Type.u32;
      case TypeKind.I64:   return Type.u64;
      case TypeKind.ISIZE: return this.size == 64 ? Type.usize64 : Type.usize32;
    }
    return this;
  }

  /** Tests if this type equals the specified. */
  equals(other: Type): bool {
    if (this.kind != other.kind) return false;
    if (this.isReference) {
      return (
        this.classReference == other.classReference &&
        this.signatureReference == other.signatureReference &&
        this.isNullableReference == other.isNullableReference
      );
    }
    return true;
  }

  /** Tests if a value of this type is assignable to the target type incl. implicit conversion. */
  isAssignableTo(target: Type, signednessIsRelevant: bool = false): bool {
    var currentClass: Class | null;
    var targetClass: Class | null;
    var currentFunction: Signature | null;
    var targetFunction: Signature | null;
    if (this.isReference) {
      if (target.isReference) {
        if (!this.isNullableReference || target.isNullableReference) {
          if (currentClass = this.getClass()) {
            if (targetClass = target.getClass()) {
              return currentClass.isAssignableTo(targetClass);
            }
          } else if (currentFunction = this.getSignature()) {
            if (targetFunction = target.getSignature()) {
              return currentFunction.isAssignableTo(targetFunction);
            }
          } else if (this.isExternalReference) {
            if (
              this.kind == target.kind ||
              (target.kind == TypeKind.ANYREF && this.kind != TypeKind.EXTERNREF)
            ) {
              return true;
            }
          }
        }
      }
    } else if (!target.isReference) {
      if (this.isIntegerValue) {
        if (target.isIntegerValue) {
          if (
            !signednessIsRelevant ||
            this.isBooleanValue || // a bool (0 or 1) can be safely assigned to all sorts of integers
            this.isSignedIntegerValue == target.isSignedIntegerValue
          ) {
            return this.size <= target.size;
          }
        } else if (target.kind == TypeKind.F32) {
          return this.size <= 23; // mantissa bits
        } else if (target.kind == TypeKind.F64) {
          return this.size <= 52; // ^
        }
      } else if (this.isFloatValue) {
        if (target.isFloatValue) {
          return this.size <= target.size;
        }
      } else if (this.isVectorValue) {
        if (target.isVectorValue) {
          return this.size == target.size;
        }
      }
    }
    return false;
  }

  /** Tests if a value of this type is assignable to the target type excl. implicit conversion. */
  isStrictlyAssignableTo(target: Type, signednessIsRelevant: bool = false): bool {
    if (this.isReference) return this.isAssignableTo(target);
    else if (target.isReference) return false;
    // not dealing with references from here on
    if (this.isIntegerValue) {
      return target.isIntegerValue && target.size == this.size && (
        !signednessIsRelevant ||
        this.isSignedIntegerValue == target.isSignedIntegerValue
      );
    }
    return this.kind == target.kind;
  }

  /** Tests if a value of this type can be changed to the target type using `changetype`. */
  isChangeableTo(target: Type): bool {
    // special in that it allows integer references as well
    if (this.is(TypeFlags.INTEGER) && target.is(TypeFlags.INTEGER)) {
      let size = this.size;
      return size == target.size && (
        size >= 32 ||
        this.is(TypeFlags.SIGNED) == target.is(TypeFlags.SIGNED)
      );
    }
    return this.kind == target.kind;
  }

  /** Tests if this type can extend or implement the given type. */
  canExtendOrImplement(base: Type): bool {
    // Both must be class types
    var thisClass = this.getClass();
    var baseClass = base.getClass();
    if (!thisClass || !baseClass) return false;
    // Both types must be either managed or unmanaged
    if (this.isManaged != base.isManaged) return false;
    // Both types must be either internal or external references
    if (this.isInternalReference) {
      if (!base.isInternalReference) return false;
    } else if (this.isExternalReference) {
      if (!base.isExternalReference) return false;
    } else {
      return false;
    }
    // Interfaces can only extend interfaces
    if (thisClass.isInterface && !baseClass.isInterface) return false;
    return true;
  }

  /** Determines the common denominator type of two types, if there is any. */
  static commonDenominator(left: Type, right: Type, signednessIsImportant: bool): Type | null {
    if (right.isAssignableTo(left, signednessIsImportant)) return left;
    else if (left.isAssignableTo(right, signednessIsImportant)) return right;
    return null;
  }

  /** Converts this type to a string. */
  toString(validWat: bool = false): string {
    const nullablePostfix = validWat ? "|null" : " | null";
    if (this.isReference) {
      let classReference = this.getClass();
      if (classReference) {
        return this.isNullableReference
          ? classReference.internalName + nullablePostfix
          : classReference.internalName;
      } else {
        let signatureReference = this.getSignature();
        if (signatureReference) {
          return this.isNullableReference
            ? `(${signatureReference.toString(validWat)})${nullablePostfix}`
            : signatureReference.toString(validWat);
        }
      }
    }
    switch (this.kind) {
      case TypeKind.BOOL: return "bool";
      case TypeKind.I8: return "i8";
      case TypeKind.I16: return "i16";
      case TypeKind.I32: return "i32";
      case TypeKind.I64: return "i64";
      case TypeKind.ISIZE: return "isize";
      case TypeKind.U8: return "u8";
      case TypeKind.U16: return "u16";
      case TypeKind.U32: return "u32";
      case TypeKind.U64: return "u64";
      case TypeKind.USIZE: return "usize";
      case TypeKind.F32: return "f32";
      case TypeKind.F64: return "f64";
      case TypeKind.V128: return "v128";
      case TypeKind.FUNCREF: return "funcref";
      case TypeKind.EXTERNREF: return "externref";
      case TypeKind.ANYREF: return "anyref";
      case TypeKind.EQREF: return "eqref";
      case TypeKind.I31REF: return "i31ref";
      case TypeKind.DATAREF: return "dataref";
      case TypeKind.STRINGREF: return "stringref";
      case TypeKind.STRINGVIEW_WTF8: return "stringview_wtf8";
      case TypeKind.STRINGVIEW_WTF16: return "stringview_wtf16";
      case TypeKind.STRINGVIEW_ITER: return "stringview_iter";
      default: assert(false);
      case TypeKind.VOID: return "void";
    }
  }

  // Binaryen specific

  /** Converts this type to its respective type reference. */
  toRef(): TypeRef {
    switch (this.kind) {
      default: assert(false);
      case TypeKind.BOOL:
      case TypeKind.I8:
      case TypeKind.I16:
      case TypeKind.I32:
      case TypeKind.U8:
      case TypeKind.U16:
      case TypeKind.U32: return TypeRef.I32;
      case TypeKind.ISIZE:
      case TypeKind.USIZE: if (this.size != 64) return TypeRef.I32;
      case TypeKind.I64:
      case TypeKind.U64:  return TypeRef.I64;
      case TypeKind.F32:  return TypeRef.F32;
      case TypeKind.F64:  return TypeRef.F64;
      case TypeKind.V128: return TypeRef.V128;
      // TODO: nullable/non-nullable refs have different type refs
      case TypeKind.FUNCREF: return TypeRef.Funcref;
      case TypeKind.EXTERNREF: return TypeRef.Externref;
      case TypeKind.ANYREF: return TypeRef.Anyref;
      case TypeKind.EQREF: return TypeRef.Eqref;
      case TypeKind.I31REF: return TypeRef.I31ref;
      case TypeKind.DATAREF: return TypeRef.Dataref;
      case TypeKind.STRINGREF: return TypeRef.Stringref;
      case TypeKind.STRINGVIEW_WTF8: return TypeRef.StringviewWTF8;
      case TypeKind.STRINGVIEW_WTF16: return TypeRef.StringviewWTF16;
      case TypeKind.STRINGVIEW_ITER: return TypeRef.StringviewIter;
      case TypeKind.VOID: return TypeRef.None;
    }
  }

  // Types

  /** An 8-bit signed integer. */
  static readonly i8: Type  = new Type(TypeKind.I8,
    TypeFlags.SIGNED   |
    TypeFlags.SHORT    |
    TypeFlags.INTEGER  |
    TypeFlags.VALUE,   8
  );

  /** A 16-bit signed integer. */
  static readonly i16: Type = new Type(TypeKind.I16,
    TypeFlags.SIGNED   |
    TypeFlags.SHORT    |
    TypeFlags.INTEGER  |
    TypeFlags.VALUE,  16
  );

  /** A 32-bit signed integer. */
  static readonly i32: Type = new Type(TypeKind.I32,
    TypeFlags.SIGNED   |
    TypeFlags.INTEGER  |
    TypeFlags.VALUE,  32
  );

  /** A 64-bit signed integer. */
  static readonly i64: Type = new Type(TypeKind.I64,
    TypeFlags.SIGNED   |
    TypeFlags.LONG     |
    TypeFlags.INTEGER  |
    TypeFlags.VALUE,  64
  );

  /** A 32-bit signed size. WASM32 only. */
  static readonly isize32: Type = new Type(TypeKind.ISIZE,
    TypeFlags.SIGNED   |
    TypeFlags.INTEGER  |
    TypeFlags.VARYING  |
    TypeFlags.VALUE,  32
  );

  /** A 64-bit signed size. WASM64 only. */
  static readonly isize64: Type = new Type(TypeKind.ISIZE,
    TypeFlags.SIGNED   |
    TypeFlags.LONG     |
    TypeFlags.INTEGER  |
    TypeFlags.VARYING  |
    TypeFlags.VALUE,  64
  );

  /** An 8-bit unsigned integer. */
  static readonly u8: Type = new Type(TypeKind.U8,
    TypeFlags.UNSIGNED |
    TypeFlags.SHORT    |
    TypeFlags.INTEGER  |
    TypeFlags.VALUE,   8
  );

  /** A 16-bit unsigned integer. */
  static readonly u16: Type = new Type(TypeKind.U16,
    TypeFlags.UNSIGNED |
    TypeFlags.SHORT    |
    TypeFlags.INTEGER  |
    TypeFlags.VALUE,  16
  );

  /** A 32-bit unsigned integer. */
  static readonly u32: Type = new Type(TypeKind.U32,
    TypeFlags.UNSIGNED |
    TypeFlags.INTEGER  |
    TypeFlags.VALUE,  32
  );

  /** A 64-bit unsigned integer. */
  static readonly u64: Type = new Type(TypeKind.U64,
    TypeFlags.UNSIGNED |
    TypeFlags.LONG     |
    TypeFlags.INTEGER  |
    TypeFlags.VALUE,  64
  );

  /** A 32-bit unsigned size. WASM32 only. */
  static readonly usize32: Type = new Type(TypeKind.USIZE,
    TypeFlags.UNSIGNED |
    TypeFlags.INTEGER  |
    TypeFlags.VARYING  |
    TypeFlags.VALUE,  32
  );

  /** A 64-bit unsigned size. WASM64 only. */
  static readonly usize64: Type = new Type(TypeKind.USIZE,
    TypeFlags.UNSIGNED |
    TypeFlags.LONG     |
    TypeFlags.INTEGER  |
    TypeFlags.VARYING  |
    TypeFlags.VALUE,  64
  );

  /** A 1-bit unsigned integer. */
  static readonly bool: Type = new Type(TypeKind.BOOL,
    TypeFlags.UNSIGNED |
    TypeFlags.SHORT    |
    TypeFlags.INTEGER  |
    TypeFlags.VALUE,   1
  );

  /** A 32-bit float. */
  static readonly f32: Type = new Type(TypeKind.F32,
    TypeFlags.SIGNED   |
    TypeFlags.FLOAT    |
    TypeFlags.VALUE,  32
  );

  /** A 64-bit float. */
  static readonly f64: Type = new Type(TypeKind.F64,
    TypeFlags.SIGNED   |
    TypeFlags.LONG     |
    TypeFlags.FLOAT    |
    TypeFlags.VALUE,  64
  );

  /** A 128-bit vector. */
  static readonly v128: Type = new Type(TypeKind.V128,
    TypeFlags.VECTOR   |
    TypeFlags.VALUE, 128
  );

  /** Function reference. */
  static readonly funcref: Type = new Type(TypeKind.FUNCREF,
    TypeFlags.EXTERNAL   |
    TypeFlags.NULLABLE   |
    TypeFlags.REFERENCE, 0
  );

  /** External reference. */
  static readonly externref: Type = new Type(TypeKind.EXTERNREF,
    TypeFlags.EXTERNAL   |
    TypeFlags.NULLABLE   |
    TypeFlags.REFERENCE, 0
  );

  /** Any reference. */
  static readonly anyref: Type = new Type(TypeKind.ANYREF,
    TypeFlags.EXTERNAL   |
    TypeFlags.NULLABLE   |
    TypeFlags.REFERENCE, 0
  );

  /** Equatable reference. */
  static readonly eqref: Type = new Type(TypeKind.EQREF,
    TypeFlags.EXTERNAL   |
    TypeFlags.NULLABLE   |
    TypeFlags.REFERENCE, 0
  );

  /** 31-bit integer reference. */
  static readonly i31ref: Type = new Type(TypeKind.I31REF,
    TypeFlags.EXTERNAL   |
    TypeFlags.NULLABLE   |
    TypeFlags.REFERENCE, 0
  );

  /** Data reference. */
  static readonly dataref: Type = new Type(TypeKind.DATAREF,
    TypeFlags.EXTERNAL   |
    TypeFlags.NULLABLE   |
    TypeFlags.REFERENCE, 0
  );

  /** String reference. */
  static readonly stringref: Type = new Type(TypeKind.STRINGREF,
    TypeFlags.EXTERNAL   |
    TypeFlags.NULLABLE   |
    TypeFlags.REFERENCE, 0
  );

  /** WTF8 string view. */
  static readonly stringview_wtf8: Type = new Type(TypeKind.STRINGVIEW_WTF8,
    TypeFlags.EXTERNAL   |
    TypeFlags.NULLABLE   |
    TypeFlags.REFERENCE, 0
  );

  /** WTF16 string view. */
  static readonly stringview_wtf16: Type = new Type(TypeKind.STRINGVIEW_WTF16,
    TypeFlags.EXTERNAL   |
    TypeFlags.NULLABLE   |
    TypeFlags.REFERENCE, 0
  );

  /** String iterator. */
  static readonly stringview_iter: Type = new Type(TypeKind.STRINGVIEW_ITER,
    TypeFlags.EXTERNAL   |
    TypeFlags.NULLABLE   |
    TypeFlags.REFERENCE, 0
  );

  /** No return type. */
  static readonly void: Type = new Type(TypeKind.VOID, TypeFlags.NONE, 0);

  /** Alias of i32 indicating type inference of locals and globals with just an initializer. */
  static readonly auto: Type = new Type(Type.i32.kind, Type.i32.flags, Type.i32.size);
}

/** Converts an array of types to an array of type references. */
export function typesToRefs(types: Type[]): TypeRef[] {
  var numTypes = types.length;
  var ret = new Array<TypeRef>(numTypes);
  for (let i = 0; i < numTypes; ++i) {
    unchecked(ret[i] = types[i].toRef());
  }
  return ret;
}

/** Converts an array of types to its combined string representation. */
export function typesToString(types: Type[]): string {
  var numTypes = types.length;
  if (!numTypes) return "";
  var sb = new Array<string>(numTypes);
  for (let i = 0; i < numTypes; ++i) {
    unchecked(sb[i] = types[i].toString(true));
  }
  return sb.join(",");
}

/** Represents a fully resolved function signature. */
export class Signature {
  /** Unique id representing this signature. */
  id: u32 = 0;
  /** Parameter types, if any, excluding `this`. */
  parameterTypes: Type[];
  /** Number of required parameters excluding `this`. Other parameters are considered optional. */
  requiredParameters: i32;
  /** Return type. */
  returnType: Type;
  /** This type, if an instance signature. */
  thisType: Type | null;
  /** Whether the last parameter is a rest parameter. */
  hasRest: bool;
  /** Respective function type. */
  type: Type;
  /** The program that created this signature. */
  program: Program;

  /** Constructs a new signature. */
  constructor(
    program: Program,
    parameterTypes: Type[] | null = null,
    returnType: Type | null = null,
    thisType: Type | null = null
  ) {
    this.parameterTypes = parameterTypes ? parameterTypes : [];
    this.requiredParameters = 0;
    this.returnType = returnType ? returnType : Type.void;
    this.thisType = thisType;
    this.program = program;
    this.hasRest = false;
    var usizeType = program.options.usizeType;
    var type = new Type(
      usizeType.kind,
      usizeType.flags & ~TypeFlags.VALUE | TypeFlags.REFERENCE,
      usizeType.size
    );
    this.type = type;
    type.signatureReference = this;

    var signatureTypes = program.uniqueSignatures;
    var length = signatureTypes.length;
    for (let i = 0; i < length; i++) {
      let compare = unchecked(signatureTypes[i]);
      if (this.equals(compare)) {
        this.id = compare.id;
        return this;
      }
    }
    this.id = program.nextSignatureId++;
    signatureTypes.push(this);
  }

  get paramRefs(): TypeRef {
    var thisType = this.thisType;
    var parameterTypes = this.parameterTypes;
    var numParameterTypes = parameterTypes.length;
    if (!numParameterTypes) {
      return thisType ? thisType.toRef() : TypeRef.None;
    }
    if (thisType) {
      let typeRefs = new Array<TypeRef>(1 + numParameterTypes);
      unchecked(typeRefs[0] = thisType.toRef());
      for (let i = 0; i < numParameterTypes; ++i) {
        unchecked(typeRefs[i + 1] = parameterTypes[i].toRef());
      }
      return createType(typeRefs);
    }
    return createType(typesToRefs(parameterTypes));
  }

  get resultRefs(): TypeRef {
    return this.returnType.toRef();
  }

  /** Tests if this signature equals the specified. */
  equals(other: Signature): bool {

    // check `this` type
    var thisThisType = this.thisType;
    var otherThisType = other.thisType;
    if (thisThisType) {
      if (!otherThisType || !thisThisType.equals(otherThisType)) return false;
    } else if (otherThisType) {
      return false;
    }

    // check rest parameter
    if (this.hasRest != other.hasRest) return false;

    // check return type
    if (!this.returnType.equals(other.returnType)) return false;

    // check parameter types
    var thisParameterTypes = this.parameterTypes;
    var otherParameterTypes = other.parameterTypes;
    var numParameters = thisParameterTypes.length;
    if (numParameters != otherParameterTypes.length) return false;

    for (let i = 0; i < numParameters; ++i) {
      let thisParameterType = unchecked(thisParameterTypes[i]);
      let otherParameterType = unchecked(otherParameterTypes[i]);
      if (!thisParameterType.equals(otherParameterType)) return false;
    }
    return true;
  }

  /** Tests if a value of this function type is assignable to a target of the specified function type. */
  isAssignableTo(target: Signature, checkCompatibleOverride: bool = false): bool {
    var thisThisType = this.thisType;
    var targetThisType = target.thisType;
    if (!checkCompatibleOverride) {
      // check exact `this` type
      if (thisThisType) {
        if (!targetThisType || !thisThisType.isAssignableTo(targetThisType)) {
          return false;
        }
      } else if (targetThisType) {
        return false;
      }
    } else {
      // check kind of `this` type
      if (thisThisType) {
        if (!targetThisType || !thisThisType.canExtendOrImplement(targetThisType)) {
          return false;
        }
      } else if (targetThisType) {
        return false;
      }
    }

    // check rest parameter
    if (this.hasRest != target.hasRest) return false; // TODO

    // check return type
    var thisReturnType = this.returnType;
    var targetReturnType = target.returnType;
    if (!(thisReturnType == targetReturnType || thisReturnType.isAssignableTo(targetReturnType))) {
      return false;
    }
    // check parameter types
    var thisParameterTypes = this.parameterTypes;
    var targetParameterTypes = target.parameterTypes;
    var numParameters = thisParameterTypes.length;
    if (numParameters != targetParameterTypes.length) return false; // TODO

    for (let i = 0; i < numParameters; ++i) {
      let thisParameterType = unchecked(thisParameterTypes[i]);
      let targetParameterType = unchecked(targetParameterTypes[i]);
      if (!thisParameterType.isAssignableTo(targetParameterType)) return false;
    }
    return true;
  }

  /** Tests if this signature has at least one managed operand. */
  get hasManagedOperands(): bool {
    var thisType = this.thisType;
    if (thisType && thisType.isManaged) {
      return true;
    }
    var parameterTypes = this.parameterTypes;
    for (let i = 0, k = parameterTypes.length; i < k; ++i) {
      if (unchecked(parameterTypes[i]).isManaged) return true;
    }
    return false;
  }

  /** Gets the indices of all managed operands. */
  getManagedOperandIndices(): i32[] {
    var indices = new Array<i32>();
    var index = 0;
    var thisType = this.thisType;
    if (thisType) {
      if (thisType.isManaged) indices.push(index);
      ++index;
    }
    var parameterTypes = this.parameterTypes;
    for (let i = 0, k = parameterTypes.length; i < k; ++i) {
      if (unchecked(parameterTypes[i]).isManaged) {
        indices.push(index);
      }
      ++index;
    }
    return indices;
  }

  /** Tests if this signature has at least one v128 operand. */
  get hasVectorValueOperands(): bool {
    var thisType = this.thisType;
    if (thisType && thisType.isVectorValue) {
      return true;
    }
    var parameterTypes = this.parameterTypes;
    for (let i = 0, k = parameterTypes.length; i < k; ++i) {
      if (unchecked(parameterTypes[i]).isVectorValue) return true;
    }
    return false;
  }

  /** Gets the indices of all v128 operands. */
  getVectorValueOperandIndices(): i32[] {
    var indices = new Array<i32>();
    var index = 0;
    var thisType = this.thisType;
    if (thisType) {
      if (thisType.isVectorValue) indices.push(index);
      ++index;
    }
    var parameterTypes = this.parameterTypes;
    for (let i = 0, k = parameterTypes.length; i < k; ++i) {
      if (unchecked(parameterTypes[i]).isVectorValue) {
        indices.push(index);
      }
      ++index;
    }
    return indices;
  }

  /** Converts this signature to a string. */
  toString(validWat: bool = false): string {
    var sb = new Array<string>();
    sb.push(validWat ? "%28" : "(");
    var index = 0;
    var thisType = this.thisType;
    if (thisType) {
      sb.push(validWat ? "this:" : "this: ");
      assert(!thisType.signatureReference);
      sb.push(thisType.toString(validWat));
      index = 1;
    }
    var parameters = this.parameterTypes;
    var numParameters = parameters.length;
    if (numParameters) {
      let optionalStart = this.requiredParameters;
      let restIndex = this.hasRest ? numParameters - 1 : -1;
      for (let i = 0; i < numParameters; ++i, ++index) {
        if (index) sb.push(validWat ? "%2C" : ", ");
        if (i == restIndex) sb.push("...");
        sb.push(parameters[i].toString(validWat));
        if (i >= optionalStart && i != restIndex) sb.push("?");
      }
    }
    sb.push(validWat ? "%29=>" : ") => ");
    sb.push(this.returnType.toString(validWat));
    return sb.join("");
  }

  /** Creates a clone of this signature that is safe to modify. */
  clone(): Signature {
    var parameterTypes = this.parameterTypes;
    var numParameterTypes = parameterTypes.length;
    var cloneParameterTypes = new Array<Type>(numParameterTypes);
    for (let i = 0; i < numParameterTypes; ++i) {
      unchecked(cloneParameterTypes[i] = parameterTypes[i]);
    }
    return new Signature(
      this.program,
      cloneParameterTypes,
      this.returnType,
      this.thisType
    );
  }
}
