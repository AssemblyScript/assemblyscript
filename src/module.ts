/**
 * A thin wrapper around Binaryen's C-API.
 * @module module
 *//***/

import { Target } from "./common";
import * as binaryen from "./glue/binaryen";

export type ModuleRef = usize;
export type FunctionRef = usize;
export type ExpressionRef = usize;
export type GlobalRef = usize;
export type EventRef = usize;
export type ImportRef = usize;
export type ExportRef = usize;
export type RelooperRef = usize;
export type RelooperBlockRef = usize;
export type Index = u32;

// The following constants must be updated by running scripts/update-constants.
// This is necessary because the functions are not yet callable with Binaryen
// compiled to WebAssembly, requiring awaiting the ready promise first. Note
// that this essentially fixes the compiler to specific versions of Binaryen
// sometimes, because these constants can differ between Binaryen versions.

export enum NativeType {
  None = 0 /* _BinaryenTypeNone */,
  Unreachable = 1 /* _BinaryenTypeUnreachable */,
  I32 = 2 /* _BinaryenTypeInt32 */,
  I64 = 3 /* _BinaryenTypeInt64 */,
  F32 = 4 /* _BinaryenTypeFloat32 */,
  F64 = 5 /* _BinaryenTypeFloat64 */,
  V128 = 6 /* _BinaryenTypeVec128 */,
  Funcref = 7 /* _BinaryenTypeFuncref */,
  Anyref = 8 /* _BinaryenTypeAnyref */,
  Nullref = 9 /* _BinaryenTypeNullref */,
  Exnref = 10 /* _BinaryenTypeExnref */,
  Auto = -1 /* _BinaryenTypeAuto */
}

export enum FeatureFlags {
  MVP = 0 /* _BinaryenFeatureMVP */,
  Atomics = 1 /* _BinaryenFeatureAtomics */,
  MutableGloabls = 2 /* _BinaryenFeatureMutableGlobals */,
  NontrappingFPToInt = 4 /* _BinaryenFeatureNontrappingFPToInt */,
  SIMD128 = 8 /* _BinaryenFeatureSIMD128 */,
  BulkMemory = 16 /* _BinaryenFeatureBulkMemory */,
  SignExt = 32 /* _BinaryenFeatureSignExt */,
  ExceptionHandling = 64 /* _BinaryenFeatureExceptionHandling */,
  TailCall = 128 /* _BinaryenFeatureTailCall */,
  ReferenceTypes = 256 /* _BinaryenFeatureReferenceTypes */,
  All = 511 /* _BinaryenFeatureAll */
}

export enum ExpressionId {
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
  Host = 20 /* _BinaryenHostId */,
  Nop = 21 /* _BinaryenNopId */,
  Unreachable = 22 /* _BinaryenUnreachableId */,
  AtomicCmpxchg = 24 /* _BinaryenAtomicCmpxchgId */,
  AtomicRMW = 23 /* _BinaryenAtomicRMWId */,
  AtomicWait = 25 /* _BinaryenAtomicWaitId */,
  AtomicNotify = 26 /* _BinaryenAtomicNotifyId */,
  AtomicFence = 27 /* _BinaryenAtomicFenceId */,
  SIMDExtract = 28 /* _BinaryenSIMDExtractId */,
  SIMDReplace = 29 /* _BinaryenSIMDReplaceId */,
  SIMDShuffle = 30 /* _BinaryenSIMDShuffleId */,
  SIMDTernary = 31 /* _BinaryenSIMDTernaryId */,
  SIMDShift = 32 /* _BinaryenSIMDShiftId */,
  SIMDLoad = 33 /* _BinaryenSIMDLoadId */,
  MemoryInit = 34 /* _BinaryenMemoryInitId */,
  DataDrop = 35 /* _BinaryenDataDropId */,
  MemoryCopy = 36 /* _BinaryenMemoryCopyId */,
  MemoryFill = 37 /* _BinaryenMemoryFillId */,
  Push = 38 /* _BinaryenPushId */,
  Pop = 39 /* _BinaryenPopId */,
  RefNull = 40 /* _BinaryenRefNullId */,
  RefIsNull = 41 /* _BinaryenRefIsNullId */,
  RefFunc = 42 /* _BinaryenRefFuncId */,
  Try = 43 /* _BinaryenTryId */,
  Throw = 44 /* _BinaryenThrowId */,
  Rethrow = 45 /* _BinaryenRethrowId */,
  BrOnExn = 46 /* _BinaryenBrOnExnId */
}

export enum UnaryOp {
  ClzI32 = 0 /* _BinaryenClzInt32 */,
  ClzI64 = 1 /* _BinaryenClzInt64 */,
  CtzI32 = 2 /* _BinaryenCtzInt32 */,
  CtzI64 = 3 /* _BinaryenCtzInt64 */,
  PopcntI32 = 4 /* _BinaryenPopcntInt32 */,
  PopcntI64 = 5 /* _BinaryenPopcntInt64 */,
  NegF32 = 6 /* _BinaryenNegFloat32 */,
  NegF64 = 7 /* _BinaryenNegFloat64 */,
  AbsF32 = 8 /* _BinaryenAbsFloat32 */,
  AbsF64 = 9 /* _BinaryenAbsFloat64 */,
  CeilF32 = 10 /* _BinaryenCeilFloat32 */,
  CeilF64 = 11 /* _BinaryenCeilFloat64 */,
  FloorF32 = 12 /* _BinaryenFloorFloat32 */,
  FloorF64 = 13 /* _BinaryenFloorFloat64 */,
  TruncF32 = 14 /* _BinaryenTruncFloat32 */,
  TruncF64 = 15 /* _BinaryenTruncFloat64 */,
  NearestF32 = 16 /* _BinaryenNearestFloat32 */,
  NearestF64 = 17 /* _BinaryenNearestFloat64 */,
  SqrtF32 = 18 /* _BinaryenSqrtFloat32 */,
  SqrtF64 = 19 /* _BinaryenSqrtFloat64 */,
  EqzI32 = 20 /* _BinaryenEqZInt32 */,
  EqzI64 = 21 /* _BinaryenEqZInt64 */,
  ExtendI32 = 22 /* _BinaryenExtendSInt32 */,
  ExtendU32 = 23 /* _BinaryenExtendUInt32 */,
  WrapI64 = 24 /* _BinaryenWrapInt64 */,
  TruncF32ToI32 = 25 /* _BinaryenTruncSFloat32ToInt32 */,
  TruncF32ToI64 = 26 /* _BinaryenTruncSFloat32ToInt64 */,
  TruncF32ToU32 = 27 /* _BinaryenTruncUFloat32ToInt32 */,
  TruncF32ToU64 = 28 /* _BinaryenTruncUFloat32ToInt64 */,
  TruncF64ToI32 = 29 /* _BinaryenTruncSFloat64ToInt32 */,
  TruncF64ToI64 = 30 /* _BinaryenTruncSFloat64ToInt64 */,
  TruncF64ToU32 = 31 /* _BinaryenTruncUFloat64ToInt32 */,
  TruncF64ToU64 = 32 /* _BinaryenTruncUFloat64ToInt64 */,
  ReinterpretF32 = 33 /* _BinaryenReinterpretFloat32 */,
  ReinterpretF64 = 34 /* _BinaryenReinterpretFloat64 */,
  ConvertI32ToF32 = 35 /* _BinaryenConvertSInt32ToFloat32 */,
  ConvertI32ToF64 = 36 /* _BinaryenConvertSInt32ToFloat64 */,
  ConvertU32ToF32 = 37 /* _BinaryenConvertUInt32ToFloat32 */,
  ConvertU32ToF64 = 38 /* _BinaryenConvertUInt32ToFloat64 */,
  ConvertI64ToF32 = 39 /* _BinaryenConvertSInt64ToFloat32 */,
  ConvertI64ToF64 = 40 /* _BinaryenConvertSInt64ToFloat64 */,
  ConvertU64ToF32 = 41 /* _BinaryenConvertUInt64ToFloat32 */,
  ConvertU64ToF64 = 42 /* _BinaryenConvertUInt64ToFloat64 */,
  PromoteF32 = 43 /* _BinaryenPromoteFloat32 */,
  DemoteF64 = 44 /* _BinaryenDemoteFloat64 */,
  ReinterpretI32 = 45 /* _BinaryenReinterpretInt32 */,
  ReinterpretI64 = 46 /* _BinaryenReinterpretInt64 */,

  // see: https://github.com/WebAssembly/sign-extension-ops
  ExtendI8ToI32 = 47 /* _BinaryenExtendS8Int32 */,
  ExtendI16ToI32 = 48 /* _BinaryenExtendS16Int32 */,
  ExtendI8ToI64 = 49 /* _BinaryenExtendS8Int64 */,
  ExtendI16ToI64 = 50 /* _BinaryenExtendS16Int64 */,
  ExtendI32ToI64 = 51 /* _BinaryenExtendS32Int64 */,

  // see: https://github.com/WebAssembly/nontrapping-float-to-int-conversions
  TruncF32ToI32Sat = 52 /* _BinaryenTruncSatSFloat32ToInt32 */,
  TruncF32ToU32Sat = 53 /* _BinaryenTruncSatUFloat32ToInt32 */,
  TruncF64ToI32Sat = 54 /* _BinaryenTruncSatSFloat64ToInt32 */,
  TruncF64ToU32Sat = 55 /* _BinaryenTruncSatUFloat64ToInt32 */,
  TruncF32ToI64Sat = 56 /* _BinaryenTruncSatSFloat32ToInt64 */,
  TruncF32ToU64Sat = 57 /* _BinaryenTruncSatUFloat32ToInt64 */,
  TruncF64ToI64Sat = 58 /* _BinaryenTruncSatSFloat64ToInt64 */,
  TruncF64ToU64Sat = 59 /* _BinaryenTruncSatUFloat64ToInt64 */,

  // see: https://github.com/WebAssembly/simd
  SplatI8x16 = 60 /* _BinaryenSplatVecI8x16 */,
  SplatI16x8 = 61 /* _BinaryenSplatVecI16x8 */,
  SplatI32x4 = 62 /* _BinaryenSplatVecI32x4 */,
  SplatI64x2 = 63 /* _BinaryenSplatVecI64x2 */,
  SplatF32x4 = 64 /* _BinaryenSplatVecF32x4 */,
  SplatF64x2 = 65 /* _BinaryenSplatVecF64x2 */,
  NotV128 = 66 /* _BinaryenNotVec128 */,
  NegI8x16 = 67 /* _BinaryenNegVecI8x16 */,
  AnyTrueI8x16 = 68 /* _BinaryenAnyTrueVecI8x16 */,
  AllTrueI8x16 = 69 /* _BinaryenAllTrueVecI8x16 */,
  NegI16x8 = 70 /* _BinaryenNegVecI16x8 */,
  AnyTrueI16x8 = 71 /* _BinaryenAnyTrueVecI16x8 */,
  AllTrueI16x8 = 72 /* _BinaryenAllTrueVecI16x8 */,
  NegI32x4 = 73 /* _BinaryenNegVecI32x4 */,
  AnyTrueI32x4 = 74 /* _BinaryenAnyTrueVecI32x4 */,
  AllTrueI32x4 = 75 /* _BinaryenAllTrueVecI32x4 */,
  NegI64x2 = 76 /* _BinaryenNegVecI64x2 */,
  AnyTrueI64x2 = 77 /* _BinaryenAnyTrueVecI64x2 */,
  AllTrueI64x2 = 78 /* _BinaryenAllTrueVecI64x2 */,
  AbsF32x4 = 79 /* _BinaryenAbsVecF32x4 */,
  NegF32x4 = 80 /* _BinaryenNegVecF32x4 */,
  SqrtF32x4 = 81 /* _BinaryenSqrtVecF32x4 */,
  AbsF64x2 = 82 /* _BinaryenAbsVecF64x2 */,
  NegF64x2 = 83 /* _BinaryenNegVecF64x2 */,
  SqrtF64x2 = 84 /* _BinaryenSqrtVecF64x2 */,
  TruncSatF32x4ToI32x4 = 85 /* _BinaryenTruncSatSVecF32x4ToVecI32x4 */,
  TruncSatF32x4ToU32x4 = 86 /* _BinaryenTruncSatUVecF32x4ToVecI32x4 */,
  TruncSatF64x2ToI64x2 = 87 /* _BinaryenTruncSatSVecF64x2ToVecI64x2 */,
  TruncSatF64x2ToU64x2 = 88 /* _BinaryenTruncSatUVecF64x2ToVecI64x2 */,
  ConvertI32x4ToF32x4 = 89 /* _BinaryenConvertSVecI32x4ToVecF32x4 */,
  ConvertU32x4ToF32x4 = 90 /* _BinaryenConvertUVecI32x4ToVecF32x4 */,
  ConvertI64x2ToF64x2 = 91 /* _BinaryenConvertSVecI64x2ToVecF64x2 */,
  ConvertU64x2ToF64x2 = 92 /* _BinaryenConvertUVecI64x2ToVecF64x2 */,
  WidenLowI8x16ToI16x8 = 93 /* _BinaryenWidenLowSVecI8x16ToVecI16x8 */,
  WidenHighI8x16ToI16x8 = 94 /* _BinaryenWidenHighSVecI8x16ToVecI16x8 */,
  WidenLowU8x16ToU16x8 = 95 /* _BinaryenWidenLowUVecI8x16ToVecI16x8 */,
  WidenHighU8x16ToU16x8 = 96 /* _BinaryenWidenHighUVecI8x16ToVecI16x8 */,
  WidenLowI16x8ToI32x4 = 97 /* _BinaryenWidenLowSVecI16x8ToVecI32x4 */,
  WidenHighI16x8ToI32x4 = 98 /* _BinaryenWidenHighSVecI16x8ToVecI32x4 */,
  WidenLowU16x8ToU32x4 = 99 /* _BinaryenWidenLowUVecI16x8ToVecI32x4 */,
  WidenHighU16x8ToU32x4 = 100 /* _BinaryenWidenHighUVecI16x8ToVecI32x4 */
}

export enum BinaryOp {
  AddI32 = 0 /* _BinaryenAddInt32 */,
  SubI32 = 1 /* _BinaryenSubInt32 */,
  MulI32 = 2 /* _BinaryenMulInt32 */,
  DivI32 = 3 /* _BinaryenDivSInt32 */,
  DivU32 = 4 /* _BinaryenDivUInt32 */,
  RemI32 = 5 /* _BinaryenRemSInt32 */,
  RemU32 = 6 /* _BinaryenRemUInt32 */,
  AndI32 = 7 /* _BinaryenAndInt32 */,
  OrI32 = 8 /* _BinaryenOrInt32 */,
  XorI32 = 9 /* _BinaryenXorInt32 */,
  ShlI32 = 10 /* _BinaryenShlInt32 */,
  ShrU32 = 11 /* _BinaryenShrUInt32 */,
  ShrI32 = 12 /* _BinaryenShrSInt32 */,
  RotlI32 = 13 /* _BinaryenRotLInt32 */,
  RotrI32 = 14 /* _BinaryenRotRInt32 */,
  EqI32 = 15 /* _BinaryenEqInt32 */,
  NeI32 = 16 /* _BinaryenNeInt32 */,
  LtI32 = 17 /* _BinaryenLtSInt32 */,
  LtU32 = 18 /* _BinaryenLtUInt32 */,
  LeI32 = 19 /* _BinaryenLeSInt32 */,
  LeU32 = 20 /* _BinaryenLeUInt32 */,
  GtI32 = 21 /* _BinaryenGtSInt32 */,
  GtU32 = 22 /* _BinaryenGtUInt32 */,
  GeI32 = 23 /* _BinaryenGeSInt32 */,
  GeU32 = 24 /* _BinaryenGeUInt32 */,
  AddI64 = 25 /* _BinaryenAddInt64 */,
  SubI64 = 26 /* _BinaryenSubInt64 */,
  MulI64 = 27 /* _BinaryenMulInt64 */,
  DivI64 = 28 /* _BinaryenDivSInt64 */,
  DivU64 = 29 /* _BinaryenDivUInt64 */,
  RemI64 = 30 /* _BinaryenRemSInt64 */,
  RemU64 = 31 /* _BinaryenRemUInt64 */,
  AndI64 = 32 /* _BinaryenAndInt64 */,
  OrI64 = 33 /* _BinaryenOrInt64 */,
  XorI64 = 34 /* _BinaryenXorInt64 */,
  ShlI64 = 35 /* _BinaryenShlInt64 */,
  ShrU64 = 36 /* _BinaryenShrUInt64 */,
  ShrI64 = 37 /* _BinaryenShrSInt64 */,
  RotlI64 = 38 /* _BinaryenRotLInt64 */,
  RotrI64 = 39 /* _BinaryenRotRInt64 */,
  EqI64 = 40 /* _BinaryenEqInt64 */,
  NeI64 = 41 /* _BinaryenNeInt64 */,
  LtI64 = 42 /* _BinaryenLtSInt64 */,
  LtU64 = 43 /* _BinaryenLtUInt64 */,
  LeI64 = 44 /* _BinaryenLeSInt64 */,
  LeU64 = 45 /* _BinaryenLeUInt64 */,
  GtI64 = 46 /* _BinaryenGtSInt64 */,
  GtU64 = 47 /* _BinaryenGtUInt64 */,
  GeI64 = 48 /* _BinaryenGeSInt64 */,
  GeU64 = 49 /* _BinaryenGeUInt64 */,
  AddF32 = 50 /* _BinaryenAddFloat32 */,
  SubF32 = 51 /* _BinaryenSubFloat32 */,
  MulF32 = 52 /* _BinaryenMulFloat32 */,
  DivF32 = 53 /* _BinaryenDivFloat32 */,
  CopysignF32 = 54 /* _BinaryenCopySignFloat32 */,
  MinF32 = 55 /* _BinaryenMinFloat32 */,
  MaxF32 = 56 /* _BinaryenMaxFloat32 */,
  EqF32 = 57 /* _BinaryenEqFloat32 */,
  NeF32 = 58 /* _BinaryenNeFloat32 */,
  LtF32 = 59 /* _BinaryenLtFloat32 */,
  LeF32 = 60 /* _BinaryenLeFloat32 */,
  GtF32 = 61 /* _BinaryenGtFloat32 */,
  GeF32 = 62 /* _BinaryenGeFloat32 */,
  AddF64 = 63 /* _BinaryenAddFloat64 */,
  SubF64 = 64 /* _BinaryenSubFloat64 */,
  MulF64 = 65 /* _BinaryenMulFloat64 */,
  DivF64 = 66 /* _BinaryenDivFloat64 */,
  CopysignF64 = 67 /* _BinaryenCopySignFloat64 */,
  MinF64 = 68 /* _BinaryenMinFloat64 */,
  MaxF64 = 69 /* _BinaryenMaxFloat64 */,
  EqF64 = 70 /* _BinaryenEqFloat64 */,
  NeF64 = 71 /* _BinaryenNeFloat64 */,
  LtF64 = 72 /* _BinaryenLtFloat64 */,
  LeF64 = 73 /* _BinaryenLeFloat64 */,
  GtF64 = 74 /* _BinaryenGtFloat64 */,
  GeF64 = 75 /* _BinaryenGeFloat64 */,

  // see: https://github.com/WebAssembly/simd
  EqI8x16 = 76 /* _BinaryenEqVecI8x16 */,
  NeI8x16 = 77 /* _BinaryenNeVecI8x16 */,
  LtI8x16 = 78 /* _BinaryenLtSVecI8x16 */,
  LtU8x16 = 79 /* _BinaryenLtUVecI8x16 */,
  GtI8x16 = 80 /* _BinaryenGtSVecI8x16 */,
  GtU8x16 = 81 /* _BinaryenGtUVecI8x16 */,
  LeI8x16 = 82 /* _BinaryenLeSVecI8x16 */,
  LeU8x16 = 83 /* _BinaryenLeUVecI8x16 */,
  GeI8x16 = 84 /* _BinaryenGeSVecI8x16 */,
  GeU8x16 = 85 /* _BinaryenGeUVecI8x16 */,
  EqI16x8 = 86 /* _BinaryenEqVecI16x8 */,
  NeI16x8 = 87 /* _BinaryenNeVecI16x8 */,
  LtI16x8 = 88 /* _BinaryenLtSVecI16x8 */,
  LtU16x8 = 89 /* _BinaryenLtUVecI16x8 */,
  GtI16x8 = 90 /* _BinaryenGtSVecI16x8 */,
  GtU16x8 = 91 /* _BinaryenGtUVecI16x8 */,
  LeI16x8 = 92 /* _BinaryenLeSVecI16x8 */,
  LeU16x8 = 93 /* _BinaryenLeUVecI16x8 */,
  GeI16x8 = 94 /* _BinaryenGeSVecI16x8 */,
  GeU16x8 = 95 /* _BinaryenGeUVecI16x8 */,
  EqI32x4 = 96 /* _BinaryenEqVecI32x4 */,
  NeI32x4 = 97 /* _BinaryenNeVecI32x4 */,
  LtI32x4 = 98 /* _BinaryenLtSVecI32x4 */,
  LtU32x4 = 99 /* _BinaryenLtUVecI32x4 */,
  GtI32x4 = 100 /* _BinaryenGtSVecI32x4 */,
  GtU32x4 = 101 /* _BinaryenGtUVecI32x4 */,
  LeI32x4 = 102 /* _BinaryenLeSVecI32x4 */,
  LeU32x4 = 103 /* _BinaryenLeUVecI32x4 */,
  GeI32x4 = 104 /* _BinaryenGeSVecI32x4 */,
  GeU32x4 = 105 /* _BinaryenGeUVecI32x4 */,
  EqF32x4 = 106 /* _BinaryenEqVecF32x4 */,
  NeF32x4 = 107 /* _BinaryenNeVecF32x4 */,
  LtF32x4 = 108 /* _BinaryenLtVecF32x4 */,
  GtF32x4 = 109 /* _BinaryenGtVecF32x4 */,
  LeF32x4 = 110 /* _BinaryenLeVecF32x4 */,
  GeF32x4 = 111 /* _BinaryenGeVecF32x4 */,
  EqF64x2 = 112 /* _BinaryenEqVecF64x2 */,
  NeF64x2 = 113 /* _BinaryenNeVecF64x2 */,
  LtF64x2 = 114 /* _BinaryenLtVecF64x2 */,
  GtF64x2 = 115 /* _BinaryenGtVecF64x2 */,
  LeF64x2 = 116 /* _BinaryenLeVecF64x2 */,
  GeF64x2 = 117 /* _BinaryenGeVecF64x2 */,
  AndV128 = 118 /* _BinaryenAndVec128 */,
  OrV128 = 119 /* _BinaryenOrVec128 */,
  XorV128 = 120 /* _BinaryenXorVec128 */,
  AndNotV128 = 121 /* _BinaryenAndNotVec128 */,
  AddI8x16 = 122 /* _BinaryenAddVecI8x16 */,
  AddSatI8x16 = 123 /* _BinaryenAddSatSVecI8x16 */,
  AddSatU8x16 = 124 /* _BinaryenAddSatUVecI8x16 */,
  SubI8x16 = 125 /* _BinaryenSubVecI8x16 */,
  SubSatI8x16 = 126 /* _BinaryenSubSatSVecI8x16 */,
  SubSatU8x16 = 127 /* _BinaryenSubSatUVecI8x16 */,
  MulI8x16 = 128 /* _BinaryenMulVecI8x16 */,
  MinI8x16 = 129 /* _BinaryenMinSVecI8x16 */,
  MinU8x16 = 130 /* _BinaryenMinUVecI8x16 */,
  MaxI8x16 = 131 /* _BinaryenMaxSVecI8x16 */,
  MaxU8x16 = 132 /* _BinaryenMaxUVecI8x16 */,
  AvgrU8x16 = 133 /* _BinaryenAvgrUVecI8x16 */,
  AddI16x8 = 134 /* _BinaryenAddVecI16x8 */,
  AddSatI16x8 = 135 /* _BinaryenAddSatSVecI16x8 */,
  AddSatU16x8 = 136 /* _BinaryenAddSatUVecI16x8 */,
  SubI16x8 = 137 /* _BinaryenSubVecI16x8 */,
  SubSatI16x8 = 138 /* _BinaryenSubSatSVecI16x8 */,
  SubSatU16x8 = 139 /* _BinaryenSubSatUVecI16x8 */,
  MulI16x8 = 140 /* _BinaryenMulVecI16x8 */,
  MinI16x8 = 141 /* _BinaryenMinSVecI16x8 */,
  MinU16x8 = 142 /* _BinaryenMinUVecI16x8 */,
  MaxI16x8 = 143 /* _BinaryenMaxSVecI16x8 */,
  MaxU16x8 = 144 /* _BinaryenMaxUVecI16x8 */,
  AvgrU16x8 = 145 /* _BinaryenAvgrUVecI16x8 */,
  AddI32x4 = 146 /* _BinaryenAddVecI32x4 */,
  SubI32x4 = 147 /* _BinaryenSubVecI32x4 */,
  MulI32x4 = 148 /* _BinaryenMulVecI32x4 */,
  MinI32x4 = 149 /* _BinaryenMinSVecI32x4 */,
  MinU32x4 = 150 /* _BinaryenMinUVecI32x4 */,
  MaxI32x4 = 151 /* _BinaryenMaxSVecI32x4 */,
  MaxU32x4 = 152 /* _BinaryenMaxUVecI32x4 */,
  DotI16x8 = 153 /* _BinaryenDotSVecI16x8ToVecI32x4 */,
  AddI64x2 = 154 /* _BinaryenAddVecI64x2 */,
  SubI64x2 = 155 /* _BinaryenSubVecI64x2 */,
  AddF32x4 = 156 /* _BinaryenAddVecF32x4 */,
  SubF32x4 = 157 /* _BinaryenSubVecF32x4 */,
  MulF32x4 = 158 /* _BinaryenMulVecF32x4 */,
  DivF32x4 = 159 /* _BinaryenDivVecF32x4 */,
  MinF32x4 = 160 /* _BinaryenMinVecF32x4 */,
  MaxF32x4 = 161 /* _BinaryenMaxVecF32x4 */,
  AddF64x2 = 162 /* _BinaryenAddVecF64x2 */,
  SubF64x2 = 163 /* _BinaryenSubVecF64x2 */,
  MulF64x2 = 164 /* _BinaryenMulVecF64x2 */,
  DivF64x2 = 165 /* _BinaryenDivVecF64x2 */,
  MinF64x2 = 166 /* _BinaryenMinVecF64x2 */,
  MaxF64x2 = 167 /* _BinaryenMaxVecF64x2 */,
  NarrowI16x8ToI8x16 = 168 /* _BinaryenNarrowSVecI16x8ToVecI8x16 */,
  NarrowU16x8ToU8x16 = 169 /* _BinaryenNarrowUVecI16x8ToVecI8x16 */,
  NarrowI32x4ToI16x8 = 170 /* _BinaryenNarrowSVecI32x4ToVecI16x8 */,
  NarrowU32x4ToU16x8 = 171 /* _BinaryenNarrowUVecI32x4ToVecI16x8 */,
  SwizzleV8x16 = 172 /* _BinaryenSwizzleVec8x16 */
}

export enum HostOp {
  MemorySize = 0 /* _BinaryenMemorySize */,
  MemoryGrow = 1 /* _BinaryenMemoryGrow */,
}

export enum AtomicRMWOp {
  Add = 0 /* _BinaryenAtomicRMWAdd */,
  Sub = 1 /* _BinaryenAtomicRMWSub */,
  And = 2 /* _BinaryenAtomicRMWAnd */,
  Or = 3 /* _BinaryenAtomicRMWOr */,
  Xor = 4 /* _BinaryenAtomicRMWXor */,
  Xchg = 5 /* _BinaryenAtomicRMWXchg */
}

export enum SIMDExtractOp {
  ExtractLaneI8x16 = 0 /* _BinaryenExtractLaneSVecI8x16 */,
  ExtractLaneU8x16 = 1 /* _BinaryenExtractLaneUVecI8x16 */,
  ExtractLaneI16x8 = 2 /* _BinaryenExtractLaneSVecI16x8 */,
  ExtractLaneU16x8 = 3 /* _BinaryenExtractLaneUVecI16x8 */,
  ExtractLaneI32x4 = 4 /* _BinaryenExtractLaneVecI32x4 */,
  ExtractLaneI64x2 = 5 /* _BinaryenExtractLaneVecI64x2 */,
  ExtractLaneF32x4 = 6 /* _BinaryenExtractLaneVecF32x4 */,
  ExtractLaneF64x2 = 7 /* _BinaryenExtractLaneVecF64x2 */,
}

export enum SIMDReplaceOp {
  ReplaceLaneI8x16 = 0 /* _BinaryenReplaceLaneVecI8x16 */,
  ReplaceLaneI16x8 = 1 /* _BinaryenReplaceLaneVecI16x8 */,
  ReplaceLaneI32x4 = 2 /* _BinaryenReplaceLaneVecI32x4 */,
  ReplaceLaneI64x2 = 3 /* _BinaryenReplaceLaneVecI64x2 */,
  ReplaceLaneF32x4 = 4 /* _BinaryenReplaceLaneVecF32x4 */,
  ReplaceLaneF64x2 = 5 /* _BinaryenReplaceLaneVecF64x2 */
}

export enum SIMDShiftOp {
  ShlI8x16 = 0 /* _BinaryenShlVecI8x16 */,
  ShrI8x16 = 1 /* _BinaryenShrSVecI8x16 */,
  ShrU8x16 = 2 /* _BinaryenShrUVecI8x16 */,
  ShlI16x8 = 3 /* _BinaryenShlVecI16x8 */,
  ShrI16x8 = 4 /* _BinaryenShrSVecI16x8 */,
  ShrU16x8 = 5 /* _BinaryenShrUVecI16x8 */,
  ShlI32x4 = 6 /* _BinaryenShlVecI32x4 */,
  ShrI32x4 = 7 /* _BinaryenShrSVecI32x4 */,
  ShrU32x4 = 8 /* _BinaryenShrUVecI32x4 */,
  ShlI64x2 = 9 /* _BinaryenShlVecI64x2 */,
  ShrI64x2 = 10 /* _BinaryenShrSVecI64x2 */,
  ShrU64x2 = 11 /* _BinaryenShrUVecI64x2 */
}

export enum SIMDTernaryOp {
  Bitselect = 0 /* _BinaryenBitselectVec128 */,
  QFMAF32x4 = 1 /* _BinaryenQFMAVecF32x4 */,
  QFMSF32x4 = 2 /* _BinaryenQFMSVecF32x4 */,
  QFMAF64x2 = 3 /* _BinaryenQFMAVecF64x2 */,
  QFMSF64x2 = 4 /* _BinaryenQFMSVecF64x2 */
}

export enum SIMDLoadOp {
  LoadSplatV8x16 = 0 /* _BinaryenLoadSplatVec8x16 */,
  LoadSplatV16x8 = 1 /* _BinaryenLoadSplatVec16x8 */,
  LoadSplatV32x4 = 2 /* _BinaryenLoadSplatVec32x4 */,
  LoadSplatV64x2 = 3 /* _BinaryenLoadSplatVec64x2 */,
  LoadI8ToI16x8 = 4 /* _BinaryenLoadExtSVec8x8ToVecI16x8 */,
  LoadU8ToU16x8 = 5 /* _BinaryenLoadExtUVec8x8ToVecI16x8 */,
  LoadI16ToI32x4 = 6 /* _BinaryenLoadExtSVec16x4ToVecI32x4 */,
  LoadU16ToU32x4 = 7 /* _BinaryenLoadExtUVec16x4ToVecI32x4 */,
  LoadI32ToI64x2 = 8 /* _BinaryenLoadExtSVec32x2ToVecI64x2 */,
  LoadU32ToU64x2 = 9 /* _BinaryenLoadExtUVec32x2ToVecI64x2 */
}

export class MemorySegment {

  buffer: Uint8Array;
  offset: I64;

  static create(buffer: Uint8Array, offset: I64): MemorySegment {
    var segment = new MemorySegment();
    segment.buffer = buffer;
    segment.offset = offset;
    return segment;
  }
}

export class Module {

  ref: ModuleRef;

  private lit: usize;

  static create(): Module {
    var module = new Module();
    module.ref = binaryen._BinaryenModuleCreate();
    module.lit = binaryen._malloc(binaryen._BinaryenSizeofLiteral());
    return module;
  }

  static createFrom(buffer: Uint8Array): Module {
    var module = new Module();
    var cArr = allocU8Array(buffer);
    module.ref = binaryen._BinaryenModuleRead(cArr, buffer.length);
    binaryen._free(changetype<usize>(cArr));
    module.lit = binaryen._malloc(binaryen._BinaryenSizeofLiteral());
    return module;
  }

  private constructor() { }

  // constants

  i32(value: i32): ExpressionRef {
    var out = this.lit;
    binaryen._BinaryenLiteralInt32(out, value);
    return binaryen._BinaryenConst(this.ref, out);
  }

  i64(valueLow: i32, valueHigh: i32 = 0): ExpressionRef {
    var out = this.lit;
    binaryen._BinaryenLiteralInt64(out, valueLow, valueHigh);
    return binaryen._BinaryenConst(this.ref, out);
  }

  f32(value: f32): ExpressionRef {
    var out = this.lit;
    binaryen._BinaryenLiteralFloat32(out, value);
    return binaryen._BinaryenConst(this.ref, out);
  }

  f64(value: f64): ExpressionRef {
    var out = this.lit;
    binaryen._BinaryenLiteralFloat64(out, value);
    return binaryen._BinaryenConst(this.ref, out);
  }

  v128(bytes: Uint8Array): ExpressionRef {
    assert(bytes.length == 16);
    var out = this.lit;
    for (let i = 0; i < 16; ++i) binaryen.__i32_store8(out + i, bytes[i]);
    binaryen._BinaryenLiteralVec128(out, out);
    return binaryen._BinaryenConst(this.ref, out);
  }

  ref_null(): ExpressionRef {
    return binaryen._BinaryenRefNull(this.ref);
  }

  // expressions

  unary(
    op: UnaryOp,
    expr: ExpressionRef
  ): ExpressionRef {
    return binaryen._BinaryenUnary(this.ref, op, expr);
  }

  binary(
    op: BinaryOp,
    left: ExpressionRef,
    right: ExpressionRef
  ): ExpressionRef {
    return binaryen._BinaryenBinary(this.ref, op, left, right);
  }

  host(
    op: HostOp,
    name: string | null = null,
    operands: ExpressionRef[] | null = null
  ): ExpressionRef {
    var cStr = this.allocStringCached(name);
    var cArr = allocPtrArray(operands);
    var ret = binaryen._BinaryenHost(this.ref, op, cStr, cArr, operands ? (<ExpressionRef[]>operands).length : 0);
    binaryen._free(cArr);
    return ret;
  }

  local_get(
    index: i32,
    type: NativeType
  ): ExpressionRef {
    return binaryen._BinaryenLocalGet(this.ref, index, type);
  }

  local_tee(
    index: i32,
    value: ExpressionRef,
    type: NativeType = NativeType.Auto
  ): ExpressionRef {
    if (type == NativeType.Auto) type = binaryen._BinaryenExpressionGetType(value);
    return binaryen._BinaryenLocalTee(this.ref, index, value, type);
  }

  global_get(
    name: string,
    type: NativeType
  ): ExpressionRef {
    var cStr = this.allocStringCached(name);
    return binaryen._BinaryenGlobalGet(this.ref, cStr, type);
  }

  load(
    bytes: Index,
    signed: bool,
    ptr: ExpressionRef,
    type: NativeType,
    offset: Index = 0,
    align: Index = bytes // naturally aligned by default
  ): ExpressionRef {
    return binaryen._BinaryenLoad(this.ref, bytes, signed ? 1 : 0, offset, align, type, ptr);
  }

  store(
    bytes: Index,
    ptr: ExpressionRef,
    value: ExpressionRef,
    type: NativeType,
    offset: Index = 0,
    align: Index = bytes // naturally aligned by default
  ): ExpressionRef {
    if (type < NativeType.None || type > NativeType.V128) throw new Error("here: " + type);
    return binaryen._BinaryenStore(this.ref, bytes, offset, align, ptr, value, type);
  }

  atomic_load(
    bytes: Index,
    ptr: ExpressionRef,
    type: NativeType,
    offset: Index = 0
  ): ExpressionRef {
    return binaryen._BinaryenAtomicLoad(this.ref, bytes, offset, type, ptr);
  }

  atomic_store(
    bytes: Index,
    ptr: ExpressionRef,
    value: ExpressionRef,
    type: NativeType,
    offset: Index = 0
  ): ExpressionRef {
    return binaryen._BinaryenAtomicStore(this.ref, bytes, offset, ptr, value, type);
  }

  atomic_rmw(
    op: AtomicRMWOp,
    bytes: Index,
    offset: Index,
    ptr: ExpressionRef,
    value: ExpressionRef,
    type: NativeType
  ): ExpressionRef {
    return binaryen._BinaryenAtomicRMW(this.ref, op, bytes, offset, ptr, value, type);
  }

  atomic_cmpxchg(
    bytes: Index,
    offset: Index,
    ptr: ExpressionRef,
    expected: ExpressionRef,
    replacement: ExpressionRef,
    type: NativeType
  ): ExpressionRef {
    return binaryen._BinaryenAtomicCmpxchg(this.ref, bytes, offset, ptr, expected, replacement, type);
  }

  atomic_wait(
    ptr: ExpressionRef,
    expected: ExpressionRef,
    timeout: ExpressionRef,
    expectedType: NativeType
  ): ExpressionRef {
    return binaryen._BinaryenAtomicWait(this.ref, ptr, expected, timeout, expectedType);
  }

  atomic_notify(
    ptr: ExpressionRef,
    notifyCount: ExpressionRef
  ): ExpressionRef {
    return binaryen._BinaryenAtomicNotify(this.ref, ptr, notifyCount);
  }

  atomic_fence(): ExpressionRef {
    return binaryen._BinaryenAtomicFence(this.ref);
  }

  // statements

  local_set(
    index: Index,
    value: ExpressionRef
  ): ExpressionRef {
    return binaryen._BinaryenLocalSet(this.ref, index, value);
  }

  global_set(
    name: string,
    value: ExpressionRef
  ): ExpressionRef {
    var cStr = this.allocStringCached(name);
    return binaryen._BinaryenGlobalSet(this.ref, cStr, value);
  }

  block(
    label: string | null,
    children: ExpressionRef[],
    type: NativeType = NativeType.None
  ): ExpressionRef {
    var cStr = this.allocStringCached(label);
    var cArr = allocPtrArray(children);
    var ret = binaryen._BinaryenBlock(this.ref, cStr, cArr, children.length, type);
    binaryen._free(cArr);
    return ret;
  }

  /** Attempts to trivially flatten a series of expressions instead of emitting a block. */
  flatten(
    stmts: ExpressionRef[],
    type: NativeType = NativeType.None
  ): ExpressionRef {
    var length = stmts.length;
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
      assert(singleType == NativeType.Unreachable || singleType == type);
      return single;
    }
    return this.block(null, stmts, type);
  }

  br(
    label: string | null,
    condition: ExpressionRef = 0,
    value: ExpressionRef = 0
  ): ExpressionRef {
    var cStr = this.allocStringCached(label);
    return binaryen._BinaryenBreak(this.ref, cStr, condition, value);
  }

  drop(
    expression: ExpressionRef
  ): ExpressionRef {
    return binaryen._BinaryenDrop(this.ref, expression);
  }

  loop(
    label: string | null,
    body: ExpressionRef
  ): ExpressionRef {
    var cStr = this.allocStringCached(label);
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
    type: NativeType = NativeType.Auto
  ): ExpressionRef {
    if (type == NativeType.Auto) {
      type = binaryen._BinaryenExpressionGetType(ifTrue);
      assert(type == binaryen._BinaryenExpressionGetType(ifFalse));
    }
    return binaryen._BinaryenSelect(this.ref, condition, ifTrue, ifFalse, type);
  }

  switch(
    names: string[],
    defaultName: string | null,
    condition: ExpressionRef,
    value: ExpressionRef = 0
  ): ExpressionRef {
    var numNames = names.length;
    var strs = new Array<usize>(numNames);
    for (let i = 0; i < numNames; ++i) {
      strs[i] = this.allocStringCached(names[i]);
    }
    var cArr = allocI32Array(strs);
    var cStr = this.allocStringCached(defaultName);
    var ret = binaryen._BinaryenSwitch(this.ref, cArr, numNames, cStr, condition, value);
    binaryen._free(cArr);
    return ret;
  }

  call(
    target: string,
    operands: ExpressionRef[] | null,
    returnType: NativeType,
    isReturn: bool = false
  ): ExpressionRef {
    var cStr = this.allocStringCached(target);
    var cArr = allocPtrArray(operands);
    var ret = isReturn
      ? binaryen._BinaryenReturnCall(this.ref, cStr, cArr, operands && operands.length || 0, returnType)
      : binaryen._BinaryenCall(this.ref, cStr, cArr, operands && operands.length || 0, returnType);
      binaryen._free(cArr);
    return ret;
  }

  return_call(
    target: string,
    operands: ExpressionRef[] | null,
    returnType: NativeType
  ): ExpressionRef {
    return this.call(target, operands, returnType, true);
  }

  call_indirect(
    index: ExpressionRef,
    operands: ExpressionRef[] | null,
    params: NativeType,
    results: NativeType,
    isReturn: bool = false
  ): ExpressionRef {
    var cArr = allocPtrArray(operands);
    var ret = isReturn
      ? binaryen._BinaryenReturnCallIndirect(this.ref, index, cArr, operands && operands.length || 0, params, results)
      : binaryen._BinaryenCallIndirect(this.ref, index, cArr, operands && operands.length || 0, params, results);
    binaryen._free(cArr);
    return ret;
  }

  return_call_indirect(
    index: ExpressionRef,
    operands: ExpressionRef[] | null,
    params: NativeType,
    results: NativeType
  ): ExpressionRef {
    return this.call_indirect(index, operands, params, results, true);
  }

  unreachable(): ExpressionRef {
    return binaryen._BinaryenUnreachable(this.ref);
  }

  // bulk memory

  memory_copy(
    dest: ExpressionRef,
    source: ExpressionRef,
    size: ExpressionRef
  ): ExpressionRef {
    return binaryen._BinaryenMemoryCopy(this.ref, dest, source, size);
  }

  memory_fill(
    dest: ExpressionRef,
    value: ExpressionRef,
    size: ExpressionRef
  ): ExpressionRef {
    return binaryen._BinaryenMemoryFill(this.ref, dest, value, size);
  }

  // exception handling

  try(
    body: ExpressionRef,
    catchBody: ExpressionRef
  ): ExpressionRef {
    return binaryen._BinaryenTry(this.ref, body, catchBody);
  }

  throw(
    eventName: string,
    operands: ExpressionRef[]
  ): ExpressionRef {
    var cStr = this.allocStringCached(eventName);
    var cArr = allocPtrArray(operands);
    var ret = binaryen._BinaryenThrow(this.ref, cStr, cArr, operands.length);
    binaryen._free(cArr);
    return ret;
  }

  rethrow(
    exnref: ExpressionRef
  ): ExpressionRef {
    return binaryen._BinaryenRethrow(this.ref, exnref);
  }

  br_on_exn(
    name: string,
    eventName: string,
    exnref: ExpressionRef
  ): ExpressionRef {
    var cStr1 = this.allocStringCached(name);
    var cStr2 = this.allocStringCached(eventName);
    return binaryen._BinaryenBrOnExn(this.ref, cStr1, cStr2, exnref);
  }

  // push / pop (multi value?)

  push(
    value: ExpressionRef
  ): ExpressionRef {
    return binaryen._BinaryenPush(this.ref, value);
  }

  pop(
    type: NativeType
  ): ExpressionRef {
    return binaryen._BinaryenPop(this.ref, type);
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
    var cArr = allocU8Array(mask);
    var ret = binaryen._BinaryenSIMDShuffle(this.ref, vec1, vec2, cArr);
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
    align: u32
  ): ExpressionRef {
    return binaryen._BinaryenSIMDLoad(this.ref, op, offset, align, ptr);
  }

  // reference types

  ref_is_null(
    expr: ExpressionRef
  ): ExpressionRef {
    return binaryen._BinaryenRefIsNull(this.ref, expr);
  }

  ref_func(
    name: string
  ): ExpressionRef {
    var cStr = this.allocStringCached(name);
    return binaryen._BinaryenRefFunc(this.ref, cStr);
  }

  // globals

  addGlobal(
    name: string,
    type: NativeType,
    mutable: bool,
    initializer: ExpressionRef
  ): GlobalRef {
    var cStr = this.allocStringCached(name);
    return binaryen._BinaryenAddGlobal(this.ref, cStr, type, mutable, initializer);
  }

  getGlobal(
    name: string
  ): GlobalRef {
    var cStr = this.allocStringCached(name);
    return binaryen._BinaryenGetGlobal(this.ref, cStr);
  }

  removeGlobal(
    name: string
  ): void {
    var cStr = this.allocStringCached(name);
    binaryen._BinaryenRemoveGlobal(this.ref, cStr);
  }

  // events

  addEvent(
    name: string,
    attribute: u32,
    params: NativeType,
    results: NativeType
  ): EventRef {
    var cStr = this.allocStringCached(name);
    return binaryen._BinaryenAddEvent(this.ref, cStr, attribute, params, results);
  }

  getEvent(
    name: string
  ): EventRef {
    var cStr = this.allocStringCached(name);
    return binaryen._BinaryenGetEvent(this.ref, cStr);
  }

  removeEvent(
    name: string
  ): void {
    var cStr = this.allocStringCached(name);
    binaryen._BinaryenRemoveEvent(this.ref, cStr);
  }

  // functions

  addFunction(
    name: string,
    params: NativeType,
    results: NativeType,
    varTypes: NativeType[] | null,
    body: ExpressionRef
  ): FunctionRef {
    var cStr = this.allocStringCached(name);
    var cArr = allocI32Array(varTypes);
    var ret = binaryen._BinaryenAddFunction(this.ref, cStr, params, results, cArr, varTypes ? varTypes.length : 0, body);
    binaryen._free(cArr);
    return ret;
  }

  getFunction(
    name: string
  ): FunctionRef {
    var cStr = this.allocStringCached(name);
    return binaryen._BinaryenGetFunction(this.ref, cStr);
  }

  removeFunction(name: string): void {
    var cStr = this.allocStringCached(name);
    binaryen._BinaryenRemoveFunction(this.ref, cStr);
  }

  private hasTemporaryFunction: bool = false;

  addTemporaryFunction(result: NativeType, paramTypes: NativeType[] | null, body: ExpressionRef): FunctionRef {
    this.hasTemporaryFunction = assert(!this.hasTemporaryFunction);
    var tempName = this.allocStringCached("");
    var cArr = allocI32Array(paramTypes);
    var ret = binaryen._BinaryenAddFunction(this.ref,
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
    var tempName = this.allocStringCached("");
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
    var cStr1 = this.allocStringCached(internalName);
    var cStr2 = this.allocStringCached(externalName);
    return binaryen._BinaryenAddFunctionExport(this.ref, cStr1, cStr2);
  }

  addTableExport(
    internalName: string,
    externalName: string
  ): ExportRef {
    var cStr1 = this.allocStringCached(internalName);
    var cStr2 = this.allocStringCached(externalName);
    return binaryen._BinaryenAddTableExport(this.ref, cStr1, cStr2);
  }

  addMemoryExport(
    internalName: string,
    externalName: string
  ): ExportRef {
    var cStr1 = this.allocStringCached(internalName);
    var cStr2 = this.allocStringCached(externalName);
    return binaryen._BinaryenAddMemoryExport(this.ref, cStr1, cStr2);
  }

  addGlobalExport(
    internalName: string,
    externalName: string
  ): ExportRef {
    var cStr1 = this.allocStringCached(internalName);
    var cStr2 = this.allocStringCached(externalName);
    return binaryen._BinaryenAddGlobalExport(this.ref, cStr1, cStr2);
  }

  addEventExport(
    internalName: string,
    externalName: string
  ): ExportRef {
    var cStr1 = this.allocStringCached(internalName);
    var cStr2 = this.allocStringCached(externalName);
    return binaryen._BinaryenAddEventExport(this.ref, cStr1, cStr2);
  }

  removeExport(externalName: string): void {
    var cStr = this.allocStringCached(externalName);
    binaryen._BinaryenRemoveExport(this.ref, cStr);
  }

  // imports

  addFunctionImport(
    internalName: string,
    externalModuleName: string,
    externalBaseName: string,
    params: NativeType,
    results: NativeType
  ): void {
    var cStr1 = this.allocStringCached(internalName);
    var cStr2 = this.allocStringCached(externalModuleName);
    var cStr3 = this.allocStringCached(externalBaseName);
    binaryen._BinaryenAddFunctionImport(this.ref, cStr1, cStr2, cStr3, params, results);
  }

  addTableImport(
    internalName: string,
    externalModuleName: string,
    externalBaseName: string
  ): void {
    var cStr1 = this.allocStringCached(internalName);
    var cStr2 = this.allocStringCached(externalModuleName);
    var cStr3 = this.allocStringCached(externalBaseName);
    binaryen._BinaryenAddTableImport(this.ref, cStr1, cStr2, cStr3);
  }

  addMemoryImport(
    internalName: string,
    externalModuleName: string,
    externalBaseName: string,
    shared: bool = false,
  ): void {
    var cStr1 = this.allocStringCached(internalName);
    var cStr2 = this.allocStringCached(externalModuleName);
    var cStr3 = this.allocStringCached(externalBaseName);
    binaryen._BinaryenAddMemoryImport(this.ref, cStr1, cStr2, cStr3, shared);
  }

  addGlobalImport(
    internalName: string,
    externalModuleName: string,
    externalBaseName: string,
    globalType: NativeType,
    mutable: bool = false
  ): void {
    var cStr1 = this.allocStringCached(internalName);
    var cStr2 = this.allocStringCached(externalModuleName);
    var cStr3 = this.allocStringCached(externalBaseName);
    binaryen._BinaryenAddGlobalImport(this.ref, cStr1, cStr2, cStr3, globalType, mutable);
  }

  addEventImport(
    internalName: string,
    externalModuleName: string,
    externalBaseName: string,
    attribute: u32,
    params: NativeType,
    results: NativeType
  ): void {
    var cStr1 = this.allocStringCached(internalName);
    var cStr2 = this.allocStringCached(externalModuleName);
    var cStr3 = this.allocStringCached(externalBaseName);
    binaryen._BinaryenAddEventImport(this.ref, cStr1, cStr2, cStr3, attribute, params, results);
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
    shared: bool = false
  ): void {
    var cStr = this.allocStringCached(exportName);
    var k = segments.length;
    var segs = new Array<usize>(k);
    var psvs = new Uint8Array(k);
    var offs = new Array<ExpressionRef>(k);
    var sizs = new Array<Index>(k);
    for (let i = 0; i < k; ++i) {
      let buffer = segments[i].buffer;
      let offset = segments[i].offset;
      segs[i] = allocU8Array(buffer);
      psvs[i] = 0; // no passive segments currently
      offs[i] = target == Target.WASM64
        ? this.i64(i64_low(offset), i64_high(offset))
        : this.i32(i64_low(offset));
      sizs[i] = buffer.length;
    }
    var cArr1 = allocI32Array(segs);
    var cArr2 = allocU8Array(psvs);
    var cArr3 = allocI32Array(offs);
    var cArr4 = allocI32Array(sizs);
    binaryen._BinaryenSetMemory(this.ref, initial, maximum, cStr, cArr1, cArr2, cArr3, cArr4, k, shared);
    binaryen._free(cArr4);
    binaryen._free(cArr3);
    binaryen._free(cArr2);
    binaryen._free(cArr1);
    for (let i = k - 1; i >= 0; --i) binaryen._free(segs[i]);
  }

  // table

  /** Unlimited table constant. */
  static readonly UNLIMITED_TABLE: Index = <Index>-1;

  setFunctionTable(
    initial: Index,
    maximum: Index,
    funcs: string[],
    offset: ExpressionRef
  ): void {
    var numNames = funcs.length;
    var names = new Array<usize>(numNames);
    for (let i = 0; i < numNames; ++i) {
      names[i] = this.allocStringCached(funcs[i]);
    }
    var cArr = allocI32Array(names);
    binaryen._BinaryenSetFunctionTable(this.ref, initial, maximum, cArr, numNames, offset);
    binaryen._free(cArr);
  }

  // sections

  addCustomSection(name: string, contents: Uint8Array): void {
    var cStr = this.allocStringCached(name);
    var cArr = allocU8Array(contents);
    binaryen._BinaryenAddCustomSection(this.ref, cStr, cArr, contents.length);
    binaryen._free(cArr);
  }

  // meta

  getOptimizeLevel(): i32 {
    return binaryen._BinaryenGetOptimizeLevel();
  }

  setOptimizeLevel(level: i32 = 2): void {
    binaryen._BinaryenSetOptimizeLevel(level);
  }

  getShrinkLevel(): i32 {
    return binaryen._BinaryenGetShrinkLevel();
  }

  setShrinkLevel(level: i32 = 1): void {
    binaryen._BinaryenSetShrinkLevel(level);
  }

  setDebugInfo(on: bool = false): void {
    binaryen._BinaryenSetDebugInfo(on);
  }

  getFeatures(): FeatureFlags {
    return binaryen._BinaryenModuleGetFeatures(this.ref);
  }

  setFeatures(featureFlags: FeatureFlags): void {
    binaryen._BinaryenModuleSetFeatures(this.ref, featureFlags);
  }

  optimize(func: FunctionRef = 0): void {
    if (func) {
      binaryen._BinaryenFunctionOptimize(func, this.ref);
    } else {
      binaryen._BinaryenModuleOptimize(this.ref);
    }
  }

  runPasses(passes: string[], func: FunctionRef = 0): void {
    var numNames = passes.length;
    var names = new Array<usize>(numNames);
    for (let i = 0; i < numNames; ++i) {
      names[i] = allocString(passes[i]);
    }
    var cArr = allocI32Array(names);
    if (func) {
      binaryen._BinaryenFunctionRunPasses(func, this.ref, cArr, numNames);
    } else {
      binaryen._BinaryenModuleRunPasses(this.ref, cArr, numNames);
    }
    binaryen._free(cArr);
    for (let i = numNames; i >= 0; --i) binaryen._free(names[i]);
  }

  private cachedPrecomputeNames: usize = 0;

  precomputeExpression(expr: ExpressionRef): ExpressionRef {
    // remember the previous optimize levels and set to max instead, to be sure
    var previousOptimizeLevel = binaryen._BinaryenGetOptimizeLevel();
    var previousShrinkLevel = binaryen._BinaryenGetShrinkLevel();
    var previousDebugInfo = binaryen._BinaryenGetDebugInfo();
    binaryen._BinaryenSetOptimizeLevel(4);
    binaryen._BinaryenSetShrinkLevel(0);
    binaryen._BinaryenSetDebugInfo(false);

    // wrap the expression in a temp. function and run the precompute pass on it
    var type = binaryen._BinaryenExpressionGetType(expr);
    var func = this.addTemporaryFunction(type, null, expr);
    var names = this.cachedPrecomputeNames;
    if (!names) {
      this.cachedPrecomputeNames = names = allocI32Array([
        this.allocStringCached("vacuum"),
        this.allocStringCached("precompute")
      ]);
    }
    binaryen._BinaryenFunctionRunPasses(func, this.ref, names, 2);
    expr = binaryen._BinaryenFunctionGetBody(func);
    if (binaryen._BinaryenExpressionGetId(expr) == ExpressionId.Return) {
      expr = binaryen._BinaryenReturnGetValue(expr);
    }
    this.removeTemporaryFunction();

    // reset optimize levels to previous
    binaryen._BinaryenSetOptimizeLevel(previousOptimizeLevel);
    binaryen._BinaryenSetShrinkLevel(previousShrinkLevel);
    binaryen._BinaryenSetDebugInfo(previousDebugInfo);
    return expr;
  }

  validate(): bool {
    return binaryen._BinaryenModuleValidate(this.ref) == 1;
  }

  interpret(): void {
    binaryen._BinaryenModuleInterpret(this.ref);
  }

  toBinary(sourceMapUrl: string | null): BinaryModule {
    var out = this.lit; // safe to reuse as long as..
    assert(binaryen._BinaryenSizeofLiteral() >= 12);
    var cStr = allocString(sourceMapUrl);
    var binaryPtr: usize = 0;
    var sourceMapPtr: usize = 0;
    try {
      binaryen._BinaryenModuleAllocateAndWrite(out, this.ref, cStr);
      binaryPtr = binaryen.__i32_load(out);
      let binaryLen = binaryen.__i32_load(out + 4);
      sourceMapPtr = binaryen.__i32_load(out + 8);
      let ret = new BinaryModule();
      ret.output = readBuffer(binaryPtr, binaryLen);
      ret.sourceMap = readString(sourceMapPtr);
      return ret;
    } finally {
      if (cStr) binaryen._free(cStr);
      if (binaryPtr) binaryen._free(binaryPtr);
      if (sourceMapPtr) binaryen._free(sourceMapPtr);
    }
  }

  toText(): string {
    throw new Error("not implemented"); // JS glue overrides this
  }

  toAsmjs(): string {
    throw new Error("not implemented"); // JS glue overrides this
  }

  private cachedStrings: Map<string,usize> = new Map();

  private allocStringCached(str: string | null): usize {
    if (str == null) return 0;
    var cachedStrings = this.cachedStrings;
    if (cachedStrings.has(str)) return <usize>cachedStrings.get(str);
    var ptr = allocString(str);
    cachedStrings.set(str, ptr);
    return ptr;
  }

  dispose(): void {
    assert(this.ref);
    for (let ptr of this.cachedStrings.values()) binaryen._free(ptr);
    this.cachedStrings = new Map();
    binaryen._free(this.lit);
    binaryen._free(this.cachedPrecomputeNames);
    this.cachedPrecomputeNames = 0;
    binaryen._BinaryenModuleDispose(this.ref);
    this.ref = 0;
  }

  createRelooper(): Relooper {
    return Relooper.create(this);
  }

  cloneExpression(
    expr: ExpressionRef,
    noSideEffects: bool = false,
    maxDepth: i32 = i32.MAX_VALUE
  ): ExpressionRef { // currently supports side effect free expressions only
    if (maxDepth < 0) return 0;
    maxDepth -= 1;

    var nested1: ExpressionRef,
        nested2: ExpressionRef;

    switch (binaryen._BinaryenExpressionGetId(expr)) {
      case ExpressionId.Const: {
        switch (binaryen._BinaryenExpressionGetType(expr)) {
          case NativeType.I32: {
            return this.i32(binaryen._BinaryenConstGetValueI32(expr));
          }
          case NativeType.I64: {
            return this.i64(
              binaryen._BinaryenConstGetValueI64Low(expr),
              binaryen._BinaryenConstGetValueI64High(expr)
            );
          }
          case NativeType.F32: {
            return this.f32(binaryen._BinaryenConstGetValueF32(expr));
          }
          case NativeType.F64: {
            return this.f64(binaryen._BinaryenConstGetValueF64(expr));
          }
          case NativeType.V128: {
            // TODO
            return 0;
          }
          // Not possible to clone an anyref as it is opaque
          case NativeType.Anyref: {
            return 0;
          }
          default: {
            throw new Error("concrete type expected");
          }
        }
      }
      case ExpressionId.LocalGet: {
        return binaryen._BinaryenLocalGet(this.ref,
          binaryen._BinaryenLocalGetGetIndex(expr),
          binaryen._BinaryenExpressionGetType(expr)
        );
      }
      case ExpressionId.GlobalGet: {
        let globalName = binaryen._BinaryenGlobalGetGetName(expr);
        if (!globalName) break;
        return binaryen._BinaryenGlobalGet(this.ref, globalName, binaryen._BinaryenExpressionGetType(expr));
      }
      case ExpressionId.Load: {
        if (!(nested1 = this.cloneExpression(binaryen._BinaryenLoadGetPtr(expr), noSideEffects, maxDepth))) {
          break;
        }
        return (
          binaryen._BinaryenLoadIsAtomic(expr)
            ? binaryen._BinaryenAtomicLoad(this.ref,
                binaryen._BinaryenLoadGetBytes(expr),
                binaryen._BinaryenLoadGetOffset(expr),
                binaryen._BinaryenExpressionGetType(expr),
                nested1
              )
            : binaryen._BinaryenLoad(this.ref,
                binaryen._BinaryenLoadGetBytes(expr),
                binaryen._BinaryenLoadIsSigned(expr) ? 1 : 0,
                binaryen._BinaryenLoadGetOffset(expr),
                binaryen._BinaryenLoadGetAlign(expr),
                binaryen._BinaryenExpressionGetType(expr),
                nested1
              )
        );
      }
      case ExpressionId.Unary: {
        if (!(nested1 = this.cloneExpression(binaryen._BinaryenUnaryGetValue(expr), noSideEffects, maxDepth))) {
          break;
        }
        return binaryen._BinaryenUnary(this.ref, binaryen._BinaryenUnaryGetOp(expr), nested1);
      }
      case ExpressionId.Binary: {
        if (!(nested1 = this.cloneExpression(binaryen._BinaryenBinaryGetLeft(expr), noSideEffects, maxDepth))) {
          break;
        }
        if (!(nested2 = this.cloneExpression(binaryen._BinaryenBinaryGetRight(expr), noSideEffects, maxDepth))) {
          break;
        }
        return binaryen._BinaryenBinary(this.ref, binaryen._BinaryenBinaryGetOp(expr), nested1, nested2);
      }
    }
    return 0;
  }

  // source map generation

  addDebugInfoFile(name: string): Index {
    var cStr = allocString(name);
    var ret = binaryen._BinaryenModuleAddDebugInfoFileName(this.ref, cStr);
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

export function createType(types: NativeType[] | null): NativeType {
  if (!types) return NativeType.None;
  switch (types.length) {
    case 0: return NativeType.None;
    case 1: return types[0];
  }
  var cArr = allocI32Array(types);
  var ret = binaryen._BinaryenTypeCreate(cArr, types.length);
  binaryen._free(cArr);
  return ret;
}

export function expandType(type: NativeType): NativeType[] {
  var arity = binaryen._BinaryenTypeArity(type);
  var cArr = binaryen._malloc(<usize>arity << 2);
  binaryen._BinaryenTypeExpand(type, cArr);
  var types = new Array(arity);
  for (let i = 0; i < arity; ++i) {
    types[i] = binaryen.__i32_load(cArr + (<usize>i << 2));
  }
  binaryen._free(cArr);
  return types;
}

// expressions

export function getExpressionId(expr: ExpressionRef): ExpressionId {
  return binaryen._BinaryenExpressionGetId(expr);
}

export function getExpressionType(expr: ExpressionRef): NativeType {
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

export function getConstValueF64(expr: ExpressionRef): f32 {
  return binaryen._BinaryenConstGetValueF64(expr);
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

export function getBlockChild(expr: ExpressionRef, index: Index): ExpressionRef {
  return binaryen._BinaryenBlockGetChild(expr, index);
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

export function getCallOperand(expr: ExpressionRef, index: Index): ExpressionRef {
  return binaryen._BinaryenCallGetOperand(expr, index);
}

export function getHostOp(expr: ExpressionRef): ExpressionRef {
  return binaryen._BinaryenHostGetOp(expr);
}

export function getHostOperandCount(expr: ExpressionRef): Index {
  return binaryen._BinaryenHostGetNumOperands(expr);
}

export function getHostOperand(expr: ExpressionRef, index: Index): ExpressionRef {
  return binaryen._BinaryenHostGetOperand(expr, index);
}

export function getHostName(expr: ExpressionRef): string | null {
  return readString(binaryen._BinaryenHostGetNameOperand(expr));
}

// functions

export function getFunctionBody(func: FunctionRef): ExpressionRef {
  return binaryen._BinaryenFunctionGetBody(func);
}

export function getFunctionName(func: FunctionRef): string | null {
  return readString(binaryen._BinaryenFunctionGetName(func));
}

export function getFunctionParams(func: FunctionRef): Index {
  return binaryen._BinaryenFunctionGetParams(func);
}

export function getFunctionResults(func: FunctionRef): NativeType {
  return binaryen._BinaryenFunctionGetResults(func);
}

export function getFunctionVars(func: FunctionRef): NativeType {
  // TODO: unify this on Binaryen's side?
  var count = binaryen._BinaryenFunctionGetNumVars(func);
  var types = new Array<NativeType>(count);
  for (let i = 0; i < count; ++i) {
    types[i] = binaryen._BinaryenFunctionGetVar(func, i);
  }
  return createType(types);
}

// globals

export function getGlobalName(global: GlobalRef): string | null {
  return readString(binaryen._BinaryenGlobalGetName(global));
}

export function getGlobalType(global: GlobalRef): NativeType {
  return binaryen._BinaryenGlobalGetType(global);
}

export function isGlobalMutable(global: GlobalRef): bool {
  return binaryen._BinaryenGlobalIsMutable(global);
}

export function getGlobalInit(global: GlobalRef): ExpressionRef {
  return binaryen._BinaryenGlobalGetInit(global);
}

// events

export function getEventName(event: EventRef): string | null {
  return readString(binaryen._BinaryenEventGetName(event));
}

export function getEventAttribute(event: EventRef): u32 {
  return binaryen._BinaryenEventGetAttribute(event);
}

export function getEventType(event: EventRef): string | null {
  return readString(binaryen._BinaryenEventGetType(event));
}

export function getEventParamCount(event: EventRef): Index {
  return binaryen._BinaryenEventGetNumParams(event);
}

export function getEventParam(event: EventRef, index: Index): NativeType {
  return binaryen._BinaryenEventGetParam(event, index);
}

export class Relooper {

  module: Module;
  ref: RelooperRef;

  static create(module: Module): Relooper {
    var relooper = new Relooper();
    relooper.module = module;
    relooper.ref = binaryen._RelooperCreate(module.ref);
    return relooper;
  }

  private constructor() {}

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
    var cArr = allocI32Array(indexes);
    binaryen._RelooperAddBranchForSwitch(from, to, cArr, indexes.length, code);
    binaryen._free(cArr);
  }

  renderAndDispose(entry: RelooperBlockRef, labelHelper: Index): ExpressionRef {
    return binaryen._RelooperRenderAndDispose(this.ref, entry, labelHelper);
  }
}

export function hasSideEffects(expr: ExpressionRef): bool {
  // TODO: there's more
  switch (binaryen._BinaryenExpressionGetId(expr)) {
    case ExpressionId.LocalGet:
    case ExpressionId.GlobalGet:
    case ExpressionId.Const:
    case ExpressionId.Nop: {
      return false;
    }
    case ExpressionId.Block: {
      for (let i = 0, k = binaryen._BinaryenBlockGetNumChildren(expr); i < k; ++i) {
        if (hasSideEffects(binaryen._BinaryenBlockGetChild(expr, i))) return true;
      }
      return false;
    }
    case ExpressionId.If: {
      return hasSideEffects(binaryen._BinaryenIfGetCondition(expr))
          || hasSideEffects(binaryen._BinaryenIfGetIfTrue(expr))
          || hasSideEffects(binaryen._BinaryenIfGetIfFalse(expr));
    }
    case ExpressionId.Unary: {
      return hasSideEffects(binaryen._BinaryenUnaryGetValue(expr));
    }
    case ExpressionId.Binary: {
      return hasSideEffects(binaryen._BinaryenBinaryGetLeft(expr))
          || hasSideEffects(binaryen._BinaryenBinaryGetRight(expr));
    }
    case ExpressionId.Drop: {
      return hasSideEffects(binaryen._BinaryenDropGetValue(expr));
    }
    case ExpressionId.Select: {
      return hasSideEffects(binaryen._BinaryenSelectGetIfTrue(expr))
          || hasSideEffects(binaryen._BinaryenSelectGetIfFalse(expr))
          || hasSideEffects(binaryen._BinaryenSelectGetCondition(expr));
    }
  }
  return true;
}

// helpers
// can't do stack allocation here: STACKTOP is a global in WASM but a hidden variable in asm.js

function allocU8Array(u8s: Uint8Array | null): usize {
  if (!u8s) return 0;
  var numValues = u8s.length;
  var ptr = binaryen._malloc(numValues);
  var idx = ptr;
  for (let i = 0; i < numValues; ++i) {
    binaryen.__i32_store8(idx++, u8s[i]);
  }
  return ptr;
}

function allocI32Array(i32s: i32[] | null): usize {
  if (!i32s) return 0;
  var ptr = binaryen._malloc(i32s.length << 2);
  var idx = ptr;
  for (let i = 0, k = i32s.length; i < k; ++i) {
    let val = i32s[i];
    binaryen.__i32_store(idx, val);
    idx += 4;
  }
  return ptr;
}

function allocPtrArray(ptrs: usize[] | null): usize {
  return allocI32Array(ptrs); // TODO: WASM64 one day
}

function stringLengthUTF8(str: string): usize {
  var len = 0;
  for (let i = 0, k = str.length; i < k; ++i) {
    let u = str.charCodeAt(i);
    if (u >= 0xD800 && u <= 0xDFFF && i + 1 < k) {
      u = 0x10000 + ((u & 0x3FF) << 10) | (str.charCodeAt(++i) & 0x3FF);
    }
    if (u <= 0x7F) {
      ++len;
    } else if (u <= 0x7FF) {
      len += 2;
    } else if (u <= 0xFFFF) {
      len += 3;
    } else if (u <= 0x1FFFFF) {
      len += 4;
    } else if (u <= 0x3FFFFFF) {
      len += 5;
    } else {
      len += 6;
    }
  }
  return len;
}

function allocString(str: string | null): usize {
  if (str == null) return 0;
  var ptr = binaryen._malloc(stringLengthUTF8(str) + 1);
  // the following is based on Emscripten's stringToUTF8Array
  var idx = ptr;
  for (let i = 0, k = str.length; i < k; ++i) {
    let u = str.charCodeAt(i);
    if (u >= 0xD800 && u <= 0xDFFF && i + 1 < k) {
      u = 0x10000 + ((u & 0x3FF) << 10) | (str.charCodeAt(++i) & 0x3FF);
    }
    if (u <= 0x7F) {
      binaryen.__i32_store8(idx++, u as u8);
    } else if (u <= 0x7FF) {
      binaryen.__i32_store8(idx++, (0xC0 |  (u >>> 6)       ) as u8);
      binaryen.__i32_store8(idx++, (0x80 | ( u         & 63)) as u8);
    } else if (u <= 0xFFFF) {
      binaryen.__i32_store8(idx++, (0xE0 |  (u >>> 12)      ) as u8);
      binaryen.__i32_store8(idx++, (0x80 | ((u >>>  6) & 63)) as u8);
      binaryen.__i32_store8(idx++, (0x80 | ( u         & 63)) as u8);
    } else if (u <= 0x1FFFFF) {
      binaryen.__i32_store8(idx++, (0xF0 |  (u >>> 18)      ) as u8);
      binaryen.__i32_store8(idx++, (0x80 | ((u >>> 12) & 63)) as u8);
      binaryen.__i32_store8(idx++, (0x80 | ((u >>>  6) & 63)) as u8);
      binaryen.__i32_store8(idx++, (0x80 | ( u         & 63)) as u8);
    } else if (u <= 0x3FFFFFF) {
      binaryen.__i32_store8(idx++, (0xF8 |  (u >>> 24)      ) as u8);
      binaryen.__i32_store8(idx++, (0x80 | ((u >>> 18) & 63)) as u8);
      binaryen.__i32_store8(idx++, (0x80 | ((u >>> 12) & 63)) as u8);
      binaryen.__i32_store8(idx++, (0x80 | ((u >>>  6) & 63)) as u8);
      binaryen.__i32_store8(idx++, (0x80 | ( u         & 63)) as u8);
    } else {
      binaryen.__i32_store8(idx++, (0xFC |  (u >>> 30)      ) as u8);
      binaryen.__i32_store8(idx++, (0x80 | ((u >>> 24) & 63)) as u8);
      binaryen.__i32_store8(idx++, (0x80 | ((u >>> 18) & 63)) as u8);
      binaryen.__i32_store8(idx++, (0x80 | ((u >>> 12) & 63)) as u8);
      binaryen.__i32_store8(idx++, (0x80 | ((u >>>  6) & 63)) as u8);
      binaryen.__i32_store8(idx++, (0x80 | ( u         & 63)) as u8);
    }
  }
  binaryen.__i32_store8(idx, 0);
  return ptr;
}

function readBuffer(ptr: usize, length: usize): Uint8Array {
  var ret = new Uint8Array(length);
  for (let i: usize = 0; i < length; ++i) {
    ret[i] = binaryen.__i32_load8_u(ptr + i);
  }
  return ret;
}

export function readString(ptr: usize): string | null {
  if (!ptr) return null;
  var arr = new Array<i32>();
  // the following is based on Emscripten's UTF8ArrayToString
  var cp: u32;
  var u1: u32, u2: u32, u3: u32, u4: u32, u5: u32;
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
        u4 = binaryen.__i32_load8_u(ptr++) & 63;
        if ((cp & 0xFC) == 0xF8) {
          cp = ((cp & 3) << 24) | (u1 << 18) | (u2 << 12) | (u3 << 6) | u4;
        } else {
          u5 = binaryen.__i32_load8_u(ptr++) & 63;
          cp = ((cp & 1) << 30) | (u1 << 24) | (u2 << 18) | (u3 << 12) | (u4 << 6) | u5;
        }
      }
    }
    arr.push(cp);
    // if (cp < 0x10000) {
    //   arr.push(cp);
    // } else {
    //   var ch = cp - 0x10000;
    //   arr.push(0xD800 | (ch >> 10));
    //   arr.push(0xDC00 | (ch & 0x3FF));
    // }
  }
  // return String.fromCharCodes(arr);
  return String.fromCodePoints(arr);
}

/** Result structure of {@link Module#toBinary}. */
export class BinaryModule {
  /** WebAssembly binary. */
  output: Uint8Array;
  /** Source map, if generated. */
  sourceMap: string | null;
}

/** Tests if an expression needs an explicit 'unreachable' when it is the terminating statement. */
export function needsExplicitUnreachable(expr: ExpressionRef): bool {
  // not applicable if pushing a value to the stack
  if (binaryen._BinaryenExpressionGetType(expr) != NativeType.Unreachable) return false;

  switch (binaryen._BinaryenExpressionGetId(expr)) {
    case ExpressionId.Unreachable:
    case ExpressionId.Return: return false;
    case ExpressionId.Break: return binaryen._BinaryenBreakGetCondition(expr) != 0;
    case ExpressionId.Block: {
      if (!binaryen._BinaryenBlockGetName(expr)) { // can't break out of it
        let numChildren = binaryen._BinaryenBlockGetNumChildren(expr); // last child needs unreachable
        return numChildren > 0 && needsExplicitUnreachable(binaryen._BinaryenBlockGetChild(expr, numChildren - 1));
      }
    }
  }
  return true;
}

/** Traverses all expression members of an expression, calling the given visitor. */
export function traverse<T>(expr: ExpressionRef, data: T, visit: (expr: ExpressionRef, data: T) => void): bool {
  switch (getExpressionId(expr)) {
    case ExpressionId.Block: {
      for (let i = 0, n = binaryen._BinaryenBlockGetNumChildren(expr); i < n; ++i) {
        visit(binaryen._BinaryenBlockGetChild(expr, i), data);
      }
      break;
    }
    case ExpressionId.If: {
      visit(binaryen._BinaryenIfGetCondition(expr), data);
      visit(binaryen._BinaryenIfGetIfTrue(expr), data);
      let ifFalse = binaryen._BinaryenIfGetIfFalse(expr);
      if (ifFalse) visit(ifFalse, data);
      break;
    }
    case ExpressionId.Loop: {
      visit(binaryen._BinaryenLoopGetBody(expr), data);
      break;
    }
    case ExpressionId.Break: {
      let condition = binaryen._BinaryenBreakGetCondition(expr);
      if (condition) visit(condition, data);
      break;
    }
    case ExpressionId.Switch: {
      visit(binaryen._BinaryenSwitchGetCondition(expr), data);
      break;
    }
    case ExpressionId.Call: {
      for (let i = 0, n = binaryen._BinaryenCallGetNumOperands(expr); i < n; ++i) {
        visit(binaryen._BinaryenCallGetOperand(expr, i), data);
      }
      break;
    }
    case ExpressionId.CallIndirect: {
      for (let i = 0, n = binaryen._BinaryenCallIndirectGetNumOperands(expr); i < n; ++i) {
        visit(binaryen._BinaryenCallIndirectGetOperand(expr, i), data);
      }
      break;
    }
    case ExpressionId.LocalGet: {
      break;
    }
    case ExpressionId.LocalSet: {
      visit(binaryen._BinaryenLocalSetGetValue(expr), data);
      break;
    }
    case ExpressionId.GlobalGet: {
      break;
    }
    case ExpressionId.GlobalSet: {
      visit(binaryen._BinaryenGlobalSetGetValue(expr), data);
      break;
    }
    case ExpressionId.Load: {
      visit(binaryen._BinaryenLoadGetPtr(expr), data);
      break;
    }
    case ExpressionId.Store: {
      visit(binaryen._BinaryenStoreGetPtr(expr), data);
      visit(binaryen._BinaryenStoreGetValue(expr), data);
      break;
    }
    case ExpressionId.Const: {
      break;
    }
    case ExpressionId.Unary: {
      visit(binaryen._BinaryenUnaryGetValue(expr), data);
      break;
    }
    case ExpressionId.Binary: {
      visit(binaryen._BinaryenBinaryGetLeft(expr), data);
      visit(binaryen._BinaryenBinaryGetRight(expr), data);
      break;
    }
    case ExpressionId.Select: {
      visit(binaryen._BinaryenSelectGetIfTrue(expr), data);
      visit(binaryen._BinaryenSelectGetIfFalse(expr), data);
      visit(binaryen._BinaryenSelectGetCondition(expr), data);
      break;
    }
    case ExpressionId.Drop: {
      visit(binaryen._BinaryenDropGetValue(expr), data);
      break;
    }
    case ExpressionId.Return: {
      visit(binaryen._BinaryenReturnGetValue(expr), data);
      break;
    }
    case ExpressionId.Host: {
      for (let i = 0, n = binaryen._BinaryenHostGetNumOperands(expr); i < n; ++i) {
        visit(binaryen._BinaryenHostGetOperand(expr, i), data);
      }
      break;
    }
    case ExpressionId.Nop: {
      break;
    }
    case ExpressionId.Unreachable: {
      break;
    }
    case ExpressionId.AtomicRMW: {
      visit(binaryen._BinaryenAtomicRMWGetPtr(expr), data);
      visit(binaryen._BinaryenAtomicRMWGetValue(expr), data);
      break;
    }
    case ExpressionId.AtomicCmpxchg: {
      visit(binaryen._BinaryenAtomicCmpxchgGetPtr(expr), data);
      visit(binaryen._BinaryenAtomicCmpxchgGetExpected(expr), data);
      visit(binaryen._BinaryenAtomicCmpxchgGetReplacement(expr), data);
      break;
    }
    case ExpressionId.AtomicWait: {
      visit(binaryen._BinaryenAtomicWaitGetPtr(expr), data);
      visit(binaryen._BinaryenAtomicWaitGetExpected(expr), data);
      visit(binaryen._BinaryenAtomicWaitGetTimeout(expr), data);
      break;
    }
    case ExpressionId.AtomicNotify: {
      visit(binaryen._BinaryenAtomicNotifyGetPtr(expr), data);
      break;
    }
    case ExpressionId.AtomicFence: {
      break;
    }
    case ExpressionId.SIMDExtract: {
      visit(binaryen._BinaryenSIMDExtractGetVec(expr), data);
      break;
    }
    case ExpressionId.SIMDReplace: {
      visit(binaryen._BinaryenSIMDReplaceGetVec(expr), data);
      visit(binaryen._BinaryenSIMDReplaceGetValue(expr), data);
      break;
    }
    case ExpressionId.SIMDShuffle: {
      visit(binaryen._BinaryenSIMDShuffleGetLeft(expr), data);
      visit(binaryen._BinaryenSIMDShuffleGetRight(expr), data);
      break;
    }
    case ExpressionId.SIMDTernary: {
      visit(binaryen._BinaryenSIMDTernaryGetA(expr), data);
      visit(binaryen._BinaryenSIMDTernaryGetB(expr), data);
      visit(binaryen._BinaryenSIMDTernaryGetC(expr), data);
      break;
    }
    case ExpressionId.SIMDShift: {
      visit(binaryen._BinaryenSIMDShiftGetVec(expr), data);
      visit(binaryen._BinaryenSIMDShiftGetShift(expr), data);
      break;
    }
    case ExpressionId.SIMDLoad: {
      visit(binaryen._BinaryenSIMDLoadGetPtr(expr), data);
      break;
    }
    case ExpressionId.MemoryInit: {
      visit(binaryen._BinaryenMemoryInitGetDest(expr), data);
      visit(binaryen._BinaryenMemoryInitGetOffset(expr), data);
      visit(binaryen._BinaryenMemoryInitGetSize(expr), data);
      break;
    }
    case ExpressionId.DataDrop: {
      break;
    }
    case ExpressionId.MemoryCopy: {
      visit(binaryen._BinaryenMemoryCopyGetDest(expr), data);
      visit(binaryen._BinaryenMemoryCopyGetSource(expr), data);
      visit(binaryen._BinaryenMemoryCopyGetSize(expr), data);
      break;
    }
    case ExpressionId.MemoryFill: {
      visit(binaryen._BinaryenMemoryFillGetDest(expr), data);
      visit(binaryen._BinaryenMemoryFillGetValue(expr), data);
      visit(binaryen._BinaryenMemoryFillGetSize(expr), data);
      break;
    }
    case ExpressionId.Push: {
      visit(binaryen._BinaryenPushGetValue(expr), data);
      break;
    }
    case ExpressionId.Pop: {
      break;
    }
    case ExpressionId.RefNull: {
      break;
    }
    case ExpressionId.RefIsNull: {
      visit(binaryen._BinaryenRefIsNullGetValue(expr), data);
      break;
    }
    case ExpressionId.RefFunc: {
      break;
    }
    case ExpressionId.Try: {
      visit(binaryen._BinaryenTryGetBody(expr), data);
      visit(binaryen._BinaryenTryGetCatchBody(expr), data);
      break;
    }
    case ExpressionId.Throw: {
      for (let i = 0, n = binaryen._BinaryenThrowGetNumOperands(expr); i < n; ++i) {
        visit(binaryen._BinaryenThrowGetOperand(expr, i), data);
      }
      break;
    }
    case ExpressionId.Rethrow: {
      visit(binaryen._BinaryenRethrowGetExnref(expr), data);
      break;
    }
    case ExpressionId.BrOnExn: {
      visit(binaryen._BinaryenBrOnExnGetExnref(expr), data);
      break;
    }
    default: assert(false);
  }
  return true;
}
