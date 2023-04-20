/**
 * @fileoverview A thin wrapper around Binaryen's C-API.
 *
 * The AssemblyScript compiler utilizes Binaryen's C-API directly. Even
 * though it currently imports binaryen.js, none of the JS APIs it
 * provides are used.
 *
 * @license Apache-2.0
 */

import { BuiltinNames } from "./builtins";
import { CommonNames, Target } from "./common";
import {
  isHighSurrogate,
  isLowSurrogate,
  combineSurrogates,
  SURROGATE_HIGH,
  SURROGATE_LOW
} from "./util";
import {
  Type,
  TypeFlags,
  TypeKind
} from "./types";
import {
  ElementKind,
  PropertyPrototype
} from "./program";
import * as binaryen from "./glue/binaryen";

/** A Binaryen-compatible index. */
export type Index = binaryen.Index;
/** Reference to a Binaryen-compatible string. */
export type StringRef = binaryen.StringRef;
/** Reference to a Binaryen module. */
export type ModuleRef = binaryen.ModuleRef;
/** Reference to a Binaryen function. */
export type FunctionRef = binaryen.FunctionRef;
/** Reference to a Binaryen expression. */
export type ExpressionRef = binaryen.ExpressionRef;
/** Reference to a Binaryen global. */
export type GlobalRef = binaryen.GlobalRef;
/** Reference to a Binaryen tag. */
export type TagRef = binaryen.TagRef;
/** Reference to a Binaryen import. */
export type ImportRef = binaryen.ImportRef;
/** Reference to a Binaryen export. */
export type ExportRef = binaryen.ExportRef;
/** Reference to a Binaryen relooper. */
export type RelooperRef = binaryen.RelooperRef;
/** Reference to a Binaryen relooper block. */
export type RelooperBlockRef = binaryen.RelooperBlockRef;

// The following constants must be updated by running scripts/update-constants.
// This is necessary because the functions are not yet callable with Binaryen
// compiled to WebAssembly, requiring awaiting the ready promise first. Note
// that this essentially fixes the compiler to specific versions of Binaryen
// sometimes, because these constants can differ between Binaryen versions.

/** Reference to a Binaryen type. */
export type TypeRef = binaryen.TypeRef;
export namespace TypeRef {
  // special types
  export const None: TypeRef = 0 /* _BinaryenTypeNone */;
  export const Unreachable: TypeRef = 1 /* _BinaryenTypeUnreachable */;
  // value types
  export const I32: TypeRef = 2 /* _BinaryenTypeInt32 */;
  export const I64: TypeRef = 3 /* _BinaryenTypeInt64 */;
  export const F32: TypeRef = 4 /* _BinaryenTypeFloat32 */;
  export const F64: TypeRef = 5 /* _BinaryenTypeFloat64 */;
  export const V128: TypeRef = 6 /* _BinaryenTypeVec128 */;
  // reference/gc types
  export const Funcref = binaryen._BinaryenTypeFuncref();
  export const Externref = binaryen._BinaryenTypeExternref();
  export const Anyref = binaryen._BinaryenTypeAnyref();
  export const Eqref = binaryen._BinaryenTypeEqref();
  export const Structref = binaryen._BinaryenTypeStructref();
  export const Arrayref = binaryen._BinaryenTypeArrayref();
  export const I31ref = binaryen._BinaryenTypeI31ref();
  export const Stringref = binaryen._BinaryenTypeStringref();
  export const StringviewWTF8 = binaryen._BinaryenTypeStringviewWTF8();
  export const StringviewWTF16 = binaryen._BinaryenTypeStringviewWTF16();
  export const StringviewIter = binaryen._BinaryenTypeStringviewIter();
  export const Noneref = binaryen._BinaryenTypeNullref();
  export const Nofuncref = binaryen._BinaryenTypeNullFuncref();
  export const Noexternref = binaryen._BinaryenTypeNullExternref();
}

/** Reference to a Binaryen heap type. */
export type HeapTypeRef = binaryen.HeapTypeRef;
export namespace HeapTypeRef {

  //        any                  extern      func
  //         |                      |          |
  //     __ eq __          ?     noextern    (...)
  //    /    |   \         |                   |
  // i31  struct  array  string              nofunc
  //  |      |      |      |
  // none  (...)  (...)    ?
  //         |      |
  //        none   none
  //
  // where (...) represents the concrete subtypes

  export const Extern: HeapTypeRef = 0 /* _BinaryenHeapTypeExt */;
  export const Func: HeapTypeRef = 1 /* _BinaryenHeapTypeFunc */;
  export const Any: HeapTypeRef = 2 /* _BinaryenHeapTypeAny */;
  export const Eq: HeapTypeRef = 3 /* _BinaryenHeapTypeEq */;
  export const I31: HeapTypeRef = 4 /* _BinaryenHeapTypeI31 */;
  export const Struct: HeapTypeRef = 5 /* _BinaryenHeapTypeStruct */;
  export const Array: HeapTypeRef = 6 /* _BinaryenHeapTypeArray */;
  export const String: HeapTypeRef = 7 /* _BinaryenHeapTypeString */;
  export const StringviewWTF8: HeapTypeRef = 8 /* _BinaryenHeapTypeStringviewWTF8 */;
  export const StringviewWTF16: HeapTypeRef = 9 /* _BinaryenHeapTypeStringviewWTF16 */;
  export const StringviewIter: HeapTypeRef = 10 /* _BinaryenHeapTypeStringviewIter */;
  export const None: HeapTypeRef = 11 /* _BinaryenHeapTypeNone */;
  export const Noextern: HeapTypeRef = 12 /* _BinaryenHeapTypeNoext */;
  export const Nofunc: HeapTypeRef = 13 /* _BinaryenHeapTypeNofunc */;

  export function isBottom(ht: HeapTypeRef): bool {
    return binaryen._BinaryenHeapTypeIsBottom(ht);
  }

  export function getBottom(ht: HeapTypeRef): HeapTypeRef {
    return binaryen._BinaryenHeapTypeGetBottom(ht);
  }

  export function isSubtype(ht: HeapTypeRef, superHt: HeapTypeRef): bool {
    return binaryen._BinaryenHeapTypeIsSubType(ht, superHt);
  }

  export function leastUpperBound(a: HeapTypeRef, b: HeapTypeRef): HeapTypeRef {
    // see binaryen/src/wasm/wasm-type.cpp
    if (a == b) return a;
    if (getBottom(a) != getBottom(b)) return -1;
    if (isBottom(a)) return b;
    if (isBottom(b)) return a;
    if (a > b) {
      let t = a;
      a = b;
      b = t;
    }
    switch (a) {
      case HeapTypeRef.Extern:
      case HeapTypeRef.Func: return -1;
      case HeapTypeRef.Any: return a;
      case HeapTypeRef.Eq: {
        return b == HeapTypeRef.I31 || b == HeapTypeRef.Struct || b == HeapTypeRef.Array
          ? HeapTypeRef.Eq
          : HeapTypeRef.Any;
      }
      case HeapTypeRef.I31: {
        return b == HeapTypeRef.Struct || b == HeapTypeRef.Array
          ? HeapTypeRef.Eq
          : HeapTypeRef.Any;
      }
      case HeapTypeRef.Struct: {
        return b == HeapTypeRef.Array
          ? HeapTypeRef.Eq
          : HeapTypeRef.Any;
      }
      case HeapTypeRef.Array:
      case HeapTypeRef.String:
      case HeapTypeRef.StringviewWTF8:
      case HeapTypeRef.StringviewWTF16:
      case HeapTypeRef.StringviewIter: return HeapTypeRef.Any;
    }
    assert(false);
    return -1;
  }
}

/** Packed array element respectively struct field types. */
export type PackedType = binaryen.PackedType;
export namespace PackedType {
  export const NotPacked: PackedType = 0 /* _BinaryenPackedTypeNotPacked */;
  export const I8: PackedType = 1 /* _BinaryenPackedTypeInt8 */;
  export const I16: PackedType = 2 /* _BinaryenPackedTypeInt16 */;
}

/** Type builder error reasons. */
export type TypeBuilderErrorReason = binaryen.TypeBuilderErrorReason;
export namespace TypeBuilderErrorReason {
  /** Indicates a cycle in the supertype relation. */
  export const SelfSupertype: TypeBuilderErrorReason = 0 /* _TypeBuilderErrorReasonSelfSupertype */;
  /** Indicates that the declared supertype of a type is invalid. */
  export const InvalidSupertype: TypeBuilderErrorReason = 1 /* _TypeBuilderErrorReasonInvalidSupertype */;
  /** Indicates that the declared supertype is an invalid forward reference. */
  export const ForwardSupertypeReference: TypeBuilderErrorReason = 2 /* _TypeBuilderErrorReasonForwardSupertypeReference */;
  /** Indicates that a child of a type is an invalid forward reference. */
  export const ForwardChildReference: TypeBuilderErrorReason = 3 /* _TypeBuilderErrorReasonForwardChildReference */;
  /** Converts a type builder error reason to a string. */
  export function toString(reason: TypeBuilderErrorReason): string {
    switch (reason) {
      case SelfSupertype: return "SelfSupertype";
      case InvalidSupertype: return "InvalidSupertype";
      case ForwardSupertypeReference: return "ForwardSupertypeReference";
      case ForwardChildReference: return "ForwardChildReference";
    }
    assert(false);
    return "";
  }
}

/** Type system constants. */
export type TypeSystem = binaryen.TypeSystem;
export namespace TypeSystem {
  export const Isorecursive: TypeSystem = 0 /* _BinaryenTypeSystemIsorecursive */;
  export const Nominal: TypeSystem = 1 /* _BinaryenTypeSystemNominal */;
}

/** Binaryen feature constants. */
export const enum FeatureFlags {
  MVP = 0 /* _BinaryenFeatureMVP */,
  Atomics = 1 /* _BinaryenFeatureAtomics */,
  MutableGlobals = 2 /* _BinaryenFeatureMutableGlobals */,
  TruncSat = 4 /* _BinaryenFeatureNontrappingFPToInt */,
  SIMD = 8 /* _BinaryenFeatureSIMD128 */,
  BulkMemory = 16 /* _BinaryenFeatureBulkMemory */,
  SignExt = 32 /* _BinaryenFeatureSignExt */,
  ExceptionHandling = 64 /* _BinaryenFeatureExceptionHandling */,
  TailCall = 128 /* _BinaryenFeatureTailCall */,
  ReferenceTypes = 256 /* _BinaryenFeatureReferenceTypes */,
  MultiValue = 512 /* _BinaryenFeatureMultivalue */,
  GC = 1024 /* _BinaryenFeatureGC */,
  Memory64 = 2048 /* _BinaryenFeatureMemory64 */,
  RelaxedSIMD = 8192 /* _BinaryenFeatureRelaxedSIMD */,
  ExtendedConst = 16384 /* _BinaryenFeatureExtendedConst */,
  Stringref = 32768 /* _BinaryenFeatureStrings */,
  MultiMemory = 65536 /* _BinaryenFeatureMultiMemories */,
  All = 126975 /* _BinaryenFeatureAll */
}

/** Binaryen expression id constants. */
export const enum ExpressionId {
  Invalid = 0 /* _BinaryenInvalidId */,
  Block = 1 /* _BinaryenBlockId */,
  If = 2 /* _BinaryenIfId */,
  Loop = 3 /* _BinaryenLoopId */,
  Break = 4 /* _BinaryenBreakId */,
  Switch = 5 /* _BinaryenSwitchId */,
  Call = 6 /* _BinaryenCallId */,
  CallIndirect = 7 /* _BinaryenCallIndirectId */,
  LocalGet = 8 /* _BinaryenLocalGetId */,
  LocalSet = 9 /* _BinaryenLocalSetId */,
  GlobalGet = 10 /* _BinaryenGlobalGetId */,
  GlobalSet = 11 /* _BinaryenGlobalSetId */,
  Load = 12 /* _BinaryenLoadId */,
  Store = 13 /* _BinaryenStoreId */,
  Const = 14 /* _BinaryenConstId */,
  Unary = 15 /* _BinaryenUnaryId */,
  Binary = 16 /* _BinaryenBinaryId */,
  Select = 17 /* _BinaryenSelectId */,
  Drop = 18 /* _BinaryenDropId */,
  Return = 19 /* _BinaryenReturnId */,
  MemorySize = 20 /* _BinaryenMemorySizeId */,
  MemoryGrow = 21 /* _BinaryenMemoryGrowId */,
  Nop = 22 /* _BinaryenNopId */,
  Unreachable = 23 /* _BinaryenUnreachableId */,
  AtomicRMW = 24 /* _BinaryenAtomicRMWId */,
  AtomicCmpxchg = 25 /* _BinaryenAtomicCmpxchgId */,
  AtomicWait = 26 /* _BinaryenAtomicWaitId */,
  AtomicNotify = 27 /* _BinaryenAtomicNotifyId */,
  AtomicFence = 28 /* _BinaryenAtomicFenceId */,
  SIMDExtract = 29 /* _BinaryenSIMDExtractId */,
  SIMDReplace = 30 /* _BinaryenSIMDReplaceId */,
  SIMDShuffle = 31 /* _BinaryenSIMDShuffleId */,
  SIMDTernary = 32 /* _BinaryenSIMDTernaryId */,
  SIMDShift = 33 /* _BinaryenSIMDShiftId */,
  SIMDLoad = 34 /* _BinaryenSIMDLoadId */,
  SIMDLoadStoreLane = 35 /* _BinaryenSIMDLoadStoreLaneId */,
  MemoryInit = 36 /* _BinaryenMemoryInitId */,
  DataDrop = 37 /* _BinaryenDataDropId */,
  MemoryCopy = 38 /* _BinaryenMemoryCopyId */,
  MemoryFill = 39 /* _BinaryenMemoryFillId */,
  Pop = 40 /* _BinaryenPopId */,
  RefNull = 41 /* _BinaryenRefNullId */,
  RefIsNull = 42 /* _BinaryenRefIsNullId */,
  RefFunc = 43 /* _BinaryenRefFuncId */,
  RefEq = 44 /* _BinaryenRefEqId */,
  TableGet = 45 /* _BinaryenTableGetId */,
  TableSet = 46 /* _BinaryenTableSetId */,
  TableSize = 47 /* _BinaryenTableSizeId */,
  TableGrow = 48 /* _BinaryenTableGrowId */,
  Try = 49 /* _BinaryenTryId */,
  Throw = 50 /* _BinaryenThrowId */,
  Rethrow = 51 /* _BinaryenRethrowId */,
  TupleMake = 52 /* _BinaryenTupleMakeId */,
  TupleExtract = 53 /* _BinaryenTupleExtractId */,
  I31New = 54 /* _BinaryenI31NewId */,
  I31Get = 55 /* _BinaryenI31GetId */,
  CallRef = 56 /* _BinaryenCallRefId */,
  RefTest = 57 /* _BinaryenRefTestId */,
  RefCast = 58 /* _BinaryenRefCastId */,
  BrOn = 59 /* _BinaryenBrOnId */,
  StructNew = 60 /* _BinaryenStructNewId */,
  StructGet = 61 /* _BinaryenStructGetId */,
  StructSet = 62 /* _BinaryenStructSetId */,
  ArrayNew = 63 /* _BinaryenArrayNewId */,
  ArrayNewSeg = 64 /* TODO_BinaryenArraySegId */,
  ArrayNewFixed = 65 /* _BinaryenArrayNewFixedId */,
  ArrayGet = 66 /* _BinaryenArrayGetId */,
  ArraySet = 67 /* _BinaryenArraySetId */,
  ArrayLen = 68 /* _BinaryenArrayLenId */,
  ArrayCopy = 69 /* _BinaryenArrayCopyId */,
  ArrayFill = 70 /* _BinaryenArrayFillId */,
  ArrayInit = 71 /* _BinaryenArrayInitId */,
  RefAs = 72 /* _BinaryenRefAsId */,
  StringNew = 73 /* _BinaryenStringNewId */,
  StringConst = 74 /* _BinaryenStringConstId */,
  StringMeasure = 75 /* _BinaryenStringMeasureId */,
  StringEncode = 76 /* _BinaryenStringEncodeId */,
  StringConcat = 77 /* _BinaryenStringConcatId */,
  StringEq = 78 /* _BinaryenStringEqId */,
  StringAs = 79 /* _BinaryenStringAsId */,
  StringWTF8Advance = 80 /* _BinaryenStringWTF8AdvanceId */,
  StringWTF16Get = 81 /* _BinaryenStringWTF16GetId */,
  StringIterNext = 82 /* _BinaryenStringIterNextId */,
  StringIterMove = 83 /* _BinaryenStringIterMoveId */,
  StringSliceWTF = 84 /* _BinaryenStringSliceWTFId */,
  StringSliceIter = 85 /* _BinaryenStringSliceIterId */
}

/** Binaryen external kind constants. */
export const enum ExternalKind {
  Function = 0 /* _BinaryenExternalFunction */,
  Table = 1 /* _BinaryenExternalTable */,
  Memory = 2 /* _BinaryenExternalMemory */,
  Global = 3 /* _BinaryenExternalGlobal */,
  Tag = 4 /* _BinaryenExternalTag */
}

/** Binaryen unary operation constants. */
export const enum UnaryOp {
  /** i32.clz */
  ClzI32 = 0 /* _BinaryenClzInt32 */,
  /** i64.clz */
  ClzI64 = 1 /* _BinaryenClzInt64 */,
  /** i32.ctz */
  CtzI32 = 2 /* _BinaryenCtzInt32 */,
  /** i64.ctz */
  CtzI64 = 3 /* _BinaryenCtzInt64 */,
  /** i32.popcnt */
  PopcntI32 = 4 /* _BinaryenPopcntInt32 */,
  /** i64.popcnt */
  PopcntI64 = 5 /* _BinaryenPopcntInt64 */,
  /** f32.neg */
  NegF32 = 6 /* _BinaryenNegFloat32 */,
  /** f64.neg */
  NegF64 = 7 /* _BinaryenNegFloat64 */,
  /** f32.abs */
  AbsF32 = 8 /* _BinaryenAbsFloat32 */,
  /** f64.abs */
  AbsF64 = 9 /* _BinaryenAbsFloat64 */,
  /** f32.ceil */
  CeilF32 = 10 /* _BinaryenCeilFloat32 */,
  /** f64.ceil */
  CeilF64 = 11 /* _BinaryenCeilFloat64 */,
  /** f32.floor */
  FloorF32 = 12 /* _BinaryenFloorFloat32 */,
  /** f64.floor */
  FloorF64 = 13 /* _BinaryenFloorFloat64 */,
  /** f32.trunc */
  TruncF32 = 14 /* _BinaryenTruncFloat32 */,
  /** f64.trunc */
  TruncF64 = 15 /* _BinaryenTruncFloat64 */,
  /** f32.nearest */
  NearestF32 = 16 /* _BinaryenNearestFloat32 */,
  /** f64.nearest */
  NearestF64 = 17 /* _BinaryenNearestFloat64 */,
  /** f32.sqrt */
  SqrtF32 = 18 /* _BinaryenSqrtFloat32 */,
  /** f64.sqrt */
  SqrtF64 = 19 /* _BinaryenSqrtFloat64 */,
  /** i32.eqz */
  EqzI32 = 20 /* _BinaryenEqZInt32 */,
  /** i64.eqz */
  EqzI64 = 21 /* _BinaryenEqZInt64 */,
  /** i64.extend_i32_s */
  ExtendI32ToI64 = 22 /* _BinaryenExtendSInt32 */,
  /** i64.extend_i32_u */
  ExtendU32ToU64 = 23 /* _BinaryenExtendUInt32 */,
  /** i32.wrap_i64 */
  WrapI64ToI32 = 24 /* _BinaryenWrapInt64 */,
  /** i32.trunc_f32_s */
  TruncF32ToI32 = 25 /* _BinaryenTruncSFloat32ToInt32 */,
  /** i64.trunc_f32_s */
  TruncF32ToI64 = 26 /* _BinaryenTruncSFloat32ToInt64 */,
  /** i32.trunc_f32_u */
  TruncF32ToU32 = 27 /* _BinaryenTruncUFloat32ToInt32 */,
  /** i64.trunc_f32_u */
  TruncF32ToU64 = 28 /* _BinaryenTruncUFloat32ToInt64 */,
  /** i32.trunc_f64_s */
  TruncF64ToI32 = 29 /* _BinaryenTruncSFloat64ToInt32 */,
  /** i64.trunc_f64_s */
  TruncF64ToI64 = 30 /* _BinaryenTruncSFloat64ToInt64 */,
  /** i32.trunc_f64_u */
  TruncF64ToU32 = 31 /* _BinaryenTruncUFloat64ToInt32 */,
  /** i64.trunc_f64_u */
  TruncF64ToU64 = 32 /* _BinaryenTruncUFloat64ToInt64 */,
  /** i32.reinterpret_f32 */
  ReinterpretF32ToI32 = 33 /* _BinaryenReinterpretFloat32 */,
  /** i64.reinterpret_f64 */
  ReinterpretF64ToI64 = 34 /* _BinaryenReinterpretFloat64 */,
  /** f32.convert_i32_s */
  ConvertI32ToF32 = 35 /* _BinaryenConvertSInt32ToFloat32 */,
  /** f64.convert_i32_s */
  ConvertI32ToF64 = 36 /* _BinaryenConvertSInt32ToFloat64 */,
  /** f32.convert_i32_u */
  ConvertU32ToF32 = 37 /* _BinaryenConvertUInt32ToFloat32 */,
  /** f64.convert_i32_u */
  ConvertU32ToF64 = 38 /* _BinaryenConvertUInt32ToFloat64 */,
  /** f32.convert_i64_s */
  ConvertI64ToF32 = 39 /* _BinaryenConvertSInt64ToFloat32 */,
  /** f64.convert_i64_s */
  ConvertI64ToF64 = 40 /* _BinaryenConvertSInt64ToFloat64 */,
  /** f32.convert_i64_u */
  ConvertU64ToF32 = 41 /* _BinaryenConvertUInt64ToFloat32 */,
  /** f64.convert_i64_u */
  ConvertU64ToF64 = 42 /* _BinaryenConvertUInt64ToFloat64 */,
  /** f64.promote.f32 */
  PromoteF32ToF64 = 43 /* _BinaryenPromoteFloat32 */,
  /** f32.demote_f64 */
  DemoteF64ToF32 = 44 /* _BinaryenDemoteFloat64 */,
  /** f32.reinterpret_i32 */
  ReinterpretI32ToF32 = 45 /* _BinaryenReinterpretInt32 */,
  /** f64.reinterpret_i64 */
  ReinterpretI64ToF64 = 46 /* _BinaryenReinterpretInt64 */,

  // see: https://github.com/WebAssembly/sign-extension-ops

  /** i32.extend8_s */
  Extend8I32 = 47 /* _BinaryenExtendS8Int32 */,
  /** i32.extend16_s */
  Extend16I32 = 48 /* _BinaryenExtendS16Int32 */,
  /** i64.extend8_s */
  Extend8I64 = 49 /* _BinaryenExtendS8Int64 */,
  /** i64.extend16_s */
  Extend16I64 = 50 /* _BinaryenExtendS16Int64 */,
  /** i64.extend32_s (i64 in, i64 out) */
  Extend32I64 = 51 /* _BinaryenExtendS32Int64 */,

  // see: https://github.com/WebAssembly/nontrapping-float-to-int-conversions

  /** i32.trunc_sat_f32_s */
  TruncSatF32ToI32 = 52 /* _BinaryenTruncSatSFloat32ToInt32 */,
  /** i32.trunc_sat_f32_u */
  TruncSatF32ToU32 = 53 /* _BinaryenTruncSatUFloat32ToInt32 */,
  /** i32.trunc_sat_f64_s */
  TruncSatF64ToI32 = 54 /* _BinaryenTruncSatSFloat64ToInt32 */,
  /** i32.trunc_sat_f64_u */
  TruncSatF64ToU32 = 55 /* _BinaryenTruncSatUFloat64ToInt32 */,
  /** i64.trunc_sat_f32_s */
  TruncSatF32ToI64 = 56 /* _BinaryenTruncSatSFloat32ToInt64 */,
  /** i64.trunc_sat_f32_u */
  TruncSatF32ToU64 = 57 /* _BinaryenTruncSatUFloat32ToInt64 */,
  /** i64.trunc_sat_f64_s */
  TruncSatF64ToI64 = 58 /* _BinaryenTruncSatSFloat64ToInt64 */,
  /** i64.trunc_sat_f64_u */
  TruncSatF64ToU64 = 59 /* _BinaryenTruncSatUFloat64ToInt64 */,

  // see: https://github.com/WebAssembly/simd

  /** i8x16.splat */
  SplatI8x16 = 60 /* _BinaryenSplatVecI8x16 */,
  /** i16x8.splat */
  SplatI16x8 = 61 /* _BinaryenSplatVecI16x8 */,
  /** i32x4.splat */
  SplatI32x4 = 62 /* _BinaryenSplatVecI32x4 */,
  /** i64x2.splat */
  SplatI64x2 = 63 /* _BinaryenSplatVecI64x2 */,
  /** f32x4.splat */
  SplatF32x4 = 64 /* _BinaryenSplatVecF32x4 */,
  /** f64x2.splat */
  SplatF64x2 = 65 /* _BinaryenSplatVecF64x2 */,
  /** v128.not */
  NotV128 = 66 /* _BinaryenNotVec128 */,
  /** v128.any_true */
  AnyTrueV128 = 67 /* _BinaryenAnyTrueVec128 */,
  /** i8x16.abs */
  AbsI8x16 = 68 /* _BinaryenAbsVecI8x16 */,
  /** i8x16.neg */
  NegI8x16 = 69 /* _BinaryenNegVecI8x16 */,
  /** i8x16.all_true */
  AllTrueI8x16 = 70 /* _BinaryenAllTrueVecI8x16 */,
  /** i8x16.bitmask */
  BitmaskI8x16 = 71 /* _BinaryenBitmaskVecI8x16 */,
  /** i8x16.popcnt */
  PopcntI8x16 = 72 /* _BinaryenPopcntVecI8x16 */,
  /** i16x8.abs */
  AbsI16x8 = 73 /* _BinaryenAbsVecI16x8 */,
  /** i16x8.neg */
  NegI16x8 = 74 /* _BinaryenNegVecI16x8 */,
  /** i16x8.all_true */
  AllTrueI16x8 = 75 /* _BinaryenAllTrueVecI16x8 */,
  /** i16x8.bitmask */
  BitmaskI16x8 = 76 /* _BinaryenBitmaskVecI16x8 */,
  /** i32x4.abs */
  AbsI32x4 = 77 /* _BinaryenAbsVecI32x4 */,
  /** i32x4.neg */
  NegI32x4 = 78 /* _BinaryenNegVecI32x4 */,
  /** i32x4.all_true */
  AllTrueI32x4 = 79 /* _BinaryenAllTrueVecI32x4 */,
  /** i32x4.bitmask */
  BitmaskI32x4 = 80 /* _BinaryenBitmaskVecI32x4 */,
  /** i64x2.abs */
  AbsI64x2 = 81 /* _BinaryenAbsVecI64x2 */,
  /** i64x2.neg */
  NegI64x2 = 82 /* _BinaryenNegVecI64x2 */,
  /** i64x2.all_true */
  AllTrueI64x2 = 83 /* _BinaryenAllTrueVecI64x2 */,
  /** i64x2.bitmask */
  BitmaskI64x2 = 84 /* _BinaryenBitmaskVecI64x2 */,
  /** f32x4.abs */
  AbsF32x4 = 85 /* _BinaryenAbsVecF32x4 */,
  /** f32x4.neg */
  NegF32x4 = 86 /* _BinaryenNegVecF32x4 */,
  /** f32x4.sqrt */
  SqrtF32x4 = 87 /* _BinaryenSqrtVecF32x4 */,
  /** f32x4.ceil */
  CeilF32x4 = 88 /* _BinaryenCeilVecF32x4 */,
  /** f32x4.floor */
  FloorF32x4 = 89 /* _BinaryenFloorVecF32x4 */,
  /** f32x4.trunc */
  TruncF32x4 = 90 /* BinaryenTruncVecF32x4 */,
  /** f32x4.nearest */
  NearestF32x4 = 91 /* BinaryenNearestVecF32x4 */,
  /** f64x2.abs */
  AbsF64x2 = 92 /* _BinaryenAbsVecF64x2 */,
  /** f64x2.neg */
  NegF64x2 = 93 /* _BinaryenNegVecF64x2 */,
  /** f64x2.sqrt */
  SqrtF64x2 = 94 /* _BinaryenSqrtVecF64x2 */,
  /** f64x2.ceil */
  CeilF64x2 = 95 /* _BinaryenCeilVecF64x2 */,
  /** f64x2.floor */
  FloorF64x2 = 96 /* _BinaryenFloorVecF64x2 */,
  /** f64x2.trunc */
  TruncF64x2 = 97 /* _BinaryenTruncVecF64x2 */,
  /** f64x2.nearest */
  NearestF64x2 = 98 /* _BinaryenNearestVecF64x2 */,
  /** i16x8.extadd_pairwise_i8x16_s */
  ExtaddPairwiseI8x16ToI16x8 = 99 /* _BinaryenExtAddPairwiseSVecI8x16ToI16x8 */,
  /** i16x8.extadd_pairwise.i8x16_u */
  ExtaddPairwiseU8x16ToU16x8 = 100 /* _BinaryenExtAddPairwiseUVecI8x16ToI16x8 */,
  /** i32x4.extadd_pairwise.i16x8_s */
  ExtaddPairwiseI16x8ToI32x4 = 101 /* _BinaryenExtAddPairwiseSVecI16x8ToI32x4 */,
  /** i32x4.extadd_pairwise.i64x8_u */
  ExtaddPairwiseU16x8ToU32x4 = 102 /* _BinaryenExtAddPairwiseUVecI16x8ToI32x4 */,
  /** i32x4.trunc_sat_f32x4_s */
  TruncSatF32x4ToI32x4 = 103 /* _BinaryenTruncSatSVecF32x4ToVecI32x4 */,
  /** i32x4.trunc_sat_f32x4_u */
  TruncSatF32x4ToU32x4 = 104 /* _BinaryenTruncSatUVecF32x4ToVecI32x4 */,
  /** f32x4.convert_i32x4_s */
  ConvertI32x4ToF32x4 = 105 /* _BinaryenConvertSVecI32x4ToVecF32x4 */,
  /** f32x4.convert_i32x4_u */
  ConvertU32x4ToF32x4 = 106 /* _BinaryenConvertUVecI32x4ToVecF32x4 */,
  /** i16x8.extend_low_i8x16_s */
  ExtendLowI8x16ToI16x8 = 107 /* _BinaryenExtendLowSVecI8x16ToVecI16x8 */,
  /** i16x8.extend_high_i8x16_s */
  ExtendHighI8x16ToI16x8 = 108 /* _BinaryenExtendHighSVecI8x16ToVecI16x8 */,
  /** i16x8.extend_low_i8x16_u */
  ExtendLowU8x16ToU16x8 = 109 /* _BinaryenExtendLowUVecI8x16ToVecI16x8 */,
  /** i16x8.extend_high_i8x16_u */
  ExtendHighU8x16ToU16x8 = 110 /* _BinaryenExtendHighUVecI8x16ToVecI16x8 */,
  /** i32x4.extend_low_i16x8_s */
  ExtendLowI16x8ToI32x4 = 111 /* _BinaryenExtendLowSVecI16x8ToVecI32x4 */,
  /** i32x4.extend_high_i16x8_s */
  ExtendHighI16x8ToI32x4 = 112 /* _BinaryenExtendHighSVecI16x8ToVecI32x4 */,
  /** i32x4.extend_low_i16x8_u */
  ExtendLowU16x8ToU32x4 = 113 /* _BinaryenExtendLowUVecI16x8ToVecI32x4 */,
  /** i32x4.extend_high_i16x8_u */
  ExtendHighU16x8ToU32x4 = 114 /* _BinaryenExtendHighUVecI16x8ToVecI32x4 */,
  /** i64x2.extend_low_i32x4_s */
  ExtendLowI32x4ToI64x2 = 115 /* _BinaryenExtendLowSVecI32x4ToVecI64x2 */,
  /** i64x2.extend_high_i32x4_s */
  ExtendHighI32x4ToI64x2 = 116 /* _BinaryenExtendHighSVecI32x4ToVecI64x2 */,
  /** i64x2.extend_low_i32x4_u */
  ExtendLowU32x4ToU64x2 = 117 /* _BinaryenExtendLowUVecI32x4ToVecI64x2 */,
  /** i64x2.extend_high_i32x4_u */
  ExtendHighU32x4ToU64x2 = 118 /* _BinaryenExtendHighUVecI32x4ToVecI64x2 */,
  /** f32x4.convert_i32x4_s */
  ConvertLowI32x4ToF64x2 = 119 /* _BinaryenConvertLowSVecI32x4ToVecF64x2 */,
  /** f32x4.convert_i32x4_u */
  ConvertLowU32x4ToF64x2 = 120 /* _BinaryenConvertLowUVecI32x4ToVecF64x2 */,
  /** i32x4.trunc_sat_f64x2_s_zero */
  TruncSatF64x2ToI32x4Zero = 121 /* _BinaryenTruncSatZeroSVecF64x2ToVecI32x4 */,
  /** i32x4.trunc_sat_f64x2_u_zero */
  TruncSatF64x2ToU32x4Zero = 122 /* _BinaryenTruncSatZeroUVecF64x2ToVecI32x4 */,
  /** f32x4.demote_f64x2_zero */
  DemoteZeroF64x2ToF32x4 = 123 /* _BinaryenDemoteZeroVecF64x2ToVecF32x4 */,
  /** f64x2.promote_low_f32x4 */
  PromoteLowF32x4ToF64x2 = 124 /* _BinaryenPromoteLowVecF32x4ToVecF64x2 */,

  // see: https://github.com/WebAssembly/relaxed-simd

  /** i32x4.relaxed_trunc_f32x4_s */
  RelaxedTruncF32x4ToI32x4 = 125 /* TODO_BinaryenRelaxedTruncSVecF32x4ToVecI32x4 */,
  /** i32x4.relaxed_trunc_f32x4_u */
  RelaxedTruncF32x4ToU32x4 = 126 /* TODO_BinaryenRelaxedTruncUVecF32x4ToVecI32x4 */,
  /** i32x4.relaxed_trunc_f64x2_s_zero */
  RelaxedTruncF64x2ToI32x4Zero = 127 /* TODO_BinaryenRelaxedTruncZeroSVecF64x2ToVecI32x4 */,
  /** i32x4.relaxed_trunc_f64x2_u_zero */
  RelaxedTruncF64x2ToU32x4Zero = 128 /* TODO_BinaryenRelaxedTruncZeroUVecF64x2ToVecI32x4 */,

  _last = RelaxedTruncF64x2ToU32x4Zero,

  // Target dependent

  /** i32.clz or i64.clz, depending on target word size */
  ClzSize,
  /** i32.ctz or i64.ctz, depending on target word size */
  CtzSize,
  /** i32.popcnt or i64.popcnt, depending on target word size */
  PopcntSize,
  /** i32.eqz or i64.eqz, depending on target word size */
  EqzSize
}

/** Binaryen binary operation constants. */
export const enum BinaryOp {
  /** i32.add */
  AddI32 = 0 /* _BinaryenAddInt32 */,
  /** i32.sub */
  SubI32 = 1 /* _BinaryenSubInt32 */,
  /** i32.mul */
  MulI32 = 2 /* _BinaryenMulInt32 */,
  /** i32.div_s */
  DivI32 = 3 /* _BinaryenDivSInt32 */,
  /** i32.div_u */
  DivU32 = 4 /* _BinaryenDivUInt32 */,
  /** i32.rem_s */
  RemI32 = 5 /* _BinaryenRemSInt32 */,
  /** i32.rem_u */
  RemU32 = 6 /* _BinaryenRemUInt32 */,
  /** i32.and */
  AndI32 = 7 /* _BinaryenAndInt32 */,
  /** i32.or */
  OrI32 = 8 /* _BinaryenOrInt32 */,
  /** i32.xor */
  XorI32 = 9 /* _BinaryenXorInt32 */,
  /** i32.shl */
  ShlI32 = 10 /* _BinaryenShlInt32 */,
  /** i32.shr_s */
  ShrI32 = 11 /* _BinaryenShrSInt32 */,
  /** i32.shr_u */
  ShrU32 = 12 /* _BinaryenShrUInt32 */,
  /** i32.rotl */
  RotlI32 = 13 /* _BinaryenRotLInt32 */,
  /** i32.rotr */
  RotrI32 = 14 /* _BinaryenRotRInt32 */,
  /** i32.eq */
  EqI32 = 15 /* _BinaryenEqInt32 */,
  /** i32.ne */
  NeI32 = 16 /* _BinaryenNeInt32 */,
  /** i32.lt_s */
  LtI32 = 17 /* _BinaryenLtSInt32 */,
  /** i32.lt_u */
  LtU32 = 18 /* _BinaryenLtUInt32 */,
  /** i32.le_s */
  LeI32 = 19 /* _BinaryenLeSInt32 */,
  /** i32.le_u */
  LeU32 = 20 /* _BinaryenLeUInt32 */,
  /** i32.gt_s */
  GtI32 = 21 /* _BinaryenGtSInt32 */,
  /** i32.gt_u */
  GtU32 = 22 /* _BinaryenGtUInt32 */,
  /** i32.ge_s */
  GeI32 = 23 /* _BinaryenGeSInt32 */,
  /** i32.ge_u */
  GeU32 = 24 /* _BinaryenGeUInt32 */,
  /** i64.add */
  AddI64 = 25 /* _BinaryenAddInt64 */,
  /** i64.sub */
  SubI64 = 26 /* _BinaryenSubInt64 */,
  /** i64.mul */
  MulI64 = 27 /* _BinaryenMulInt64 */,
  /** i64.div_s */
  DivI64 = 28 /* _BinaryenDivSInt64 */,
  /** i64.div_u */
  DivU64 = 29 /* _BinaryenDivUInt64 */,
  /** i64.rem_s */
  RemI64 = 30 /* _BinaryenRemSInt64 */,
  /** i64.rem_u */
  RemU64 = 31 /* _BinaryenRemUInt64 */,
  /** i64.and */
  AndI64 = 32 /* _BinaryenAndInt64 */,
  /** i64.or */
  OrI64 = 33 /* _BinaryenOrInt64 */,
  /** i64.xor */
  XorI64 = 34 /* _BinaryenXorInt64 */,
  /** i64.shl */
  ShlI64 = 35 /* _BinaryenShlInt64 */,
  /** i64.shr_s */
  ShrI64 = 36 /* _BinaryenShrSInt64 */,
  /** i64.shr_u */
  ShrU64 = 37 /* _BinaryenShrUInt64 */,
  /** i64.rotl */
  RotlI64 = 38 /* _BinaryenRotLInt64 */,
  /** i64.rotr */
  RotrI64 = 39 /* _BinaryenRotRInt64 */,
  /** i64.eq */
  EqI64 = 40 /* _BinaryenEqInt64 */,
  /** i64.ne */
  NeI64 = 41 /* _BinaryenNeInt64 */,
  /** i64.lt_s */
  LtI64 = 42 /* _BinaryenLtSInt64 */,
  /** i64.lt_u */
  LtU64 = 43 /* _BinaryenLtUInt64 */,
  /** i64.le_s */
  LeI64 = 44 /* _BinaryenLeSInt64 */,
  /** i64.le_u */
  LeU64 = 45 /* _BinaryenLeUInt64 */,
  /** i64.gt_s */
  GtI64 = 46 /* _BinaryenGtSInt64 */,
  /** i64.gt_u */
  GtU64 = 47 /* _BinaryenGtUInt64 */,
  /** i64.ge_s */
  GeI64 = 48 /* _BinaryenGeSInt64 */,
  /** i64.ge_u */
  GeU64 = 49 /* _BinaryenGeUInt64 */,
  /** f32.add */
  AddF32 = 50 /* _BinaryenAddFloat32 */,
  /** f32.sub */
  SubF32 = 51 /* _BinaryenSubFloat32 */,
  /** f32.mul */
  MulF32 = 52 /* _BinaryenMulFloat32 */,
  /** f32.div */
  DivF32 = 53 /* _BinaryenDivFloat32 */,
  /** f32.copysign */
  CopysignF32 = 54 /* _BinaryenCopySignFloat32 */,
  /** f32.min */
  MinF32 = 55 /* _BinaryenMinFloat32 */,
  /** f32.max */
  MaxF32 = 56 /* _BinaryenMaxFloat32 */,
  /** f32.eq */
  EqF32 = 57 /* _BinaryenEqFloat32 */,
  /** f32.ne */
  NeF32 = 58 /* _BinaryenNeFloat32 */,
  /** f32.lt */
  LtF32 = 59 /* _BinaryenLtFloat32 */,
  /** f32.le */
  LeF32 = 60 /* _BinaryenLeFloat32 */,
  /** f32.gt */
  GtF32 = 61 /* _BinaryenGtFloat32 */,
  /** f32.ge */
  GeF32 = 62 /* _BinaryenGeFloat32 */,
  /** f64.add */
  AddF64 = 63 /* _BinaryenAddFloat64 */,
  /** f64.sub */
  SubF64 = 64 /* _BinaryenSubFloat64 */,
  /** f64.mul */
  MulF64 = 65 /* _BinaryenMulFloat64 */,
  /** f64.div */
  DivF64 = 66 /* _BinaryenDivFloat64 */,
  /** f64.copysign */
  CopysignF64 = 67 /* _BinaryenCopySignFloat64 */,
  /** f64.min */
  MinF64 = 68 /* _BinaryenMinFloat64 */,
  /** f64.max */
  MaxF64 = 69 /* _BinaryenMaxFloat64 */,
  /** f64.eq */
  EqF64 = 70 /* _BinaryenEqFloat64 */,
  /** f64.ne */
  NeF64 = 71 /* _BinaryenNeFloat64 */,
  /** f64.lt */
  LtF64 = 72 /* _BinaryenLtFloat64 */,
  /** f64.le */
  LeF64 = 73 /* _BinaryenLeFloat64 */,
  /** f64.gt */
  GtF64 = 74 /* _BinaryenGtFloat64 */,
  /** f64.ge */
  GeF64 = 75 /* _BinaryenGeFloat64 */,

  // see: https://github.com/WebAssembly/simd

  /** i8x16.eq */
  EqI8x16 = 76 /* _BinaryenEqVecI8x16 */,
  /** i8x16.he */
  NeI8x16 = 77 /* _BinaryenNeVecI8x16 */,
  /** i8x16.lt_s */
  LtI8x16 = 78 /* _BinaryenLtSVecI8x16 */,
  /** i8x16.lt_u */
  LtU8x16 = 79 /* _BinaryenLtUVecI8x16 */,
  /** i8x16.gt_s */
  GtI8x16 = 80 /* _BinaryenGtSVecI8x16 */,
  /** i8x16.gt_u */
  GtU8x16 = 81 /* _BinaryenGtUVecI8x16 */,
  /** i8x16.le_s */
  LeI8x16 = 82 /* _BinaryenLeSVecI8x16 */,
  /** i8x16.le_u */
  LeU8x16 = 83 /* _BinaryenLeUVecI8x16 */,
  /** i8x16.ge_s */
  GeI8x16 = 84 /* _BinaryenGeSVecI8x16 */,
  /** i8x16.ge_u */
  GeU8x16 = 85 /* _BinaryenGeUVecI8x16 */,
  /** i16x8.eq */
  EqI16x8 = 86 /* _BinaryenEqVecI16x8 */,
  /** i16x8.ne */
  NeI16x8 = 87 /* _BinaryenNeVecI16x8 */,
  /** i16x8.lt_s */
  LtI16x8 = 88 /* _BinaryenLtSVecI16x8 */,
  /** i16x8.lt_u */
  LtU16x8 = 89 /* _BinaryenLtUVecI16x8 */,
  /** i16x8.gt_s */
  GtI16x8 = 90 /* _BinaryenGtSVecI16x8 */,
  /** i16x8.gt_u */
  GtU16x8 = 91 /* _BinaryenGtUVecI16x8 */,
  /** i16x8.le_s */
  LeI16x8 = 92 /* _BinaryenLeSVecI16x8 */,
  /** i16x8.le_u */
  LeU16x8 = 93 /* _BinaryenLeUVecI16x8 */,
  /** i16x8.ge_s */
  GeI16x8 = 94 /* _BinaryenGeSVecI16x8 */,
  /** i16x8.ge_u */
  GeU16x8 = 95 /* _BinaryenGeUVecI16x8 */,
  /** i32x4.eq */
  EqI32x4 = 96 /* _BinaryenEqVecI32x4 */,
  /** i32x4.ne */
  NeI32x4 = 97 /* _BinaryenNeVecI32x4 */,
  /** i32x4.lt_s */
  LtI32x4 = 98 /* _BinaryenLtSVecI32x4 */,
  /** i32x4.lt_u */
  LtU32x4 = 99 /* _BinaryenLtUVecI32x4 */,
  /** i32x4.gt_s */
  GtI32x4 = 100 /* _BinaryenGtSVecI32x4 */,
  /** i32x4.gt_u */
  GtU32x4 = 101 /* _BinaryenGtUVecI32x4 */,
  /** i32x4.le_s */
  LeI32x4 = 102 /* _BinaryenLeSVecI32x4 */,
  /** i32x4.le_u */
  LeU32x4 = 103 /* _BinaryenLeUVecI32x4 */,
  /** i32x4.ge_s */
  GeI32x4 = 104 /* _BinaryenGeSVecI32x4 */,
  /** i32x4.ge_u */
  GeU32x4 = 105 /* _BinaryenGeUVecI32x4 */,
  /** i64x2.eq */
  EqI64x2 = 106 /* _BinaryenEqVecI64x2 */,
  /** i64x2.ne */
  NeI64x2 = 107 /* _BinaryenNeVecI64x2 */,
  /** i64x2.lt_s */
  LtI64x2 = 108 /* _BinaryenLtSVecI64x2 */,
  /** i64x2.gt_s */
  GtI64x2 = 109 /* _BinaryenGtSVecI64x2 */,
  /** i64x2.le_s */
  LeI64x2 = 110 /* _BinaryenLeSVecI64x2 */,
  /** i64x2.ge_s */
  GeI64x2 = 111 /* _BinaryenGeSVecI64x2 */,
  /** f32x4.eq */
  EqF32x4 = 112 /* _BinaryenEqVecF32x4 */,
  /** f32x4.ne */
  NeF32x4 = 113 /* _BinaryenNeVecF32x4 */,
  /** f32x4.lt */
  LtF32x4 = 114 /* _BinaryenLtVecF32x4 */,
  /** f32x4.gt */
  GtF32x4 = 115 /* _BinaryenGtVecF32x4 */,
  /** f32x4.le */
  LeF32x4 = 116 /* _BinaryenLeVecF32x4 */,
  /** f32x4.ge */
  GeF32x4 = 117 /* _BinaryenGeVecF32x4 */,
  /** f64x2.eq */
  EqF64x2 = 118 /* _BinaryenEqVecF64x2 */,
  /** f64x2.ne */
  NeF64x2 = 119 /* _BinaryenNeVecF64x2 */,
  /** f64x2.lt */
  LtF64x2 = 120 /* _BinaryenLtVecF64x2 */,
  /** f64x2.gt */
  GtF64x2 = 121 /* _BinaryenGtVecF64x2 */,
  /** f64x2.le */
  LeF64x2 = 122 /* _BinaryenLeVecF64x2 */,
  /** f64x2.ge */
  GeF64x2 = 123 /* _BinaryenGeVecF64x2 */,
  /** v128.and */
  AndV128 = 124 /* _BinaryenAndVec128 */,
  /** v128.or */
  OrV128 = 125 /* _BinaryenOrVec128 */,
  /** v128.xor */
  XorV128 = 126 /* _BinaryenXorVec128 */,
  /** v128.andnot */
  AndnotV128 = 127 /* _BinaryenAndNotVec128 */,
  /** i8x16.add */
  AddI8x16 = 128 /* _BinaryenAddVecI8x16 */,
  /** i8x16.add_sat_s */
  AddSatI8x16 = 129 /* _BinaryenAddSatSVecI8x16 */,
  /** i8x16.add_sat_u */
  AddSatU8x16 = 130 /* _BinaryenAddSatUVecI8x16 */,
  /** i8x16.sub */
  SubI8x16 = 131 /* _BinaryenSubVecI8x16 */,
  /** i8x16.sub_sat_s */
  SubSatI8x16 = 132 /* _BinaryenSubSatSVecI8x16 */,
  /** i8x16.sub_sat_u */
  SubSatU8x16 = 133 /* _BinaryenSubSatUVecI8x16 */,
  /** i8x16.min_s */
  MinI8x16 = 134 /* _BinaryenMinSVecI8x16 */,
  /** i8x16.min_u */
  MinU8x16 = 135 /* _BinaryenMinUVecI8x16 */,
  /** i8x16.max_s */
  MaxI8x16 = 136 /* _BinaryenMaxSVecI8x16 */,
  /** i8x16.max_u */
  MaxU8x16 = 137 /* _BinaryenMaxUVecI8x16 */,
  /** i8x16.avgr_u */
  AvgrU8x16 = 138 /* _BinaryenAvgrUVecI8x16 */,
  /** i16x8.add */
  AddI16x8 = 139 /* _BinaryenAddVecI16x8 */,
  /** i16x8.add_sat_s */
  AddSatI16x8 = 140 /* _BinaryenAddSatSVecI16x8 */,
  /** i16x8.add_sat_u */
  AddSatU16x8 = 141 /* _BinaryenAddSatUVecI16x8 */,
  /** i16x8.sub */
  SubI16x8 = 142 /* _BinaryenSubVecI16x8 */,
  /** i16x8.sub_sat_s */
  SubSatI16x8 = 143 /* _BinaryenSubSatSVecI16x8 */,
  /** i16x8.sub_sat_u */
  SubSatU16x8 = 144 /* _BinaryenSubSatUVecI16x8 */,
  /** i16x8.mul */
  MulI16x8 = 145 /* _BinaryenMulVecI16x8 */,
  /** i16x8.min_s */
  MinI16x8 = 146 /* _BinaryenMinSVecI16x8 */,
  /** i16x8.min_u */
  MinU16x8 = 147 /* _BinaryenMinUVecI16x8 */,
  /** i16x8.max_s */
  MaxI16x8 = 148 /* _BinaryenMaxSVecI16x8 */,
  /** i16x8.max_u */
  MaxU16x8 = 149 /* _BinaryenMaxUVecI16x8 */,
  /** i16x8.avgr_u */
  AvgrU16x8 = 150 /* _BinaryenAvgrUVecI16x8 */,
  /** i16x8.q15mulr_sat_s */
  Q15mulrSatI16x8 = 151 /* _BinaryenQ15MulrSatSVecI16x8 */,
  /** i16x8.extmul_low_i8x16_s */
  ExtmulLowI16x8 = 152 /* _BinaryenExtMulLowSVecI16x8 */,
  /** i16x8.extmul_high_i8x16_s */
  ExtmulHighI16x8 = 153 /* _BinaryenExtMulHighSVecI16x8 */,
  /** i16x8.extmul_low_i8x16_u */
  ExtmulLowU16x8 = 154 /* _BinaryenExtMulLowUVecI16x8 */,
  /** i16x8.extmul_high_i8x16_u */
  ExtmulHighU16x8 = 155 /* _BinaryenExtMulHighUVecI16x8 */,
  /** i32x4.add */
  AddI32x4 = 156 /* _BinaryenAddVecI32x4 */,
  /** i32x4.sub */
  SubI32x4 = 157 /* _BinaryenSubVecI32x4 */,
  /** i32x4.mul */
  MulI32x4 = 158 /* _BinaryenMulVecI32x4 */,
  /** i32x4.min_s */
  MinI32x4 = 159 /* _BinaryenMinSVecI32x4 */,
  /** i32x4.min_u */
  MinU32x4 = 160 /* _BinaryenMinUVecI32x4 */,
  /** i32x4.max_s */
  MaxI32x4 = 161 /* _BinaryenMaxSVecI32x4 */,
  /** i32x4.max_u */
  MaxU32x4 = 162 /* _BinaryenMaxUVecI32x4 */,
  /** i32x4.dot_i16x8_s */
  DotI16x8 = 163 /* _BinaryenDotSVecI16x8ToVecI32x4 */,
  /** i32x4.extmul_low_i16x8_s */
  ExtmulLowI32x4 = 164 /* _BinaryenExtMulLowSVecI32x4 */,
  /** i32x4.extmul_high_i16x8_s */
  ExtmulHighI32x4 = 165 /* _BinaryenExtMulHighSVecI32x4 */,
  /** i32x4.extmul_low_i16x8_u */
  ExtmulLowU32x4 = 166 /* _BinaryenExtMulLowUVecI32x4 */,
  /** i32x4.extmul_high_i16x8_u */
  ExtmulHighU32x4 = 167 /* _BinaryenExtMulHighUVecI32x4 */,
  /** i64x2.add */
  AddI64x2 = 168 /* _BinaryenAddVecI64x2 */,
  /** i64x2.sub */
  SubI64x2 = 169 /* _BinaryenSubVecI64x2 */,
  /** i64x2.mul */
  MulI64x2 = 170 /* _BinaryenMulVecI64x2 */,
  /** i64x2.extmul_low_i32x4_s */
  ExtmulLowI64x2 = 171 /* _BinaryenExtMulLowSVecI64x2 */,
  /** i64x2.extmul_high_i32x4_s */
  ExtmulHighI64x2 = 172 /* _BinaryenExtMulHighSVecI64x2 */,
  /** i64x2.extmul_low_i32x4_u */
  ExtmulLowU64x2 = 173 /* _BinaryenExtMulLowUVecI64x2 */,
  /** i64x2.extmul_high_i32x4_u */
  ExtmulHighU64x2 = 174 /* _BinaryenExtMulHighUVecI64x2 */,
  /** f32x4.add */
  AddF32x4 = 175 /* _BinaryenAddVecF32x4 */,
  /** f32x4.sub */
  SubF32x4 = 176 /* _BinaryenSubVecF32x4 */,
  /** f32x4.mul */
  MulF32x4 = 177 /* _BinaryenMulVecF32x4 */,
  /** f32x4.div */
  DivF32x4 = 178 /* _BinaryenDivVecF32x4 */,
  /** f32x4.min */
  MinF32x4 = 179 /* _BinaryenMinVecF32x4 */,
  /** f32x4.max */
  MaxF32x4 = 180 /* _BinaryenMaxVecF32x4 */,
  /** f32x4.pmin */
  PminF32x4 = 181 /* _BinaryenPMinVecF32x4 */,
  /** f32x4.pmax */
  PmaxF32x4 = 182 /* _BinaryenPMaxVecF32x4 */,
  /** f64x2.add */
  AddF64x2 = 183 /* _BinaryenAddVecF64x2 */,
  /** f64x2.sub */
  SubF64x2 = 184 /* _BinaryenSubVecF64x2 */,
  /** f64x2.mul */
  MulF64x2 = 185 /* _BinaryenMulVecF64x2 */,
  /** f64x2.div */
  DivF64x2 = 186 /* _BinaryenDivVecF64x2 */,
  /** f64x2.min */
  MinF64x2 = 187 /* _BinaryenMinVecF64x2 */,
  /** f64x2.max */
  MaxF64x2 = 188 /* _BinaryenMaxVecF64x2 */,
  /** f64x2.pmin */
  PminF64x2 = 189 /* _BinaryenPMinVecF64x2 */,
  /** f64x2.pmax */
  PmaxF64x2 = 190 /* _BinaryenPMaxVecF64x2 */,
  /** i8x16.narrow_i16x8_s */
  NarrowI16x8ToI8x16 = 191 /* _BinaryenNarrowSVecI16x8ToVecI8x16 */,
  /** i8x16.narrow_i16x8_u */
  NarrowU16x8ToU8x16 = 192 /* _BinaryenNarrowUVecI16x8ToVecI8x16 */,
  /** i16x8.narrow_i32x4_s */
  NarrowI32x4ToI16x8 = 193 /* _BinaryenNarrowSVecI32x4ToVecI16x8 */,
  /** i16x8.narrow_i32x4_u */
  NarrowU32x4ToU16x8 = 194 /* _BinaryenNarrowUVecI32x4ToVecI16x8 */,
  /** i8x16.swizzle */
  SwizzleI8x16 = 195 /* _BinaryenSwizzleVecI8x16 */,

  // see: https://github.com/WebAssembly/relaxed-simd

  /** i8x16.relaxed_swizzle */
  RelaxedSwizzleI8x16 = 196 /* TODO_BinaryenRelaxedSwizzleVecI8x16 */,
  /** f32x4.relaxed_min */
  RelaxedMinF32x4 = 197 /* TODO_BinaryenRelaxedMinVecF32x4 */,
  /** f32x4.relaxed_max */
  RelaxedMaxF32x4 = 198 /* TODO_BinaryenRelaxedMaxVecF32x4 */,
  /** f64x2.relaxed_min */
  RelaxedMinF64x2 = 199 /* TODO_BinaryenRelaxedMinVecF64x2 */,
  /** f64x2.relaxed_max */
  RelaxedMaxF64x2 = 200 /* TODO_BinaryenRelaxedMaxVecF64x2 */,
  /** i16x8.relaxed_q15mulr_s */
  RelaxedQ15MulrI16x8 = 201 /* TODO_BinaryenRelaxedQ15MulrSVecI16x8 */,
  /** i16x8.relaxed_dot_i8x16_i7x16_s */
  RelaxedDotI8x16I7x16ToI16x8 = 202 /* TODO_BinaryenDotI8x16I7x16SToVecI16x8 */,

  _last = RelaxedDotI8x16I7x16ToI16x8,

  // Target dependent

  /** i32.add or i64.add, depending on target word size */
  AddSize,
  /** i32.sub or i64.sub, depending on target word size */
  SubSize,
  /** i32.mul or i64.mul, depending on target word size */
  MulSize,
  /** i32.div_s or i64.div_s, depending on target word size */
  DivISize,
  /** i32.div_u or i64.div_u, depending on target word size */
  DivUSize,
  /** i32.rem_s or i64.rem_s, depending on target word size */
  RemISize,
  /** i32.rem_u or i64.rem_u, depending on target word size */
  RemUSize,
  /** i32.and or i64.and, depending on target word size */
  AndSize,
  /** i32.or or i64.or, depending on target word size */
  OrSize,
  /** i32.xor or i64.xor, depending on target word size */
  XorSize,
  /** i32.shl or i64.shl, depending on target word size */
  ShlSize,
  /** i32.shr_s or i64.shr_s, depending on target word size */
  ShrISize,
  /** i32.shr_u or i64.shr_u, depending on target word size */
  ShrUSize,
  /** i32.rotl or i64.rotl, depending on target word size */
  RotlSize,
  /** i32.rotr or i64.rotr, depending on target word size */
  RotrSize,
  /** i32.eq or i64.eq, depending on target word size */
  EqSize,
  /** i32.ne or i64.ne, depending on target word size */
  NeSize,
  /** i32.lt_s or i64.lt_s, depending on target word size */
  LtISize,
  /** i32.lt_u or i64.lt_u, depending on target word size */
  LtUSize,
  /** i32.le_s or i64.le_s, depending on target word size */
  LeISize,
  /** i32.le_u or i64.le_u, depending on target word size */
  LeUSize,
  /** i32.gt_s or i64.gt_s, depending on target word size */
  GtISize,
  /** i32.gt_u or i64.gt_u, depending on target word size */
  GtUSize,
  /** i32.ge_s or i64.ge_s, depending on target word size */
  GeISize,
  /** i32.ge_u or i64.ge_u, depending on target word size */
  GeUSize
}

/** Binaryen atomic read-modify-write operation constants. */
export const enum AtomicRMWOp {
  /** i32.atomic.rmw.add, i32.atomic.rmw8.add_u, i32.atomic.rmw16.add_u, i64.atomic.rmw.add, i64.atomic.rmw8.add_u, i64.atomic.rmw16.add_u, i64.atomic.rmw32.add_u */
  Add = 0 /* _BinaryenAtomicRMWAdd */,
  /** i32.atomic.rmw.sub, i32.atomic.rmw8.sub_u, i32.atomic.rmw16.sub_u, i64.atomic.rmw.sub, i64.atomic.rmw8.sub_u, i64.atomic.rmw16.sub_u, i64.atomic.rmw32.sub_u */
  Sub = 1 /* _BinaryenAtomicRMWSub */,
  /** i32.atomic.rmw.and, i32.atomic.rmw8.and_u, i32.atomic.rmw16.and_u, i64.atomic.rmw.and, i64.atomic.rmw8.and_u, i64.atomic.rmw16.and_u, i64.atomic.rmw32.and_u */
  And = 2 /* _BinaryenAtomicRMWAnd */,
  /** i32.atomic.rmw.or, i32.atomic.rmw8.or_u, i32.atomic.rmw16.or_u, i64.atomic.rmw.or, i64.atomic.rmw8.or_u, i64.atomic.rmw16.or_u, i64.atomic.rmw32.or_u */
  Or = 3 /* _BinaryenAtomicRMWOr */,
  /** i32.atomic.rmw.xor, i32.atomic.rmw8.xor_u, i32.atomic.rmw16.xor_u, i64.atomic.rmw.xor, i64.atomic.rmw8.xor_u, i64.atomic.rmw16.xor_u, i64.atomic.rmw32.xor_u */
  Xor = 4 /* _BinaryenAtomicRMWXor */,
  /** i32.atomic.rmw.xchg, i32.atomic.rmw8.xchg_u, i32.atomic.rmw16.xchg_u, i64.atomic.rmw.xchg, i64.atomic.rmw8.xchg_u, i64.atomic.rmw16.xchg_u, i64.atomic.rmw32.xchg_u */
  Xchg = 5 /* _BinaryenAtomicRMWXchg */
}

/** Binaryen SIMD extract operation constants. */
export const enum SIMDExtractOp {
  /** i8x16.extract_lane_s */
  ExtractLaneI8x16 = 0 /* _BinaryenExtractLaneSVecI8x16 */,
  /** i8x16.extract_lane_u */
  ExtractLaneU8x16 = 1 /* _BinaryenExtractLaneUVecI8x16 */,
  /** i16x8.extract_lane_s */
  ExtractLaneI16x8 = 2 /* _BinaryenExtractLaneSVecI16x8 */,
  /** i16x8.extract_lane_u */
  ExtractLaneU16x8 = 3 /* _BinaryenExtractLaneUVecI16x8 */,
  /** i32x4.extract_lane_s */
  ExtractLaneI32x4 = 4 /* _BinaryenExtractLaneVecI32x4 */,
  /** i32x4.extract_lane_u */
  ExtractLaneI64x2 = 5 /* _BinaryenExtractLaneVecI64x2 */,
  /** i64x2.extract_lane_s */
  ExtractLaneF32x4 = 6 /* _BinaryenExtractLaneVecF32x4 */,
  /** i64x2.extract_lane_u */
  ExtractLaneF64x2 = 7 /* _BinaryenExtractLaneVecF64x2 */,
}

/** Binaryen SIMD replace operation constants. */
export const enum SIMDReplaceOp {
  /** i8x16.replace_lane */
  ReplaceLaneI8x16 = 0 /* _BinaryenReplaceLaneVecI8x16 */,
  /** i16x8.replace_lane */
  ReplaceLaneI16x8 = 1 /* _BinaryenReplaceLaneVecI16x8 */,
  /** i32x4.replace_lane */
  ReplaceLaneI32x4 = 2 /* _BinaryenReplaceLaneVecI32x4 */,
  /** i64x2.replace_lane */
  ReplaceLaneI64x2 = 3 /* _BinaryenReplaceLaneVecI64x2 */,
  /** f32x4.replace_lane */
  ReplaceLaneF32x4 = 4 /* _BinaryenReplaceLaneVecF32x4 */,
  /** f64x2.replace_lane */
  ReplaceLaneF64x2 = 5 /* _BinaryenReplaceLaneVecF64x2 */
}

/** Binaryen SIMD shift operation constants. */
export const enum SIMDShiftOp {
  /** i8x16.shl */
  ShlI8x16 = 0 /* _BinaryenShlVecI8x16 */,
  /** i8x16.shr_s */
  ShrI8x16 = 1 /* _BinaryenShrSVecI8x16 */,
  /** i8x16.shr_u */
  ShrU8x16 = 2 /* _BinaryenShrUVecI8x16 */,
  /** i16x8.shl */
  ShlI16x8 = 3 /* _BinaryenShlVecI16x8 */,
  /** i16x8.shr_s */
  ShrI16x8 = 4 /* _BinaryenShrSVecI16x8 */,
  /** i16x8.shr_u */
  ShrU16x8 = 5 /* _BinaryenShrUVecI16x8 */,
  /** i16x8.shl */
  ShlI32x4 = 6 /* _BinaryenShlVecI32x4 */,
  /** i32x4.shr_s */
  ShrI32x4 = 7 /* _BinaryenShrSVecI32x4 */,
  /** i32x4.shr_u */
  ShrU32x4 = 8 /* _BinaryenShrUVecI32x4 */,
  /** i64x2.shl */
  ShlI64x2 = 9 /* _BinaryenShlVecI64x2 */,
  /** i64x2.shr_u */
  ShrI64x2 = 10 /* _BinaryenShrSVecI64x2 */,
  /** i64x2.shr_u */
  ShrU64x2 = 11 /* _BinaryenShrUVecI64x2 */
}

/** Binaryen SIMD load operation constants. */
export const enum SIMDLoadOp {
  /** v128.load8_splat */
  Load8Splat = 0 /* _BinaryenLoad8SplatVec128 */,
  /** v128.load16_splat */
  Load16Splat = 1 /* _BinaryenLoad16SplatVec128 */,
  /** v128.load32_splat */
  Load32Splat = 2 /* _BinaryenLoad32SplatVec128 */,
  /** v128.load64_splat */
  Load64Splat = 3 /* _BinaryenLoad64SplatVec128 */,
  /** v128.load8x8_s */
  Load8x8S = 4 /* _BinaryenLoad8x8SVec128 */,
  /** v128.load8x8_u */
  Load8x8U = 5 /* _BinaryenLoad8x8UVec128 */,
  /** v128.load16x4_s */
  Load16x4S = 6 /* _BinaryenLoad16x4SVec128 */,
  /** v128.load16x4_u */
  Load16x4U = 7 /* _BinaryenLoad16x4UVec128 */,
  /** v128.load32x2_s */
  Load32x2S = 8 /* _BinaryenLoad32x2SVec128 */,
  /** v128.load32x2_u */
  Load32x2U = 9 /* _BinaryenLoad32x2UVec128 */,
  /** v128.load32_zero */
  Load32Zero = 10 /* _BinaryenLoad32ZeroVec128 */,
  /** v128.load64_zero */
  Load64Zero = 11 /* _BinaryenLoad64ZeroVec128 */,
}

/** Binaryen SIMD load/store lane operation constants. */
export const enum SIMDLoadStoreLaneOp {
  /** v128.load8_lane */
  Load8Lane = 0 /* _BinaryenLoad8LaneVec128 */,
  /** v128.load16_lane */
  Load16Lane = 1 /* _BinaryenLoad16LaneVec128 */,
  /** v128.load32_lane */
  Load32Lane = 2 /* _BinaryenLoad32LaneVec128 */,
  /** v128.load64_lane */
  Load64Lane = 3 /* _BinaryenLoad64LaneVec128 */,
  /** v128.store8_lane */
  Store8Lane = 4 /* _BinaryenStore8LaneVec128 */,
  /** v128.store16_lane */
  Store16Lane = 5 /* _BinaryenStore16LaneVec128 */,
  /** v128.store32_lane */
  Store32Lane = 6 /* _BinaryenStore32LaneVec128 */,
  /** v128.store64_lane */
  Store64Lane = 7 /* _BinaryenStore64LaneVec128 */,
}

/** Binaryen SIMD ternary operation constants. */
export const enum SIMDTernaryOp {
  /** v128.bitselect */
  Bitselect = 0 /* _BinaryenBitselectVec128 */,

  // see: https://github.com/WebAssembly/relaxed-simd

  /** f32x4.relaxed_madd */
  RelaxedMaddF32x4 = 1 /* TODO_BinaryenRelaxedFmaVecF32x4 */,
  /** f32x4.relaxed_nmadd */
  RelaxedNmaddF32x4 = 2 /* TODO_BinaryenRelaxedFmsVecF32x4 */,
  /** f64x2.relaxed_madd */
  RelaxedMaddF64x2 = 3 /* TODO_BinaryenRelaxedFmaVecF64x2 */,
  /** f64x2.relaxed_nmadd */
  RelaxedNmaddF64x2 = 4 /* TODO_BinaryenRelaxedFmsVecF64x2 */,
  /** i8x16.relaxed_laneselect */
  RelaxedLaneselectI8x16 = 5 /* TODO_BinaryenLaneselectI8x16 */,
  /** i16x8.relaxed_laneselect */
  RelaxedLaneselectI16x8 = 6 /* TODO_BinaryenLaneselectI16x8 */,
  /** i32x4.relaxed_laneselect */
  RelaxedLaneselectI32x4 = 7 /* TODO_BinaryenLaneselectI32x4 */,
  /** i64x2.relaxed_laneselect */
  RelaxedLaneselectI64x2 = 8 /* TODO_BinaryenLaneselectI64x2 */,
  /** i32x4.relaxed_dot_i8x16_i7x16_add_s */
  RelaxedDotI8x16I7x16AddToI32x4 = 9 /* TODO_BinaryenDotI8x16I7x16AddSToVecI32x4 */,
}

/** Binaryen RefAs operation constants. */
export const enum RefAsOp {
  /** ref.as_non_null */
  NonNull = 0 /* _BinaryenRefAsNonNull */,
  /** extern.internalize */
  ExternInternalize = 1 /* _BinaryenRefAsExternInternalize */,
  /** extern.externalize */
  ExternExternalize = 2 /* _BinaryenRefAsExternExternalize */
}

/** Binaryen BrOn operation constants. */
export const enum BrOnOp {
  /** br_on_null */
  Null = 0 /* _BinaryenBrOnNull */,
  /** br_on_non_null */
  NonNull = 1 /* _BinaryenBrOnNonNull */,
  /** br_on_cast */
  Cast = 2 /* _BinaryenBrOnCast */,
  /** br_on_cast_fail */
  CastFail = 3 /* _BinaryenBrOnCastFail */
}

/** Binaryen StringNew operation constants. */
export const enum StringNewOp {
  /** string.new_wtf8 utf8 */
  UTF8 = 0 /* _BinaryenStringNewUTF8 */,
  /** string.new_wtf8 wtf8 */
  WTF8 = 1 /* _BinaryenStringNewWTF8 */,
  /** string.new_wtf8 replace */
  Replace = 2 /* _BinaryenStringNewReplace */,
  /** string.new_wtf16 */
  WTF16 = 3 /* _BinaryenStringNewWTF16 */,
  /** string.new_wtf8_array utf8 */
  UTF8Array = 4 /* _BinaryenStringNewUTF8Array */,
  /** string.new_wtf8_array wtf8 */
  WTF8Array = 5 /* _BinaryenStringNewWTF8Array */,
  /** string.new_wtf8_array replace */
  ReplaceArray = 6 /* _BinaryenStringNewReplaceArray */,
  /** string.new_wtf16_array */
  WTF16Array = 7 /* _BinaryenStringNewWTF16Array */,
  /** string.from_code_point */
  FromCodePoint = 8 /* _BinaryenStringNewFromCodePoint */
}

/** Binaryen StringMeasure operation constants. */
export const enum StringMeasureOp {
  /** string.measure_wtf8 utf8 */
  UTF8 = 0 /* _BinaryenStringMeasureUTF8 */,
  /** string.measure_wtf8 wtf8 */
  WTF8 = 1 /* _BinaryenStringMeasureWTF8 */,
  /** string.measure_wtf16 */
  WTF16 = 2 /* _BinaryenStringMeasureWTF16 */,
  /** string.is_usv_sequence */
  IsUSV = 3 /* _BinaryenStringMeasureIsUSV */,
  /** stringview_wtf16.length */
  WTF16View = 4 /* _BinaryenStringMeasureWTF16View */
}

/** Binaryen StringEncode operation constants. */
export const enum StringEncodeOp {
  /** string.encode_wtf8 utf8 */
  UTF8 = 0 /* _BinaryenStringEncodeUTF8 */,
  /** string.encode_wtf8 wtf8 */
  WTF8 = 1 /* _BinaryenStringEncodeWTF8 */,
  /** string.encode_wtf16 */
  WTF16 = 2 /* _BinaryenStringEncodeWTF16 */,
  /** string.encode_wtf8_array utf8 */
  UTF8Array = 3 /* _BinaryenStringEncodeUTF8Array */,
  /** string.encode_wtf8_array wtf8 */
  WTF8Array = 4 /* _BinaryenStringEncodeWTF8Array */,
  /** string.encode_wtf16_array */
  WTF16Array = 5 /* _BinaryenStringEncodeWTF16Array */
}

/** Binaryen StringEq operation constants. */
export const enum StringEqOp {
  /** string.eq */
  Equal = 0 /* _BinaryenStringEqEqual */,
  /** string.compare */
  Compare = 1 /* _BinaryenStringEqCompare */
}

/** Binaryen StringAs operation constants. */
export const enum StringAsOp {
  /** string.as_wtf8 */
  WTF8 = 0 /* _BinaryenStringAsWTF8 */,
  /** string.as_wtf16 */
  WTF16 = 1 /* _BinaryenStringAsWTF16 */,
  /** string.as_iter */
  Iter = 2 /* _BinaryenStringAsIter */
}

/** Binaryen StringIterMove operation constants. */
export const enum StringIterMoveOp {
  /** stringview_iter.advance */
  Advance = 0 /* _BinaryenStringIterMoveAdvance */,
  /** stringview_iter.rewind */
  Rewind = 1 /* _BinaryenStringIterMoveRewind */
}

/** Binaryen StringSlice operation constants. */
export const enum StringSliceWTFOp {
  /** stringview_wtf8.slice */
  WTF8 = 0 /* _BinaryenStringSliceWTF8 */,
  /** stringview_wtf16.slice */
  WTF16 = 1 /* _BinaryenStringSliceWTF16 */
}

/** Binaryen expression runner flags. */
export const enum ExpressionRunnerFlags {
  Default = 0 /* _ExpressionRunnerFlagsDefault */,
  PreserveSideeffects = 1 /* _ExpressionRunnerFlagsPreserveSideeffects */,
  TraverseCalls = 2 /* _ExpressionRunnerFlagsTraverseCalls */
}

export class MemorySegment {
  constructor(
    /** Segment data. */
    public buffer: Uint8Array,
    /** Segment offset. */
    public offset: i64
  ) {}
}

export class Module {
  constructor(
    /** Binaryen module reference. */
    public ref: ModuleRef,
    /** Whether a shadow stack is used. */
    public useShadowStack: bool,
    /** Architecture-dependent size type. */
    public sizeType: TypeRef
  ) {
    assert(sizeType == TypeRef.I32 || sizeType == TypeRef.I64);
    this.lit = binaryen._malloc(binaryen._BinaryenSizeofLiteral());
    binaryen._BinaryenSetTypeSystem(TypeSystem.Nominal);
  }

  private lit: usize;

  static create(useShadowStack: bool, sizeType: TypeRef): Module {
    return new Module(binaryen._BinaryenModuleCreate(), useShadowStack, sizeType);
  }

  static createFrom(buffer: Uint8Array, useShadowStack: bool, sizeType: TypeRef): Module {
    let cArr = allocU8Array(buffer);
    let module = new Module(binaryen._BinaryenModuleRead(cArr, buffer.length), useShadowStack, sizeType);
    binaryen._free(changetype<usize>(cArr));
    return module;
  }

  // constants

  i32(value: i32): ExpressionRef {
    let out = this.lit;
    binaryen._BinaryenLiteralInt32(out, value);
    return binaryen._BinaryenConst(this.ref, out);
  }

  i64(valueLow: i32, valueHigh: i32 = 0): ExpressionRef {
    let out = this.lit;
    binaryen._BinaryenLiteralInt64(out, valueLow, valueHigh);
    return binaryen._BinaryenConst(this.ref, out);
  }

  // isize<T>(value: T): ExpressionRef {
  //   if (i64_is(value)) {
  //     if (this.sizeType == TypeRef.I64) {
  //       return this.i64(i64_low(value), i64_high(value));
  //     }
  //     assert(i64_is_i32(value));
  //     return this.i32(i64_low(value));
  //   }
  //   return this.sizeType == TypeRef.I64
  //     ? this.i64(i32(value), i32(value) < 0 ? -1 : 0)
  //     : this.i32(i32(value));
  // }

  usize<T>(value: T): ExpressionRef {
    if (i64_is(value)) {
      if (this.sizeType == TypeRef.I64) {
        return this.i64(i64_low(value), i64_high(value));
      }
      assert(i64_is_u32(value));
      return this.i32(i64_low(value));
    }
    return this.sizeType == TypeRef.I64
      ? this.i64(i32(value))
      : this.i32(i32(value));
  }

  f32(value: f32): ExpressionRef {
    let out = this.lit;
    binaryen._BinaryenLiteralFloat32(out, value);
    return binaryen._BinaryenConst(this.ref, out);
  }

  f64(value: f64): ExpressionRef {
    let out = this.lit;
    binaryen._BinaryenLiteralFloat64(out, value);
    return binaryen._BinaryenConst(this.ref, out);
  }

  v128(bytes: Uint8Array): ExpressionRef {
    assert(bytes.length == 16);
    let out = this.lit;
    for (let i = 0; i < 16; ++i) {
      binaryen.__i32_store8(out + i, unchecked(bytes[i]));
    }
    binaryen._BinaryenLiteralVec128(out, out);
    return binaryen._BinaryenConst(this.ref, out);
  }

  ref_null(type: TypeRef): ExpressionRef {
    // TODO: Provide the desired bottom type directly? Currently, Binaryen does
    // this under the hood, but this API could change to take a heap type.
    // type = binaryen._BinaryenTypeFromHeapType(
    //   binaryen._BinaryenHeapTypeGetBottom(
    //     binaryen._BinaryenTypeGetHeapType(type)
    //   ),
    //   true
    // );
    return binaryen._BinaryenRefNull(this.ref, type);
  }

  ref_eq(left: ExpressionRef, right: ExpressionRef): ExpressionRef {
    return binaryen._BinaryenRefEq(this.ref, left, right);
  }

  string_eq(left: ExpressionRef, right: ExpressionRef): ExpressionRef {
    return binaryen._BinaryenStringEq(this.ref, StringEqOp.Equal, left, right);
  }

  string_compare(left: ExpressionRef, right: ExpressionRef): ExpressionRef {
    return binaryen._BinaryenStringEq(this.ref, StringEqOp.Compare, left, right);
  }

  // expressions

  unary(
    op: UnaryOp,
    value: ExpressionRef
  ): ExpressionRef {
    if (op > UnaryOp._last) {
      let isWam64 = this.sizeType == TypeRef.I64;
      switch (op) {
        case UnaryOp.ClzSize:    op = isWam64 ? UnaryOp.ClzI64    : UnaryOp.ClzI32; break;
        case UnaryOp.CtzSize:    op = isWam64 ? UnaryOp.CtzI64    : UnaryOp.CtzI32; break;
        case UnaryOp.PopcntSize: op = isWam64 ? UnaryOp.PopcntI64 : UnaryOp.PopcntI32; break;
        case UnaryOp.EqzSize:    op = isWam64 ? UnaryOp.EqzI64    : UnaryOp.EqzI32; break;
        default: assert(false);
      }
    }
    return binaryen._BinaryenUnary(this.ref, op, value);
  }

  binary(
    op: BinaryOp,
    left: ExpressionRef,
    right: ExpressionRef
  ): ExpressionRef {
    if (op > BinaryOp._last) {
      let isWasm64 = this.sizeType == TypeRef.I64;
      switch (op) {
        case BinaryOp.AddSize:  op = isWasm64 ? BinaryOp.AddI64  : BinaryOp.AddI32; break;
        case BinaryOp.SubSize:  op = isWasm64 ? BinaryOp.SubI64  : BinaryOp.SubI32; break;
        case BinaryOp.MulSize:  op = isWasm64 ? BinaryOp.MulI64  : BinaryOp.MulI32; break;
        case BinaryOp.DivISize: op = isWasm64 ? BinaryOp.DivI64  : BinaryOp.DivI32; break;
        case BinaryOp.DivUSize: op = isWasm64 ? BinaryOp.DivU64  : BinaryOp.DivU32; break;
        case BinaryOp.RemISize: op = isWasm64 ? BinaryOp.RemI64  : BinaryOp.RemI32; break;
        case BinaryOp.RemUSize: op = isWasm64 ? BinaryOp.RemU64  : BinaryOp.RemU32; break;
        case BinaryOp.AndSize:  op = isWasm64 ? BinaryOp.AndI64  : BinaryOp.AndI32; break;
        case BinaryOp.OrSize:   op = isWasm64 ? BinaryOp.OrI64   : BinaryOp.OrI32; break;
        case BinaryOp.XorSize:  op = isWasm64 ? BinaryOp.XorI64  : BinaryOp.XorI32; break;
        case BinaryOp.ShlSize:  op = isWasm64 ? BinaryOp.ShlI64  : BinaryOp.ShlI32; break;
        case BinaryOp.ShrISize: op = isWasm64 ? BinaryOp.ShrI64  : BinaryOp.ShrI32; break;
        case BinaryOp.ShrUSize: op = isWasm64 ? BinaryOp.ShrU64  : BinaryOp.ShrU32; break;
        case BinaryOp.RotlSize: op = isWasm64 ? BinaryOp.RotlI64 : BinaryOp.RotlI32; break;
        case BinaryOp.RotrSize: op = isWasm64 ? BinaryOp.RotrI64 : BinaryOp.RotrI32; break;
        case BinaryOp.EqSize:   op = isWasm64 ? BinaryOp.EqI64   : BinaryOp.EqI32; break;
        case BinaryOp.NeSize:   op = isWasm64 ? BinaryOp.NeI64   : BinaryOp.NeI32; break;
        case BinaryOp.LtISize:  op = isWasm64 ? BinaryOp.LtI64   : BinaryOp.LtI32; break;
        case BinaryOp.LtUSize:  op = isWasm64 ? BinaryOp.LtU64   : BinaryOp.LtU32; break;
        case BinaryOp.LeISize:  op = isWasm64 ? BinaryOp.LeI64   : BinaryOp.LeI32; break;
        case BinaryOp.LeUSize:  op = isWasm64 ? BinaryOp.LeU64   : BinaryOp.LeU32; break;
        case BinaryOp.GtISize:  op = isWasm64 ? BinaryOp.GtI64   : BinaryOp.GtI32; break;
        case BinaryOp.GtUSize:  op = isWasm64 ? BinaryOp.GtU64   : BinaryOp.GtU32; break;
        case BinaryOp.GeISize:  op = isWasm64 ? BinaryOp.GeI64   : BinaryOp.GeI32; break;
        case BinaryOp.GeUSize:  op = isWasm64 ? BinaryOp.GeU64   : BinaryOp.GeU32; break;
        default: assert(false);
      }
    }
    return binaryen._BinaryenBinary(this.ref, op, left, right);
  }

  memory_size(name: string = CommonNames.DefaultMemory, is64: bool = false): ExpressionRef {
    let cStr = this.allocStringCached(name);
    return binaryen._BinaryenMemorySize(this.ref, cStr, is64);
  }

  memory_grow(delta: ExpressionRef, name: string = CommonNames.DefaultMemory, is64: bool = false): ExpressionRef {
    let cStr = this.allocStringCached(name);
    return binaryen._BinaryenMemoryGrow(this.ref, delta, cStr, is64);
  }

  table_size(name: string): ExpressionRef {
    let cStr = this.allocStringCached(name);
    return binaryen._BinaryenTableSize(this.ref, cStr);
  }

  table_grow(name: string, delta: ExpressionRef, value: ExpressionRef = 0): ExpressionRef {
    let cStr = this.allocStringCached(name);
    return binaryen._BinaryenTableGrow(this.ref, cStr, value, delta);
  }

  local_get(
    index: i32,
    type: TypeRef
  ): ExpressionRef {
    return binaryen._BinaryenLocalGet(this.ref, index, type);
  }

  tostack(value: ExpressionRef): ExpressionRef {
    if (this.useShadowStack) {
      let type = binaryen._BinaryenExpressionGetType(value);
      assert(type == TypeRef.I32 || type == TypeRef.Unreachable);
      return this.call(BuiltinNames.tostack, [ value ], type);
    }
    return value;
  }

  local_tee(
    index: i32,
    value: ExpressionRef,
    isManaged: bool,
    type: TypeRef = -1,
  ): ExpressionRef {
    if (type == -1) type = binaryen._BinaryenExpressionGetType(value);
    if (isManaged && this.useShadowStack) {
      value = this.tostack(value);
    }
    return binaryen._BinaryenLocalTee(this.ref, index, value, type);
  }

  global_get(
    name: string,
    type: TypeRef
  ): ExpressionRef {
    let cStr = this.allocStringCached(name);
    return binaryen._BinaryenGlobalGet(this.ref, cStr, type);
  }

  table_get(
    name: string,
    index: ExpressionRef,
    type: TypeRef
  ): ExpressionRef {
    let cStr = this.allocStringCached(name);
    return binaryen._BinaryenTableGet(this.ref, cStr, index, type);
  }

  load(
    bytes: Index,
    signed: bool,
    ptr: ExpressionRef,
    type: TypeRef,
    offset: Index = 0,
    align: Index = bytes, // naturally aligned by default
    name: string = CommonNames.DefaultMemory
  ): ExpressionRef {
    let cStr = this.allocStringCached(name);
    return binaryen._BinaryenLoad(this.ref, bytes, signed, offset, align, type, ptr, cStr);
  }

  store(
    bytes: Index,
    ptr: ExpressionRef,
    value: ExpressionRef,
    type: TypeRef,
    offset: Index = 0,
    align: Index = bytes, // naturally aligned by default
    name: string = CommonNames.DefaultMemory
  ): ExpressionRef {
    let cStr = this.allocStringCached(name);
    return binaryen._BinaryenStore(this.ref, bytes, offset, align, ptr, value, type, cStr);
  }

  atomic_load(
    bytes: Index,
    ptr: ExpressionRef,
    type: TypeRef,
    offset: Index = 0,
    name: string = CommonNames.DefaultMemory
  ): ExpressionRef {
    let cStr = this.allocStringCached(name);
    return binaryen._BinaryenAtomicLoad(this.ref, bytes, offset, type, ptr, cStr);
  }

  atomic_store(
    bytes: Index,
    ptr: ExpressionRef,
    value: ExpressionRef,
    type: TypeRef,
    offset: Index = 0,
    name: string = CommonNames.DefaultMemory
  ): ExpressionRef {
    let cStr = this.allocStringCached(name);
    return binaryen._BinaryenAtomicStore(this.ref, bytes, offset, ptr, value, type, cStr);
  }

  atomic_rmw(
    op: AtomicRMWOp,
    bytes: Index,
    offset: Index,
    ptr: ExpressionRef,
    value: ExpressionRef,
    type: TypeRef,
    name: string = CommonNames.DefaultMemory
  ): ExpressionRef {
    let cStr = this.allocStringCached(name);
    return binaryen._BinaryenAtomicRMW(this.ref, op, bytes, offset, ptr, value, type, cStr);
  }

  atomic_cmpxchg(
    bytes: Index,
    offset: Index,
    ptr: ExpressionRef,
    expected: ExpressionRef,
    replacement: ExpressionRef,
    type: TypeRef,
    name: string = CommonNames.DefaultMemory
  ): ExpressionRef {
    let cStr = this.allocStringCached(name);
    return binaryen._BinaryenAtomicCmpxchg(this.ref, bytes, offset, ptr, expected, replacement, type, cStr);
  }

  atomic_wait(
    ptr: ExpressionRef,
    expected: ExpressionRef,
    timeout: ExpressionRef,
    expectedType: TypeRef,
    name: string = CommonNames.DefaultMemory
  ): ExpressionRef {
    let cStr = this.allocStringCached(name);
    return binaryen._BinaryenAtomicWait(this.ref, ptr, expected, timeout, expectedType, cStr);
  }

  atomic_notify(
    ptr: ExpressionRef,
    notifyCount: ExpressionRef,
    name: string = CommonNames.DefaultMemory
  ): ExpressionRef {
    let cStr = this.allocStringCached(name);
    return binaryen._BinaryenAtomicNotify(this.ref, ptr, notifyCount, cStr);
  }

  atomic_fence(name: string | null = null): ExpressionRef {
    let cStr = this.allocStringCached(name);
    return binaryen._BinaryenAtomicFence(this.ref, cStr);
  }

  // statements

  local_set(
    index: Index,
    value: ExpressionRef,
    isManaged: bool
  ): ExpressionRef {
    if (isManaged && this.useShadowStack) {
      value = this.tostack(value);
    }
    return binaryen._BinaryenLocalSet(this.ref, index, value);
  }

  global_set(
    name: string,
    value: ExpressionRef
  ): ExpressionRef {
    let cStr = this.allocStringCached(name);
    return binaryen._BinaryenGlobalSet(this.ref, cStr, value);
  }

  table_set(
    name: string,
    index: ExpressionRef,
    value: ExpressionRef
  ): ExpressionRef {
    let cStr = this.allocStringCached(name);
    return binaryen._BinaryenTableSet(this.ref, cStr, index, value);
  }

  block(
    label: string | null,
    children: ExpressionRef[],
    type: TypeRef = TypeRef.None
  ): ExpressionRef {
    let cStr = this.allocStringCached(label);
    let cArr = allocPtrArray(children);
    let ret = binaryen._BinaryenBlock(this.ref, cStr, cArr, children.length, type);
    binaryen._free(cArr);
    return ret;
  }

  /** Attempts to trivially flatten a series of expressions instead of emitting a block. */
  flatten(
    stmts: ExpressionRef[],
    type: TypeRef = TypeRef.None
  ): ExpressionRef {
    let length = stmts.length;
    if (length == 0) return this.nop(); // usually filtered out again
    if (length == 1) {
      let single = stmts[0];
      switch (getExpressionId(single)) {
        case ExpressionId.Return:
        case ExpressionId.Throw:
        case ExpressionId.Unreachable: {
          // type does no matter, terminates anyway
          return single;
        }
      }
      let singleType = getExpressionType(single);
      if (singleType != TypeRef.Unreachable && singleType != type) {
        // can happen when there was a diagnostic prior
        return this.unreachable();
      }
      return single;
    }
    return this.block(null, stmts, type);
  }

  br(
    label: string | null,
    condition: ExpressionRef = 0,
    value: ExpressionRef = 0
  ): ExpressionRef {
    let cStr = this.allocStringCached(label);
    return binaryen._BinaryenBreak(this.ref, cStr, condition, value);
  }

  drop(
    expression: ExpressionRef
  ): ExpressionRef {
    return binaryen._BinaryenDrop(this.ref, expression);
  }

  /** Drops an expression if it evaluates to a value. */
  maybeDrop(
    expression: ExpressionRef
  ): ExpressionRef {
    let type = binaryen._BinaryenExpressionGetType(expression);
    if (type != TypeRef.None && type != TypeRef.Unreachable) {
      return binaryen._BinaryenDrop(this.ref, expression);
    }
    return expression;
  }

  maybeDropCondition(condition: ExpressionRef, result: ExpressionRef): ExpressionRef {
    // FIXME: This is necessary because Binaryen's ExpressionRunner bails early
    // when encountering a local with an unknown value. This helper only drops
    // the pre-evaluated condition if it has relevant side effects.
    // see WebAssembly/binaryen#1237
    if ((getSideEffects(condition, this.ref) & ~(SideEffects.ReadsLocal | SideEffects.ReadsGlobal)) != 0) {
      return this.block(null, [
        this.drop(condition),
        result
      ], getExpressionType(result));
    }
    return result;
  }

  loop(
    label: string | null,
    body: ExpressionRef
  ): ExpressionRef {
    let cStr = this.allocStringCached(label);
    return binaryen._BinaryenLoop(this.ref, cStr, body);
  }

  if(
    condition: ExpressionRef,
    ifTrue: ExpressionRef,
    ifFalse: ExpressionRef = 0
  ): ExpressionRef {
    return binaryen._BinaryenIf(this.ref, condition, ifTrue, ifFalse);
  }

  nop(): ExpressionRef {
    return binaryen._BinaryenNop(this.ref);
  }

  return(
    expression: ExpressionRef = 0
  ): ExpressionRef {
    return binaryen._BinaryenReturn(this.ref, expression);
  }

  select(
    ifTrue: ExpressionRef,
    ifFalse: ExpressionRef,
    condition: ExpressionRef,
    type: TypeRef
  ): ExpressionRef {
    return binaryen._BinaryenSelect(this.ref, condition, ifTrue, ifFalse, type);
  }

  switch(
    names: string[],
    defaultName: string | null,
    condition: ExpressionRef,
    value: ExpressionRef = 0
  ): ExpressionRef {
    let numNames = names.length;
    let strs = new Array<StringRef>(numNames);
    for (let i = 0; i < numNames; ++i) {
      unchecked(strs[i] = this.allocStringCached(names[i]));
    }
    let cArr = allocPtrArray(strs);
    let cStr = this.allocStringCached(defaultName);
    let ret = binaryen._BinaryenSwitch(this.ref, cArr, numNames, cStr, condition, value);
    binaryen._free(cArr);
    return ret;
  }

  call(
    target: string,
    operands: ExpressionRef[] | null,
    returnType: TypeRef,
    isReturn: bool = false
  ): ExpressionRef {
    let cStr = this.allocStringCached(target);
    let cArr = allocPtrArray(operands);
    let ret = isReturn
      ? binaryen._BinaryenReturnCall(
          this.ref, cStr, cArr, operands ? operands.length : 0, returnType
        )
      : binaryen._BinaryenCall(
          this.ref, cStr, cArr, operands ? operands.length : 0, returnType
        );
    binaryen._free(cArr);
    return ret;
  }

  return_call(
    target: string,
    operands: ExpressionRef[] | null,
    returnType: TypeRef
  ): ExpressionRef {
    return this.call(target, operands, returnType, true);
  }

  call_indirect(
    tableName: string | null,
    index: ExpressionRef,
    operands: ExpressionRef[] | null,
    params: TypeRef,
    results: TypeRef,
    isReturn: bool = false
  ): ExpressionRef {
    let cStr = this.allocStringCached(tableName != null
      ? tableName
      : CommonNames.DefaultTable
    );
    let cArr = allocPtrArray(operands);
    let ret = isReturn
      ? binaryen._BinaryenReturnCallIndirect(
          this.ref, cStr, index, cArr, operands ? operands.length : 0, params, results
        )
      : binaryen._BinaryenCallIndirect(
          this.ref, cStr, index, cArr, operands ? operands.length : 0, params, results
        );
    binaryen._free(cArr);
    return ret;
  }

  return_call_indirect(
    tableName: string | null,
    index: ExpressionRef,
    operands: ExpressionRef[] | null,
    params: TypeRef,
    results: TypeRef
  ): ExpressionRef {
    return this.call_indirect(tableName, index, operands, params, results, true);
  }

  unreachable(): ExpressionRef {
    return binaryen._BinaryenUnreachable(this.ref);
  }

  // bulk memory

  memory_copy(
    dest: ExpressionRef,
    source: ExpressionRef,
    size: ExpressionRef,
    destName: string = CommonNames.DefaultMemory,
    sourceName: string = CommonNames.DefaultMemory
  ): ExpressionRef {
    let cStr1 = this.allocStringCached(destName);
    let cStr2 = this.allocStringCached(sourceName);
    return binaryen._BinaryenMemoryCopy(this.ref, dest, source, size, cStr1, cStr2);
  }

  memory_fill(
    dest: ExpressionRef,
    value: ExpressionRef,
    size: ExpressionRef,
    name: string = CommonNames.DefaultMemory
  ): ExpressionRef {
    let cStr = this.allocStringCached(name);
    return binaryen._BinaryenMemoryFill(this.ref, dest, value, size, cStr);
  }

  // exception handling

  try(
    name: string | null,
    body: ExpressionRef,
    catchTags: string[],
    catchBodies: ExpressionRef[],
    delegateTarget: string | null = null
  ): ExpressionRef {
    let numCatchTags = catchTags.length;
    let strs = new Array<TagRef>(numCatchTags);
    for (let i = 0; i < numCatchTags; ++i) {
      strs[i] = this.allocStringCached(catchTags[i]);
    }
    let cArr1 = allocPtrArray(strs);
    let cArr2 = allocPtrArray(catchBodies);
    let cStr1 = this.allocStringCached(name);
    let cStr2 = this.allocStringCached(delegateTarget);
    let ret = binaryen._BinaryenTry(
      this.ref, cStr1, body, cArr1, numCatchTags, cArr2, catchBodies.length, cStr2
    );
    binaryen._free(cArr2);
    binaryen._free(cArr1);
    return ret;
  }

  throw(
    tagName: string,
    operands: ExpressionRef[]
  ): ExpressionRef {
    let cStr = this.allocStringCached(tagName);
    let cArr = allocPtrArray(operands);
    let ret = binaryen._BinaryenThrow(this.ref, cStr, cArr, operands.length);
    binaryen._free(cArr);
    return ret;
  }

  rethrow(
    target: string
  ): ExpressionRef {
    let cStr = this.allocStringCached(target);
    return binaryen._BinaryenRethrow(this.ref, cStr);
  }

  // multi value (pseudo instructions)

  pop(
    type: TypeRef
  ): ExpressionRef {
    return binaryen._BinaryenPop(this.ref, type);
  }

  tuple_make(operands: ExpressionRef[]): ExpressionRef {
    let cArr = allocPtrArray(operands);
    let ret = binaryen._BinaryenTupleMake(this.ref, cArr, operands.length);
    binaryen._free(cArr);
    return ret;
  }

  tuple_extract(tuple: ExpressionRef, index: Index): ExpressionRef {
    return binaryen._BinaryenTupleExtract(this.ref, tuple, index);
  }

  // simd

  simd_extract(
    op: SIMDExtractOp,
    vec: ExpressionRef,
    idx: u8
  ): ExpressionRef {
    return binaryen._BinaryenSIMDExtract(this.ref, op, vec, idx);
  }

  simd_replace(
    op: SIMDReplaceOp,
    vec: ExpressionRef,
    idx: u8,
    value: ExpressionRef
  ): ExpressionRef {
    return binaryen._BinaryenSIMDReplace(this.ref, op, vec, idx, value);
  }

  simd_shuffle(
    vec1: ExpressionRef,
    vec2: ExpressionRef,
    mask: Uint8Array
  ): ExpressionRef {
    assert(mask.length == 16);
    let cArr = allocU8Array(mask);
    let ret = binaryen._BinaryenSIMDShuffle(this.ref, vec1, vec2, cArr);
    binaryen._free(cArr);
    return ret;
  }

  simd_ternary(
    op: SIMDTernaryOp,
    a: ExpressionRef,
    b: ExpressionRef,
    c: ExpressionRef
  ): ExpressionRef {
    return binaryen._BinaryenSIMDTernary(this.ref, op, a, b, c);
  }

  simd_shift(
    op: SIMDShiftOp,
    vec: ExpressionRef,
    shift: ExpressionRef
  ): ExpressionRef {
    return binaryen._BinaryenSIMDShift(this.ref, op, vec, shift);
  }

  simd_load(
    op: SIMDLoadOp,
    ptr: ExpressionRef,
    offset: u32,
    align: u32,
    name: string = CommonNames.DefaultMemory
  ): ExpressionRef {
    let cStr = this.allocStringCached(name);
    return binaryen._BinaryenSIMDLoad(this.ref, op, offset, align, ptr, cStr);
  }

  simd_loadstorelane(
    op: SIMDLoadStoreLaneOp,
    ptr: ExpressionRef,
    offset: u32,
    align: u32,
    index: u8,
    vec: ExpressionRef,
    name: string = CommonNames.DefaultMemory
  ): ExpressionRef {
    let cStr = this.allocStringCached(name);
    return binaryen._BinaryenSIMDLoadStoreLane(this.ref, op, offset, align, index, ptr, vec, cStr);
  }

  // reference types / gc

  ref_is_null(
    expr: ExpressionRef
  ): ExpressionRef {
    return binaryen._BinaryenRefIsNull(this.ref, expr);
  }

  ref_as(
    op: RefAsOp,
    expr: ExpressionRef
  ): ExpressionRef {
    return binaryen._BinaryenRefAs(this.ref, op, expr);
  }

  ref_as_nonnull(
    expr: ExpressionRef
  ): ExpressionRef {
    if (isNullableType(getExpressionType(expr))) {
      return binaryen._BinaryenRefAs(this.ref, RefAsOp.NonNull, expr);
    } else {
      return expr;
    }
  }

  ref_func(
    name: string,
    type: TypeRef
  ): ExpressionRef {
    let cStr = this.allocStringCached(name);
    return binaryen._BinaryenRefFunc(this.ref, cStr, type);
  }

  i31_new(
    value: ExpressionRef
  ): ExpressionRef {
    return binaryen._BinaryenI31New(this.ref, value);
  }

  i31_get(
    expr: ExpressionRef,
    signed: bool
  ): ExpressionRef {
    return binaryen._BinaryenI31Get(this.ref, expr, signed);
  }

  // globals

  addGlobal(
    name: string,
    type: TypeRef,
    mutable: bool,
    initializer: ExpressionRef
  ): GlobalRef {
    let cStr = this.allocStringCached(name);
    return binaryen._BinaryenAddGlobal(this.ref, cStr, type, mutable, initializer);
  }

  getGlobal(
    name: string
  ): GlobalRef {
    let cStr = this.allocStringCached(name);
    return binaryen._BinaryenGetGlobal(this.ref, cStr);
  }

  removeGlobal(
    name: string
  ): bool {
    let cStr = this.allocStringCached(name);
    if (!binaryen._BinaryenGetGlobal(this.ref, cStr)) return false;
    binaryen._BinaryenRemoveGlobal(this.ref, cStr);
    return true;
  }

  // tags

  addTag(
    name: string,
    params: TypeRef,
    results: TypeRef
  ): TagRef {
    let cStr = this.allocStringCached(name);
    return binaryen._BinaryenAddTag(this.ref, cStr, params, results);
  }

  getTag(
    name: string
  ): TagRef {
    let cStr = this.allocStringCached(name);
    return binaryen._BinaryenGetTag(this.ref, cStr);
  }

  removeTag(
    name: string
  ): void {
    let cStr = this.allocStringCached(name);
    binaryen._BinaryenRemoveTag(this.ref, cStr);
  }

  // functions

  addFunction(
    name: string,
    params: TypeRef,
    results: TypeRef,
    varTypes: TypeRef[] | null,
    body: ExpressionRef
  ): FunctionRef {
    let cStr = this.allocStringCached(name);
    let cArr = allocPtrArray(varTypes);
    let ret = binaryen._BinaryenAddFunction(
      this.ref,
      cStr,
      params,
      results,
      cArr,
      varTypes ? varTypes.length : 0,
      body
    );
    binaryen._free(cArr);
    return ret;
  }

  setLocalName(funcRef: FunctionRef, index: u32, name: string): void {
    binaryen._BinaryenFunctionSetLocalName(funcRef, index, this.allocStringCached(name));
  }

  getFunction(
    name: string
  ): FunctionRef {
    let cStr = this.allocStringCached(name);
    return binaryen._BinaryenGetFunction(this.ref, cStr);
  }

  removeFunction(name: string): void {
    let cStr = this.allocStringCached(name);
    binaryen._BinaryenRemoveFunction(this.ref, cStr);
  }

  hasFunction(name: string): bool {
    let cStr = this.allocStringCached(name);
    return binaryen._BinaryenGetFunction(this.ref, cStr) != 0;
  }

  private hasTemporaryFunction: bool = false;

  addTemporaryFunction(
    result: TypeRef,
    paramTypes: TypeRef[] | null,
    body: ExpressionRef
  ): FunctionRef {
    this.hasTemporaryFunction = assert(!this.hasTemporaryFunction);
    let tempName = this.allocStringCached("");
    let cArr = allocPtrArray(paramTypes);
    let ret = binaryen._BinaryenAddFunction(this.ref,
      tempName,
      createType(paramTypes),
      result,
      0, 0,
      body
    );
    binaryen._free(cArr);
    return ret;
  }

  removeTemporaryFunction(): void {
    this.hasTemporaryFunction = !assert(this.hasTemporaryFunction);
    let tempName = this.allocStringCached("");
    binaryen._BinaryenRemoveFunction(this.ref, tempName);
  }

  setStart(func: FunctionRef): void {
    binaryen._BinaryenSetStart(this.ref, func);
  }

  // exports

  addFunctionExport(
    internalName: string,
    externalName: string
  ): ExportRef {
    let cStr1 = this.allocStringCached(internalName);
    let cStr2 = this.allocStringCached(externalName);
    return binaryen._BinaryenAddFunctionExport(this.ref, cStr1, cStr2);
  }

  addTableExport(
    internalName: string,
    externalName: string
  ): ExportRef {
    let cStr1 = this.allocStringCached(internalName);
    let cStr2 = this.allocStringCached(externalName);
    return binaryen._BinaryenAddTableExport(this.ref, cStr1, cStr2);
  }

  addMemoryExport(
    internalName: string,
    externalName: string
  ): ExportRef {
    let cStr1 = this.allocStringCached(internalName);
    let cStr2 = this.allocStringCached(externalName);
    return binaryen._BinaryenAddMemoryExport(this.ref, cStr1, cStr2);
  }

  addGlobalExport(
    internalName: string,
    externalName: string
  ): ExportRef {
    let cStr1 = this.allocStringCached(internalName);
    let cStr2 = this.allocStringCached(externalName);
    return binaryen._BinaryenAddGlobalExport(this.ref, cStr1, cStr2);
  }

  addTagExport(
    internalName: string,
    externalName: string
  ): ExportRef {
    let cStr1 = this.allocStringCached(internalName);
    let cStr2 = this.allocStringCached(externalName);
    return binaryen._BinaryenAddTagExport(this.ref, cStr1, cStr2);
  }

  removeExport(externalName: string): void {
    let cStr = this.allocStringCached(externalName);
    binaryen._BinaryenRemoveExport(this.ref, cStr);
  }

  hasExport(externalName: string): bool {
    let cStr = this.allocStringCached(externalName);
    return binaryen._BinaryenGetExport(this.ref, cStr) != 0;
  }

  // imports

  addFunctionImport(
    internalName: string,
    externalModuleName: string,
    externalBaseName: string,
    params: TypeRef,
    results: TypeRef
  ): void {
    let cStr1 = this.allocStringCached(internalName);
    let cStr2 = this.allocStringCached(externalModuleName);
    let cStr3 = this.allocStringCached(externalBaseName);
    binaryen._BinaryenAddFunctionImport(this.ref, cStr1, cStr2, cStr3, params, results);
  }

  addTableImport(
    internalName: string,
    externalModuleName: string,
    externalBaseName: string
  ): void {
    let cStr1 = this.allocStringCached(internalName);
    let cStr2 = this.allocStringCached(externalModuleName);
    let cStr3 = this.allocStringCached(externalBaseName);
    binaryen._BinaryenAddTableImport(this.ref, cStr1, cStr2, cStr3);
  }

  addMemoryImport(
    internalName: string,
    externalModuleName: string,
    externalBaseName: string,
    shared: bool = false,
  ): void {
    let cStr1 = this.allocStringCached(internalName);
    let cStr2 = this.allocStringCached(externalModuleName);
    let cStr3 = this.allocStringCached(externalBaseName);
    binaryen._BinaryenAddMemoryImport(this.ref, cStr1, cStr2, cStr3, shared);
  }

  addGlobalImport(
    internalName: string,
    externalModuleName: string,
    externalBaseName: string,
    globalType: TypeRef,
    mutable: bool = false
  ): void {
    let cStr1 = this.allocStringCached(internalName);
    let cStr2 = this.allocStringCached(externalModuleName);
    let cStr3 = this.allocStringCached(externalBaseName);
    binaryen._BinaryenAddGlobalImport(this.ref, cStr1, cStr2, cStr3, globalType, mutable);
  }

  addTagImport(
    internalName: string,
    externalModuleName: string,
    externalBaseName: string,
    params: TypeRef,
    results: TypeRef
  ): void {
    let cStr1 = this.allocStringCached(internalName);
    let cStr2 = this.allocStringCached(externalModuleName);
    let cStr3 = this.allocStringCached(externalBaseName);
    binaryen._BinaryenAddTagImport(
      this.ref, cStr1, cStr2, cStr3, params, results
    );
  }

  // memory

  /** Unlimited memory constant. */
  static readonly UNLIMITED_MEMORY: Index = <Index>-1;

  setMemory(
    initial: Index,
    maximum: Index,
    segments: MemorySegment[],
    target: Target,
    exportName: string | null = null,
    name: string = CommonNames.DefaultMemory,
    shared: bool = false
  ): void {
    let cStr1 = this.allocStringCached(exportName);
    let cStr2 = this.allocStringCached(name);
    let k = segments.length;
    let segs = new Array<usize>(k);
    let psvs = new Uint8Array(k);
    let offs = new Array<ExpressionRef>(k);
    let sizs = new Array<Index>(k);
    for (let i = 0; i < k; ++i) {
      let segment = unchecked(segments[i]);
      let buffer = segment.buffer;
      let offset = segment.offset;
      unchecked(segs[i] = allocU8Array(buffer));
      unchecked(psvs[i] = 0); // no passive segments currently
      unchecked(offs[i] = target == Target.Wasm64
        ? this.i64(i64_low(offset), i64_high(offset))
        : this.i32(i64_low(offset))
      );
      unchecked(sizs[i] = buffer.length);
    }
    let cArr1 = allocPtrArray(segs);
    let cArr2 = allocU8Array(psvs);
    let cArr3 = allocPtrArray(offs);
    let cArr4 = allocU32Array(sizs);
    binaryen._BinaryenSetMemory(
      this.ref, initial, maximum, cStr1, cArr1, cArr2, cArr3, cArr4, k, shared, false, cStr2
    );
    binaryen._free(cArr4);
    binaryen._free(cArr3);
    binaryen._free(cArr2);
    binaryen._free(cArr1);
    for (let i = k - 1; i >= 0; --i) {
      binaryen._free(unchecked(segs[i]));
    }
  }

  // table

  /** Unlimited table constant. */
  static readonly UNLIMITED_TABLE: Index = <Index>-1;

  addFunctionTable(
    name: string,
    initial: Index,
    maximum: Index,
    funcs: string[],
    offset: ExpressionRef
  ): void {
    let cStr = this.allocStringCached(name);
    let numNames = funcs.length;
    let names = new Array<StringRef>(numNames);
    for (let i = 0; i < numNames; ++i) {
      unchecked(names[i] = this.allocStringCached(funcs[i]));
    }
    let cArr = allocPtrArray(names);
    let tableRef = binaryen._BinaryenGetTable(this.ref, cStr);
    if (!tableRef) {
      tableRef = binaryen._BinaryenAddTable(this.ref, cStr, initial, maximum, TypeRef.Funcref);
    } else {
      binaryen._BinaryenTableSetInitial(tableRef, initial);
      binaryen._BinaryenTableSetMax(tableRef, maximum);
    }
    binaryen._BinaryenAddActiveElementSegment(this.ref, cStr, cStr, cArr, numNames, offset);
    binaryen._free(cArr);
  }

  /* setFunctionTable(
    initial: Index,
    maximum: Index,
    funcs: string[],
    offset: ExpressionRef
  ): void {
    let numNames = funcs.length;
    let names = new Array<CString>(numNames);
    for (let i = 0; i < numNames; ++i) {
      names[i] = this.allocStringCached(funcs[i]);
    }
    let cArr = allocPtrArray(names);
    binaryen._BinaryenSetFunctionTable(
      this.ref, initial, maximum, cArr, numNames, offset
    );
    binaryen._free(cArr);
  } */

  // sections

  addCustomSection(name: string, contents: Uint8Array): void {
    let cStr = this.allocStringCached(name);
    let cArr = allocU8Array(contents);
    binaryen._BinaryenAddCustomSection(this.ref, cStr, cArr, contents.length);
    binaryen._free(cArr);
  }

  // meta (global)

  getOptimizeLevel(): i32 {
    return binaryen._BinaryenGetOptimizeLevel();
  }

  setOptimizeLevel(level: i32): void {
    binaryen._BinaryenSetOptimizeLevel(level);
  }

  getShrinkLevel(): i32 {
    return binaryen._BinaryenGetShrinkLevel();
  }

  setShrinkLevel(level: i32): void {
    binaryen._BinaryenSetShrinkLevel(level);
  }

  getDebugInfo(): boolean {
    return binaryen._BinaryenGetDebugInfo();
  }

  setDebugInfo(on: bool): void {
    binaryen._BinaryenSetDebugInfo(on);
  }

  getLowMemoryUnused(): bool {
    return binaryen._BinaryenGetLowMemoryUnused();
  }

  setLowMemoryUnused(on: bool): void {
    binaryen._BinaryenSetLowMemoryUnused(on);
  }

  getZeroFilledMemory(): bool {
    return binaryen._BinaryenGetZeroFilledMemory();
  }

  setZeroFilledMemory(on: bool): void {
    binaryen._BinaryenSetZeroFilledMemory(on);
  }

  getFastMath(): bool {
    return binaryen._BinaryenGetFastMath();
  }

  setFastMath(on: bool): void {
    binaryen._BinaryenSetFastMath(on);
  }

  getPassArgument(key: string): string | null {
    let cStr = this.allocStringCached(key);
    let ptr = binaryen._BinaryenGetPassArgument(cStr);
    return ptr ? readString(ptr) : null;
  }

  setPassArgument(key: string, value: string | null): void {
    let cStr1 = this.allocStringCached(key);
    let cStr2 = this.allocStringCached(value);
    binaryen._BinaryenSetPassArgument(cStr1, cStr2);
  }

  clearPassArguments(): void {
    binaryen._BinaryenClearPassArguments();
  }

  getAlwaysInlineMaxSize(): Index {
    return binaryen._BinaryenGetAlwaysInlineMaxSize();
  }

  setAlwaysInlineMaxSize(size: Index): void {
    binaryen._BinaryenSetAlwaysInlineMaxSize(size);
  }

  getFlexibleInlineMaxSize(): Index {
    return binaryen._BinaryenGetFlexibleInlineMaxSize();
  }

  setFlexibleInlineMaxSize(size: Index): void {
    binaryen._BinaryenSetFlexibleInlineMaxSize(size);
  }

  getOneCallerInlineMaxSize(): Index {
    return binaryen._BinaryenGetOneCallerInlineMaxSize();
  }

  setOneCallerInlineMaxSize(size: Index): void {
    binaryen._BinaryenSetOneCallerInlineMaxSize(size);
  }

  getAllowInliningFunctionsWithLoops(): bool {
    return binaryen._BinaryenGetAllowInliningFunctionsWithLoops();
  }

  setAllowInliningFunctionsWithLoops(enabled: bool): void {
    binaryen._BinaryenSetAllowInliningFunctionsWithLoops(enabled);
  }

  // meta (module)

  getFeatures(): FeatureFlags {
    return binaryen._BinaryenModuleGetFeatures(this.ref);
  }

  setFeatures(featureFlags: FeatureFlags): void {
    binaryen._BinaryenModuleSetFeatures(this.ref, featureFlags);
  }

  runPasses(passes: string[], func: FunctionRef = 0): void {
    let numNames = passes.length;
    let cStrs = new Array<StringRef>(numNames);
    for (let i = 0; i < numNames; ++i) {
      cStrs[i] = allocString(passes[i]);
    }
    let cArr = allocPtrArray(cStrs);
    if (func) {
      binaryen._BinaryenFunctionRunPasses(func, this.ref, cArr, numNames);
    } else {
      binaryen._BinaryenModuleRunPasses(this.ref, cArr, numNames);
    }
    binaryen._free(cArr);
    for (let i = numNames - 1; i >= 0; --i) binaryen._free(cStrs[i]);
  }

  optimize(
    optimizeLevel: i32,
    shrinkLevel: i32,
    debugInfo: bool = false,
    zeroFilledMemory: bool = false
  ): void {
    // Implicitly run costly non-LLVM optimizations on -O3 or -Oz
    if (optimizeLevel >= 3 || shrinkLevel >= 2) optimizeLevel = 4;

    this.setOptimizeLevel(optimizeLevel);
    this.setShrinkLevel(shrinkLevel);
    this.setDebugInfo(debugInfo);
    this.setZeroFilledMemory(zeroFilledMemory);
    this.setFastMath(true);
    this.clearPassArguments();

    // Tweak inlining limits based on optimization levels
    if (optimizeLevel >= 2 && shrinkLevel == 0) {
      this.setAlwaysInlineMaxSize(12);
      this.setFlexibleInlineMaxSize(70);
      this.setOneCallerInlineMaxSize(200);
      this.setAllowInliningFunctionsWithLoops(optimizeLevel >= 3);
    } else {
      this.setAlwaysInlineMaxSize(
        optimizeLevel <= 1 || shrinkLevel >= 2
          ? 2
          : 6
      );
      this.setFlexibleInlineMaxSize(65);
      this.setOneCallerInlineMaxSize(80);
      this.setAllowInliningFunctionsWithLoops(false);
    }

    // Pass order here differs substantially from Binaryen's defaults
    // see: Binaryen/src/pass.cpp
    if (optimizeLevel > 0 || shrinkLevel > 0) {
      let passes = new Array<string>();

      // --- PassRunner::addDefaultGlobalOptimizationPrePasses ---

      passes.push("duplicate-function-elimination");
      passes.push("remove-unused-module-elements"); // +

      // --- PassRunner::addDefaultFunctionOptimizationPasses ---
      if (optimizeLevel >= 2) {
        passes.push("once-reduction");
        passes.push("inlining");
        passes.push("simplify-globals-optimizing");
      }
      if (optimizeLevel >= 3 || shrinkLevel >= 1) {
        passes.push("rse");
        passes.push("vacuum");
        passes.push("code-folding");
        passes.push("ssa-nomerge");
        passes.push("local-cse");
        passes.push("remove-unused-brs");
        passes.push("remove-unused-names");
        passes.push("merge-blocks");
        passes.push("precompute-propagate");
        passes.push("simplify-globals-optimizing");
        passes.push("gufa-optimizing");
        passes.push("dae-optimizing");
      }
      if (optimizeLevel >= 3) {
        passes.push("simplify-locals-nostructure");
        passes.push("flatten");
        passes.push("vacuum");
        passes.push("simplify-locals-notee-nostructure");
        passes.push("vacuum");
        passes.push("licm");
        passes.push("merge-locals");
        passes.push("reorder-locals");
      }
      passes.push("optimize-instructions");
      if (optimizeLevel >= 3 || shrinkLevel >= 1) {
        passes.push("dce");
      }
      passes.push("remove-unused-brs");
      passes.push("remove-unused-names");
      if (optimizeLevel >= 3 || shrinkLevel >= 2) {
        passes.push("inlining");
        passes.push("precompute-propagate");
        passes.push("simplify-globals-optimizing");
      } else {
        passes.push("precompute");
      }
      if (optimizeLevel >= 2 || shrinkLevel >= 1) {
        passes.push("pick-load-signs");
      }
      passes.push("simplify-locals-notee-nostructure");
      passes.push("vacuum");
      if (optimizeLevel >= 2 || shrinkLevel >= 1) {
        passes.push("local-cse");
      }
      passes.push("reorder-locals");
      passes.push("coalesce-locals");
      passes.push("simplify-locals");
      passes.push("coalesce-locals");
      passes.push("reorder-locals");
      passes.push("vacuum");
      if (optimizeLevel >= 2 || shrinkLevel >= 1) {
        passes.push("rse");
        passes.push("vacuum");
      }
      if (optimizeLevel >= 3 || shrinkLevel >= 1) {
        passes.push("merge-locals");
        passes.push("vacuum");
      }
      if (optimizeLevel >= 2 || shrinkLevel >= 1) {
        passes.push("simplify-globals-optimizing");
        passes.push("simplify-globals-optimizing");
      }
      passes.push("remove-unused-brs");
      passes.push("remove-unused-names");
      passes.push("merge-blocks");
      if (optimizeLevel >= 3) {
        passes.push("optimize-instructions");
      }

      // --- PassRunner::addDefaultGlobalOptimizationPostPasses ---

      if (optimizeLevel >= 2 || shrinkLevel >= 1) {
        passes.push("simplify-globals-optimizing");
        passes.push("dae-optimizing");
      }
      if (optimizeLevel >= 2 || shrinkLevel >= 2) {
        passes.push("inlining-optimizing");
      }
      if (this.getLowMemoryUnused()) {
        if (optimizeLevel >= 3 || shrinkLevel >= 1) {
          passes.push("optimize-added-constants-propagate");
        } else {
          passes.push("optimize-added-constants");
        }
      }
      passes.push("duplicate-import-elimination");
      if (optimizeLevel >= 2 || shrinkLevel >= 2) {
        passes.push("simplify-globals-optimizing");
      } else {
        passes.push("simplify-globals");
        passes.push("vacuum");
      }
      if (optimizeLevel >= 2 && (this.getFeatures() & FeatureFlags.GC) != 0) {
        passes.push("heap2local");
        passes.push("merge-locals");
        passes.push("local-subtyping");
      }
      // precompute works best after global optimizations
      if (optimizeLevel >= 2 || shrinkLevel >= 1) {
        passes.push("precompute-propagate");
        passes.push("simplify-globals-optimizing");
        passes.push("simplify-globals-optimizing");
      } else {
        passes.push("precompute");
      }
      passes.push("directize"); // replace indirect with direct calls
      passes.push("dae-optimizing"); // reduce arity
      passes.push("inlining-optimizing"); // and inline if possible
      if (optimizeLevel >= 2 || shrinkLevel >= 1) {
        passes.push("code-folding");
        passes.push("ssa-nomerge");
        passes.push("rse");
        // move code on early return (after CFG cleanup)
        passes.push("code-pushing");
        if (optimizeLevel >= 3) {
          // very expensive, so O3 only
          passes.push("simplify-globals");
          passes.push("vacuum");

          passes.push("precompute-propagate");

          // replace indirect with direct calls again and inline
          passes.push("inlining-optimizing");
          passes.push("directize");
          passes.push("dae-optimizing");
          passes.push("local-cse");

          passes.push("merge-locals");
          passes.push("coalesce-locals");
          passes.push("simplify-locals");
          passes.push("vacuum");

          passes.push("inlining");
          passes.push("precompute-propagate");
          passes.push("rse");
          passes.push("vacuum");
          passes.push("ssa-nomerge");
          passes.push("simplify-locals");
          passes.push("coalesce-locals");
        }
        passes.push("optimize-instructions");
        passes.push("remove-unused-brs");
        passes.push("remove-unused-names");
        passes.push("merge-blocks");
        passes.push("vacuum");

        passes.push("simplify-globals-optimizing");
        passes.push("reorder-globals");
        passes.push("remove-unused-brs");
        passes.push("optimize-instructions");
      }
      // clean up
      passes.push("duplicate-function-elimination");
      if (shrinkLevel >= 2) {
        passes.push("merge-similar-functions");
      }
      passes.push("memory-packing");
      passes.push("remove-unused-module-elements");

      this.runPasses(passes);
    }
  }

  validate(): bool {
    return binaryen._BinaryenModuleValidate(this.ref) == 1;
  }

  interpret(): void {
    binaryen._BinaryenModuleInterpret(this.ref);
  }

  toBinary(sourceMapUrl: string | null = null): BinaryModule {
    assert(
      binaryen._BinaryenSizeofLiteral() >=
      binaryen._BinaryenSizeofAllocateAndWriteResult()
    );

    // now safely reuse lit buffer for BinaryenModuleAllocateAndWriteResult
    let resPtr = this.lit;
    let urlPtr = allocString(sourceMapUrl);

    binaryen._BinaryenModuleAllocateAndWrite(resPtr, this.ref, urlPtr);

    // read BinaryenModuleAllocateAndWriteResult struct
    let binaryPtr = binaryen.__i32_load(resPtr + 0) as usize; // non-nullabe
    let binaryLen = binaryen.__i32_load(resPtr + 4);
    let srcMapPtr = binaryen.__i32_load(resPtr + 8) as usize; // nullable

    let binary = new BinaryModule(
      readBuffer(assert(binaryPtr), binaryLen),
      readString(srcMapPtr)
    );

    if (urlPtr) binaryen._free(urlPtr);
    if (srcMapPtr) binaryen._free(srcMapPtr);
    binaryen._free(binaryPtr);

    return binary;
  }

  toText(watFormat: bool = true): string {
    let textPtr = watFormat
      ? binaryen._BinaryenModuleAllocateAndWriteStackIR(this.ref, true)
      : binaryen._BinaryenModuleAllocateAndWriteText(this.ref);
    let text = readString(textPtr);
    if (textPtr) binaryen._free(textPtr);
    return text || "";
  }

  private cachedStringsToPointers: Map<string,usize> = new Map();
  private cachedPointersToStrings: Map<usize,string | null> = new Map();

  allocStringCached(str: string | null): usize {
    if (str == null) return 0;
    let cached = this.cachedStringsToPointers;
    if (cached.has(str)) return changetype<usize>(cached.get(str));
    let ptr = allocString(str);
    cached.set(str, ptr);
    return ptr;
  }

  readStringCached(ptr: usize): string | null {
    // Binaryen internalizes names, so using this method where it's safe can
    // avoid quite a bit of unnecessary garbage.
    if (ptr == 0) return null;
    let cached = this.cachedPointersToStrings;
    if (cached.has(ptr)) return changetype<string>(cached.get(ptr));
    let str = readString(ptr);
    cached.set(ptr, str);
    return str;
  }

  dispose(): void {
    assert(this.ref);
    // TODO: for (let ptr of this.cachedStrings.values()) {
    for (let _values = Map_values(this.cachedStringsToPointers), i = 0, k = _values.length; i < k; ++i) {
      let ptr = unchecked(_values[i]);
      binaryen._free(ptr);
    }
    this.cachedStringsToPointers.clear();
    this.cachedPointersToStrings.clear();
    binaryen._free(this.lit);
    binaryen._BinaryenModuleDispose(this.ref);
    this.ref = 0;
  }

  createRelooper(): Relooper {
    return Relooper.create(this);
  }

  /** Makes a copy of a trivial expression (doesn't contain subexpressions). Returns `0` if non-trivial. */
  tryCopyTrivialExpression(expr: ExpressionRef): ExpressionRef {
    switch (binaryen._BinaryenExpressionGetId(expr)) {
      case ExpressionId.LocalGet:
      case ExpressionId.GlobalGet:
      case ExpressionId.Const:
      case ExpressionId.MemorySize:
      case ExpressionId.Nop:
      case ExpressionId.Unreachable:
      case ExpressionId.DataDrop:
      case ExpressionId.RefNull: return this.copyExpression(expr);
    }
    return 0;
  }

  /** Makes a copy of any expression including all subexpressions. */
  copyExpression(expr: ExpressionRef): ExpressionRef {
    // TODO: Copy debug location as well (needs Binaryen support)
    return binaryen._BinaryenExpressionCopy(expr, this.ref);
  }

  runExpression(
    expr: ExpressionRef,
    flags: ExpressionRunnerFlags,
    maxDepth: i32 = 50,
    maxLoopIterations: i32 = 1
  ): ExpressionRef {
    let runner = binaryen._ExpressionRunnerCreate(this.ref, flags, maxDepth, maxLoopIterations);
    let precomp = binaryen._ExpressionRunnerRunAndDispose(runner, expr);
    if (precomp) {
      if (!this.isConstExpression(precomp)) return 0;
      assert(getExpressionType(precomp) == getExpressionType(expr));
    }
    return precomp;
  }

  isConstExpression(expr: ExpressionRef): bool {
    switch (getExpressionId(expr)) {
      case ExpressionId.Const:
      case ExpressionId.RefNull:
      case ExpressionId.RefFunc:
      case ExpressionId.I31New: return true;
      case ExpressionId.Binary: {
        if (this.getFeatures() & FeatureFlags.ExtendedConst) {
          switch (getBinaryOp(expr)) {
            case BinaryOp.AddI32:
            case BinaryOp.SubI32:
            case BinaryOp.MulI32:
            case BinaryOp.AddI64:
            case BinaryOp.SubI64:
            case BinaryOp.MulI64:
              return (
                this.isConstExpression(getBinaryLeft(expr)) &&
                this.isConstExpression(getBinaryRight(expr))
              );
          }
        }
        break;
      }
    }
    return false;
  }

  // source map generation

  addDebugInfoFile(name: string): Index {
    let cStr = allocString(name);
    let ret = binaryen._BinaryenModuleAddDebugInfoFileName(this.ref, cStr);
    binaryen._free(cStr);
    return ret;
  }

  getDebugInfoFile(index: Index): string | null {
    return readString(binaryen._BinaryenModuleGetDebugInfoFileName(this.ref, index));
  }

  setDebugLocation(
    func: FunctionRef,
    expr: ExpressionRef,
    fileIndex: Index,
    lineNumber: Index,
    columnNumber: Index
  ): void {
    binaryen._BinaryenFunctionSetDebugLocation(func, expr, fileIndex, lineNumber, columnNumber);
  }
}

// types

export function createType(types: TypeRef[] | null): TypeRef {
  if (!types) return TypeRef.None;
  switch (types.length) {
    case 0: return TypeRef.None;
    case 1: return types[0];
  }
  let cArr = allocPtrArray(types);
  let ret = binaryen._BinaryenTypeCreate(cArr, types.length);
  binaryen._free(cArr);
  return ret;
}

export function expandType(type: TypeRef): TypeRef[] {
  let arity = binaryen._BinaryenTypeArity(type);
  let cArr = binaryen._malloc(<usize>arity << 2);
  binaryen._BinaryenTypeExpand(type, cArr);
  let types = new Array<TypeRef>(arity);
  for (let i: u32 = 0; i < arity; ++i) {
    unchecked(types[i] = binaryen.__i32_load(cArr + (<usize>i << 2)));
  }
  binaryen._free(cArr);
  return types;
}

export function isNullableType(type: TypeRef): bool {
  return binaryen._BinaryenTypeIsNullable(type);
}

// expressions

export function getExpressionId(expr: ExpressionRef): ExpressionId {
  return binaryen._BinaryenExpressionGetId(expr);
}

export function getExpressionType(expr: ExpressionRef): TypeRef {
  return binaryen._BinaryenExpressionGetType(expr);
}

export function getConstValueI32(expr: ExpressionRef): i32 {
  return binaryen._BinaryenConstGetValueI32(expr);
}

export function getConstValueI64Low(expr: ExpressionRef): i32 {
  return binaryen._BinaryenConstGetValueI64Low(expr);
}

export function getConstValueI64High(expr: ExpressionRef): i32 {
  return binaryen._BinaryenConstGetValueI64High(expr);
}

export function getConstValueF32(expr: ExpressionRef): f32 {
  return binaryen._BinaryenConstGetValueF32(expr);
}

export function getConstValueF64(expr: ExpressionRef): f64 {
  return binaryen._BinaryenConstGetValueF64(expr);
}

export function getConstValueV128(expr: ExpressionRef): Uint8Array {
  let cArr = binaryen._malloc(16);
  binaryen._BinaryenConstGetValueV128(expr, cArr);
  let out = new Uint8Array(16);
  for (let i = 0; i < 16; ++i) {
    out[i] = binaryen.__i32_load8_u(cArr + i);
  }
  binaryen._free(cArr);
  return out;
}

export function isConstZero(expr: ExpressionRef): bool {
  if (getExpressionId(expr) != ExpressionId.Const) return false;
  let type = getExpressionType(expr);
  if (type == TypeRef.I32) return getConstValueI32(expr) == 0;
  if (type == TypeRef.I64) return (getConstValueI64Low(expr) | getConstValueI64High(expr)) == 0;
  if (type == TypeRef.F32) return getConstValueF32(expr) == 0;
  if (type == TypeRef.F64) return getConstValueF64(expr) == 0;
  return false;
}

export function isConstNonZero(expr: ExpressionRef): bool {
  if (getExpressionId(expr) != ExpressionId.Const) return false;
  let type = getExpressionType(expr);
  if (type == TypeRef.I32) return getConstValueI32(expr) != 0;
  if (type == TypeRef.I64) return (getConstValueI64Low(expr) | getConstValueI64High(expr)) != 0;
  if (type == TypeRef.F32) return getConstValueF32(expr) != 0;
  if (type == TypeRef.F64) return getConstValueF64(expr) != 0;
  return false;
}

export function isConstNegZero(expr: ExpressionRef): bool {
  if (getExpressionId(expr) != ExpressionId.Const) return false;
  let type = getExpressionType(expr);
  if (type == TypeRef.F32) {
    let d = getConstValueF32(expr);
    return d == 0 && f32_as_i32(d) < 0;
  }
  if (type == TypeRef.F64) {
    let d = getConstValueF64(expr);
    return d == 0 && i64_signbit(f64_as_i64(d));
  }
  return false;
}

export function isConstNaN(expr: ExpressionRef): bool {
  if (getExpressionId(expr) != ExpressionId.Const) return false;
  let type = getExpressionType(expr);
  if (type == TypeRef.F32) return isNaN(getConstValueF32(expr));
  if (type == TypeRef.F64) return isNaN(getConstValueF64(expr));
  return false;
}

export function isConstExpressionNaN(module: Module, expr: ExpressionRef): bool {
  let id = getExpressionId(expr);
  let type = getExpressionType(expr);
  if (type == TypeRef.F32 || type == TypeRef.F64) {
    if (id == ExpressionId.Const) {
      return isNaN(
        type == TypeRef.F32
          ? getConstValueF32(expr)
          : getConstValueF64(expr)
      );
    } else if (id == ExpressionId.GlobalGet) {
      let precomp = module.runExpression(expr, ExpressionRunnerFlags.Default, 8);
      if (precomp) {
        return isNaN(
          type == TypeRef.F32
            ? getConstValueF32(precomp)
            : getConstValueF64(precomp)
        );
      }
    }
  }
  return false;
}

export function getLocalGetIndex(expr: ExpressionRef): Index {
  return binaryen._BinaryenLocalGetGetIndex(expr);
}

export function getLocalSetIndex(expr: ExpressionRef): Index {
  return binaryen._BinaryenLocalSetGetIndex(expr);
}

export function getLocalSetValue(expr: ExpressionRef): ExpressionRef {
  return binaryen._BinaryenLocalSetGetValue(expr);
}

export function isLocalTee(expr: ExpressionRef): bool {
  return binaryen._BinaryenLocalSetIsTee(expr);
}

export function getGlobalGetName(expr: ExpressionRef): string | null {
  return readString(binaryen._BinaryenGlobalGetGetName(expr));
}

export function getBinaryOp(expr: ExpressionRef): BinaryOp {
  return binaryen._BinaryenBinaryGetOp(expr);
}

export function getBinaryLeft(expr: ExpressionRef): ExpressionRef {
  return binaryen._BinaryenBinaryGetLeft(expr);
}

export function getBinaryRight(expr: ExpressionRef): ExpressionRef {
  return binaryen._BinaryenBinaryGetRight(expr);
}

export function getUnaryOp(expr: ExpressionRef): UnaryOp {
  return binaryen._BinaryenUnaryGetOp(expr);
}

export function getUnaryValue(expr: ExpressionRef): ExpressionRef {
  return binaryen._BinaryenUnaryGetValue(expr);
}

export function getLoadBytes(expr: ExpressionRef): u32 {
  return binaryen._BinaryenLoadGetBytes(expr);
}

export function getLoadOffset(expr: ExpressionRef): u32 {
  return binaryen._BinaryenLoadGetOffset(expr);
}

export function getLoadPtr(expr: ExpressionRef): ExpressionRef {
  return binaryen._BinaryenLoadGetPtr(expr);
}

export function isLoadSigned(expr: ExpressionRef): bool {
  return binaryen._BinaryenLoadIsSigned(expr);
}

export function getStoreBytes(expr: ExpressionRef): u32 {
  return binaryen._BinaryenStoreGetBytes(expr);
}

export function getStoreOffset(expr: ExpressionRef): u32 {
  return binaryen._BinaryenStoreGetOffset(expr);
}

export function getStorePtr(expr: ExpressionRef): ExpressionRef {
  return binaryen._BinaryenStoreGetPtr(expr);
}

export function getStoreValue(expr: ExpressionRef): ExpressionRef {
  return binaryen._BinaryenStoreGetValue(expr);
}

export function getBlockName(expr: ExpressionRef): string | null {
  return readString(binaryen._BinaryenBlockGetName(expr));
}

export function getBlockChildCount(expr: ExpressionRef): Index {
  return binaryen._BinaryenBlockGetNumChildren(expr);
}

export function getBlockChildAt(expr: ExpressionRef, index: Index): ExpressionRef {
  return binaryen._BinaryenBlockGetChildAt(expr, index);
}

export function getIfCondition(expr: ExpressionRef): ExpressionRef {
  return binaryen._BinaryenIfGetCondition(expr);
}

export function getIfTrue(expr: ExpressionRef): ExpressionRef {
  return binaryen._BinaryenIfGetIfTrue(expr);
}

export function getIfFalse(expr: ExpressionRef): ExpressionRef {
  return binaryen._BinaryenIfGetIfFalse(expr);
}

export function getLoopName(expr: ExpressionRef): string | null {
  return readString(binaryen._BinaryenLoopGetName(expr));
}

export function getLoopBody(expr: ExpressionRef): ExpressionRef {
  return binaryen._BinaryenLoopGetBody(expr);
}

export function getBreakName(expr: ExpressionRef): string | null {
  return readString(binaryen._BinaryenBreakGetName(expr));
}

export function getBreakCondition(expr: ExpressionRef): ExpressionRef {
  return binaryen._BinaryenBreakGetCondition(expr);
}

export function getSelectThen(expr: ExpressionRef): ExpressionRef {
  return binaryen._BinaryenSelectGetIfTrue(expr);
}

export function getSelectElse(expr: ExpressionRef): ExpressionRef {
  return binaryen._BinaryenSelectGetIfFalse(expr);
}

export function getSelectCondition(expr: ExpressionRef): ExpressionRef {
  return binaryen._BinaryenSelectGetCondition(expr);
}

export function getDropValue(expr: ExpressionRef): ExpressionRef {
  return binaryen._BinaryenDropGetValue(expr);
}

export function getReturnValue(expr: ExpressionRef): ExpressionRef {
  return binaryen._BinaryenReturnGetValue(expr);
}

export function getCallTarget(expr: ExpressionRef): string | null {
  return readString(binaryen._BinaryenCallGetTarget(expr));
}

export function getCallOperandCount(expr: ExpressionRef): i32 {
  return binaryen._BinaryenCallGetNumOperands(expr);
}

export function getCallOperandAt(expr: ExpressionRef, index: Index): ExpressionRef {
  return binaryen._BinaryenCallGetOperandAt(expr, index);
}

export function getMemoryGrowDelta(expr: ExpressionRef): ExpressionRef {
  return binaryen._BinaryenMemoryGrowGetDelta(expr);
}

// functions

export function getFunctionBody(func: FunctionRef): ExpressionRef {
  return binaryen._BinaryenFunctionGetBody(func);
}

export function getFunctionName(func: FunctionRef): string | null {
  return readString(binaryen._BinaryenFunctionGetName(func));
}

export function getFunctionParams(func: FunctionRef): TypeRef {
  return binaryen._BinaryenFunctionGetParams(func);
}

export function getFunctionResults(func: FunctionRef): TypeRef {
  return binaryen._BinaryenFunctionGetResults(func);
}

export function getFunctionVars(func: FunctionRef): TypeRef[] {
  let count = binaryen._BinaryenFunctionGetNumVars(func);
  let types = new Array<TypeRef>(count);
  for (let i: Index = 0; i < count; ++i) {
    unchecked(types[i] = binaryen._BinaryenFunctionGetVar(func, i));
  }
  return types;
}

// globals

export function getGlobalName(global: GlobalRef): string | null {
  return readString(binaryen._BinaryenGlobalGetName(global));
}

export function getGlobalType(global: GlobalRef): TypeRef {
  return binaryen._BinaryenGlobalGetType(global);
}

export function isGlobalMutable(global: GlobalRef): bool {
  return binaryen._BinaryenGlobalIsMutable(global);
}

export function getGlobalInit(global: GlobalRef): ExpressionRef {
  return binaryen._BinaryenGlobalGetInitExpr(global);
}

// tags

export function getTagName(tag: TagRef): string | null {
  return readString(binaryen._BinaryenTagGetName(tag));
}

export function getTagParams(tag: TagRef): TypeRef {
  return binaryen._BinaryenTagGetParams(tag);
}

export function getTagResults(tag: TagRef): TypeRef {
  return binaryen._BinaryenTagGetResults(tag);
}

export class Relooper {
  constructor(
    /** Module this relooper belongs to. */
    public module: Module,
    /** Binaryen relooper reference. */
    public ref: RelooperRef
  ) {}

  static create(module: Module): Relooper {
    return new Relooper(module, binaryen._RelooperCreate(module.ref));
  }

  addBlock(code: ExpressionRef): RelooperBlockRef {
    return binaryen._RelooperAddBlock(this.ref, code);
  }

  addBranch(
    from: RelooperBlockRef,
    to: RelooperBlockRef,
    condition: ExpressionRef = 0,
    code: ExpressionRef = 0
  ): void {
    binaryen._RelooperAddBranch(from, to, condition, code);
  }

  addBlockWithSwitch(code: ExpressionRef, condition: ExpressionRef): RelooperBlockRef {
    return binaryen._RelooperAddBlockWithSwitch(this.ref, code, condition);
  }

  addBranchForSwitch(
    from: RelooperBlockRef,
    to: RelooperBlockRef,
    indexes: i32[],
    code: ExpressionRef = 0
  ): void {
    let cArr = allocI32Array(indexes);
    binaryen._RelooperAddBranchForSwitch(from, to, cArr, indexes.length, code);
    binaryen._free(cArr);
  }

  renderAndDispose(entry: RelooperBlockRef, labelHelper: Index): ExpressionRef {
    return binaryen._RelooperRenderAndDispose(this.ref, entry, labelHelper);
  }
}

/** Builds a switch using a sequence of `br_if`s. */
export class SwitchBuilder {
  // This is useful because Binaryen understands sequences of `br_if`s and
  // knows how to make a `br_table` from such a sequence if switched over
  // values are considered dense enough, respectively a size-efficient sequence
  // of `if`s if not, depending on optimization levels.

  private module: Module;
  private condition: ExpressionRef;
  private values: i32[] = new Array();
  private indexes: i32[] = new Array();
  private cases: ExpressionRef[][] = new Array();
  private defaultIndex: i32 = -1;

  /** Creates a new builder using the specified i32 condition. */
  constructor(module: Module, condition: ExpressionRef) {
    this.module = module;
    this.condition = condition;
  }

  /** Links a case to the specified branch. */
  addCase(value: i32, code: ExpressionRef[]): void {
    let cases = this.cases;
    let index = cases.indexOf(code);
    if (index < 0) {
      index = cases.length;
      cases.push(code);
    }
    this.values.push(value);
    this.indexes.push(index);
  }

  /** Links the default branch. */
  addDefault(code: ExpressionRef[]): void {
    assert(this.defaultIndex == -1);
    let cases = this.cases;
    this.defaultIndex = cases.length;
    cases.push(code);
  }

  /** Renders the switch to a block. */
  render(localIndex: i32, labelPostfix: string = ""): ExpressionRef {
    let module = this.module;
    let cases = this.cases;
    let numCases = cases.length;
    if (!numCases) {
      return module.drop(this.condition);
    }
    let values = this.values;
    let numValues = values.length;
    let indexes = this.indexes;
    let entry = new Array<ExpressionRef>(1 + numValues + 1);
    let labels = new Array<string>(numCases);
    for (let i = 0; i < numCases; ++i) {
      unchecked(labels[i] = `case${i}${labelPostfix}`);
    }
    entry[0] = module.local_set(localIndex, this.condition, false); // u32
    for (let i = 0; i < numValues; ++i) {
      let index = unchecked(indexes[i]);
      unchecked(entry[1 + i] = module.br(labels[index],
        module.binary(BinaryOp.EqI32,
          module.local_get(localIndex, TypeRef.I32),
          module.i32(values[i])
        )
      ));
    }
    let defaultIndex = this.defaultIndex;
    let defaultLabel = `default${labelPostfix}`;
    entry[1 + numValues] = module.br(
      ~defaultIndex
        ? labels[defaultIndex]
        : defaultLabel
    );
    let current = module.block(labels[0], entry);
    for (let i = 1; i < numCases; ++i) {
      let block = cases[i - 1];
      block.unshift(current);
      current = module.block(unchecked(labels[i]), block);
    }
    let lastCase = cases[numCases - 1];
    lastCase.unshift(current);
    return module.block(
      ~defaultIndex
        ? null
        : defaultLabel,
      lastCase
    );
  }
}

export const enum SideEffects {
  None = 0 /* _BinaryenSideEffectNone */,
  Branches = 1 /* _BinaryenSideEffectBranches */,
  Calls = 2 /* _BinaryenSideEffectCalls */,
  ReadsLocal = 4 /* _BinaryenSideEffectReadsLocal */,
  WritesLocal = 8 /* _BinaryenSideEffectWritesLocal */,
  ReadsGlobal = 16 /* _BinaryenSideEffectReadsGlobal */,
  WritesGlobal = 32 /* _BinaryenSideEffectWritesGlobal */,
  ReadsMemory = 64 /* _BinaryenSideEffectReadsMemory */,
  WritesMemory = 128 /* _BinaryenSideEffectWritesMemory */,
  ReadsTable = 256 /* _BinaryenSideEffectReadsTable */,
  WritesTable = 512 /* _BinaryenSideEffectWritesTable */,
  ImplicitTrap = 1024 /* _BinaryenSideEffectImplicitTrap */,
  IsAtomic = 2048 /* _BinaryenSideEffectIsAtomic */,
  Throws = 4096 /* _BinaryenSideEffectThrows */,
  DanglingPop = 8192 /* _BinaryenSideEffectDanglingPop */,
  TrapsNeverHappen = 16384 /* _BinaryenSideEffectTrapsNeverHappen */,
  Any = 32767 /* _BinaryenSideEffectAny */
}

export function getSideEffects(expr: ExpressionRef, module: ModuleRef): SideEffects {
  return binaryen._BinaryenExpressionGetSideEffects(expr, module);
}

export function mustPreserveSideEffects(expr: ExpressionRef, module: ModuleRef): bool {
  return (getSideEffects(expr, module) & ~(SideEffects.ReadsLocal | SideEffects.ReadsGlobal)) != SideEffects.None;
}

// helpers
// can't do stack allocation here: STACKTOP is a global in WASM but a hidden variable in asm.js

function allocU8Array(u8s: Uint8Array | null): usize {
  if (!u8s) return 0;
  let len = u8s.length;
  let ptr = binaryen._malloc(len);
  for (let i = 0; i < len; ++i) {
    binaryen.__i32_store8(ptr + i, unchecked(u8s[i]));
  }
  return ptr;
}

function allocI32Array(i32s: i32[] | null): usize {
  if (!i32s) return 0;
  let len = i32s.length;
  let ptr = binaryen._malloc(len << 2);
  let idx = ptr;
  for (let i = 0; i < len; ++i) {
    let val = unchecked(i32s[i]);
    binaryen.__i32_store(idx, val);
    idx += 4;
  }
  return ptr;
}

function allocU32Array(u32s: u32[] | null): usize {
  if (!u32s) return 0;
  let len = u32s.length;
  let ptr = binaryen._malloc(len << 2);
  let idx = ptr;
  for (let i = 0; i < len; ++i) {
    let val = unchecked(u32s[i]);
    binaryen.__i32_store(idx, val);
    idx += 4;
  }
  return ptr;
}

export function allocPtrArray(ptrs: usize[] | null): usize {
  if (!ptrs) return 0;
  // TODO: WASM64
  assert(ASC_TARGET != Target.Wasm64);
  let len = ptrs.length;
  let ptr = binaryen._malloc(len << 2);
  let idx = ptr;
  for (let i = 0, k = len; i < k; ++i) {
    let val = unchecked(ptrs[i]);
    binaryen.__i32_store(idx, <i32>val);
    idx += 4;
  }
  return ptr;
}

function stringLengthUTF8(str: string): usize {
  let len = 0;
  for (let i = 0, k = str.length; i < k; ++i) {
    let c1 = str.charCodeAt(i) >>> 0;
    if (c1 <= 0x7F) {
      len += 1;
    } else if (c1 <= 0x7FF) {
      len += 2;
    } else if (
      isHighSurrogate(c1) && i + 1 < k &&
      isLowSurrogate(str.charCodeAt(i + 1))
    ) {
      i++;
      len += 4;
    } else {
      len += 3;
    }
  }
  return len;
}

function allocString(str: string | null): usize {
  if (str == null) return 0;
  let len = stringLengthUTF8(str);
  let ptr = binaryen._malloc(len + 1) >>> 0;
  let idx = ptr;
  if (len == str.length) {
    // fast path when all chars are ascii
    for (let i = 0, k = str.length; i < k; ++i) {
      let u = str.charCodeAt(i) >>> 0;
      binaryen.__i32_store8(idx++, u as u8);
    }
  } else {
    for (let i = 0, k = str.length; i < k; ++i) {
      let c1 = str.charCodeAt(i) >>> 0, c2: i32;
      if (c1 <= 0x7F) {
        binaryen.__i32_store8(idx++, c1 as u8);
      } else if (c1 <= 0x7FF) {
        binaryen.__i32_store8(idx++, (0xC0 |  (c1 >>> 6)       ) as u8);
        binaryen.__i32_store8(idx++, (0x80 | ( c1         & 63)) as u8);
      } else if (
        isHighSurrogate(c1) && i + 1 < k &&
        isLowSurrogate(c2 = str.charCodeAt(i + 1))
      ) {
        c1 = combineSurrogates(c1, c2);
        ++i;
        binaryen.__i32_store8(idx++, (0xF0 |  (c1 >>> 18)      ) as u8);
        binaryen.__i32_store8(idx++, (0x80 | ((c1 >>> 12) & 63)) as u8);
        binaryen.__i32_store8(idx++, (0x80 | ((c1 >>>  6) & 63)) as u8);
        binaryen.__i32_store8(idx++, (0x80 | ( c1         & 63)) as u8);
      } else {
        binaryen.__i32_store8(idx++, (0xE0 |  (c1 >>> 12)      ) as u8);
        binaryen.__i32_store8(idx++, (0x80 | ((c1 >>>  6) & 63)) as u8);
        binaryen.__i32_store8(idx++, (0x80 | ( c1         & 63)) as u8);
      }
    }
  }
  binaryen.__i32_store8(idx, 0); // \0
  return ptr;
}

function readBuffer(ptr: usize, len: i32): Uint8Array {
  let ret = new Uint8Array(len);
  for (let i = 0; i < len; ++i) {
    unchecked(ret[i] = binaryen.__i32_load8_u(ptr + <usize>i));
  }
  return ret;
}

export function readString(ptr: usize): string | null {
  if (!ptr) return null;
  let arr = new Array<i32>();
  // the following is based on Emscripten's UTF8ArrayToString
  let cp: u32;
  let u1: u32, u2: u32, u3: u32;
  while (cp = binaryen.__i32_load8_u(ptr++)) {
    if (!(cp & 0x80)) {
      arr.push(cp);
      continue;
    }
    u1 = binaryen.__i32_load8_u(ptr++) & 63;
    if ((cp & 0xE0) == 0xC0) {
      arr.push(((cp & 31) << 6) | u1);
      continue;
    }
    u2 = binaryen.__i32_load8_u(ptr++) & 63;
    if ((cp & 0xF0) == 0xE0) {
      cp = ((cp & 15) << 12) | (u1 << 6) | u2;
    } else {
      u3 = binaryen.__i32_load8_u(ptr++) & 63;
      if ((cp & 0xF8) == 0xF0) {
        cp = ((cp & 7) << 18) | (u1 << 12) | (u2 << 6) | u3;
      } else {
        assert(false, "Invalid UTF8 sequence during readString");
      }
    }
    if (cp < 0x10000) {
      arr.push(cp);
    } else {
      let ch = cp - 0x10000;
      arr.push(SURROGATE_HIGH | (ch >>> 10));
      arr.push(SURROGATE_LOW | (ch & 0x3FF));
    }
  }
  // TODO: implement and use String.fromCodePoints
  return String.fromCharCodes(arr);
}

/** Result structure of {@link Module#toBinary}. */
export class BinaryModule {
  constructor(
    /** WebAssembly binary. */
    public output: Uint8Array,
    /** Source map, if generated. */
    public sourceMap: string | null
  ) {}
}

// TypeBuilder

const DEBUG_TYPEBUILDER = false;

/** Ensures that the given potentially complex type has a corresponding GC type. */
export function ensureType(type: Type): TypeRef {
  // Obtain basic type if applicable
  if (type == Type.void) return TypeRef.None;
  let typeRef = tryEnsureBasicType(type);
  if (typeRef) return typeRef;

  // From here on we are dealing with heap types independent of nullability.
  // Nullability is applied again when returning the final type.
  let originalType = type;
  type = type.nonNullableType;

  // Obtain cached type if already built. Guaranteed to be not a temp type.
  if (typeRef = type.ref) {
    return binaryen._BinaryenTypeFromHeapType(
      binaryen._BinaryenTypeGetHeapType(typeRef),
      originalType.is(TypeFlags.Nullable) // apply nullability
    );
  }

  // Otherwise use a type builder
  if (ASC_TARGET) {
    // @ts-ignore: Wasm only
    assert(sizeof<usize>() == 4); // ABI code below assumes 32-bit pointers
  }
  assert(binaryen._BinaryenGetTypeSystem() == TypeSystem.Nominal);
  let builder = binaryen._TypeBuilderCreate(0);
  let seen = new Map<Type,HeapTypeRef>();
  prepareType(builder, seen, type); // drop temp return
  let size = binaryen._TypeBuilderGetSize(builder);
  let out = binaryen._malloc(max(4 * size, 8)); // either each heap type or index + reason
  if (!binaryen._TypeBuilderBuildAndDispose(builder, out, out, out + 4)) {
    let errorIndex = binaryen.__i32_load(out);
    let errorReason = binaryen.__i32_load(out + 4);
    binaryen._free(out);
    throw new Error(`type builder error at index ${errorIndex}: ${TypeBuilderErrorReason.toString(errorReason)}`);
  }

  // Assign all the built types to their respective non-nullable type
  for (let _keys = Map_keys(seen), i = 0, k = _keys.length; i < k; ++i) {
    let seenType = _keys[i];
    assert(!seenType.is(TypeFlags.Nullable)); // non-nullable only
    let heapType = <HeapTypeRef>binaryen.__i32_load(out + 4 * i);
    let fullType = binaryen._BinaryenTypeFromHeapType(heapType, false);
    assert(!seenType.ref);
    seenType.ref = fullType;
    if (DEBUG_TYPEBUILDER) {
      console.log(` set ${seenType.toString()}`);
    }
    let classInstance = seenType.getClass();
    if (classInstance) {
      let module = classInstance.program.module;
      binaryen._BinaryenModuleSetTypeName(module.ref, heapType, module.allocStringCached(classInstance.internalName));
      let members = classInstance.members;
      if (members) {
        let numFieldsInType = binaryen._BinaryenStructTypeGetNumFields(heapType);
        let numFieldsInClass = 0;
        for (let _values = Map_values(members), i = 0, k = _values.length; i < k; ++i) {
          let member = _values[i];
          if (member.kind != ElementKind.PropertyPrototype) continue;
          // only interested in fields (resolved during class finalization)
          let property = (<PropertyPrototype>member).instance;
          if (!property || !property.isField) continue;
          binaryen._BinaryenModuleSetFieldName(module.ref, heapType, numFieldsInClass++, module.allocStringCached(property.name));
        }
        assert(numFieldsInType == numFieldsInClass);
      }
    }
  }
  binaryen._free(out);

  // Initial type should now exist in its non-nullable variant
  if (DEBUG_TYPEBUILDER) {
    console.log(` finalize ${type.toString()}`);
  }
  typeRef = assert(type.ref);
  return binaryen._BinaryenTypeFromHeapType(
    binaryen._BinaryenTypeGetHeapType(typeRef),
    originalType.is(TypeFlags.Nullable) // apply nullability
  );
}

/** Obtains the basic type of the given type, if any. */
function tryEnsureBasicType(type: Type): TypeRef {
  switch (type.kind) {
    case TypeKind.Bool:
    case TypeKind.I8:
    case TypeKind.U8:
    case TypeKind.I16:
    case TypeKind.U16:
    case TypeKind.I32:
    case TypeKind.U32: return TypeRef.I32;
    case TypeKind.I64:
    case TypeKind.U64: return TypeRef.I64;
    case TypeKind.Isize:
    case TypeKind.Usize: {
      if (type.isInternalReference) break; // non-basic
      return type.size == 64 ? TypeRef.I64 : TypeRef.I32;
    }
    case TypeKind.F32: return TypeRef.F32;
    case TypeKind.F64: return TypeRef.F64;
    case TypeKind.V128: return TypeRef.V128;
    case TypeKind.Func: {
      return binaryen._BinaryenTypeFromHeapType(HeapTypeRef.Func, type.is(TypeFlags.Nullable));
    }
    case TypeKind.Extern: {
      return binaryen._BinaryenTypeFromHeapType(HeapTypeRef.Extern, type.is(TypeFlags.Nullable));
    }
    case TypeKind.Any: {
      return binaryen._BinaryenTypeFromHeapType(HeapTypeRef.Any, type.is(TypeFlags.Nullable));
    }
    case TypeKind.Eq: {
      return binaryen._BinaryenTypeFromHeapType(HeapTypeRef.Eq, type.is(TypeFlags.Nullable));
    }
    case TypeKind.Struct: {
      return binaryen._BinaryenTypeFromHeapType(HeapTypeRef.Struct, type.is(TypeFlags.Nullable));
    }
    case TypeKind.Array: {
      return binaryen._BinaryenTypeFromHeapType(HeapTypeRef.Array, type.is(TypeFlags.Nullable));
    }
    case TypeKind.I31: {
      return binaryen._BinaryenTypeFromHeapType(HeapTypeRef.I31, type.is(TypeFlags.Nullable));
    }
    case TypeKind.String: {
      return binaryen._BinaryenTypeFromHeapType(HeapTypeRef.String, type.is(TypeFlags.Nullable));
    }
    case TypeKind.StringviewWTF8: {
      return binaryen._BinaryenTypeFromHeapType(HeapTypeRef.StringviewWTF8, type.is(TypeFlags.Nullable));
    }
    case TypeKind.StringviewWTF16: {
      return binaryen._BinaryenTypeFromHeapType(HeapTypeRef.StringviewWTF16, type.is(TypeFlags.Nullable));
    }
    case TypeKind.StringviewIter: {
      return binaryen._BinaryenTypeFromHeapType(HeapTypeRef.StringviewIter, type.is(TypeFlags.Nullable));
    }
    case TypeKind.Void: assert(false); // invalid here
  }
  return 0; // non-basic
}

/** Determines the packed GC type of the given type, if applicable. */
function determinePackedType(type: Type): PackedType {
  switch (type.kind) {
    case TypeKind.Bool:
    case TypeKind.I8:
    case TypeKind.U8: return PackedType.I8;
    case TypeKind.I16:
    case TypeKind.U16: return PackedType.I16;
  }
  return PackedType.NotPacked;
}

/** Recursively prepares the given GC type, potentially returning a temporary type. */
function prepareType(builder: binaryen.TypeBuilderRef, seen: Map<Type,HeapTypeRef>, type: Type): TypeRef {
  // Obtain basic type if applicable
  if (type == Type.void) return TypeRef.None;
  let typeRef = tryEnsureBasicType(type);
  if (typeRef) return typeRef;

  assert(!type.is(TypeFlags.Nullable)); // operating on non-nullable types only

  // Reuse existing type
  if (typeRef = type.ref) return typeRef;

  // Reuse seen temporary type if it exists
  if (seen.has(type)) {
    if (DEBUG_TYPEBUILDER) {
      console.log(` prepare ${type.toString()} (seen)`);
    }
    return changetype<HeapTypeRef>(seen.get(type));
  }

  if (DEBUG_TYPEBUILDER) {
    console.log(`prepare ${type.toString()}`);
  }

  // Otherwise construct a new class type. Note that arrays are not supported, as these would
  // have to involve a Wasm-level `array`, either wrapped in `Array` or `Uint8Array` etc., or
  // directly representing an `ArrayBuffer` or `StaticArray`. TBD.
  let classReference = type.getClass();
  if (classReference) {
    // Make sure the base type has been built prior, at a lower index
    let base = classReference.base;
    let baseRef: HeapTypeRef = 0;
    if (base) baseRef = prepareType(builder, seen, base.type); // might be temporary, is non-nullable

    // Block this index with a temporary type and cache
    let index = binaryen._TypeBuilderGetSize(builder);
    binaryen._TypeBuilderGrow(builder, 1);
    if (DEBUG_TYPEBUILDER) {
      console.log(` block [${index}]: ${type.toString()}`);
    }
    let heapTypeRef = binaryen._TypeBuilderGetTempHeapType(builder, index);
    typeRef = binaryen._TypeBuilderGetTempRefType(builder, heapTypeRef, false);
    seen.set(type, typeRef);

    // Populate the struct type (TODO: names)
    let fieldTypes = new Array<TypeRef>();
    let packedTypes = new Array<PackedType>();
    let fieldMutables = new Array<u32>();
    let members = classReference.members;
    if (members) {
      for (let _values = Map_values(members), i = 0, k = _values.length; i < k; ++i) {
        let member = _values[i];
        if (member.kind != ElementKind.PropertyPrototype) continue;
        // only interested in fields (resolved during class finalization)
        let property = (<PropertyPrototype>member).instance;
        if (!property || !property.isField) continue;
        let fieldType = property.type;
        if (DEBUG_TYPEBUILDER) {
          console.log(`  field ${fieldType.toString()}`);
        }
        if (fieldType.is(TypeFlags.Nullable)) {
          fieldTypes.push(
            binaryen._TypeBuilderGetTempRefType(
              builder,
              binaryen._BinaryenTypeGetHeapType(
                prepareType(builder, seen, fieldType.nonNullableType)
              ),
              true
            )
          );
        } else {
          fieldTypes.push(prepareType(builder, seen, fieldType));
        }
        packedTypes.push(determinePackedType(fieldType));
        fieldMutables.push(1);
      }
    }
    let cArrFT = allocPtrArray(fieldTypes);
    let cArrPT = allocU32Array(packedTypes);
    let cArrFM = allocU32Array(fieldMutables);
    if (DEBUG_TYPEBUILDER) {
      console.log(` concretize [${index}]: ${type.toString()}`);
    }
    binaryen._TypeBuilderSetStructType(builder, index, cArrFT, cArrPT, cArrFM, fieldTypes.length);
    if (base) {
      if (DEBUG_TYPEBUILDER) {
        console.log(` set super [${index}]: ${type.toString()} <: ${base.type.toString()} ${baseRef == base.type.ref ? " (known)" : ""}`);
      }
      binaryen._TypeBuilderSetSubType(builder, index, binaryen._BinaryenTypeGetHeapType(baseRef));
    }
    binaryen._free(cArrFM);
    binaryen._free(cArrPT);
    binaryen._free(cArrFT);
    return typeRef;
  }

  // Respectively a new signature type
  let signatureReference = type.getSignature();
  if (signatureReference) {

    // Block this index with a temporary type and cache
    let index = binaryen._TypeBuilderGetSize(builder);
    binaryen._TypeBuilderGrow(builder, 1);
    let tempTypeRef = binaryen._TypeBuilderGetTempRefType(
      builder,
      binaryen._TypeBuilderGetTempHeapType(builder, index),
      false
    );
    seen.set(type, tempTypeRef);

    let paramTypes = new Array<TypeRef>();
    let resultTypes = new Array<TypeRef>();
    let parameterTypes = signatureReference.parameterTypes;
    for (let i = 0, k = parameterTypes.length; i < k; ++i) {
      let paramType = parameterTypes[i];
      if (paramType.is(TypeFlags.Nullable)) {
        paramTypes.push(
          binaryen._TypeBuilderGetTempRefType(
            builder,
            binaryen._BinaryenTypeGetHeapType(
              prepareType(builder, seen, paramType.nonNullableType)
            ),
            true
          )
        );
      } else {
        paramTypes.push(prepareType(builder, seen, paramType));
      }
    }
    let returnType = signatureReference.returnType;
    resultTypes.push(
      returnType == Type.void
        ? TypeRef.None
        : returnType.is(TypeFlags.Nullable)
          ? binaryen._TypeBuilderGetTempRefType(
              builder,
              binaryen._BinaryenTypeGetHeapType(
                prepareType(builder, seen, returnType.nonNullableType)
              ),
              true
            )
          : prepareType(builder, seen, returnType)
    );
    let tempParamType: TypeRef;
    if (paramTypes.length > 1) {
      let cArrPT = allocPtrArray(paramTypes);
      tempParamType = binaryen._TypeBuilderGetTempTupleType(builder, cArrPT, paramTypes.length);
      binaryen._free(cArrPT);
    } else {
      tempParamType = paramTypes.length ? paramTypes[0] : TypeRef.None;
    }
    let tempResultType: TypeRef;
    if (resultTypes.length > 1) {
      let cArrRT = allocPtrArray(resultTypes);
      tempResultType = binaryen._TypeBuilderGetTempTupleType(builder, cArrRT, resultTypes.length);
      binaryen._free(cArrRT);
    } else {
      tempResultType = resultTypes[0];
    }
    if (DEBUG_TYPEBUILDER) {
      console.log(` concretize [${index}]: ${type.toString()}`);
    }
    binaryen._TypeBuilderSetSignatureType(builder, index, tempParamType, tempResultType);
    return tempTypeRef;
  }

  throw new Error(`unexpected complex type: ${type.toString()}`);
}
