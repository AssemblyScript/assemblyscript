/**
 * A thin wrapper around Binaryen's C-API.
 * @module module
 *//***/

import { Target } from "./common";

export type ModuleRef = usize;
export type FunctionTypeRef = usize;
export type FunctionRef = usize;
export type ExpressionRef = usize;
export type GlobalRef = usize;
export type EventRef = usize;
export type ImportRef = usize;
export type ExportRef = usize;
export type RelooperRef = usize;
export type RelooperBlockRef = usize;
export type Index = u32;

export enum NativeType {
  None = _BinaryenTypeNone(),
  I32  = _BinaryenTypeInt32(),
  I64  = _BinaryenTypeInt64(),
  F32  = _BinaryenTypeFloat32(),
  F64  = _BinaryenTypeFloat64(),
  V128 = _BinaryenTypeVec128(),
  Anyref = _BinaryenTypeAnyref(),
  Exnref = _BinaryenTypeExnref(),
  Unreachable = _BinaryenTypeUnreachable(),
  Auto = _BinaryenTypeAuto()
}

export enum FeatureFlags {
  MVP = _BinaryenFeatureMVP(),
  Atomics = _BinaryenFeatureAtomics(),
  MutableGloabls = _BinaryenFeatureMutableGlobals(),
  NontrappingFPToInt = _BinaryenFeatureNontrappingFPToInt(),
  SIMD128 = _BinaryenFeatureSIMD128(),
  BulkMemory = _BinaryenFeatureBulkMemory(),
  SignExt = _BinaryenFeatureSignExt(),
  ExceptionHandling = _BinaryenFeatureExceptionHandling(),
  TailCall = _BinaryenFeatureTailCall(),
  ReferenceTypes = _BinaryenFeatureReferenceTypes(),
  All = _BinaryenFeatureAll()
}

export enum ExpressionId {
  Invalid = _BinaryenInvalidId(),
  Block = _BinaryenBlockId(),
  If = _BinaryenIfId(),
  Loop = _BinaryenLoopId(),
  Break = _BinaryenBreakId(),
  Switch = _BinaryenSwitchId(),
  Call = _BinaryenCallId(),
  CallIndirect = _BinaryenCallIndirectId(),
  LocalGet = _BinaryenLocalGetId(),
  LocalSet = _BinaryenLocalSetId(),
  GlobalGet = _BinaryenGlobalGetId(),
  GlobalSet = _BinaryenGlobalSetId(),
  Load = _BinaryenLoadId(),
  Store = _BinaryenStoreId(),
  Const = _BinaryenConstId(),
  Unary = _BinaryenUnaryId(),
  Binary = _BinaryenBinaryId(),
  Select = _BinaryenSelectId(),
  Drop = _BinaryenDropId(),
  Return = _BinaryenReturnId(),
  Host = _BinaryenHostId(),
  Nop = _BinaryenNopId(),
  Unreachable = _BinaryenUnreachableId(),
  AtomicCmpxchg = _BinaryenAtomicCmpxchgId(),
  AtomicRMW = _BinaryenAtomicRMWId(),
  AtomicWait = _BinaryenAtomicWaitId(),
  AtomicNotify = _BinaryenAtomicNotifyId(),
  AtomicFence = _BinaryenAtomicFenceId(),
  SIMDExtract = _BinaryenSIMDExtractId(),
  SIMDReplace = _BinaryenSIMDReplaceId(),
  SIMDShuffle = _BinaryenSIMDShuffleId(),
  SIMDTernary = _BinaryenSIMDTernaryId(),
  SIMDShift = _BinaryenSIMDShiftId(),
  SIMDLoad = _BinaryenSIMDLoadId(),
  MemoryInit = _BinaryenMemoryInitId(),
  DataDrop = _BinaryenDataDropId(),
  MemoryCopy = _BinaryenMemoryCopyId(),
  MemoryFill = _BinaryenMemoryFillId(),
  Try = _BinaryenTryId(),
  Throw = _BinaryenThrowId(),
  Rethrow = _BinaryenRethrowId(),
  BrOnExn = _BinaryenBrOnExnId(),
  Push = _BinaryenPushId(),
  Pop = _BinaryenPopId()
}

export enum UnaryOp {
  ClzI32 = _BinaryenClzInt32(),
  CtzI32 = _BinaryenCtzInt32(),
  PopcntI32 = _BinaryenPopcntInt32(),
  NegF32 = _BinaryenNegFloat32(),
  AbsF32 = _BinaryenAbsFloat32(),
  CeilF32 = _BinaryenCeilFloat32(),
  FloorF32 = _BinaryenFloorFloat32(),
  TruncF32 = _BinaryenTruncFloat32(),
  NearestF32 = _BinaryenNearestFloat32(),
  SqrtF32 = _BinaryenSqrtFloat32(),
  EqzI32 = _BinaryenEqZInt32(),
  ClzI64 = _BinaryenClzInt64(),
  CtzI64 = _BinaryenCtzInt64(),
  PopcntI64 = _BinaryenPopcntInt64(),
  NegF64 = _BinaryenNegFloat64(),
  AbsF64 = _BinaryenAbsFloat64(),
  CeilF64 = _BinaryenCeilFloat64(),
  FloorF64 = _BinaryenFloorFloat64(),
  TruncF64 = _BinaryenTruncFloat64(),
  NearestF64 = _BinaryenNearestFloat64(),
  SqrtF64 = _BinaryenSqrtFloat64(),
  EqzI64 = _BinaryenEqZInt64(),
  ExtendI32 = _BinaryenExtendSInt32(),
  ExtendU32 = _BinaryenExtendUInt32(),
  WrapI64 = _BinaryenWrapInt64(),
  TruncF32ToI32 = _BinaryenTruncSFloat32ToInt32(),
  TruncF32ToI64 = _BinaryenTruncSFloat32ToInt64(),
  TruncF32ToU32 = _BinaryenTruncUFloat32ToInt32(),
  TruncF32ToU64 = _BinaryenTruncUFloat32ToInt64(),
  TruncF64ToI32 = _BinaryenTruncSFloat64ToInt32(),
  TruncF64ToI64 = _BinaryenTruncSFloat64ToInt64(),
  TruncF64ToU32 = _BinaryenTruncUFloat64ToInt32(),
  TruncF64ToU64 = _BinaryenTruncUFloat64ToInt64(),
  ReinterpretF32 = _BinaryenReinterpretFloat32(),
  ReinterpretF64 = _BinaryenReinterpretFloat64(),
  ConvertI32ToF32 = _BinaryenConvertSInt32ToFloat32(),
  ConvertI32ToF64 = _BinaryenConvertSInt32ToFloat64(),
  ConvertU32ToF32 = _BinaryenConvertUInt32ToFloat32(),
  ConvertU32ToF64 = _BinaryenConvertUInt32ToFloat64(),
  ConvertI64ToF32 = _BinaryenConvertSInt64ToFloat32(),
  ConvertI64ToF64 = _BinaryenConvertSInt64ToFloat64(),
  ConvertU64ToF32 = _BinaryenConvertUInt64ToFloat32(),
  ConvertU64ToF64 = _BinaryenConvertUInt64ToFloat64(),
  PromoteF32 = _BinaryenPromoteFloat32(),
  DemoteF64 = _BinaryenDemoteFloat64(),
  ReinterpretI32 = _BinaryenReinterpretInt32(),
  ReinterpretI64 = _BinaryenReinterpretInt64(),

  // see: https://github.com/WebAssembly/sign-extension-ops
  ExtendI8ToI32 = _BinaryenExtendS8Int32(),
  ExtendI16ToI32 = _BinaryenExtendS16Int32(),
  ExtendI8ToI64 = _BinaryenExtendS8Int64(),
  ExtendI16ToI64 = _BinaryenExtendS16Int64(),
  ExtendI32ToI64 = _BinaryenExtendS32Int64(),

  // see: https://github.com/WebAssembly/nontrapping-float-to-int-conversions
  TruncF32ToI32Sat = _BinaryenTruncSatSFloat32ToInt32(),
  TruncF32ToU32Sat = _BinaryenTruncSatUFloat32ToInt32(),
  TruncF64ToI32Sat = _BinaryenTruncSatSFloat64ToInt32(),
  TruncF64ToU32Sat = _BinaryenTruncSatUFloat64ToInt32(),
  TruncF32ToI64Sat = _BinaryenTruncSatSFloat32ToInt64(),
  TruncF32ToU64Sat = _BinaryenTruncSatUFloat32ToInt64(),
  TruncF64ToI64Sat = _BinaryenTruncSatSFloat64ToInt64(),
  TruncF64ToU64Sat = _BinaryenTruncSatUFloat64ToInt64(),

  // see: https://github.com/WebAssembly/simd
  SplatI8x16 = _BinaryenSplatVecI8x16(),
  SplatI16x8 = _BinaryenSplatVecI16x8(),
  SplatI32x4 = _BinaryenSplatVecI32x4(),
  SplatI64x2 = _BinaryenSplatVecI64x2(),
  SplatF32x4 = _BinaryenSplatVecF32x4(),
  SplatF64x2 = _BinaryenSplatVecF64x2(),
  NotV128 = _BinaryenNotVec128(),
  NegI8x16 = _BinaryenNegVecI8x16(),
  AnyTrueI8x16 = _BinaryenAnyTrueVecI8x16(),
  AllTrueI8x16 = _BinaryenAllTrueVecI8x16(),
  NegI16x8 = _BinaryenNegVecI16x8(),
  AnyTrueI16x8 = _BinaryenAnyTrueVecI16x8(),
  AllTrueI16x8 = _BinaryenAllTrueVecI16x8(),
  NegI32x4 = _BinaryenNegVecI32x4(),
  AnyTrueI32x4 = _BinaryenAnyTrueVecI32x4(),
  AllTrueI32x4 = _BinaryenAllTrueVecI32x4(),
  NegI64x2 = _BinaryenNegVecI64x2(),
  AnyTrueI64x2 = _BinaryenAnyTrueVecI64x2(),
  AllTrueI64x2 = _BinaryenAllTrueVecI64x2(),
  AbsF32x4 = _BinaryenAbsVecF32x4(),
  NegF32x4 = _BinaryenNegVecF32x4(),
  SqrtF32x4 = _BinaryenSqrtVecF32x4(),
  AbsF64x2 = _BinaryenAbsVecF64x2(),
  NegF64x2 = _BinaryenNegVecF64x2(),
  SqrtF64x2 = _BinaryenSqrtVecF64x2(),
  TruncSatF32x4ToI32x4 = _BinaryenTruncSatSVecF32x4ToVecI32x4(),
  TruncSatF32x4ToU32x4 = _BinaryenTruncSatUVecF32x4ToVecI32x4(),
  TruncSatF64x2ToI64x2 = _BinaryenTruncSatSVecF64x2ToVecI64x2(),
  TruncSatF64x2ToU64x2 = _BinaryenTruncSatUVecF64x2ToVecI64x2(),
  ConvertI32x4ToF32x4 = _BinaryenConvertSVecI32x4ToVecF32x4(),
  ConvertU32x4ToF32x4 = _BinaryenConvertUVecI32x4ToVecF32x4(),
  ConvertI64x2ToF64x2 = _BinaryenConvertSVecI64x2ToVecF64x2(),
  ConvertU64x2ToF64x2 = _BinaryenConvertUVecI64x2ToVecF64x2(),
  WidenLowI8x16ToI16x8 = _BinaryenWidenLowSVecI8x16ToVecI16x8(),
  WidenLowU8x16ToU16x8 = _BinaryenWidenLowUVecI8x16ToVecI16x8(),
  WidenHighI8x16ToI16x8 = _BinaryenWidenHighSVecI8x16ToVecI16x8(),
  WidenHighU8x16ToU16x8 = _BinaryenWidenHighUVecI8x16ToVecI16x8(),
  WidenLowI16x8ToI32x4 = _BinaryenWidenLowSVecI16x8ToVecI32x4(),
  WidenLowU16x8ToU32x4 = _BinaryenWidenLowUVecI16x8ToVecI32x4(),
  WidenHighI16x8ToI32x4 = _BinaryenWidenHighSVecI16x8ToVecI32x4(),
  WidenHighU16x8ToU32x4 = _BinaryenWidenHighUVecI16x8ToVecI32x4()
}

export enum BinaryOp {
  AddI32 = _BinaryenAddInt32(),
  SubI32 = _BinaryenSubInt32(),
  MulI32 = _BinaryenMulInt32(),
  DivI32 = _BinaryenDivSInt32(),
  DivU32 = _BinaryenDivUInt32(),
  RemI32 = _BinaryenRemSInt32(),
  RemU32 = _BinaryenRemUInt32(),
  AndI32 = _BinaryenAndInt32(),
  OrI32 = _BinaryenOrInt32(),
  XorI32 = _BinaryenXorInt32(),
  ShlI32 = _BinaryenShlInt32(),
  ShrU32 = _BinaryenShrUInt32(),
  ShrI32 = _BinaryenShrSInt32(),
  RotlI32 = _BinaryenRotLInt32(),
  RotrI32 = _BinaryenRotRInt32(),
  EqI32 = _BinaryenEqInt32(),
  NeI32 = _BinaryenNeInt32(),
  LtI32 = _BinaryenLtSInt32(),
  LtU32 = _BinaryenLtUInt32(),
  LeI32 = _BinaryenLeSInt32(),
  LeU32 = _BinaryenLeUInt32(),
  GtI32 = _BinaryenGtSInt32(),
  GtU32 = _BinaryenGtUInt32(),
  GeI32 = _BinaryenGeSInt32(),
  GeU32 = _BinaryenGeUInt32(),
  AddI64 = _BinaryenAddInt64(),
  SubI64 = _BinaryenSubInt64(),
  MulI64 = _BinaryenMulInt64(),
  DivI64 = _BinaryenDivSInt64(),
  DivU64 = _BinaryenDivUInt64(),
  RemI64 = _BinaryenRemSInt64(),
  RemU64 = _BinaryenRemUInt64(),
  AndI64 = _BinaryenAndInt64(),
  OrI64 = _BinaryenOrInt64(),
  XorI64 = _BinaryenXorInt64(),
  ShlI64 = _BinaryenShlInt64(),
  ShrU64 = _BinaryenShrUInt64(),
  ShrI64 = _BinaryenShrSInt64(),
  RotlI64 = _BinaryenRotLInt64(),
  RotrI64 = _BinaryenRotRInt64(),
  EqI64 = _BinaryenEqInt64(),
  NeI64 = _BinaryenNeInt64(),
  LtI64 = _BinaryenLtSInt64(),
  LtU64 = _BinaryenLtUInt64(),
  LeI64 = _BinaryenLeSInt64(),
  LeU64 = _BinaryenLeUInt64(),
  GtI64 = _BinaryenGtSInt64(),
  GtU64 = _BinaryenGtUInt64(),
  GeI64 = _BinaryenGeSInt64(),
  GeU64 = _BinaryenGeUInt64(),
  AddF32 = _BinaryenAddFloat32(),
  SubF32 = _BinaryenSubFloat32(),
  MulF32 = _BinaryenMulFloat32(),
  DivF32 = _BinaryenDivFloat32(),
  CopysignF32 = _BinaryenCopySignFloat32(),
  MinF32 = _BinaryenMinFloat32(),
  MaxF32 = _BinaryenMaxFloat32(),
  EqF32 = _BinaryenEqFloat32(),
  NeF32 = _BinaryenNeFloat32(),
  LtF32 = _BinaryenLtFloat32(),
  LeF32 = _BinaryenLeFloat32(),
  GtF32 = _BinaryenGtFloat32(),
  GeF32 = _BinaryenGeFloat32(),
  AddF64 = _BinaryenAddFloat64(),
  SubF64 = _BinaryenSubFloat64(),
  MulF64 = _BinaryenMulFloat64(),
  DivF64 = _BinaryenDivFloat64(),
  CopysignF64 = _BinaryenCopySignFloat64(),
  MinF64 = _BinaryenMinFloat64(),
  MaxF64 = _BinaryenMaxFloat64(),
  EqF64 = _BinaryenEqFloat64(),
  NeF64 = _BinaryenNeFloat64(),
  LtF64 = _BinaryenLtFloat64(),
  LeF64 = _BinaryenLeFloat64(),
  GtF64 = _BinaryenGtFloat64(),
  GeF64 = _BinaryenGeFloat64(),

  // see: https://github.com/WebAssembly/simd
  EqI8x16 = _BinaryenEqVecI8x16(),
  NeI8x16 = _BinaryenNeVecI8x16(),
  LtI8x16 = _BinaryenLtSVecI8x16(),
  LtU8x16 = _BinaryenLtUVecI8x16(),
  LeI8x16 = _BinaryenLeSVecI8x16(),
  LeU8x16 = _BinaryenLeUVecI8x16(),
  GtI8x16 = _BinaryenGtSVecI8x16(),
  GtU8x16 = _BinaryenGtUVecI8x16(),
  GeI8x16 = _BinaryenGeSVecI8x16(),
  GeU8x16 = _BinaryenGeUVecI8x16(),
  EqI16x8 = _BinaryenEqVecI16x8(),
  NeI16x8 = _BinaryenNeVecI16x8(),
  LtI16x8 = _BinaryenLtSVecI16x8(),
  LtU16x8 = _BinaryenLtUVecI16x8(),
  LeI16x8 = _BinaryenLeSVecI16x8(),
  LeU16x8 = _BinaryenLeUVecI16x8(),
  GtI16x8 = _BinaryenGtSVecI16x8(),
  GtU16x8 = _BinaryenGtUVecI16x8(),
  GeI16x8 = _BinaryenGeSVecI16x8(),
  GeU16x8 = _BinaryenGeUVecI16x8(),
  EqI32x4 = _BinaryenEqVecI32x4(),
  NeI32x4 = _BinaryenNeVecI32x4(),
  LtI32x4 = _BinaryenLtSVecI32x4(),
  LtU32x4 = _BinaryenLtUVecI32x4(),
  LeI32x4 = _BinaryenLeSVecI32x4(),
  LeU32x4 = _BinaryenLeUVecI32x4(),
  GtI32x4 = _BinaryenGtSVecI32x4(),
  GtU32x4 = _BinaryenGtUVecI32x4(),
  GeI32x4 = _BinaryenGeSVecI32x4(),
  GeU32x4 = _BinaryenGeUVecI32x4(),
  EqF32x4 = _BinaryenEqVecF32x4(),
  NeF32x4 = _BinaryenNeVecF32x4(),
  LtF32x4 = _BinaryenLtVecF32x4(),
  LeF32x4 = _BinaryenLeVecF32x4(),
  GtF32x4 = _BinaryenGtVecF32x4(),
  GeF32x4 = _BinaryenGeVecF32x4(),
  EqF64x2 = _BinaryenEqVecF64x2(),
  NeF64x2 = _BinaryenNeVecF64x2(),
  LtF64x2 = _BinaryenLtVecF64x2(),
  LeF64x2 = _BinaryenLeVecF64x2(),
  GtF64x2 = _BinaryenGtVecF64x2(),
  GeF64x2 = _BinaryenGeVecF64x2(),
  AndV128 = _BinaryenAndVec128(),
  OrV128 = _BinaryenOrVec128(),
  XorV128 = _BinaryenXorVec128(),
  AndNotV128 = _BinaryenAndNotVec128(),
  AddI8x16 = _BinaryenAddVecI8x16(),
  AddSatI8x16 = _BinaryenAddSatSVecI8x16(),
  AddSatU8x16 = _BinaryenAddSatUVecI8x16(),
  SubI8x16 = _BinaryenSubVecI8x16(),
  SubSatI8x16 = _BinaryenSubSatSVecI8x16(),
  SubSatU8x16 = _BinaryenSubSatUVecI8x16(),
  MulI8x16 = _BinaryenMulVecI8x16(),
  MinI8x16 = _BinaryenMinSVecI8x16(),
  MinU8x16 = _BinaryenMinUVecI8x16(),
  MaxI8x16 = _BinaryenMaxSVecI8x16(),
  MaxU8x16 = _BinaryenMaxUVecI8x16(),
  AddI16x8 = _BinaryenAddVecI16x8(),
  AddSatI16x8 = _BinaryenAddSatSVecI16x8(),
  AddSatU16x8 = _BinaryenAddSatUVecI16x8(),
  SubI16x8 = _BinaryenSubVecI16x8(),
  SubSatI16x8 = _BinaryenSubSatSVecI16x8(),
  SubSatU16x8 = _BinaryenSubSatUVecI16x8(),
  MulI16x8 = _BinaryenMulVecI16x8(),
  MinI16x8 = _BinaryenMinSVecI16x8(),
  MinU16x8 = _BinaryenMinUVecI16x8(),
  MaxI16x8 = _BinaryenMaxSVecI16x8(),
  MaxU16x8 = _BinaryenMaxUVecI16x8(),
  AddI32x4 = _BinaryenAddVecI32x4(),
  SubI32x4 = _BinaryenSubVecI32x4(),
  MulI32x4 = _BinaryenMulVecI32x4(),
  MinI32x4 = _BinaryenMinSVecI32x4(),
  MinU32x4 = _BinaryenMinUVecI32x4(),
  MaxI32x4 = _BinaryenMaxSVecI32x4(),
  MaxU32x4 = _BinaryenMaxUVecI32x4(),
  DotI16x8 = _BinaryenDotSVecI16x8ToVecI32x4(),
  AddI64x2 = _BinaryenAddVecI64x2(),
  SubI64x2 = _BinaryenSubVecI64x2(),
  AddF32x4 = _BinaryenAddVecF32x4(),
  SubF32x4 = _BinaryenSubVecF32x4(),
  MulF32x4 = _BinaryenMulVecF32x4(),
  DivF32x4 = _BinaryenDivVecF32x4(),
  MinF32x4 = _BinaryenMinVecF32x4(),
  MaxF32x4 = _BinaryenMaxVecF32x4(),
  AddF64x2 = _BinaryenAddVecF64x2(),
  SubF64x2 = _BinaryenSubVecF64x2(),
  MulF64x2 = _BinaryenMulVecF64x2(),
  DivF64x2 = _BinaryenDivVecF64x2(),
  MinF64x2 = _BinaryenMinVecF64x2(),
  MaxF64x2 = _BinaryenMaxVecF64x2(),
  NarrowI16x8ToI8x16 = _BinaryenNarrowSVecI16x8ToVecI8x16(),
  NarrowU16x8ToU8x16 = _BinaryenNarrowUVecI16x8ToVecI8x16(),
  NarrowI32x4ToI16x8 = _BinaryenNarrowSVecI32x4ToVecI16x8(),
  NarrowU32x4ToU16x8 = _BinaryenNarrowUVecI32x4ToVecI16x8(),
  SwizzleV8x16 = _BinaryenSwizzleVec8x16()
}

export enum HostOp {
  MemorySize = _BinaryenMemorySize(),
  MemoryGrow = _BinaryenMemoryGrow(),
}

export enum AtomicRMWOp {
  Add = _BinaryenAtomicRMWAdd(),
  Sub = _BinaryenAtomicRMWSub(),
  And = _BinaryenAtomicRMWAnd(),
  Or = _BinaryenAtomicRMWOr(),
  Xor = _BinaryenAtomicRMWXor(),
  Xchg = _BinaryenAtomicRMWXchg()
}

export enum SIMDExtractOp {
  ExtractLaneI8x16 = _BinaryenExtractLaneSVecI8x16(),
  ExtractLaneU8x16 = _BinaryenExtractLaneUVecI8x16(),
  ExtractLaneI16x8 = _BinaryenExtractLaneSVecI16x8(),
  ExtractLaneU16x8 = _BinaryenExtractLaneUVecI16x8(),
  ExtractLaneI32x4 = _BinaryenExtractLaneVecI32x4(),
  ExtractLaneI64x2 = _BinaryenExtractLaneVecI64x2(),
  ExtractLaneF32x4 = _BinaryenExtractLaneVecF32x4(),
  ExtractLaneF64x2 = _BinaryenExtractLaneVecF64x2(),
}

export enum SIMDReplaceOp {
  ReplaceLaneI8x16 = _BinaryenReplaceLaneVecI8x16(),
  ReplaceLaneI16x8 = _BinaryenReplaceLaneVecI16x8(),
  ReplaceLaneI32x4 = _BinaryenReplaceLaneVecI32x4(),
  ReplaceLaneI64x2 = _BinaryenReplaceLaneVecI64x2(),
  ReplaceLaneF32x4 = _BinaryenReplaceLaneVecF32x4(),
  ReplaceLaneF64x2 = _BinaryenReplaceLaneVecF64x2()
}

export enum SIMDShiftOp {
  ShlI8x16 = _BinaryenShlVecI8x16(),
  ShrI8x16 = _BinaryenShrSVecI8x16(),
  ShrU8x16 = _BinaryenShrUVecI8x16(),
  ShlI16x8 = _BinaryenShlVecI16x8(),
  ShrI16x8 = _BinaryenShrSVecI16x8(),
  ShrU16x8 = _BinaryenShrUVecI16x8(),
  ShlI32x4 = _BinaryenShlVecI32x4(),
  ShrI32x4 = _BinaryenShrSVecI32x4(),
  ShrU32x4 = _BinaryenShrUVecI32x4(),
  ShlI64x2 = _BinaryenShlVecI64x2(),
  ShrI64x2 = _BinaryenShrSVecI64x2(),
  ShrU64x2 = _BinaryenShrUVecI64x2()
}

export enum SIMDTernaryOp {
  Bitselect = _BinaryenBitselectVec128(),
  QFMAF32x4 = _BinaryenQFMAVecF32x4(),
  QFMSF32x4 = _BinaryenQFMSVecF32x4(),
  QFMAF64x2 = _BinaryenQFMAVecF64x2(),
  QFMSF64x2 = _BinaryenQFMSVecF64x2()
}

export enum SIMDLoadOp {
  LoadSplatV8x16 = _BinaryenLoadSplatVec8x16(),
  LoadSplatV16x8 = _BinaryenLoadSplatVec16x8(),
  LoadSplatV32x4 = _BinaryenLoadSplatVec32x4(),
  LoadSplatV64x2 = _BinaryenLoadSplatVec64x2(),
  LoadI8ToI16x8 = _BinaryenLoadExtSVec8x8ToVecI16x8(),
  LoadU8ToU16x8 = _BinaryenLoadExtUVec8x8ToVecI16x8(),
  LoadI16ToI32x4 = _BinaryenLoadExtSVec16x4ToVecI32x4(),
  LoadU16ToU32x4 = _BinaryenLoadExtUVec16x4ToVecI32x4(),
  LoadI32ToI64x2 = _BinaryenLoadExtSVec32x2ToVecI64x2(),
  LoadU32ToU64x2 = _BinaryenLoadExtUVec32x2ToVecI64x2()
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
    module.ref = _BinaryenModuleCreate();
    module.lit = memory.allocate(_BinaryenSizeofLiteral());
    return module;
  }

  static createFrom(buffer: Uint8Array): Module {
    var cArr = allocU8Array(buffer);
    try {
      let module = new Module();
      module.ref = _BinaryenModuleRead(cArr, buffer.length);
      module.lit = memory.allocate(_BinaryenSizeofLiteral());
      return module;
    } finally {
      memory.free(changetype<usize>(cArr));
    }
  }

  private constructor() { }

  // constants

  i32(value: i32): ExpressionRef {
    var out = this.lit;
    _BinaryenLiteralInt32(out, value);
    return _BinaryenConst(this.ref, out);
  }

  i64(valueLow: i32, valueHigh: i32 = 0): ExpressionRef {
    var out = this.lit;
    _BinaryenLiteralInt64(out, valueLow, valueHigh);
    return _BinaryenConst(this.ref, out);
  }

  f32(value: f32): ExpressionRef {
    var out = this.lit;
    _BinaryenLiteralFloat32(out, value);
    return _BinaryenConst(this.ref, out);
  }

  f64(value: f64): ExpressionRef {
    var out = this.lit;
    _BinaryenLiteralFloat64(out, value);
    return _BinaryenConst(this.ref, out);
  }

  v128(bytes: Uint8Array): ExpressionRef {
    assert(bytes.length == 16);
    var out = this.lit;
    for (let i = 0; i < 16; ++i) store<u8>(out + i, bytes[i]);
    _BinaryenLiteralVec128(out, out);
    return _BinaryenConst(this.ref, out);
  }

  // expressions

  unary(
    op: UnaryOp,
    expr: ExpressionRef
  ): ExpressionRef {
    return _BinaryenUnary(this.ref, op, expr);
  }

  binary(
    op: BinaryOp,
    left: ExpressionRef,
    right: ExpressionRef
  ): ExpressionRef {
    return _BinaryenBinary(this.ref, op, left, right);
  }

  host(
    op: HostOp,
    name: string | null = null,
    operands: ExpressionRef[] | null = null
  ): ExpressionRef {
    var cStr = this.allocStringCached(name);
    var cArr = allocPtrArray(operands);
    try {
      return _BinaryenHost(this.ref, op, cStr, cArr, operands ? (<ExpressionRef[]>operands).length : 0);
    } finally {
      memory.free(cArr);
    }
  }

  local_get(
    index: i32,
    type: NativeType
  ): ExpressionRef {
    return _BinaryenLocalGet(this.ref, index, type);
  }

  local_tee(
    index: i32,
    value: ExpressionRef
  ): ExpressionRef {
    return _BinaryenLocalTee(this.ref, index, value);
  }

  global_get(
    name: string,
    type: NativeType
  ): ExpressionRef {
    var cStr = this.allocStringCached(name);
    return _BinaryenGlobalGet(this.ref, cStr, type);
  }

  load(
    bytes: Index,
    signed: bool,
    ptr: ExpressionRef,
    type: NativeType,
    offset: Index = 0,
    align: Index = bytes // naturally aligned by default
  ): ExpressionRef {
    return _BinaryenLoad(this.ref, bytes, signed ? 1 : 0, offset, align, type, ptr);
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
    return _BinaryenStore(this.ref, bytes, offset, align, ptr, value, type);
  }

  atomic_load(
    bytes: Index,
    ptr: ExpressionRef,
    type: NativeType,
    offset: Index = 0
  ): ExpressionRef {
    return _BinaryenAtomicLoad(this.ref, bytes, offset, type, ptr);
  }

  atomic_store(
    bytes: Index,
    ptr: ExpressionRef,
    value: ExpressionRef,
    type: NativeType,
    offset: Index = 0
  ): ExpressionRef {
    return _BinaryenAtomicStore(this.ref, bytes, offset, ptr, value, type);
  }

  atomic_rmw(
    op: AtomicRMWOp,
    bytes: Index,
    offset: Index,
    ptr: ExpressionRef,
    value: ExpressionRef,
    type: NativeType
  ): ExpressionRef {
    return _BinaryenAtomicRMW(this.ref, op, bytes, offset, ptr, value, type);
  }

  atomic_cmpxchg(
    bytes: Index,
    offset: Index,
    ptr: ExpressionRef,
    expected: ExpressionRef,
    replacement: ExpressionRef,
    type: NativeType
  ): ExpressionRef {
    return _BinaryenAtomicCmpxchg(this.ref, bytes, offset, ptr, expected, replacement, type);
  }

  atomic_wait(
    ptr: ExpressionRef,
    expected: ExpressionRef,
    timeout: ExpressionRef,
    expectedType: NativeType
  ): ExpressionRef {
    return _BinaryenAtomicWait(this.ref, ptr, expected, timeout, expectedType);
  }

  atomic_notify(
    ptr: ExpressionRef,
    notifyCount: ExpressionRef
  ): ExpressionRef {
    return _BinaryenAtomicNotify(this.ref, ptr, notifyCount);
  }

  atomic_fence(): ExpressionRef {
    return _BinaryenAtomicFence(this.ref);
  }

  // statements

  local_set(
    index: Index,
    value: ExpressionRef
  ): ExpressionRef {
    return _BinaryenLocalSet(this.ref, index, value);
  }

  global_set(
    name: string,
    value: ExpressionRef
  ): ExpressionRef {
    var cStr = this.allocStringCached(name);
    return _BinaryenGlobalSet(this.ref, cStr, value);
  }

  block(
    label: string | null,
    children: ExpressionRef[],
    type: NativeType = NativeType.None
  ): ExpressionRef {
    var cStr = this.allocStringCached(label);
    var cArr = allocPtrArray(children);
    try {
      return _BinaryenBlock(this.ref, cStr, cArr, children.length, type);
    } finally {
      memory.free(cArr);
    }
  }

  br(
    label: string | null,
    condition: ExpressionRef = 0,
    value: ExpressionRef = 0
  ): ExpressionRef {
    var cStr = this.allocStringCached(label);
    return _BinaryenBreak(this.ref, cStr, condition, value);
  }

  drop(
    expression: ExpressionRef
  ): ExpressionRef {
    return _BinaryenDrop(this.ref, expression);
  }

  loop(
    label: string | null,
    body: ExpressionRef
  ): ExpressionRef {
    var cStr = this.allocStringCached(label);
    return _BinaryenLoop(this.ref, cStr, body);
  }

  if(
    condition: ExpressionRef,
    ifTrue: ExpressionRef,
    ifFalse: ExpressionRef = 0
  ): ExpressionRef {
    return _BinaryenIf(this.ref, condition, ifTrue, ifFalse);
  }

  nop(): ExpressionRef {
    return _BinaryenNop(this.ref);
  }

  return(
    expression: ExpressionRef = 0
  ): ExpressionRef {
    return _BinaryenReturn(this.ref, expression);
  }

  select(
    ifTrue: ExpressionRef,
    ifFalse: ExpressionRef,
    condition: ExpressionRef
  ): ExpressionRef {
    return _BinaryenSelect(this.ref, condition, ifTrue, ifFalse);
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
    try {
      return _BinaryenSwitch(this.ref, cArr, numNames, cStr, condition, value);
    } finally {
      memory.free(cArr);
    }
  }

  call(
    target: string,
    operands: ExpressionRef[] | null,
    returnType: NativeType,
    isReturn: bool = false
  ): ExpressionRef {
    var cStr = this.allocStringCached(target);
    var cArr = allocPtrArray(operands);
    try {
      return isReturn
        ? _BinaryenReturnCall(this.ref, cStr, cArr, operands && operands.length || 0, returnType)
        : _BinaryenCall(this.ref, cStr, cArr, operands && operands.length || 0, returnType);
    } finally {
      memory.free(cArr);
    }
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
    typeName: string,
    isReturn: bool = false
  ): ExpressionRef {
    var cStr = this.allocStringCached(typeName);
    var cArr = allocPtrArray(operands);
    try {
      return isReturn
        ? _BinaryenReturnCallIndirect(this.ref, index, cArr, operands && operands.length || 0, cStr)
        : _BinaryenCallIndirect(this.ref, index, cArr, operands && operands.length || 0, cStr);
    } finally {
      memory.free(cArr);
    }
  }

  return_call_indirect(
    index: ExpressionRef,
    operands: ExpressionRef[] | null,
    typeName: string,
  ): ExpressionRef {
    return this.call_indirect(index, operands, typeName, true);
  }

  unreachable(): ExpressionRef {
    return _BinaryenUnreachable(this.ref);
  }

  // bulk memory

  memory_copy(
    dest: ExpressionRef,
    source: ExpressionRef,
    size: ExpressionRef
  ): ExpressionRef {
    return _BinaryenMemoryCopy(this.ref, dest, source, size);
  }

  memory_fill(
    dest: ExpressionRef,
    value: ExpressionRef,
    size: ExpressionRef
  ): ExpressionRef {
    return _BinaryenMemoryFill(this.ref, dest, value, size);
  }

  // exception handling

  try(
    body: ExpressionRef,
    catchBody: ExpressionRef
  ): ExpressionRef {
    return _BinaryenTry(this.ref, body, catchBody);
  }

  throw(
    eventName: string,
    operands: ExpressionRef[]
  ): ExpressionRef {
    var cStr = this.allocStringCached(eventName);
    var cArr = allocPtrArray(operands);
    try {
      return _BinaryenThrow(this.ref, cStr, cArr, operands.length);
    } finally {
      memory.free(cArr);
    }
  }

  rethrow(
    exnref: ExpressionRef
  ): ExpressionRef {
    return _BinaryenRethrow(this.ref, exnref);
  }

  br_on_exn(
    name: string,
    eventName: string,
    exnref: ExpressionRef
  ): ExpressionRef {
    var cStr1 = this.allocStringCached(name);
    var cStr2 = this.allocStringCached(eventName);
    return _BinaryenBrOnExn(this.ref, cStr1, cStr2, exnref);
  }

  // push / pop (multi value?)

  push(
    value: ExpressionRef
  ): ExpressionRef {
    return _BinaryenPush(this.ref, value);
  }

  pop(
    type: NativeType
  ): ExpressionRef {
    return _BinaryenPop(this.ref, type);
  }

  // simd

  simd_extract(
    op: SIMDExtractOp,
    vec: ExpressionRef,
    idx: u8
  ): ExpressionRef {
    return _BinaryenSIMDExtract(this.ref, op, vec, idx);
  }

  simd_replace(
    op: SIMDReplaceOp,
    vec: ExpressionRef,
    idx: u8,
    value: ExpressionRef
  ): ExpressionRef {
    return _BinaryenSIMDReplace(this.ref, op, vec, idx, value);
  }

  simd_shuffle(
    vec1: ExpressionRef,
    vec2: ExpressionRef,
    mask: Uint8Array
  ): ExpressionRef {
    assert(mask.length == 16);
    var cArr = allocU8Array(mask);
    try {
      return _BinaryenSIMDShuffle(this.ref, vec1, vec2, cArr);
    } finally {
      memory.free(cArr);
    }
  }

  simd_ternary(
    op: SIMDTernaryOp,
    a: ExpressionRef,
    b: ExpressionRef,
    c: ExpressionRef
  ): ExpressionRef {
    return _BinaryenSIMDTernary(this.ref, op, a, b, c);
  }

  simd_shift(
    op: SIMDShiftOp,
    vec: ExpressionRef,
    shift: ExpressionRef
  ): ExpressionRef {
    return _BinaryenSIMDShift(this.ref, op, vec, shift);
  }

  simd_load(
    op: SIMDLoadOp,
    ptr: ExpressionRef,
    offset: u32,
    align: u32
  ): ExpressionRef {
    return _BinaryenSIMDLoad(this.ref, op, offset, align, ptr);
  }

  // function types

  addFunctionType(
    name: string,
    result: NativeType,
    paramTypes: NativeType[] | null
  ): FunctionTypeRef {
    var cStr = this.allocStringCached(name);
    var cArr = allocI32Array(paramTypes);
    try {
      return _BinaryenAddFunctionType(this.ref, cStr, result, cArr, paramTypes ? paramTypes.length : 0);
    } finally {
      memory.free(cArr);
    }
  }

  getFunctionTypeBySignature(
    result: NativeType,
    paramTypes: NativeType[] | null
  ): FunctionTypeRef {
    var cArr = allocI32Array(paramTypes);
    try {
      return _BinaryenGetFunctionTypeBySignature(this.ref, result, cArr, paramTypes ? paramTypes.length : 0);
    } finally {
      memory.free(cArr);
    }
  }

  removeFunctionType(name: string): void {
    var cStr = this.allocStringCached(name);
    _BinaryenRemoveFunctionType(this.ref, cStr);
  }

  // globals

  addGlobal(
    name: string,
    type: NativeType,
    mutable: bool,
    initializer: ExpressionRef
  ): GlobalRef {
    var cStr = this.allocStringCached(name);
    return _BinaryenAddGlobal(this.ref, cStr, type, mutable, initializer);
  }

  getGlobal(
    name: string
  ): GlobalRef {
    var cStr = this.allocStringCached(name);
    return _BinaryenGetGlobal(this.ref, cStr);
  }

  removeGlobal(
    name: string
  ): void {
    var cStr = this.allocStringCached(name);
    _BinaryenRemoveGlobal(this.ref, cStr);
  }

  // events

  addEvent(
    name: string,
    attribute: u32,
    type: FunctionTypeRef
  ): EventRef {
    var cStr = this.allocStringCached(name);
    return _BinaryenAddEvent(this.ref, cStr, attribute, type);
  }

  getEvent(
    name: string
  ): EventRef {
    var cStr = this.allocStringCached(name);
    return _BinaryenGetEvent(this.ref, cStr);
  }

  removeEvent(
    name: string
  ): void {
    var cStr = this.allocStringCached(name);
    _BinaryenRemoveEvent(this.ref, cStr);
  }

  // functions

  addFunction(
    name: string,
    type: FunctionTypeRef,
    varTypes: NativeType[] | null,
    body: ExpressionRef
  ): FunctionRef {
    var cStr = this.allocStringCached(name);
    var cArr = allocI32Array(varTypes);
    try {
      return _BinaryenAddFunction(this.ref, cStr, type, cArr, varTypes ? varTypes.length : 0, body);
    } finally {
      memory.free(cArr);
    }
  }

  getFunction(
    name: string
  ): FunctionRef {
    var cStr = this.allocStringCached(name);
    return _BinaryenGetFunction(this.ref, cStr);
  }

  removeFunction(name: string): void {
    var cStr = this.allocStringCached(name);
    _BinaryenRemoveFunction(this.ref, cStr);
  }

  private hasTemporaryFunction: bool = false;

  addTemporaryFunction(result: NativeType, paramTypes: NativeType[] | null, body: ExpressionRef): FunctionRef {
    this.hasTemporaryFunction = assert(!this.hasTemporaryFunction);
    var tempName = this.allocStringCached("");
    var cArr = allocI32Array(paramTypes);
    try {
      let typeRef = _BinaryenAddFunctionType(this.ref, tempName, result, cArr, paramTypes ? paramTypes.length : 0);
      return _BinaryenAddFunction(this.ref, tempName, typeRef, 0, 0, body);
    } finally {
      memory.free(cArr);
    }
  }

  removeTemporaryFunction(): void {
    this.hasTemporaryFunction = !assert(this.hasTemporaryFunction);
    var tempName = this.allocStringCached("");
    _BinaryenRemoveFunction(this.ref, tempName);
    _BinaryenRemoveFunctionType(this.ref, tempName);
  }

  setStart(func: FunctionRef): void {
    _BinaryenSetStart(this.ref, func);
  }

  // exports

  addFunctionExport(
    internalName: string,
    externalName: string
  ): ExportRef {
    var cStr1 = this.allocStringCached(internalName);
    var cStr2 = this.allocStringCached(externalName);
    return _BinaryenAddFunctionExport(this.ref, cStr1, cStr2);
  }

  addTableExport(
    internalName: string,
    externalName: string
  ): ExportRef {
    var cStr1 = this.allocStringCached(internalName);
    var cStr2 = this.allocStringCached(externalName);
    return _BinaryenAddTableExport(this.ref, cStr1, cStr2);
  }

  addMemoryExport(
    internalName: string,
    externalName: string
  ): ExportRef {
    var cStr1 = this.allocStringCached(internalName);
    var cStr2 = this.allocStringCached(externalName);
    return _BinaryenAddMemoryExport(this.ref, cStr1, cStr2);
  }

  addGlobalExport(
    internalName: string,
    externalName: string
  ): ExportRef {
    var cStr1 = this.allocStringCached(internalName);
    var cStr2 = this.allocStringCached(externalName);
    return _BinaryenAddGlobalExport(this.ref, cStr1, cStr2);
  }

  addEventExport(
    internalName: string,
    externalName: string
  ): ExportRef {
    var cStr1 = this.allocStringCached(internalName);
    var cStr2 = this.allocStringCached(externalName);
    return _BinaryenAddEventExport(this.ref, cStr1, cStr2);
  }

  removeExport(externalName: string): void {
    var cStr = this.allocStringCached(externalName);
    _BinaryenRemoveExport(this.ref, cStr);
  }

  // imports

  addFunctionImport(
    internalName: string,
    externalModuleName: string,
    externalBaseName: string,
    functionType: FunctionTypeRef
  ): void {
    var cStr1 = this.allocStringCached(internalName);
    var cStr2 = this.allocStringCached(externalModuleName);
    var cStr3 = this.allocStringCached(externalBaseName);
    _BinaryenAddFunctionImport(this.ref, cStr1, cStr2, cStr3, functionType);
  }

  addTableImport(
    internalName: string,
    externalModuleName: string,
    externalBaseName: string
  ): void {
    var cStr1 = this.allocStringCached(internalName);
    var cStr2 = this.allocStringCached(externalModuleName);
    var cStr3 = this.allocStringCached(externalBaseName);
    _BinaryenAddTableImport(this.ref, cStr1, cStr2, cStr3);
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
    _BinaryenAddMemoryImport(this.ref, cStr1, cStr2, cStr3, shared);
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
    _BinaryenAddGlobalImport(this.ref, cStr1, cStr2, cStr3, globalType, mutable);
  }

  addEventImport(
    internalName: string,
    externalModuleName: string,
    externalBaseName: string,
    attribute: u32,
    eventType: FunctionTypeRef
  ): void {
    var cStr1 = this.allocStringCached(internalName);
    var cStr2 = this.allocStringCached(externalModuleName);
    var cStr3 = this.allocStringCached(externalBaseName);
    _BinaryenAddEventImport(this.ref, cStr1, cStr2, cStr3, attribute, eventType);
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
    try {
      _BinaryenSetMemory(this.ref, initial, maximum, cStr, cArr1, cArr2, cArr3, cArr4, k, shared);
    } finally {
      memory.free(cArr4);
      memory.free(cArr3);
      memory.free(cArr2);
      memory.free(cArr1);
      for (let i = k - 1; i >= 0; --i) memory.free(segs[i]);
    }
  }

  // table

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
    try {
      _BinaryenSetFunctionTable(this.ref, initial, maximum, cArr, numNames, offset);
    } finally {
      memory.free(cArr);
    }
  }

  // sections

  addCustomSection(name: string, contents: Uint8Array): void {
    var cStr = this.allocStringCached(name);
    var cArr = allocU8Array(contents);
    try {
      _BinaryenAddCustomSection(this.ref, cStr, cArr, contents.length);
    } finally {
      memory.free(cArr);
    }
  }

  // meta

  getOptimizeLevel(): i32 {
    return _BinaryenGetOptimizeLevel();
  }

  setOptimizeLevel(level: i32 = 2): void {
    _BinaryenSetOptimizeLevel(level);
  }

  getShrinkLevel(): i32 {
    return _BinaryenGetShrinkLevel();
  }

  setShrinkLevel(level: i32 = 1): void {
    _BinaryenSetShrinkLevel(level);
  }

  setDebugInfo(on: bool = false): void {
    _BinaryenSetDebugInfo(on);
  }

  getFeatures(): BinaryenFeatureFlags {
    return _BinaryenModuleGetFeatures(this.ref);
  }

  setFeatures(featureFlags: BinaryenFeatureFlags): void {
    _BinaryenModuleSetFeatures(this.ref, featureFlags);
  }

  optimize(func: FunctionRef = 0): void {
    if (func) {
      _BinaryenFunctionOptimize(func, this.ref);
    } else {
      _BinaryenModuleOptimize(this.ref);
    }
  }

  runPasses(passes: string[], func: FunctionRef = 0): void {
    var numNames = passes.length;
    var names = new Array<usize>(numNames);
    for (let i = 0; i < numNames; ++i) {
      names[i] = allocString(passes[i]);
    }
    var cArr = allocI32Array(names);
    try {
      if (func) {
        _BinaryenFunctionRunPasses(func, this.ref, cArr, numNames);
      } else {
        _BinaryenModuleRunPasses(this.ref, cArr, numNames);
      }
    } finally {
      memory.free(cArr);
      for (let i = numNames; i >= 0; --i) memory.free(names[i]);
    }
  }

  private cachedPrecomputeNames: usize = 0;

  precomputeExpression(expr: ExpressionRef): ExpressionRef {
    // remember the previous optimize levels and set to max instead, to be sure
    var previousOptimizeLevel = _BinaryenGetOptimizeLevel();
    var previousShrinkLevel = _BinaryenGetShrinkLevel();
    var previousDebugInfo = _BinaryenGetDebugInfo();
    _BinaryenSetOptimizeLevel(4);
    _BinaryenSetShrinkLevel(0);
    _BinaryenSetDebugInfo(false);

    // wrap the expression in a temp. function and run the precompute pass on it
    var type = _BinaryenExpressionGetType(expr);
    var func = this.addTemporaryFunction(type, null, expr);
    var names = this.cachedPrecomputeNames;
    if (!names) {
      this.cachedPrecomputeNames = names = allocI32Array([
        this.allocStringCached("vacuum"),
        this.allocStringCached("precompute")
      ]);
    }
    _BinaryenFunctionRunPasses(func, this.ref, names, 2);
    expr = _BinaryenFunctionGetBody(func);
    if (_BinaryenExpressionGetId(expr) == ExpressionId.Return) {
      expr = _BinaryenReturnGetValue(expr);
    }
    this.removeTemporaryFunction();

    // reset optimize levels to previous
    _BinaryenSetOptimizeLevel(previousOptimizeLevel);
    _BinaryenSetShrinkLevel(previousShrinkLevel);
    _BinaryenSetDebugInfo(previousDebugInfo);
    return expr;
  }

  validate(): bool {
    return _BinaryenModuleValidate(this.ref) == 1;
  }

  interpret(): void {
    _BinaryenModuleInterpret(this.ref);
  }

  toBinary(sourceMapUrl: string | null): BinaryModule {
    var out = this.lit; // safe to reuse as long as..
    assert(_BinaryenSizeofLiteral() >= 12);
    var cStr = allocString(sourceMapUrl);
    var binaryPtr: usize = 0;
    var sourceMapPtr: usize = 0;
    try {
      _BinaryenModuleAllocateAndWrite(out, this.ref, cStr);
      binaryPtr = readInt(out);
      let binaryBytes = readInt(out + 4);
      sourceMapPtr = readInt(out + 4 * 2);
      let ret = new BinaryModule();
      ret.output = readBuffer(binaryPtr, binaryBytes);
      ret.sourceMap = readString(sourceMapPtr);
      return ret;
    } finally {
      if (cStr) memory.free(cStr);
      if (binaryPtr) memory.free(binaryPtr);
      if (sourceMapPtr) memory.free(sourceMapPtr);
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
    for (let ptr of this.cachedStrings.values()) memory.free(ptr);
    this.cachedStrings = new Map();
    memory.free(this.lit);
    memory.free(this.cachedPrecomputeNames);
    this.cachedPrecomputeNames = 0;
    _BinaryenModuleDispose(this.ref);
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

    switch (_BinaryenExpressionGetId(expr)) {
      case ExpressionId.Const: {
        switch (_BinaryenExpressionGetType(expr)) {
          case NativeType.I32: {
            return this.i32(_BinaryenConstGetValueI32(expr));
          }
          case NativeType.I64: {
            return this.i64(
              _BinaryenConstGetValueI64Low(expr),
              _BinaryenConstGetValueI64High(expr)
            );
          }
          case NativeType.F32: {
            return this.f32(_BinaryenConstGetValueF32(expr));
          }
          case NativeType.F64: {
            return this.f64(_BinaryenConstGetValueF64(expr));
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
        return _BinaryenLocalGet(this.ref,
          _BinaryenLocalGetGetIndex(expr),
          _BinaryenExpressionGetType(expr)
        );
      }
      case ExpressionId.GlobalGet: {
        let globalName = _BinaryenGlobalGetGetName(expr);
        if (!globalName) break;
        return _BinaryenGlobalGet(this.ref, globalName, _BinaryenExpressionGetType(expr));
      }
      case ExpressionId.Load: {
        if (!(nested1 = this.cloneExpression(_BinaryenLoadGetPtr(expr), noSideEffects, maxDepth))) {
          break;
        }
        return (
          _BinaryenLoadIsAtomic(expr)
            ? _BinaryenAtomicLoad(this.ref,
                _BinaryenLoadGetBytes(expr),
                _BinaryenLoadGetOffset(expr),
                _BinaryenExpressionGetType(expr),
                nested1
              )
            : _BinaryenLoad(this.ref,
                _BinaryenLoadGetBytes(expr),
                _BinaryenLoadIsSigned(expr) ? 1 : 0,
                _BinaryenLoadGetOffset(expr),
                _BinaryenLoadGetAlign(expr),
                _BinaryenExpressionGetType(expr),
                nested1
              )
        );
      }
      case ExpressionId.Unary: {
        if (!(nested1 = this.cloneExpression(_BinaryenUnaryGetValue(expr), noSideEffects, maxDepth))) {
          break;
        }
        return _BinaryenUnary(this.ref, _BinaryenUnaryGetOp(expr), nested1);
      }
      case ExpressionId.Binary: {
        if (!(nested1 = this.cloneExpression(_BinaryenBinaryGetLeft(expr), noSideEffects, maxDepth))) {
          break;
        }
        if (!(nested2 = this.cloneExpression(_BinaryenBinaryGetRight(expr), noSideEffects, maxDepth))) {
          break;
        }
        return _BinaryenBinary(this.ref, _BinaryenBinaryGetOp(expr), nested1, nested2);
      }
    }
    return 0;
  }

  // source map generation

  addDebugInfoFile(name: string): Index {
    var cStr = allocString(name);
    try {
      return _BinaryenModuleAddDebugInfoFileName(this.ref, cStr);
    } finally {
      memory.free(cStr);
    }
  }

  getDebugInfoFile(index: Index): string | null {
    return readString(_BinaryenModuleGetDebugInfoFileName(this.ref, index));
  }

  setDebugLocation(
    func: FunctionRef,
    expr: ExpressionRef,
    fileIndex: Index,
    lineNumber: Index,
    columnNumber: Index
  ): void {
    _BinaryenFunctionSetDebugLocation(func, expr, fileIndex, lineNumber, columnNumber);
  }
}

// expressions

export function getExpressionId(expr: ExpressionRef): ExpressionId {
  return _BinaryenExpressionGetId(expr);
}

export function getExpressionType(expr: ExpressionRef): NativeType {
  return _BinaryenExpressionGetType(expr);
}

export function getConstValueI32(expr: ExpressionRef): i32 {
  return _BinaryenConstGetValueI32(expr);
}

export function getConstValueI64Low(expr: ExpressionRef): i32 {
  return _BinaryenConstGetValueI64Low(expr);
}

export function getConstValueI64High(expr: ExpressionRef): i32 {
  return _BinaryenConstGetValueI64High(expr);
}

export function getConstValueF32(expr: ExpressionRef): f32 {
  return _BinaryenConstGetValueF32(expr);
}

export function getConstValueF64(expr: ExpressionRef): f32 {
  return _BinaryenConstGetValueF64(expr);
}

export function getLocalGetIndex(expr: ExpressionRef): Index {
  return _BinaryenLocalGetGetIndex(expr);
}

export function getLocalSetIndex(expr: ExpressionRef): Index {
  return _BinaryenLocalSetGetIndex(expr);
}

export function getLocalSetValue(expr: ExpressionRef): ExpressionRef {
  return _BinaryenLocalSetGetValue(expr);
}

export function isLocalTee(expr: ExpressionRef): bool {
  return _BinaryenLocalSetIsTee(expr);
}

export function getGlobalGetName(expr: ExpressionRef): string | null {
  return readString(_BinaryenGlobalGetGetName(expr));
}

export function getBinaryOp(expr: ExpressionRef): BinaryOp {
  return _BinaryenBinaryGetOp(expr);
}

export function getBinaryLeft(expr: ExpressionRef): ExpressionRef {
  return _BinaryenBinaryGetLeft(expr);
}

export function getBinaryRight(expr: ExpressionRef): ExpressionRef {
  return _BinaryenBinaryGetRight(expr);
}

export function getUnaryOp(expr: ExpressionRef): UnaryOp {
  return _BinaryenUnaryGetOp(expr);
}

export function getUnaryValue(expr: ExpressionRef): ExpressionRef {
  return _BinaryenUnaryGetValue(expr);
}

export function getLoadBytes(expr: ExpressionRef): u32 {
  return _BinaryenLoadGetBytes(expr);
}

export function getLoadOffset(expr: ExpressionRef): u32 {
  return _BinaryenLoadGetOffset(expr);
}

export function getLoadPtr(expr: ExpressionRef): ExpressionRef {
  return _BinaryenLoadGetPtr(expr);
}

export function isLoadSigned(expr: ExpressionRef): bool {
  return _BinaryenLoadIsSigned(expr);
}

export function getStoreBytes(expr: ExpressionRef): u32 {
  return _BinaryenStoreGetBytes(expr);
}

export function getStoreOffset(expr: ExpressionRef): u32 {
  return _BinaryenStoreGetOffset(expr);
}

export function getStorePtr(expr: ExpressionRef): ExpressionRef {
  return _BinaryenStoreGetPtr(expr);
}

export function getStoreValue(expr: ExpressionRef): ExpressionRef {
  return _BinaryenStoreGetValue(expr);
}

export function getBlockName(expr: ExpressionRef): string | null {
  return readString(_BinaryenBlockGetName(expr));
}

export function getBlockChildCount(expr: ExpressionRef): Index {
  return _BinaryenBlockGetNumChildren(expr);
}

export function getBlockChild(expr: ExpressionRef, index: Index): ExpressionRef {
  return _BinaryenBlockGetChild(expr, index);
}

export function getIfCondition(expr: ExpressionRef): ExpressionRef {
  return _BinaryenIfGetCondition(expr);
}

export function getIfTrue(expr: ExpressionRef): ExpressionRef {
  return _BinaryenIfGetIfTrue(expr);
}

export function getIfFalse(expr: ExpressionRef): ExpressionRef {
  return _BinaryenIfGetIfFalse(expr);
}

export function getLoopName(expr: ExpressionRef): string | null {
  return readString(_BinaryenLoopGetName(expr));
}

export function getLoopBody(expr: ExpressionRef): ExpressionRef {
  return _BinaryenLoopGetBody(expr);
}

export function getBreakName(expr: ExpressionRef): string | null {
  return readString(_BinaryenBreakGetName(expr));
}

export function getBreakCondition(expr: ExpressionRef): ExpressionRef {
  return _BinaryenBreakGetCondition(expr);
}

export function getSelectThen(expr: ExpressionRef): ExpressionRef {
  return _BinaryenSelectGetIfTrue(expr);
}

export function getSelectElse(expr: ExpressionRef): ExpressionRef {
  return _BinaryenSelectGetIfFalse(expr);
}

export function getSelectCondition(expr: ExpressionRef): ExpressionRef {
  return _BinaryenSelectGetCondition(expr);
}

export function getDropValue(expr: ExpressionRef): ExpressionRef {
  return _BinaryenDropGetValue(expr);
}

export function getReturnValue(expr: ExpressionRef): ExpressionRef {
  return _BinaryenReturnGetValue(expr);
}

export function getCallTarget(expr: ExpressionRef): string | null {
  return readString(_BinaryenCallGetTarget(expr));
}

export function getCallOperandCount(expr: ExpressionRef): i32 {
  return _BinaryenCallGetNumOperands(expr);
}

export function getCallOperand(expr: ExpressionRef, index: Index): ExpressionRef {
  return _BinaryenCallGetOperand(expr, index);
}

export function getHostOp(expr: ExpressionRef): ExpressionRef {
  return _BinaryenHostGetOp(expr);
}

export function getHostOperandCount(expr: ExpressionRef): Index {
  return _BinaryenHostGetNumOperands(expr);
}

export function getHostOperand(expr: ExpressionRef, index: Index): ExpressionRef {
  return _BinaryenHostGetOperand(expr, index);
}

export function getHostName(expr: ExpressionRef): string | null {
  return readString(_BinaryenHostGetNameOperand(expr));
}

// function types

export function getFunctionTypeName(ftype: FunctionTypeRef): string | null {
  return readString(_BinaryenFunctionTypeGetName(ftype));
}

export function getFunctionTypeParamCount(ftype: FunctionTypeRef): Index {
  return _BinaryenFunctionTypeGetNumParams(ftype);
}

export function getFunctionTypeParam(ftype: FunctionTypeRef, index: Index): NativeType {
  return _BinaryenFunctionTypeGetParam(ftype, index);
}

export function getFunctionTypeResult(ftype: FunctionTypeRef): NativeType {
  return _BinaryenFunctionTypeGetResult(ftype);
}

// functions

export function getFunctionBody(func: FunctionRef): ExpressionRef {
  return _BinaryenFunctionGetBody(func);
}

export function getFunctionName(func: FunctionRef): string | null {
  return readString(_BinaryenFunctionGetName(func));
}

export function getFunctionParamCount(func: FunctionRef): Index {
  return _BinaryenFunctionGetNumParams(func);
}

export function getFunctionParamType(func: FunctionRef, index: Index): NativeType {
  return _BinaryenFunctionGetParam(func, index);
}

export function getFunctionResultType(func: FunctionRef): NativeType {
  return _BinaryenFunctionGetResult(func);
}

// globals

export function getGlobalName(global: GlobalRef): string | null {
  return readString(_BinaryenGlobalGetName(global));
}

export function getGlobalType(global: GlobalRef): NativeType {
  return _BinaryenGlobalGetType(global);
}

export function isGlobalMutable(global: GlobalRef): bool {
  return _BinaryenGlobalIsMutable(global);
}

export function getGlobalInit(global: GlobalRef): ExpressionRef {
  return _BinaryenGlobalGetInit(global);
}

// events

export function getEventName(event: EventRef): string | null {
  return readString(_BinaryenEventGetName(event));
}

export function getEventAttribute(event: EventRef): u32 {
  return _BinaryenEventGetAttribute(event);
}

export function getEventType(event: EventRef): string | null {
  return readString(_BinaryenEventGetType(event));
}

export function getEventParamCount(event: EventRef): Index {
  return _BinaryenEventGetNumParams(event);
}

export function getEventParam(event: EventRef, index: Index): NativeType {
  return _BinaryenEventGetParam(event, index);
}

export class Relooper {

  module: Module;
  ref: RelooperRef;

  static create(module: Module): Relooper {
    var relooper = new Relooper();
    relooper.module = module;
    relooper.ref = _RelooperCreate(module.ref);
    return relooper;
  }

  private constructor() {}

  addBlock(code: ExpressionRef): RelooperBlockRef {
    return _RelooperAddBlock(this.ref, code);
  }

  addBranch(
    from: RelooperBlockRef,
    to: RelooperBlockRef,
    condition: ExpressionRef = 0,
    code: ExpressionRef = 0
  ): void {
    _RelooperAddBranch(from, to, condition, code);
  }

  addBlockWithSwitch(code: ExpressionRef, condition: ExpressionRef): RelooperBlockRef {
    return _RelooperAddBlockWithSwitch(this.ref, code, condition);
  }

  addBranchForSwitch(
    from: RelooperBlockRef,
    to: RelooperBlockRef,
    indexes: i32[],
    code: ExpressionRef = 0
  ): void {
    var cArr = allocI32Array(indexes);
    try {
      _RelooperAddBranchForSwitch(from, to, cArr, indexes.length, code);
    } finally {
      memory.free(cArr);
    }
  }

  renderAndDispose(entry: RelooperBlockRef, labelHelper: Index): ExpressionRef {
    return _RelooperRenderAndDispose(this.ref, entry, labelHelper);
  }
}

export function hasSideEffects(expr: ExpressionRef): bool {
  // TODO: there's more
  switch (_BinaryenExpressionGetId(expr)) {
    case ExpressionId.LocalGet:
    case ExpressionId.GlobalGet:
    case ExpressionId.Const:
    case ExpressionId.Nop: {
      return false;
    }
    case ExpressionId.Block: {
      for (let i = 0, k = _BinaryenBlockGetNumChildren(expr); i < k; ++i) {
        if (hasSideEffects(_BinaryenBlockGetChild(expr, i))) return true;
      }
      return false;
    }
    case ExpressionId.If: {
      return hasSideEffects(_BinaryenIfGetCondition(expr))
          || hasSideEffects(_BinaryenIfGetIfTrue(expr))
          || hasSideEffects(_BinaryenIfGetIfFalse(expr));
    }
    case ExpressionId.Unary: {
      return hasSideEffects(_BinaryenUnaryGetValue(expr));
    }
    case ExpressionId.Binary: {
      return hasSideEffects(_BinaryenBinaryGetLeft(expr))
          || hasSideEffects(_BinaryenBinaryGetRight(expr));
    }
    case ExpressionId.Drop: {
      return hasSideEffects(_BinaryenDropGetValue(expr));
    }
    case ExpressionId.Select: {
      return hasSideEffects(_BinaryenSelectGetIfTrue(expr))
          || hasSideEffects(_BinaryenSelectGetIfFalse(expr))
          || hasSideEffects(_BinaryenSelectGetCondition(expr));
    }
  }
  return true;
}

// helpers
// can't do stack allocation here: STACKTOP is a global in WASM but a hidden variable in asm.js

function allocU8Array(u8s: Uint8Array | null): usize {
  if (!u8s) return 0;
  var numValues = u8s.length;
  var ptr = memory.allocate(numValues);
  var idx = ptr;
  for (let i = 0; i < numValues; ++i) {
    store<u8>(idx++, u8s[i]);
  }
  return ptr;
}

function allocI32Array(i32s: i32[] | null): usize {
  if (!i32s) return 0;
  var ptr = memory.allocate(i32s.length << 2);
  var idx = ptr;
  for (let i = 0, k = i32s.length; i < k; ++i) {
    let val = i32s[i];
    // store<i32>(idx, val) is not portable
    store<u8>(idx    , ( val         & 0xff) as u8);
    store<u8>(idx + 1, ((val >>   8) & 0xff) as u8);
    store<u8>(idx + 2, ((val >>  16) & 0xff) as u8);
    store<u8>(idx + 3, ( val >>> 24        ) as u8);
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
  var ptr = memory.allocate(stringLengthUTF8(str) + 1);
  // the following is based on Emscripten's stringToUTF8Array
  var idx = ptr;
  for (let i = 0, k = str.length; i < k; ++i) {
    let u = str.charCodeAt(i);
    if (u >= 0xD800 && u <= 0xDFFF && i + 1 < k) {
      u = 0x10000 + ((u & 0x3FF) << 10) | (str.charCodeAt(++i) & 0x3FF);
    }
    if (u <= 0x7F) {
      store<u8>(idx++, u as u8);
    } else if (u <= 0x7FF) {
      store<u8>(idx++, (0xC0 |  (u >>> 6)       ) as u8);
      store<u8>(idx++, (0x80 | ( u         & 63)) as u8);
    } else if (u <= 0xFFFF) {
      store<u8>(idx++, (0xE0 |  (u >>> 12)      ) as u8);
      store<u8>(idx++, (0x80 | ((u >>>  6) & 63)) as u8);
      store<u8>(idx++, (0x80 | ( u         & 63)) as u8);
    } else if (u <= 0x1FFFFF) {
      store<u8>(idx++, (0xF0 |  (u >>> 18)      ) as u8);
      store<u8>(idx++, (0x80 | ((u >>> 12) & 63)) as u8);
      store<u8>(idx++, (0x80 | ((u >>>  6) & 63)) as u8);
      store<u8>(idx++, (0x80 | ( u         & 63)) as u8);
    } else if (u <= 0x3FFFFFF) {
      store<u8>(idx++, (0xF8 |  (u >>> 24)      ) as u8);
      store<u8>(idx++, (0x80 | ((u >>> 18) & 63)) as u8);
      store<u8>(idx++, (0x80 | ((u >>> 12) & 63)) as u8);
      store<u8>(idx++, (0x80 | ((u >>>  6) & 63)) as u8);
      store<u8>(idx++, (0x80 | ( u         & 63)) as u8);
    } else {
      store<u8>(idx++, (0xFC |  (u >>> 30)      ) as u8);
      store<u8>(idx++, (0x80 | ((u >>> 24) & 63)) as u8);
      store<u8>(idx++, (0x80 | ((u >>> 18) & 63)) as u8);
      store<u8>(idx++, (0x80 | ((u >>> 12) & 63)) as u8);
      store<u8>(idx++, (0x80 | ((u >>>  6) & 63)) as u8);
      store<u8>(idx++, (0x80 | ( u         & 63)) as u8);
    }
  }
  store<u8>(idx, 0);
  return ptr;
}

function readInt(ptr: usize): i32 {
  return (
     load<u8>(ptr    )        |
    (load<u8>(ptr + 1) <<  8) |
    (load<u8>(ptr + 2) << 16) |
    (load<u8>(ptr + 3) << 24)
  );
}

function readBuffer(ptr: usize, length: usize): Uint8Array {
  var ret = new Uint8Array(length);
  for (let i: usize = 0; i < length; ++i) {
    ret[i] = load<u8>(ptr + i);
  }
  return ret;
}

export function readString(ptr: usize): string | null {
  if (!ptr) return null;
  var arr = new Array<i32>();
  // the following is based on Emscripten's UTF8ArrayToString
  var cp: u32;
  var u1: u32, u2: u32, u3: u32, u4: u32, u5: u32;
  while (cp = load<u8>(ptr++)) {
    if (!(cp & 0x80)) {
      arr.push(cp);
      continue;
    }
    u1 = load<u8>(ptr++) & 63;
    if ((cp & 0xE0) == 0xC0) {
      arr.push(((cp & 31) << 6) | u1);
      continue;
    }
    u2 = load<u8>(ptr++) & 63;
    if ((cp & 0xF0) == 0xE0) {
      cp = ((cp & 15) << 12) | (u1 << 6) | u2;
    } else {
      u3 = load<u8>(ptr++) & 63;
      if ((cp & 0xF8) == 0xF0) {
        cp = ((cp & 7) << 18) | (u1 << 12) | (u2 << 6) | u3;
      } else {
        u4 = load<u8>(ptr++) & 63;
        if ((cp & 0xFC) == 0xF8) {
          cp = ((cp & 3) << 24) | (u1 << 18) | (u2 << 12) | (u3 << 6) | u4;
        } else {
          u5 = load<u8>(ptr++) & 63;
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
  if (_BinaryenExpressionGetType(expr) != NativeType.Unreachable) return false;

  switch (_BinaryenExpressionGetId(expr)) {
    case ExpressionId.Unreachable:
    case ExpressionId.Return: return false;
    case ExpressionId.Break: return _BinaryenBreakGetCondition(expr) != 0;
    case ExpressionId.Block: {
      if (!_BinaryenBlockGetName(expr)) { // can't break out of it
        let numChildren = _BinaryenBlockGetNumChildren(expr); // last child needs unreachable
        return numChildren > 0 && needsExplicitUnreachable(_BinaryenBlockGetChild(expr, numChildren - 1));
      }
    }
  }
  return true;
}

/** Traverses all expression members of an expression, calling the given visitor. */
export function traverse<T>(expr: ExpressionRef, data: T, visit: (expr: ExpressionRef, data: T) => void): bool {
  switch (getExpressionId(expr)) {
    case ExpressionId.Block: {
      for (let i = 0, n = _BinaryenBlockGetNumChildren(expr); i < n; ++i) {
        visit(_BinaryenBlockGetChild(expr, i), data);
      }
      break;
    }
    case ExpressionId.If: {
      visit(_BinaryenIfGetCondition(expr), data);
      visit(_BinaryenIfGetIfTrue(expr), data);
      let ifFalse = _BinaryenIfGetIfFalse(expr);
      if (ifFalse) visit(ifFalse, data);
      break;
    }
    case ExpressionId.Loop: {
      visit(_BinaryenLoopGetBody(expr), data);
      break;
    }
    case ExpressionId.Break: {
      let condition = _BinaryenBreakGetCondition(expr);
      if (condition) visit(condition, data);
      break;
    }
    case ExpressionId.Switch: {
      visit(_BinaryenSwitchGetCondition(expr), data);
      break;
    }
    case ExpressionId.Call: {
      for (let i = 0, n = _BinaryenCallGetNumOperands(expr); i < n; ++i) {
        visit(_BinaryenCallGetOperand(expr, i), data);
      }
      break;
    }
    case ExpressionId.CallIndirect: {
      for (let i = 0, n = _BinaryenCallIndirectGetNumOperands(expr); i < n; ++i) {
        visit(_BinaryenCallIndirectGetOperand(expr, i), data);
      }
      break;
    }
    case ExpressionId.LocalGet: {
      break;
    }
    case ExpressionId.LocalSet: {
      visit(_BinaryenLocalSetGetValue(expr), data);
      break;
    }
    case ExpressionId.GlobalGet: {
      break;
    }
    case ExpressionId.GlobalSet: {
      visit(_BinaryenGlobalSetGetValue(expr), data);
      break;
    }
    case ExpressionId.Load: {
      visit(_BinaryenLoadGetPtr(expr), data);
      break;
    }
    case ExpressionId.Store: {
      visit(_BinaryenStoreGetPtr(expr), data);
      visit(_BinaryenStoreGetValue(expr), data);
      break;
    }
    case ExpressionId.AtomicRMW: {
      visit(_BinaryenAtomicRMWGetPtr(expr), data);
      visit(_BinaryenAtomicRMWGetValue(expr), data);
      break;
    }
    case ExpressionId.AtomicCmpxchg: {
      visit(_BinaryenAtomicCmpxchgGetPtr(expr), data);
      visit(_BinaryenAtomicCmpxchgGetExpected(expr), data);
      visit(_BinaryenAtomicCmpxchgGetReplacement(expr), data);
      break;
    }
    case ExpressionId.AtomicWait: {
      visit(_BinaryenAtomicWaitGetPtr(expr), data);
      visit(_BinaryenAtomicWaitGetExpected(expr), data);
      visit(_BinaryenAtomicWaitGetTimeout(expr), data);
      break;
    }
    case ExpressionId.AtomicNotify: {
      visit(_BinaryenAtomicNotifyGetPtr(expr), data);
      break;
    }
    case ExpressionId.AtomicFence: {
      break;
    }
    case ExpressionId.SIMDExtract: {
      visit(_BinaryenSIMDExtractGetVec(expr), data);
      break;
    }
    case ExpressionId.SIMDReplace: {
      visit(_BinaryenSIMDReplaceGetVec(expr), data);
      visit(_BinaryenSIMDReplaceGetValue(expr), data);
      break;
    }
    case ExpressionId.SIMDShuffle: {
      visit(_BinaryenSIMDShuffleGetLeft(expr), data);
      visit(_BinaryenSIMDShuffleGetRight(expr), data);
      break;
    }
    case ExpressionId.SIMDTernary: {
      visit(_BinaryenSIMDTernaryGetA(expr), data);
      visit(_BinaryenSIMDTernaryGetB(expr), data);
      visit(_BinaryenSIMDTernaryGetC(expr), data);
      break;
    }
    case ExpressionId.SIMDShift: {
      visit(_BinaryenSIMDShiftGetVec(expr), data);
      visit(_BinaryenSIMDShiftGetShift(expr), data);
      break;
    }
    case ExpressionId.SIMDLoad: {
      visit(_BinaryenSIMDLoadGetPtr(expr), data);
      break;
    }
    case ExpressionId.MemoryInit: {
      visit(_BinaryenMemoryInitGetDest(expr), data);
      visit(_BinaryenMemoryInitGetOffset(expr), data);
      visit(_BinaryenMemoryInitGetSize(expr), data);
      break;
    }
    case ExpressionId.DataDrop: {
      break;
    }
    case ExpressionId.MemoryCopy: {
      visit(_BinaryenMemoryCopyGetDest(expr), data);
      visit(_BinaryenMemoryCopyGetSource(expr), data);
      visit(_BinaryenMemoryCopyGetSize(expr), data);
      break;
    }
    case ExpressionId.MemoryFill: {
      visit(_BinaryenMemoryFillGetDest(expr), data);
      visit(_BinaryenMemoryFillGetValue(expr), data);
      visit(_BinaryenMemoryFillGetSize(expr), data);
      break;
    }
    case ExpressionId.Try: {
      visit(_BinaryenTryGetBody(expr), data);
      visit(_BinaryenTryGetCatchBody(expr), data);
      break;
    }
    case ExpressionId.Throw: {
      for (let i = 0, n = _BinaryenThrowGetNumOperands(expr); i < n; ++i) {
        visit(_BinaryenThrowGetOperand(expr, i), data);
      }
      break;
    }
    case ExpressionId.Rethrow: {
      visit(_BinaryenRethrowGetExnref(expr), data);
      break;
    }
    case ExpressionId.BrOnExn: {
      visit(_BinaryenBrOnExnGetExnref(expr), data);
      break;
    }
    case ExpressionId.Push: {
      visit(_BinaryenPushGetValue(expr), data);
      break;
    }
    case ExpressionId.Pop: {
      break;
    }
    case ExpressionId.Const: {
      break;
    }
    case ExpressionId.Unary: {
      visit(_BinaryenUnaryGetValue(expr), data);
      break;
    }
    case ExpressionId.Binary: {
      visit(_BinaryenBinaryGetLeft(expr), data);
      visit(_BinaryenBinaryGetRight(expr), data);
      break;
    }
    case ExpressionId.Select: {
      visit(_BinaryenSelectGetIfTrue(expr), data);
      visit(_BinaryenSelectGetIfFalse(expr), data);
      visit(_BinaryenSelectGetCondition(expr), data);
      break;
    }
    case ExpressionId.Drop: {
      visit(_BinaryenDropGetValue(expr), data);
      break;
    }
    case ExpressionId.Return: {
      visit(_BinaryenReturnGetValue(expr), data);
      break;
    }
    case ExpressionId.Host: {
      for (let i = 0, n = _BinaryenHostGetNumOperands(expr); i < n; ++i) {
        visit(_BinaryenHostGetOperand(expr, i), data);
      }
      break;
    }
    case ExpressionId.Nop: {
      break;
    }
    case ExpressionId.Unreachable: {
      break;
    }
    default: assert(false);
  }
  return true;
}
