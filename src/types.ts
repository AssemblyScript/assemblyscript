/**
 * @fileoverview Mappings from AssemblyScript types to WebAssembly types.
 * @license Apache-2.0
 */

import {
  CommonNames
} from "./common";

import {
  Class,
  Program,
  DecoratorFlags
} from "./program";

import {
  TypeRef,
  createType,
  HeapTypeRef,
  ensureType
} from "./module";

import * as binaryen from "./glue/binaryen";

/** Indicates the kind of a type. */
export const enum TypeKind {
  /** A 1-bit unsigned integer. */
  Bool,

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
  Isize,

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
  Usize,

  // floats

  /** A 32-bit float. */
  F32,
  /** A 64-bit double. */
  F64,

  // vectors

  /** A 128-bit vector. */
  V128,

  // references (keep in same order as in Binaryen)

  /** External reference. */
  Extern,
  /** Function reference. */
  Func,
  /** Any reference. */
  Any,
  /** Equatable reference. */
  Eq,
  /** Struct reference. */
  Struct,
  /** Array reference. */
  Array,
  /** 31-bit integer reference. */
  I31,
  /** String reference. */
  String,
  /** WTF8 string view. */
  StringviewWTF8,
  /** WTF16 string view. */
  StringviewWTF16,
  /** String iterator. */
  StringviewIter,

  // other

  /** No return type. */
  Void
}

/** Indicates capabilities of a type. */
export const enum TypeFlags {
  None = 0,
  /** Is a signed type that can represent negative values. */
  Signed = 1 << 0,
  /** Is an unsigned type that cannot represent negative values. */
  Unsigned = 1 << 1,
  /** Is an integer type. */
  Integer = 1 << 2,
  /** Is a floating point type. */
  Float = 1 << 3,
  /** Is a varying (in size) type. */
  Varying = 1 << 4,
  /** Is smaller than 32-bits. */
  Short = 1 << 5,
  /** Is larger than 32-bits. */
  Long = 1 << 6,
  /** Is a value type. */
  Value = 1 << 7,
  /** Is a reference type (either a class or a function type). */
  Reference = 1 << 8,
  /** Is a nullable type. */
  Nullable = 1 << 9,
  /** Is a vector type. */
  Vector = 1 << 10,
  /** Is an external type. */
  External = 1 << 11,
  /** Is a class. */
  Class = 1 << 12,
  /** Is a function. */
  Function = 1 << 13
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
  /** Cached Binaryen type reference. */
  ref: TypeRef = 0;

  /** Constructs a new resolved type. */
  constructor(kind: TypeKind, flags: TypeFlags, size: u32) {
    this.kind = kind;
    this.flags = flags;
    this.size = size;
    if (!(flags & TypeFlags.Nullable)) {
      this._nonNullableType = this;
    } else {
      this._nullableType = this;
    }
  }

  /** Returns the closest int type representing this type. */
  get intType(): Type {
    if (this == Type.auto) return this; // keep auto as a hint
    switch (this.kind) {
      case TypeKind.Bool:
      case TypeKind.I32:
      case TypeKind.F32:   return Type.i32;
      case TypeKind.I8:    return Type.i8;
      case TypeKind.I16:   return Type.i16;
      case TypeKind.F64:
      case TypeKind.I64:   return Type.i64;
      case TypeKind.Isize: return this.size == 64 ? Type.isize64 : Type.isize32;
      case TypeKind.U8:    return Type.u8;
      case TypeKind.U16:   return Type.u16;
      case TypeKind.U32:   return Type.u32;
      case TypeKind.U64:   return Type.u64;
      case TypeKind.Usize: return this.size == 64 ? Type.usize64 : Type.usize32;
      default: return Type.i32;
    }
  }

  /** Substitutes this type with the auto type if this type is void. */
  get exceptVoid(): Type {
    return this.kind == TypeKind.Void ? Type.auto : this;
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
    return this.is(TypeFlags.Value);
  }

  /** Tests if this type represents an integer value. */
  get isIntegerValue(): bool {
    return this.is(TypeFlags.Integer | TypeFlags.Value);
  }

  /** Tests if this type represents a small (< 32 bits) integer value. */
  get isShortIntegerValue(): bool {
    return this.is(TypeFlags.Short | TypeFlags.Integer | TypeFlags.Value);
  }

  /** Tests if this type represents a long (> 32 bits) integer value. */
  get isLongIntegerValue(): bool {
    return this.is(TypeFlags.Long | TypeFlags.Integer | TypeFlags.Value);
  }

  /** Tests if this type represents a signed integer value. */
  get isSignedIntegerValue(): bool {
    return this.is(TypeFlags.Signed | TypeFlags.Integer | TypeFlags.Value);
  }

  /** Tests if this type represents an unsigned integer value. */
  get isUnsignedIntegerValue(): bool {
    return this.is(TypeFlags.Unsigned | TypeFlags.Integer | TypeFlags.Value);
  }

  /** Tests if this type represents a varying (in size) integer value. */
  get isVaryingIntegerValue(): bool {
    return this.is(TypeFlags.Varying | TypeFlags.Integer | TypeFlags.Value);
  }

  /** Tests if this type represents an integer, including references.  */
  get isIntegerInclReference(): bool {
    return this.is(TypeFlags.Integer);
  }

  /** Tests if this type represents a floating point value. */
  get isFloatValue(): bool {
    return this.is(TypeFlags.Float | TypeFlags.Value);
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
    return this.is(TypeFlags.Vector | TypeFlags.Value);
  }

  /** Tests if this type represents an internal or external reference. */
  get isReference(): bool {
    return this.is(TypeFlags.Reference);
  }

  /** Tests if this type represents a nullable internal or external reference. */
  get isNullableReference(): bool {
    return this.is(TypeFlags.Nullable | TypeFlags.Reference);
  }

  /** Tests if this type represents an internal object. */
  get isInternalReference(): bool {
    return this.is(TypeFlags.Integer | TypeFlags.Reference);
  }

  /** Tests if this type represents an external object. */
  get isExternalReference(): bool {
    return this.is(TypeFlags.External | TypeFlags.Reference);
  }

  /** Tests if this type represents a nullable external object. */
  get isNullableExternalReference(): bool {
    return this.is(TypeFlags.Nullable | TypeFlags.External | TypeFlags.Reference);
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
      if (classReference) return !classReference.hasDecorator(DecoratorFlags.Unmanaged);
      return this.signatureReference != null; // function references are managed
    }
    return false;
  }

  /** Tests if this is a class type explicitly annotated as unmanaged. */
  get isUnmanaged(): bool {
    let classReference = this.classReference;
    return classReference != null && classReference.hasDecorator(DecoratorFlags.Unmanaged);
  }

  get isMemory(): bool {
    switch (this.kind) {
      case TypeKind.Bool:
      case TypeKind.I8:
      case TypeKind.I16:
      case TypeKind.I32:
      case TypeKind.I64:
      case TypeKind.Isize:
      case TypeKind.U8:
      case TypeKind.U16:
      case TypeKind.U32:
      case TypeKind.U64:
      case TypeKind.Usize:
      case TypeKind.F32:
      case TypeKind.F64:
      case TypeKind.V128: return true;
    }
    return false;
  }

  /** Gets the corresponding non-nullable type. */
  get nonNullableType(): Type {
    // Every type has a corresponding non-nullable type
    return assert(this._nonNullableType);
  }

  /** Gets the corresponding nullable type, if applicable. */
  get nullableType(): Type | null {
    return this.isReference
      ? this.asNullable() // Every reference type has a corresponding nullable type
      : null;             // Other types do not have a nullable type
  }

  /** Computes the sign-extending shift in the target type. */
  computeSmallIntegerShift(targetType: Type): i32 {
    return targetType.size - this.size;
  }

  /** Computes the truncating mask in the target type. */
  computeSmallIntegerMask(targetType: Type): i32 {
    let size = this.size;
    if (!this.is(TypeFlags.Unsigned)) size -= 1;
    return ~0 >>> (targetType.size - size);
  }

  /** Tests if this type has (all of) the specified flags. */
  is(flags: TypeFlags): bool { return (this.flags & flags) == flags; }
  /** Tests if this type has any of the specified flags. */
  isAny(flags: TypeFlags): bool { return (this.flags & flags) != 0; }

  /** Composes the respective nullable type of this type. */
  asNullable(): Type {
    assert(this.isReference);
    let nullableType = this._nullableType;
    if (!nullableType) {
      assert(!this.isNullableReference);
      this._nullableType = nullableType = new Type(this.kind, this.flags | TypeFlags.Nullable, this.size);
      nullableType.classReference = this.classReference;
      nullableType.signatureReference = this.signatureReference;
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
      case TypeKind.Isize: return this.size == 64 ? Type.usize64 : Type.usize32;
    }
    return this;
  }

  /** Tests if this type equals the specified. */
  equals(other: Type): bool {
    if (this.kind != other.kind) {
      return false;
    }
    if (this.isReference) {
      let selfSignatureReference = this.signatureReference;
      let otherSignatureReference = other.signatureReference;

      return (
        this.classReference == other.classReference
        && selfSignatureReference == otherSignatureReference
        && this.isNullableReference == other.isNullableReference
      );
    }
    return true;
  }

  /** Tests if a value of this type is assignable to the target type incl. implicit conversion. */
  isAssignableTo(target: Type, signednessIsRelevant: bool = false): bool {
    let currentClass: Class | null;
    let targetClass: Class | null;
    let currentFunction: Signature | null;
    let targetFunction: Signature | null;
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
              (target.kind == TypeKind.Any && this.kind != TypeKind.Extern)
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

  /** Tests if this type has a subtype assignable to the target type. */
  hasSubtypeAssignableTo(target: Type): bool {
    let thisClass = this.getClass();
    let targetClass = target.getClass();
    if (!thisClass || !targetClass) return false; // TODO: what about basic types?
    return thisClass.hasSubclassAssignableTo(targetClass);
  }

  /** Tests if a value of this type can be changed to the target type using `changetype`. */
  isChangeableTo(target: Type): bool {
    // special in that it allows integer references as well
    if (this.is(TypeFlags.Integer) && target.is(TypeFlags.Integer)) {
      let size = this.size;
      return size == target.size && (
        size >= 32 ||
        this.is(TypeFlags.Signed) == target.is(TypeFlags.Signed)
      );
    }
    return this.kind == target.kind;
  }

  /** Tests if this type can extend or implement the given type. */
  canExtendOrImplement(base: Type): bool {
    // Both must be class types
    let thisClass = this.getClass();
    let baseClass = base.getClass();
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
    return true;
  }

  /** Computes the common type of a binary-like expression, if any. */
  static commonType(
    /** LHS type. */
    left: Type,
    /** RHS type. */
    right: Type,
    /** Contextual type, if any. */
    contextualType: Type = Type.auto,
    /** Whether signedness is relevant. */
    signednessIsRelevant: bool = false
  ): Type | null {
    // Compute LUB of internal reference types (classes)
    if (left.isInternalReference) {
      if (!right.isInternalReference) return null;
      // Prefer contextual type if meaningful
      if (contextualType != Type.void && left.isAssignableTo(contextualType) && right.isAssignableTo(contextualType)) {
        return contextualType;
      }
      let leftClass = left.getClass();
      let rightClass = right.getClass();
      if (leftClass && rightClass) {
        let lubClass = Class.leastUpperBound(leftClass, rightClass);
        if (lubClass) {
          let ret = left.is(TypeFlags.Nullable) || right.is(TypeFlags.Nullable) ? lubClass.type.asNullable() : lubClass.type;
          return ret;
        }
      }
    } else if (right.isInternalReference) {
      return null;
    }
    // TODO: External reference types (needs nullability)
    // Otherwise do a trivial check
    if (right.isAssignableTo(left, signednessIsRelevant)) return left;
    else if (left.isAssignableTo(right, signednessIsRelevant)) return right;
    return null;
  }

  /** Converts this type's kind to a string. */
  kindToString(): string {
    switch (this.kind) {
      case TypeKind.Bool: return CommonNames.bool;
      case TypeKind.I8: return CommonNames.i8;
      case TypeKind.I16: return CommonNames.i16;
      case TypeKind.I32: return CommonNames.i32;
      case TypeKind.I64: return CommonNames.i64;
      case TypeKind.Isize: return CommonNames.isize;
      case TypeKind.U8: return CommonNames.u8;
      case TypeKind.U16: return CommonNames.u16;
      case TypeKind.U32: return CommonNames.u32;
      case TypeKind.U64: return CommonNames.u64;
      case TypeKind.Usize: return CommonNames.usize;
      case TypeKind.F32: return CommonNames.f32;
      case TypeKind.F64: return CommonNames.f64;
      case TypeKind.V128: return CommonNames.v128;
      case TypeKind.Func: return CommonNames.ref_func;
      case TypeKind.Extern: return CommonNames.ref_extern;
      case TypeKind.Any: return CommonNames.ref_any;
      case TypeKind.Eq: return CommonNames.ref_eq;
      case TypeKind.Struct: return CommonNames.ref_struct;
      case TypeKind.Array: return CommonNames.ref_array;
      case TypeKind.I31: return CommonNames.ref_i31;
      case TypeKind.String: return CommonNames.ref_string;
      case TypeKind.StringviewWTF8: return CommonNames.ref_stringview_wtf8;
      case TypeKind.StringviewWTF16: return CommonNames.ref_stringview_wtf16;
      case TypeKind.StringviewIter: return CommonNames.ref_stringview_iter;
      default: assert(false);
      case TypeKind.Void: return CommonNames.void_;
    }
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
        } else {
          return this.isNullableReference
            ? `${this.kindToString()}${nullablePostfix}`
            : this.kindToString();
        }
      }
    }
    return this.kindToString();
  }

  // Binaryen specific

  /** Converts this type to its respective type reference. */
  toRef(): TypeRef {
    switch (this.kind) {
      case TypeKind.Bool:
      case TypeKind.I8:
      case TypeKind.I16:
      case TypeKind.I32:
      case TypeKind.U8:
      case TypeKind.U16:
      case TypeKind.U32: return TypeRef.I32;
      case TypeKind.Isize:
      case TypeKind.Usize: if (this.size != 64) return TypeRef.I32;
      case TypeKind.I64:
      case TypeKind.U64:  return TypeRef.I64;
      case TypeKind.F32:  return TypeRef.F32;
      case TypeKind.F64:  return TypeRef.F64;
      case TypeKind.V128: return TypeRef.V128;
      case TypeKind.Func: {
        return binaryen._BinaryenTypeFromHeapType(HeapTypeRef.Func, this.is(TypeFlags.Nullable));
      }
      case TypeKind.Extern: {
        return binaryen._BinaryenTypeFromHeapType(HeapTypeRef.Extern, this.is(TypeFlags.Nullable));
      }
      case TypeKind.Any: {
        return binaryen._BinaryenTypeFromHeapType(HeapTypeRef.Any, this.is(TypeFlags.Nullable));
      }
      case TypeKind.Eq: {
        return binaryen._BinaryenTypeFromHeapType(HeapTypeRef.Eq, this.is(TypeFlags.Nullable));
      }
      case TypeKind.Struct: {
        return binaryen._BinaryenTypeFromHeapType(HeapTypeRef.Struct, this.is(TypeFlags.Nullable));
      }
      case TypeKind.Array: {
        return binaryen._BinaryenTypeFromHeapType(HeapTypeRef.Array, this.is(TypeFlags.Nullable));
      }
      case TypeKind.I31: {
        return binaryen._BinaryenTypeFromHeapType(HeapTypeRef.I31, this.is(TypeFlags.Nullable));
      }
      case TypeKind.String: {
        return binaryen._BinaryenTypeFromHeapType(HeapTypeRef.String, this.is(TypeFlags.Nullable));
      }
      case TypeKind.StringviewWTF8: {
        return binaryen._BinaryenTypeFromHeapType(HeapTypeRef.StringviewWTF8, this.is(TypeFlags.Nullable));
      }
      case TypeKind.StringviewWTF16: {
        return binaryen._BinaryenTypeFromHeapType(HeapTypeRef.StringviewWTF16, this.is(TypeFlags.Nullable));
      }
      case TypeKind.StringviewIter: {
        return binaryen._BinaryenTypeFromHeapType(HeapTypeRef.StringviewIter, this.is(TypeFlags.Nullable));
      }
      case TypeKind.Void: return TypeRef.None;
    }
    // TODO: not used yet
    assert(false);
    return ensureType(this);
  }

  // Types

  /** An 8-bit signed integer. */
  static readonly i8: Type  = new Type(TypeKind.I8,
    TypeFlags.Signed   |
    TypeFlags.Short    |
    TypeFlags.Integer  |
    TypeFlags.Value,   8
  );

  /** A 16-bit signed integer. */
  static readonly i16: Type = new Type(TypeKind.I16,
    TypeFlags.Signed   |
    TypeFlags.Short    |
    TypeFlags.Integer  |
    TypeFlags.Value,  16
  );

  /** A 32-bit signed integer. */
  static readonly i32: Type = new Type(TypeKind.I32,
    TypeFlags.Signed   |
    TypeFlags.Integer  |
    TypeFlags.Value,  32
  );

  /** A 64-bit signed integer. */
  static readonly i64: Type = new Type(TypeKind.I64,
    TypeFlags.Signed   |
    TypeFlags.Long     |
    TypeFlags.Integer  |
    TypeFlags.Value,  64
  );

  /** A 32-bit signed size. WASM32 only. */
  static readonly isize32: Type = new Type(TypeKind.Isize,
    TypeFlags.Signed   |
    TypeFlags.Integer  |
    TypeFlags.Varying  |
    TypeFlags.Value,  32
  );

  /** A 64-bit signed size. WASM64 only. */
  static readonly isize64: Type = new Type(TypeKind.Isize,
    TypeFlags.Signed   |
    TypeFlags.Long     |
    TypeFlags.Integer  |
    TypeFlags.Varying  |
    TypeFlags.Value,  64
  );

  /** An 8-bit unsigned integer. */
  static readonly u8: Type = new Type(TypeKind.U8,
    TypeFlags.Unsigned |
    TypeFlags.Short    |
    TypeFlags.Integer  |
    TypeFlags.Value,   8
  );

  /** A 16-bit unsigned integer. */
  static readonly u16: Type = new Type(TypeKind.U16,
    TypeFlags.Unsigned |
    TypeFlags.Short    |
    TypeFlags.Integer  |
    TypeFlags.Value,  16
  );

  /** A 32-bit unsigned integer. */
  static readonly u32: Type = new Type(TypeKind.U32,
    TypeFlags.Unsigned |
    TypeFlags.Integer  |
    TypeFlags.Value,  32
  );

  /** A 64-bit unsigned integer. */
  static readonly u64: Type = new Type(TypeKind.U64,
    TypeFlags.Unsigned |
    TypeFlags.Long     |
    TypeFlags.Integer  |
    TypeFlags.Value,  64
  );

  /** A 32-bit unsigned size. WASM32 only. */
  static readonly usize32: Type = new Type(TypeKind.Usize,
    TypeFlags.Unsigned |
    TypeFlags.Integer  |
    TypeFlags.Varying  |
    TypeFlags.Value,  32
  );

  /** A 64-bit unsigned size. WASM64 only. */
  static readonly usize64: Type = new Type(TypeKind.Usize,
    TypeFlags.Unsigned |
    TypeFlags.Long     |
    TypeFlags.Integer  |
    TypeFlags.Varying  |
    TypeFlags.Value,  64
  );

  /** A 1-bit unsigned integer. */
  static readonly bool: Type = new Type(TypeKind.Bool,
    TypeFlags.Unsigned |
    TypeFlags.Short    |
    TypeFlags.Integer  |
    TypeFlags.Value,   1
  );

  /** A 32-bit float. */
  static readonly f32: Type = new Type(TypeKind.F32,
    TypeFlags.Signed   |
    TypeFlags.Float    |
    TypeFlags.Value,  32
  );

  /** A 64-bit float. */
  static readonly f64: Type = new Type(TypeKind.F64,
    TypeFlags.Signed   |
    TypeFlags.Long     |
    TypeFlags.Float    |
    TypeFlags.Value,  64
  );

  /** A 128-bit vector. */
  static readonly v128: Type = new Type(TypeKind.V128,
    TypeFlags.Vector   |
    TypeFlags.Value, 128
  );

  /** Non-nullable function reference (`ref func`). */
  static readonly func: Type = new Type(TypeKind.Func,
    TypeFlags.External   |
    TypeFlags.Reference, 0
  );

  /** Non-nullable external reference (`ref extern`). */
  static readonly extern: Type = new Type(TypeKind.Extern,
    TypeFlags.External   |
    TypeFlags.Reference, 0
  );

  /** Non-nullable any reference (`ref any`). */
  static readonly any: Type = new Type(TypeKind.Any,
    TypeFlags.External   |
    TypeFlags.Reference, 0
  );

  /** Non-nullable equatable reference (`ref eq`). */
  static readonly eq: Type = new Type(TypeKind.Eq,
    TypeFlags.External   |
    TypeFlags.Reference, 0
  );

  /** Non-nullable struct reference (`ref struct`). */
  static readonly struct: Type = new Type(TypeKind.Struct,
    TypeFlags.External   |
    TypeFlags.Reference, 0
  );

  /** Non-nullable array reference (`ref array`). */
  static readonly array: Type = new Type(TypeKind.Array,
    TypeFlags.External   |
    TypeFlags.Reference, 0
  );

  /** Non-nullable 31-bit integer reference (`ref i31`). */
  static readonly i31: Type = new Type(TypeKind.I31,
    TypeFlags.External   |
    TypeFlags.Reference, 0
  );

  /** Non-nullable string reference (`ref string`). */
  static readonly string: Type = new Type(TypeKind.String,
    TypeFlags.External   |
    TypeFlags.Reference, 0
  );

  /** Non-nullable WTF8 string view reference (`ref stringview_wtf8`). */
  static readonly stringview_wtf8: Type = new Type(TypeKind.StringviewWTF8,
    TypeFlags.External   |
    TypeFlags.Reference, 0
  );

  /** Non-nullable WTF16 string view reference (`ref stringview_wtf16`). */
  static readonly stringview_wtf16: Type = new Type(TypeKind.StringviewWTF16,
    TypeFlags.External   |
    TypeFlags.Reference, 0
  );

  /** Non-nullable string iterator reference (`ref stringview_iter`). */
  static readonly stringview_iter: Type = new Type(TypeKind.StringviewIter,
    TypeFlags.External   |
    TypeFlags.Reference, 0
  );

  /** No return type. */
  static readonly void: Type = new Type(TypeKind.Void, TypeFlags.None, 0);

  /** Alias of i32 indicating type inference of locals and globals with just an initializer. */
  static readonly auto: Type = new Type(Type.i32.kind, Type.i32.flags, Type.i32.size);
}

/** Converts an array of types to an array of type references. */
export function typesToRefs(types: Type[]): TypeRef[] {
  let numTypes = types.length;
  let ret = new Array<TypeRef>(numTypes);
  for (let i = 0; i < numTypes; ++i) {
    unchecked(ret[i] = types[i].toRef());
  }
  return ret;
}

/** Converts an array of types to its combined string representation. */
export function typesToString(types: Type[]): string {
  let numTypes = types.length;
  if (!numTypes) return "";
  let sb = new Array<string>(numTypes);
  for (let i = 0; i < numTypes; ++i) {
    unchecked(sb[i] = types[i].toString(true));
  }
  return sb.join(",");
}

/** Represents a fully resolved function signature. */
export class Signature {
  /** Construct a new signature. */
  public static create(
    /** The program that created this signature. */
    program: Program,
    /** Parameter types, if any, excluding `this`. */
    parameterTypes: Type[] = [],
    /** Return type. */
    returnType: Type = Type.void,
    /** This type, if an instance signature. */
    thisType: Type | null = null,
    /** Number of required parameters excluding `this`. Other parameters are considered optional. */
    requiredParameters: i32 = parameterTypes ? parameterTypes.length : 0,
    /** Whether the last parameter is a rest parameter. */
    hasRest: bool = false,
  ): Signature {
    // get the usize type, and the type of the signature
    let usizeType = program.options.usizeType;
    let type = new Type(
      usizeType.kind,
      usizeType.flags & ~TypeFlags.Value | TypeFlags.Reference,
      usizeType.size
    );

    // calculate the properties
    let signatureTypes = program.uniqueSignatures;
    let nextId = program.nextSignatureId;
    
    // construct the signature and calculate it's unique key
    let signature = new Signature(program, parameterTypes, returnType, thisType, requiredParameters, hasRest, nextId, type);
    let uniqueKey = signature.toString();

    // check if it exists, and return it
    if (signatureTypes.has(uniqueKey)) {
      let existing = assert(signatureTypes.get(uniqueKey));
      assert(signature.equals(existing));
      return existing;
    }

    // otherwise increment the program's signature id, set the signature reference of the type, and memoize the signature
    program.nextSignatureId = nextId + 1;
    type.signatureReference = signature;
    signatureTypes.set(uniqueKey, signature);
    return signature;
  }

  /** Constructs a new signature. */
  private constructor(
    /** The program that created this signature. */
    public readonly program: Program,
    /** Parameter types, if any, excluding `this`. */
    public readonly parameterTypes: Type[],
    /** Return type. */
    public readonly returnType: Type,
    /** This type, if an instance signature. */
    public readonly thisType: Type | null,
    /** Number of required parameters excluding `this`. Other parameters are considered optional. */
    public readonly requiredParameters: i32,
    /** Whether the last parameter is a rest parameter. */
    public readonly hasRest: bool,
    /** Unique id representing this signature. */
    public readonly id: u32,
    /** Respective function type. */
    public readonly type: Type,
  ) {}

  get paramRefs(): TypeRef {
    let thisType = this.thisType;
    let parameterTypes = this.parameterTypes;
    let numParameterTypes = parameterTypes.length;
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
    let thisThisType = this.thisType;
    let otherThisType = other.thisType;
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
    let selfParameterTypes = this.parameterTypes;
    let otherParameterTypes = other.parameterTypes;
    let numParameters = selfParameterTypes.length;
    if (numParameters != otherParameterTypes.length)  return false;

    for (let i = 0; i < numParameters; ++i) {
      let selfParameterType = unchecked(selfParameterTypes[i]);
      let otherParameterType = unchecked(otherParameterTypes[i]);
      if (!selfParameterType.equals(otherParameterType)) return false;
    }
    return true;
  }

  /** Tests if a value of this function type is assignable to a target of the specified function type. */
  isAssignableTo(target: Signature, checkCompatibleOverride: bool = false): bool {
    let thisThisType = this.thisType;
    let targetThisType = target.thisType;
    if (checkCompatibleOverride) {
      // check kind of `this` type
      if (thisThisType) {
        if (!targetThisType || !thisThisType.canExtendOrImplement(targetThisType)) {
          return false;
        }
      } else if (targetThisType) {
        return false;
      }
    } else {
      // check `this` type (invariant)
      if (thisThisType) {
        if (targetThisType != targetThisType) return false;
      } else if (targetThisType) {
        return false;
      }
    }

    // check rest parameter
    if (this.hasRest != target.hasRest) return false; // TODO

    // check return type (covariant)
    let thisReturnType = this.returnType;
    let targetReturnType = target.returnType;
    if (!(thisReturnType == targetReturnType || thisReturnType.isAssignableTo(targetReturnType))) {
      return false;
    }
    // check parameter types (invariant)
    let thisParameterTypes = this.parameterTypes;
    let targetParameterTypes = target.parameterTypes;
    let numParameters = thisParameterTypes.length;
    if (numParameters != targetParameterTypes.length) return false; // TODO

    for (let i = 0; i < numParameters; ++i) {
      let thisParameterType = unchecked(thisParameterTypes[i]);
      let targetParameterType = unchecked(targetParameterTypes[i]);
      if (thisParameterType != targetParameterType) return false;
    }
    return true;
  }

  /** Tests if this signature has at least one managed operand. */
  get hasManagedOperands(): bool {
    let thisType = this.thisType;
    if (thisType && thisType.isManaged) {
      return true;
    }
    let parameterTypes = this.parameterTypes;
    for (let i = 0, k = parameterTypes.length; i < k; ++i) {
      if (unchecked(parameterTypes[i]).isManaged) return true;
    }
    return false;
  }

  /** Gets the indices of all managed operands. */
  getManagedOperandIndices(): i32[] {
    let indices = new Array<i32>();
    let index = 0;
    let thisType = this.thisType;
    if (thisType) {
      if (thisType.isManaged) indices.push(index);
      ++index;
    }
    let parameterTypes = this.parameterTypes;
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
    let thisType = this.thisType;
    if (thisType && thisType.isVectorValue) {
      return true;
    }
    let parameterTypes = this.parameterTypes;
    for (let i = 0, k = parameterTypes.length; i < k; ++i) {
      if (unchecked(parameterTypes[i]).isVectorValue) return true;
    }
    return false;
  }

  /** Gets the indices of all v128 operands. */
  getVectorValueOperandIndices(): i32[] {
    let indices = new Array<i32>();
    let index = 0;
    let thisType = this.thisType;
    if (thisType) {
      if (thisType.isVectorValue) indices.push(index);
      ++index;
    }
    let parameterTypes = this.parameterTypes;
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
    let sb = new Array<string>();
    sb.push(validWat ? "%28" : "(");
    let index = 0;
    let thisType = this.thisType;
    if (thisType) {
      sb.push(validWat ? "this:" : "this: ");
      sb.push(thisType.toString(validWat));
      index = 1;
    }
    let parameters = this.parameterTypes;
    let numParameters = parameters.length;
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
  clone(requiredParameters: i32 = this.requiredParameters, hasRest: bool = this.hasRest): Signature {
    let parameterTypes = this.parameterTypes;
    let numParameterTypes = parameterTypes.length;
    let cloneParameterTypes = new Array<Type>(numParameterTypes);
    for (let i = 0; i < numParameterTypes; ++i) {
      unchecked(cloneParameterTypes[i] = parameterTypes[i]);
    }
    return Signature.create(
      this.program,
      cloneParameterTypes,
      this.returnType,
      this.thisType,
      requiredParameters,
      hasRest
    );
  }
}
