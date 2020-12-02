/**
 * @fileoverview Portable definitions for Binaryen's C-API.
 *
 * tsc uses the .js file next to it, while asc makes it a Wasm import.
 *
 * See: https://github.com/WebAssembly/binaryen/blob/master/src/binaryen-c.h
 *
 * @license Apache-2.0
 */

export declare function _malloc(size: usize): usize;
export declare function _free(ptr: usize): void;
export declare function __i32_store8(ptr: usize, value: number): void;
export declare function __i32_store16(ptr: usize, value: number): void;
export declare function __i32_store(ptr: usize, value: number): void;
export declare function __f32_store(ptr: usize, value: number): void;
export declare function __f64_store(ptr: usize, value: number): void;
export declare function __i32_load8_s(ptr: usize): i8;
export declare function __i32_load8_u(ptr: usize): u8;
export declare function __i32_load16_s(ptr: usize): i16;
export declare function __i32_load16_u(ptr: usize): u16;
export declare function __i32_load(ptr: usize): i32;
export declare function __f32_load(ptr: usize): f32;
export declare function __f64_load(ptr: usize): f64;

type BinaryenIndex = u32;
type BinaryenType = usize;
type BinaryenString = usize;
type BinaryenArray<T> = usize;

export declare function _BinaryenTypeNone(): BinaryenType;
export declare function _BinaryenTypeInt32(): BinaryenType;
export declare function _BinaryenTypeInt64(): BinaryenType;
export declare function _BinaryenTypeFloat32(): BinaryenType;
export declare function _BinaryenTypeFloat64(): BinaryenType;
export declare function _BinaryenTypeVec128(): BinaryenType;
export declare function _BinaryenTypeFuncref(): BinaryenType;
export declare function _BinaryenTypeExternref(): BinaryenType;
export declare function _BinaryenTypeNullref(): BinaryenType;
export declare function _BinaryenTypeExnref(): BinaryenType;
export declare function _BinaryenTypeUnreachable(): BinaryenType;
export declare function _BinaryenTypeAuto(): BinaryenType;

export declare function _BinaryenTypeCreate(types: BinaryenArray<BinaryenType>, numTypes: u32): BinaryenType;
export declare function _BinaryenTypeArity(type: BinaryenType): u32;
export declare function _BinaryenTypeExpand(type: BinaryenType, typesOut: BinaryenArray<BinaryenType>): void;

type BinaryenFeatureFlags = u32;

export declare function _BinaryenFeatureMVP(): BinaryenFeatureFlags;
export declare function _BinaryenFeatureAtomics(): BinaryenFeatureFlags;
export declare function _BinaryenFeatureMutableGlobals(): BinaryenFeatureFlags;
export declare function _BinaryenFeatureNontrappingFPToInt(): BinaryenFeatureFlags;
export declare function _BinaryenFeatureSIMD128(): BinaryenFeatureFlags;
export declare function _BinaryenFeatureBulkMemory(): BinaryenFeatureFlags;
export declare function _BinaryenFeatureSignExt(): BinaryenFeatureFlags;
export declare function _BinaryenFeatureExceptionHandling(): BinaryenFeatureFlags;
export declare function _BinaryenFeatureTailCall(): BinaryenFeatureFlags;
export declare function _BinaryenFeatureReferenceTypes(): BinaryenFeatureFlags;
export declare function _BinaryenFeatureMultivalue(): BinaryenFeatureFlags;
export declare function _BinaryenFeatureGC(): BinaryenFeatureFlags;
export declare function _BinaryenFeatureAll(): BinaryenFeatureFlags;

type BinaryenExpressionId = i32;

export declare function _BinaryenInvalidId(): BinaryenExpressionId;
export declare function _BinaryenBlockId(): BinaryenExpressionId;
export declare function _BinaryenIfId(): BinaryenExpressionId;
export declare function _BinaryenLoopId(): BinaryenExpressionId;
export declare function _BinaryenBreakId(): BinaryenExpressionId;
export declare function _BinaryenSwitchId(): BinaryenExpressionId;
export declare function _BinaryenCallId(): BinaryenExpressionId;
export declare function _BinaryenCallIndirectId(): BinaryenExpressionId;
export declare function _BinaryenLocalGetId(): BinaryenExpressionId;
export declare function _BinaryenLocalSetId(): BinaryenExpressionId;
export declare function _BinaryenGlobalGetId(): BinaryenExpressionId;
export declare function _BinaryenGlobalSetId(): BinaryenExpressionId;
export declare function _BinaryenLoadId(): BinaryenExpressionId;
export declare function _BinaryenStoreId(): BinaryenExpressionId;
export declare function _BinaryenConstId(): BinaryenExpressionId;
export declare function _BinaryenUnaryId(): BinaryenExpressionId;
export declare function _BinaryenBinaryId(): BinaryenExpressionId;
export declare function _BinaryenSelectId(): BinaryenExpressionId;
export declare function _BinaryenDropId(): BinaryenExpressionId;
export declare function _BinaryenReturnId(): BinaryenExpressionId;
export declare function _BinaryenMemorySizeId(): BinaryenExpressionId;
export declare function _BinaryenMemoryGrowId(): BinaryenExpressionId;
export declare function _BinaryenNopId(): BinaryenExpressionId;
export declare function _BinaryenUnreachableId(): BinaryenExpressionId;
export declare function _BinaryenAtomicCmpxchgId(): BinaryenExpressionId;
export declare function _BinaryenAtomicRMWId(): BinaryenExpressionId;
export declare function _BinaryenAtomicWaitId(): BinaryenExpressionId;
export declare function _BinaryenAtomicNotifyId(): BinaryenExpressionId;
export declare function _BinaryenAtomicFenceId(): BinaryenExpressionId;
export declare function _BinaryenSIMDExtractId(): BinaryenExpressionId;
export declare function _BinaryenSIMDReplaceId(): BinaryenExpressionId;
export declare function _BinaryenSIMDShuffleId(): BinaryenExpressionId;
export declare function _BinaryenSIMDTernaryId(): BinaryenExpressionId;
export declare function _BinaryenSIMDShiftId(): BinaryenExpressionId;
export declare function _BinaryenSIMDLoadId(): BinaryenExpressionId;
export declare function _BinaryenMemoryInitId(): BinaryenExpressionId;
export declare function _BinaryenDataDropId(): BinaryenExpressionId;
export declare function _BinaryenMemoryCopyId(): BinaryenExpressionId;
export declare function _BinaryenMemoryFillId(): BinaryenExpressionId;
export declare function _BinaryenRefNullId(): BinaryenExpressionId;
export declare function _BinaryenRefIsNullId(): BinaryenExpressionId;
export declare function _BinaryenRefFuncId(): BinaryenExpressionId;
export declare function _BinaryenRefEqId(): BinaryenExpressionId;
export declare function _BinaryenTryId(): BinaryenExpressionId;
export declare function _BinaryenThrowId(): BinaryenExpressionId;
export declare function _BinaryenRethrowId(): BinaryenExpressionId;
export declare function _BinaryenBrOnExnId(): BinaryenExpressionId;
export declare function _BinaryenTupleMakeId(): BinaryenExpressionId;
export declare function _BinaryenTupleExtractId(): BinaryenExpressionId;
export declare function _BinaryenPopId(): BinaryenExpressionId;

type BinaryenModuleRef = usize;

export declare function _BinaryenModuleCreate(): BinaryenModuleRef;
export declare function _BinaryenModuleDispose(module: BinaryenModuleRef): void;

type BinaryenLiteral = usize;

export declare function _BinaryenSizeofLiteral(): usize;
export declare function _BinaryenLiteralInt32(literalOut: BinaryenLiteral, x: i32): void;
export declare function _BinaryenLiteralInt64(literalOut: BinaryenLiteral, x: i32, y: i32): void;
export declare function _BinaryenLiteralFloat32(literalOut: BinaryenLiteral, x: f32): void;
export declare function _BinaryenLiteralFloat64(literalOut: BinaryenLiteral, x: f64): void;
export declare function _BinaryenLiteralVec128(literalOut: BinaryenLiteral, x: BinaryenArray<u8>): void;
export declare function _BinaryenLiteralFloat32Bits(literalOut: BinaryenLiteral, x: i32): void;
export declare function _BinaryenLiteralFloat64Bits(literalOut: BinaryenLiteral, x: i32, y: i32): void;

type BinaryenOp = i32;

export declare function _BinaryenClzInt32(): BinaryenOp;
export declare function _BinaryenCtzInt32(): BinaryenOp;
export declare function _BinaryenPopcntInt32(): BinaryenOp;
export declare function _BinaryenNegFloat32(): BinaryenOp;
export declare function _BinaryenAbsFloat32(): BinaryenOp;
export declare function _BinaryenCeilFloat32(): BinaryenOp;
export declare function _BinaryenFloorFloat32(): BinaryenOp;
export declare function _BinaryenTruncFloat32(): BinaryenOp;
export declare function _BinaryenNearestFloat32(): BinaryenOp;
export declare function _BinaryenSqrtFloat32(): BinaryenOp;
export declare function _BinaryenEqZInt32(): BinaryenOp;
export declare function _BinaryenClzInt64(): BinaryenOp;
export declare function _BinaryenCtzInt64(): BinaryenOp;
export declare function _BinaryenPopcntInt64(): BinaryenOp;
export declare function _BinaryenNegFloat64(): BinaryenOp;
export declare function _BinaryenAbsFloat64(): BinaryenOp;
export declare function _BinaryenCeilFloat64(): BinaryenOp;
export declare function _BinaryenFloorFloat64(): BinaryenOp;
export declare function _BinaryenTruncFloat64(): BinaryenOp;
export declare function _BinaryenNearestFloat64(): BinaryenOp;
export declare function _BinaryenSqrtFloat64(): BinaryenOp;
export declare function _BinaryenEqZInt64(): BinaryenOp;
export declare function _BinaryenExtendSInt32(): BinaryenOp;
export declare function _BinaryenExtendUInt32(): BinaryenOp;
export declare function _BinaryenWrapInt64(): BinaryenOp;
export declare function _BinaryenTruncSFloat32ToInt32(): BinaryenOp;
export declare function _BinaryenTruncSFloat32ToInt64(): BinaryenOp;
export declare function _BinaryenTruncUFloat32ToInt32(): BinaryenOp;
export declare function _BinaryenTruncUFloat32ToInt64(): BinaryenOp;
export declare function _BinaryenTruncSFloat64ToInt32(): BinaryenOp;
export declare function _BinaryenTruncSFloat64ToInt64(): BinaryenOp;
export declare function _BinaryenTruncUFloat64ToInt32(): BinaryenOp;
export declare function _BinaryenTruncUFloat64ToInt64(): BinaryenOp;
export declare function _BinaryenTruncSatSFloat32ToInt32(): BinaryenOp;
export declare function _BinaryenTruncSatSFloat32ToInt64(): BinaryenOp;
export declare function _BinaryenTruncSatUFloat32ToInt32(): BinaryenOp;
export declare function _BinaryenTruncSatUFloat32ToInt64(): BinaryenOp;
export declare function _BinaryenTruncSatSFloat64ToInt32(): BinaryenOp;
export declare function _BinaryenTruncSatSFloat64ToInt64(): BinaryenOp;
export declare function _BinaryenTruncSatUFloat64ToInt32(): BinaryenOp;
export declare function _BinaryenTruncSatUFloat64ToInt64(): BinaryenOp;
export declare function _BinaryenReinterpretFloat32(): BinaryenOp;
export declare function _BinaryenReinterpretFloat64(): BinaryenOp;
export declare function _BinaryenConvertSInt32ToFloat32(): BinaryenOp;
export declare function _BinaryenConvertSInt32ToFloat64(): BinaryenOp;
export declare function _BinaryenConvertUInt32ToFloat32(): BinaryenOp;
export declare function _BinaryenConvertUInt32ToFloat64(): BinaryenOp;
export declare function _BinaryenConvertSInt64ToFloat32(): BinaryenOp;
export declare function _BinaryenConvertSInt64ToFloat64(): BinaryenOp;
export declare function _BinaryenConvertUInt64ToFloat32(): BinaryenOp;
export declare function _BinaryenConvertUInt64ToFloat64(): BinaryenOp;
export declare function _BinaryenPromoteFloat32(): BinaryenOp;
export declare function _BinaryenDemoteFloat64(): BinaryenOp;
export declare function _BinaryenReinterpretInt32(): BinaryenOp;
export declare function _BinaryenReinterpretInt64(): BinaryenOp;
export declare function _BinaryenExtendS8Int32(): BinaryenOp;
export declare function _BinaryenExtendS16Int32(): BinaryenOp;
export declare function _BinaryenExtendS8Int64(): BinaryenOp;
export declare function _BinaryenExtendS16Int64(): BinaryenOp;
export declare function _BinaryenExtendS32Int64(): BinaryenOp;
export declare function _BinaryenAddInt32(): BinaryenOp;
export declare function _BinaryenSubInt32(): BinaryenOp;
export declare function _BinaryenMulInt32(): BinaryenOp;
export declare function _BinaryenDivSInt32(): BinaryenOp;
export declare function _BinaryenDivUInt32(): BinaryenOp;
export declare function _BinaryenRemSInt32(): BinaryenOp;
export declare function _BinaryenRemUInt32(): BinaryenOp;
export declare function _BinaryenAndInt32(): BinaryenOp;
export declare function _BinaryenOrInt32(): BinaryenOp;
export declare function _BinaryenXorInt32(): BinaryenOp;
export declare function _BinaryenShlInt32(): BinaryenOp;
export declare function _BinaryenShrUInt32(): BinaryenOp;
export declare function _BinaryenShrSInt32(): BinaryenOp;
export declare function _BinaryenRotLInt32(): BinaryenOp;
export declare function _BinaryenRotRInt32(): BinaryenOp;
export declare function _BinaryenEqInt32(): BinaryenOp;
export declare function _BinaryenNeInt32(): BinaryenOp;
export declare function _BinaryenLtSInt32(): BinaryenOp;
export declare function _BinaryenLtUInt32(): BinaryenOp;
export declare function _BinaryenLeSInt32(): BinaryenOp;
export declare function _BinaryenLeUInt32(): BinaryenOp;
export declare function _BinaryenGtSInt32(): BinaryenOp;
export declare function _BinaryenGtUInt32(): BinaryenOp;
export declare function _BinaryenGeSInt32(): BinaryenOp;
export declare function _BinaryenGeUInt32(): BinaryenOp;
export declare function _BinaryenAddInt64(): BinaryenOp;
export declare function _BinaryenSubInt64(): BinaryenOp;
export declare function _BinaryenMulInt64(): BinaryenOp;
export declare function _BinaryenDivSInt64(): BinaryenOp;
export declare function _BinaryenDivUInt64(): BinaryenOp;
export declare function _BinaryenRemSInt64(): BinaryenOp;
export declare function _BinaryenRemUInt64(): BinaryenOp;
export declare function _BinaryenAndInt64(): BinaryenOp;
export declare function _BinaryenOrInt64(): BinaryenOp;
export declare function _BinaryenXorInt64(): BinaryenOp;
export declare function _BinaryenShlInt64(): BinaryenOp;
export declare function _BinaryenShrUInt64(): BinaryenOp;
export declare function _BinaryenShrSInt64(): BinaryenOp;
export declare function _BinaryenRotLInt64(): BinaryenOp;
export declare function _BinaryenRotRInt64(): BinaryenOp;
export declare function _BinaryenEqInt64(): BinaryenOp;
export declare function _BinaryenNeInt64(): BinaryenOp;
export declare function _BinaryenLtSInt64(): BinaryenOp;
export declare function _BinaryenLtUInt64(): BinaryenOp;
export declare function _BinaryenLeSInt64(): BinaryenOp;
export declare function _BinaryenLeUInt64(): BinaryenOp;
export declare function _BinaryenGtSInt64(): BinaryenOp;
export declare function _BinaryenGtUInt64(): BinaryenOp;
export declare function _BinaryenGeSInt64(): BinaryenOp;
export declare function _BinaryenGeUInt64(): BinaryenOp;
export declare function _BinaryenAddFloat32(): BinaryenOp;
export declare function _BinaryenSubFloat32(): BinaryenOp;
export declare function _BinaryenMulFloat32(): BinaryenOp;
export declare function _BinaryenDivFloat32(): BinaryenOp;
export declare function _BinaryenCopySignFloat32(): BinaryenOp;
export declare function _BinaryenMinFloat32(): BinaryenOp;
export declare function _BinaryenMaxFloat32(): BinaryenOp;
export declare function _BinaryenEqFloat32(): BinaryenOp;
export declare function _BinaryenNeFloat32(): BinaryenOp;
export declare function _BinaryenLtFloat32(): BinaryenOp;
export declare function _BinaryenLeFloat32(): BinaryenOp;
export declare function _BinaryenGtFloat32(): BinaryenOp;
export declare function _BinaryenGeFloat32(): BinaryenOp;
export declare function _BinaryenAddFloat64(): BinaryenOp;
export declare function _BinaryenSubFloat64(): BinaryenOp;
export declare function _BinaryenMulFloat64(): BinaryenOp;
export declare function _BinaryenDivFloat64(): BinaryenOp;
export declare function _BinaryenCopySignFloat64(): BinaryenOp;
export declare function _BinaryenMinFloat64(): BinaryenOp;
export declare function _BinaryenMaxFloat64(): BinaryenOp;
export declare function _BinaryenEqFloat64(): BinaryenOp;
export declare function _BinaryenNeFloat64(): BinaryenOp;
export declare function _BinaryenLtFloat64(): BinaryenOp;
export declare function _BinaryenLeFloat64(): BinaryenOp;
export declare function _BinaryenGtFloat64(): BinaryenOp;
export declare function _BinaryenGeFloat64(): BinaryenOp;

export declare function _BinaryenAtomicRMWAdd(): BinaryenOp;
export declare function _BinaryenAtomicRMWSub(): BinaryenOp;
export declare function _BinaryenAtomicRMWAnd(): BinaryenOp;
export declare function _BinaryenAtomicRMWOr(): BinaryenOp;
export declare function _BinaryenAtomicRMWXor(): BinaryenOp;
export declare function _BinaryenAtomicRMWXchg(): BinaryenOp;

export declare function _BinaryenSplatVecI8x16(): BinaryenOp;
export declare function _BinaryenExtractLaneSVecI8x16(): BinaryenOp;
export declare function _BinaryenExtractLaneUVecI8x16(): BinaryenOp;
export declare function _BinaryenReplaceLaneVecI8x16(): BinaryenOp;
export declare function _BinaryenSplatVecI16x8(): BinaryenOp;
export declare function _BinaryenExtractLaneSVecI16x8(): BinaryenOp;
export declare function _BinaryenExtractLaneUVecI16x8(): BinaryenOp;
export declare function _BinaryenReplaceLaneVecI16x8(): BinaryenOp;
export declare function _BinaryenSplatVecI32x4(): BinaryenOp;
export declare function _BinaryenExtractLaneVecI32x4(): BinaryenOp;
export declare function _BinaryenReplaceLaneVecI32x4(): BinaryenOp;
export declare function _BinaryenSplatVecI64x2(): BinaryenOp;
export declare function _BinaryenExtractLaneVecI64x2(): BinaryenOp;
export declare function _BinaryenReplaceLaneVecI64x2(): BinaryenOp;
export declare function _BinaryenSplatVecF32x4(): BinaryenOp;
export declare function _BinaryenExtractLaneVecF32x4(): BinaryenOp;
export declare function _BinaryenReplaceLaneVecF32x4(): BinaryenOp;
export declare function _BinaryenSplatVecF64x2(): BinaryenOp;
export declare function _BinaryenExtractLaneVecF64x2(): BinaryenOp;
export declare function _BinaryenReplaceLaneVecF64x2(): BinaryenOp;
export declare function _BinaryenEqVecI8x16(): BinaryenOp;
export declare function _BinaryenNeVecI8x16(): BinaryenOp;
export declare function _BinaryenLtSVecI8x16(): BinaryenOp;
export declare function _BinaryenLtUVecI8x16(): BinaryenOp;
export declare function _BinaryenGtSVecI8x16(): BinaryenOp;
export declare function _BinaryenGtUVecI8x16(): BinaryenOp;
export declare function _BinaryenLeSVecI8x16(): BinaryenOp;
export declare function _BinaryenLeUVecI8x16(): BinaryenOp;
export declare function _BinaryenGeSVecI8x16(): BinaryenOp;
export declare function _BinaryenGeUVecI8x16(): BinaryenOp;
export declare function _BinaryenEqVecI16x8(): BinaryenOp;
export declare function _BinaryenNeVecI16x8(): BinaryenOp;
export declare function _BinaryenLtSVecI16x8(): BinaryenOp;
export declare function _BinaryenLtUVecI16x8(): BinaryenOp;
export declare function _BinaryenGtSVecI16x8(): BinaryenOp;
export declare function _BinaryenGtUVecI16x8(): BinaryenOp;
export declare function _BinaryenLeSVecI16x8(): BinaryenOp;
export declare function _BinaryenLeUVecI16x8(): BinaryenOp;
export declare function _BinaryenGeSVecI16x8(): BinaryenOp;
export declare function _BinaryenGeUVecI16x8(): BinaryenOp;
export declare function _BinaryenEqVecI32x4(): BinaryenOp;
export declare function _BinaryenNeVecI32x4(): BinaryenOp;
export declare function _BinaryenLtSVecI32x4(): BinaryenOp;
export declare function _BinaryenLtUVecI32x4(): BinaryenOp;
export declare function _BinaryenGtSVecI32x4(): BinaryenOp;
export declare function _BinaryenGtUVecI32x4(): BinaryenOp;
export declare function _BinaryenLeSVecI32x4(): BinaryenOp;
export declare function _BinaryenLeUVecI32x4(): BinaryenOp;
export declare function _BinaryenGeSVecI32x4(): BinaryenOp;
export declare function _BinaryenGeUVecI32x4(): BinaryenOp;
export declare function _BinaryenEqVecF32x4(): BinaryenOp;
export declare function _BinaryenNeVecF32x4(): BinaryenOp;
export declare function _BinaryenLtVecF32x4(): BinaryenOp;
export declare function _BinaryenGtVecF32x4(): BinaryenOp;
export declare function _BinaryenLeVecF32x4(): BinaryenOp;
export declare function _BinaryenGeVecF32x4(): BinaryenOp;
export declare function _BinaryenEqVecF64x2(): BinaryenOp;
export declare function _BinaryenNeVecF64x2(): BinaryenOp;
export declare function _BinaryenLtVecF64x2(): BinaryenOp;
export declare function _BinaryenGtVecF64x2(): BinaryenOp;
export declare function _BinaryenLeVecF64x2(): BinaryenOp;
export declare function _BinaryenGeVecF64x2(): BinaryenOp;
export declare function _BinaryenNotVec128(): BinaryenOp;
export declare function _BinaryenAndVec128(): BinaryenOp;
export declare function _BinaryenOrVec128(): BinaryenOp;
export declare function _BinaryenXorVec128(): BinaryenOp;
export declare function _BinaryenAndNotVec128(): BinaryenOp;
export declare function _BinaryenBitselectVec128(): BinaryenOp;
export declare function _BinaryenAbsVecI8x16(): BinaryenOp;
export declare function _BinaryenNegVecI8x16(): BinaryenOp;
export declare function _BinaryenAnyTrueVecI8x16(): BinaryenOp;
export declare function _BinaryenAllTrueVecI8x16(): BinaryenOp;
export declare function _BinaryenBitmaskVecI8x16(): BinaryenOp;
export declare function _BinaryenShlVecI8x16(): BinaryenOp;
export declare function _BinaryenShrSVecI8x16(): BinaryenOp;
export declare function _BinaryenShrUVecI8x16(): BinaryenOp;
export declare function _BinaryenAddVecI8x16(): BinaryenOp;
export declare function _BinaryenAddSatSVecI8x16(): BinaryenOp;
export declare function _BinaryenAddSatUVecI8x16(): BinaryenOp;
export declare function _BinaryenSubVecI8x16(): BinaryenOp;
export declare function _BinaryenSubSatSVecI8x16(): BinaryenOp;
export declare function _BinaryenSubSatUVecI8x16(): BinaryenOp;
export declare function _BinaryenMulVecI8x16(): BinaryenOp;
export declare function _BinaryenMinSVecI8x16(): BinaryenOp;
export declare function _BinaryenMinUVecI8x16(): BinaryenOp;
export declare function _BinaryenMaxSVecI8x16(): BinaryenOp;
export declare function _BinaryenMaxUVecI8x16(): BinaryenOp;
export declare function _BinaryenAvgrUVecI8x16(): BinaryenOp;
export declare function _BinaryenAbsVecI16x8(): BinaryenOp;
export declare function _BinaryenNegVecI16x8(): BinaryenOp;
export declare function _BinaryenAnyTrueVecI16x8(): BinaryenOp;
export declare function _BinaryenAllTrueVecI16x8(): BinaryenOp;
export declare function _BinaryenBitmaskVecI16x8(): BinaryenOp;
export declare function _BinaryenShlVecI16x8(): BinaryenOp;
export declare function _BinaryenShrSVecI16x8(): BinaryenOp;
export declare function _BinaryenShrUVecI16x8(): BinaryenOp;
export declare function _BinaryenAddVecI16x8(): BinaryenOp;
export declare function _BinaryenAddSatSVecI16x8(): BinaryenOp;
export declare function _BinaryenAddSatUVecI16x8(): BinaryenOp;
export declare function _BinaryenSubVecI16x8(): BinaryenOp;
export declare function _BinaryenSubSatSVecI16x8(): BinaryenOp;
export declare function _BinaryenSubSatUVecI16x8(): BinaryenOp;
export declare function _BinaryenMulVecI16x8(): BinaryenOp;
export declare function _BinaryenMinSVecI16x8(): BinaryenOp;
export declare function _BinaryenMinUVecI16x8(): BinaryenOp;
export declare function _BinaryenMaxSVecI16x8(): BinaryenOp;
export declare function _BinaryenMaxUVecI16x8(): BinaryenOp;
export declare function _BinaryenAvgrUVecI16x8(): BinaryenOp;
export declare function _BinaryenAbsVecI32x4(): BinaryenOp;
export declare function _BinaryenNegVecI32x4(): BinaryenOp;
export declare function _BinaryenAnyTrueVecI32x4(): BinaryenOp;
export declare function _BinaryenAllTrueVecI32x4(): BinaryenOp;
export declare function _BinaryenBitmaskVecI32x4(): BinaryenOp;
export declare function _BinaryenShlVecI32x4(): BinaryenOp;
export declare function _BinaryenShrSVecI32x4(): BinaryenOp;
export declare function _BinaryenShrUVecI32x4(): BinaryenOp;
export declare function _BinaryenAddVecI32x4(): BinaryenOp;
export declare function _BinaryenSubVecI32x4(): BinaryenOp;
export declare function _BinaryenMulVecI32x4(): BinaryenOp;
export declare function _BinaryenMinSVecI32x4(): BinaryenOp;
export declare function _BinaryenMinUVecI32x4(): BinaryenOp;
export declare function _BinaryenMaxSVecI32x4(): BinaryenOp;
export declare function _BinaryenMaxUVecI32x4(): BinaryenOp;
export declare function _BinaryenDotSVecI16x8ToVecI32x4(): BinaryenOp;
export declare function _BinaryenNegVecI64x2(): BinaryenOp;
export declare function _BinaryenAnyTrueVecI64x2(): BinaryenOp;
export declare function _BinaryenAllTrueVecI64x2(): BinaryenOp;
export declare function _BinaryenShlVecI64x2(): BinaryenOp;
export declare function _BinaryenShrSVecI64x2(): BinaryenOp;
export declare function _BinaryenShrUVecI64x2(): BinaryenOp;
export declare function _BinaryenAddVecI64x2(): BinaryenOp;
export declare function _BinaryenSubVecI64x2(): BinaryenOp;
export declare function _BinaryenAbsVecF32x4(): BinaryenOp;
export declare function _BinaryenNegVecF32x4(): BinaryenOp;
export declare function _BinaryenSqrtVecF32x4(): BinaryenOp;
export declare function _BinaryenQFMAVecF32x4(): BinaryenOp;
export declare function _BinaryenQFMSVecF32x4(): BinaryenOp;
export declare function _BinaryenAddVecF32x4(): BinaryenOp;
export declare function _BinaryenSubVecF32x4(): BinaryenOp;
export declare function _BinaryenMulVecF32x4(): BinaryenOp;
export declare function _BinaryenDivVecF32x4(): BinaryenOp;
export declare function _BinaryenMinVecF32x4(): BinaryenOp;
export declare function _BinaryenMaxVecF32x4(): BinaryenOp;
export declare function _BinaryenAbsVecF64x2(): BinaryenOp;
export declare function _BinaryenNegVecF64x2(): BinaryenOp;
export declare function _BinaryenSqrtVecF64x2(): BinaryenOp;
export declare function _BinaryenQFMAVecF64x2(): BinaryenOp;
export declare function _BinaryenQFMSVecF64x2(): BinaryenOp;
export declare function _BinaryenAddVecF64x2(): BinaryenOp;
export declare function _BinaryenSubVecF64x2(): BinaryenOp;
export declare function _BinaryenMulVecF64x2(): BinaryenOp;
export declare function _BinaryenDivVecF64x2(): BinaryenOp;
export declare function _BinaryenMinVecF64x2(): BinaryenOp;
export declare function _BinaryenMaxVecF64x2(): BinaryenOp;
export declare function _BinaryenTruncSatSVecF32x4ToVecI32x4(): BinaryenOp;
export declare function _BinaryenTruncSatUVecF32x4ToVecI32x4(): BinaryenOp;
export declare function _BinaryenTruncSatSVecF64x2ToVecI64x2(): BinaryenOp;
export declare function _BinaryenTruncSatUVecF64x2ToVecI64x2(): BinaryenOp;
export declare function _BinaryenConvertSVecI32x4ToVecF32x4(): BinaryenOp;
export declare function _BinaryenConvertUVecI32x4ToVecF32x4(): BinaryenOp;
export declare function _BinaryenConvertSVecI64x2ToVecF64x2(): BinaryenOp;
export declare function _BinaryenConvertUVecI64x2ToVecF64x2(): BinaryenOp;
export declare function _BinaryenLoadSplatVec8x16(): BinaryenOp;
export declare function _BinaryenLoadSplatVec16x8(): BinaryenOp;
export declare function _BinaryenLoadSplatVec32x4(): BinaryenOp;
export declare function _BinaryenLoadSplatVec64x2(): BinaryenOp;
export declare function _BinaryenLoadExtSVec8x8ToVecI16x8(): BinaryenOp;
export declare function _BinaryenLoadExtUVec8x8ToVecI16x8(): BinaryenOp;
export declare function _BinaryenLoadExtSVec16x4ToVecI32x4(): BinaryenOp;
export declare function _BinaryenLoadExtUVec16x4ToVecI32x4(): BinaryenOp;
export declare function _BinaryenLoadExtSVec32x2ToVecI64x2(): BinaryenOp;
export declare function _BinaryenLoadExtUVec32x2ToVecI64x2(): BinaryenOp;
export declare function _BinaryenNarrowSVecI16x8ToVecI8x16(): BinaryenOp;
export declare function _BinaryenNarrowUVecI16x8ToVecI8x16(): BinaryenOp;
export declare function _BinaryenNarrowSVecI32x4ToVecI16x8(): BinaryenOp;
export declare function _BinaryenNarrowUVecI32x4ToVecI16x8(): BinaryenOp;
export declare function _BinaryenWidenLowSVecI8x16ToVecI16x8(): BinaryenOp;
export declare function _BinaryenWidenHighSVecI8x16ToVecI16x8(): BinaryenOp;
export declare function _BinaryenWidenLowUVecI8x16ToVecI16x8(): BinaryenOp;
export declare function _BinaryenWidenHighUVecI8x16ToVecI16x8(): BinaryenOp;
export declare function _BinaryenWidenLowSVecI16x8ToVecI32x4(): BinaryenOp;
export declare function _BinaryenWidenHighSVecI16x8ToVecI32x4(): BinaryenOp;
export declare function _BinaryenWidenLowUVecI16x8ToVecI32x4(): BinaryenOp;
export declare function _BinaryenWidenHighUVecI16x8ToVecI32x4(): BinaryenOp;
export declare function _BinaryenSwizzleVec8x16(): BinaryenOp;

type BinaryenExpressionRef = usize;

export declare function _BinaryenExpressionGetId(expr: BinaryenExpressionRef): BinaryenExpressionId;
export declare function _BinaryenExpressionGetType(expr: BinaryenExpressionRef): BinaryenType;
export declare function _BinaryenExpressionSetType(expr: BinaryenExpressionRef, type: BinaryenType): void;
export declare function _BinaryenExpressionPrint(expr: BinaryenExpressionRef): void;
export declare function _BinaryenExpressionCopy(expr: BinaryenExpressionRef, module: BinaryenModuleRef): BinaryenExpressionRef;
export declare function _BinaryenExpressionFinalize(expr: BinaryenExpressionRef): void;

export declare function _BinaryenBlock(module: BinaryenModuleRef, name: BinaryenString, childExprs: BinaryenArray<BinaryenExpressionRef>, numChildren: BinaryenIndex, type: BinaryenType): BinaryenExpressionRef;
export declare function _BinaryenBlockGetName(expr: BinaryenExpressionRef): BinaryenString;
export declare function _BinaryenBlockSetName(expr: BinaryenExpressionRef, name: BinaryenString): void;
export declare function _BinaryenBlockGetNumChildren(expr: BinaryenExpressionRef): BinaryenIndex;
export declare function _BinaryenBlockGetChildAt(expr: BinaryenExpressionRef, index: BinaryenIndex): BinaryenExpressionRef;
export declare function _BinaryenBlockSetChildAt(expr: BinaryenExpressionRef, index: BinaryenIndex, childExpr: BinaryenExpressionRef): void;
export declare function _BinaryenBlockAppendChild(expr: BinaryenExpressionRef, childExpr: BinaryenExpressionRef): BinaryenIndex;
export declare function _BinaryenBlockInsertChildAt(expr: BinaryenExpressionRef, index: BinaryenIndex, childExpr: BinaryenExpressionRef): void;
export declare function _BinaryenBlockRemoveChildAt(expr: BinaryenExpressionRef, index: BinaryenIndex): BinaryenExpressionRef;

export declare function _BinaryenIf(module: BinaryenModuleRef, conditionExpr: BinaryenExpressionRef, ifTrueExpr: BinaryenExpressionRef, ifFalseExpr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenIfGetCondition(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenIfSetCondition(expr: BinaryenExpressionRef, conditionExpr: BinaryenExpressionRef): void;
export declare function _BinaryenIfGetIfTrue(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenIfSetIfTrue(expr: BinaryenExpressionRef, ifTrueExpr: BinaryenExpressionRef): void;
export declare function _BinaryenIfGetIfFalse(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenIfSetIfFalse(expr: BinaryenExpressionRef, ifFalseExpr: BinaryenExpressionRef): void;

export declare function _BinaryenLoop(module: BinaryenModuleRef, name: BinaryenString, bodyExpr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenLoopGetName(expr: BinaryenExpressionRef): BinaryenString;
export declare function _BinaryenLoopSetName(expr: BinaryenExpressionRef, name: BinaryenString): void;
export declare function _BinaryenLoopGetBody(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenLoopSetBody(expr: BinaryenExpressionRef, bodyExpr: BinaryenExpressionRef): void;

export declare function _BinaryenBreak(module: BinaryenModuleRef, name: BinaryenString, conditionExpr: BinaryenExpressionRef, valueExpr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenBreakGetName(expr: BinaryenExpressionRef): BinaryenString;
export declare function _BinaryenBreakSetName(expr: BinaryenExpressionRef, name: BinaryenString): void;
export declare function _BinaryenBreakGetCondition(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenBreakSetCondition(expr: BinaryenExpressionRef, conditionExpr: BinaryenExpressionRef): void;
export declare function _BinaryenBreakGetValue(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenBreakSetValue(expr: BinaryenExpressionRef, valueExpr: BinaryenExpressionRef): void;

export declare function _BinaryenSwitch(module: BinaryenModuleRef, names: BinaryenArray<BinaryenString>, numNames: BinaryenIndex, defaultName: BinaryenString, conditionExpr: BinaryenExpressionRef, valueExpr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenSwitchGetNumNames(expr: BinaryenExpressionRef): BinaryenIndex;
export declare function _BinaryenSwitchGetNameAt(expr: BinaryenExpressionRef, index: BinaryenIndex): BinaryenString;
export declare function _BinaryenSwitchSetNameAt(expr: BinaryenExpressionRef, index: BinaryenIndex, name: BinaryenString): void;
export declare function _BinaryenSwitchAppendName(expr: BinaryenExpressionRef, name: BinaryenString): BinaryenIndex;
export declare function _BinaryenSwitchInsertNameAt(expr: BinaryenExpressionRef, index: BinaryenIndex, name: BinaryenString): void;
export declare function _BinaryenSwitchRemoveNameAt(expr: BinaryenExpressionRef, index: BinaryenIndex): BinaryenString;
export declare function _BinaryenSwitchGetDefaultName(expr: BinaryenExpressionRef): BinaryenString;
export declare function _BinaryenSwitchSetDefaultName(expr: BinaryenExpressionRef, defaultName: BinaryenString): void;
export declare function _BinaryenSwitchGetCondition(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenSwitchSetCondition(expr: BinaryenExpressionRef, conditionExpr: BinaryenExpressionRef): void;
export declare function _BinaryenSwitchGetValue(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenSwitchSetValue(expr: BinaryenExpressionRef, valueExpr: BinaryenExpressionRef): void;

export declare function _BinaryenCall(module: BinaryenModuleRef, targetName: BinaryenString, operandExprs: BinaryenArray<BinaryenExpressionRef>, numOperands: BinaryenIndex, returnType: BinaryenType): BinaryenExpressionRef;
export declare function _BinaryenCallGetTarget(expr: BinaryenExpressionRef): BinaryenString;
export declare function _BinaryenCallSetTarget(expr: BinaryenExpressionRef, targetName: BinaryenString): void;
export declare function _BinaryenCallGetNumOperands(expr: BinaryenExpressionRef): BinaryenIndex;
export declare function _BinaryenCallGetOperandAt(expr: BinaryenExpressionRef, index: BinaryenIndex): BinaryenExpressionRef;
export declare function _BinaryenCallSetOperandAt(expr: BinaryenExpressionRef, index: BinaryenIndex, operandExpr: BinaryenExpressionRef): void;
export declare function _BinaryenCallAppendOperand(expr: BinaryenExpressionRef, operandExpr: BinaryenExpressionRef): BinaryenIndex;
export declare function _BinaryenCallInsertOperandAt(expr: BinaryenExpressionRef, index: BinaryenIndex, operandExpr: BinaryenExpressionRef): void;
export declare function _BinaryenCallRemoveOperandAt(expr: BinaryenExpressionRef, index: BinaryenIndex): BinaryenExpressionRef;
export declare function _BinaryenCallIsReturn(expr: BinaryenExpressionRef): bool;
export declare function _BinaryenCallSetReturn(expr: BinaryenExpressionRef, isReturn: bool): void;
// ^ with return = true
export declare function _BinaryenReturnCall(module: BinaryenModuleRef, targetName: BinaryenString, operandExprs: BinaryenArray<BinaryenExpressionRef>, numOperands: BinaryenIndex, returnType: BinaryenType): BinaryenExpressionRef;

export declare function _BinaryenCallIndirect(module: BinaryenModuleRef, targetExpr: BinaryenExpressionRef, operandExprs: BinaryenArray<BinaryenExpressionRef>, numOperands: BinaryenIndex, params: BinaryenType, results: BinaryenType): BinaryenExpressionRef;
export declare function _BinaryenCallIndirectGetTarget(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenCallIndirectSetTarget(expr: BinaryenExpressionRef, targetExpr: BinaryenExpressionRef): void;
export declare function _BinaryenCallIndirectGetNumOperands(expr: BinaryenExpressionRef): BinaryenIndex;
export declare function _BinaryenCallIndirectGetOperandAt(expr: BinaryenExpressionRef, index: BinaryenIndex): BinaryenExpressionRef;
export declare function _BinaryenCallIndirectSetOperandAt(expr: BinaryenExpressionRef, index: BinaryenIndex, operandExpr: BinaryenExpressionRef): void;
export declare function _BinaryenCallIndirectAppendOperand(expr: BinaryenExpressionRef, operandExpr: BinaryenExpressionRef): BinaryenIndex;
export declare function _BinaryenCallIndirectInsertOperandAt(expr: BinaryenExpressionRef, index: BinaryenIndex, operandExpr: BinaryenExpressionRef): void;
export declare function _BinaryenCallIndirectRemoveOperandAt(expr: BinaryenExpressionRef, index: BinaryenIndex): BinaryenExpressionRef;
export declare function _BinaryenCallIndirectIsReturn(expr: BinaryenExpressionRef): bool;
export declare function _BinaryenCallIndirectSetReturn(expr: BinaryenExpressionRef, isReturn: bool): void;
// ^ with return = true
export declare function _BinaryenReturnCallIndirect(module: BinaryenModuleRef, targetExpr: BinaryenExpressionRef, operandExprs: BinaryenArray<BinaryenExpressionRef>, numOperands: BinaryenIndex, params: BinaryenType, results: BinaryenType): BinaryenExpressionRef;

export declare function _BinaryenLocalGet(module: BinaryenModuleRef, index: BinaryenIndex, type: BinaryenType): BinaryenExpressionRef;
export declare function _BinaryenLocalGetGetIndex(expr: BinaryenExpressionRef): BinaryenIndex;
export declare function _BinaryenLocalGetSetIndex(expr: BinaryenExpressionRef, index: BinaryenIndex): void;

export declare function _BinaryenLocalSet(module: BinaryenModuleRef, index: BinaryenIndex, valueExpr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenLocalSetIsTee(expr: BinaryenExpressionRef): bool;
export declare function _BinaryenLocalSetGetIndex(expr: BinaryenExpressionRef): BinaryenIndex;
export declare function _BinaryenLocalSetSetIndex(expr: BinaryenExpressionRef, index: BinaryenIndex): void;
export declare function _BinaryenLocalSetGetValue(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenLocalSetSetValue(expr: BinaryenExpressionRef, valueExpr: BinaryenExpressionRef): void;
// ^ with type != none
export declare function _BinaryenLocalTee(module: BinaryenModuleRef, index: BinaryenIndex, valueExpr: BinaryenExpressionRef, type: BinaryenType): BinaryenExpressionRef;

export declare function _BinaryenGlobalGet(module: BinaryenModuleRef, name: BinaryenString, type: BinaryenType): BinaryenExpressionRef;
export declare function _BinaryenGlobalGetGetName(expr: BinaryenExpressionRef): BinaryenString;
export declare function _BinaryenGlobalGetSetName(expr: BinaryenExpressionRef, name: BinaryenString): void;

export declare function _BinaryenGlobalSet(module: BinaryenModuleRef, name: BinaryenString, value: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenGlobalSetGetName(expr: BinaryenExpressionRef): BinaryenString;
export declare function _BinaryenGlobalSetSetName(expr: BinaryenExpressionRef, name: BinaryenString): void;
export declare function _BinaryenGlobalSetGetValue(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenGlobalSetSetValue(expr: BinaryenExpressionRef, valueExpr: BinaryenExpressionRef): void;

export declare function _BinaryenMemorySize(module: BinaryenModuleRef): BinaryenExpressionRef;

export declare function _BinaryenMemoryGrow(module: BinaryenModuleRef, delta: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenMemoryGrowGetDelta(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenMemoryGrowSetDelta(expr: BinaryenExpressionRef, delta: BinaryenExpressionRef): void;

export declare function _BinaryenLoad(module: BinaryenModuleRef, bytes: u32, signed: bool, offset: u32, align: u32, type: BinaryenType, ptrExpr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenLoadIsAtomic(expr: BinaryenExpressionRef): bool;
export declare function _BinaryenLoadSetAtomic(expr: BinaryenExpressionRef, isAtomic: bool): void;
export declare function _BinaryenLoadIsSigned(expr: BinaryenExpressionRef): bool;
export declare function _BinaryenLoadSetSigned(expr: BinaryenExpressionRef, isSigned: bool): void;
export declare function _BinaryenLoadGetOffset(expr: BinaryenExpressionRef): u32;
export declare function _BinaryenLoadSetOffset(expr: BinaryenExpressionRef, offset: u32): void;
export declare function _BinaryenLoadGetBytes(expr: BinaryenExpressionRef): u32;
export declare function _BinaryenLoadSetBytes(expr: BinaryenExpressionRef, bytes: u32): void;
export declare function _BinaryenLoadGetAlign(expr: BinaryenExpressionRef): u32;
export declare function _BinaryenLoadSetAlign(expr: BinaryenExpressionRef, align: u32): void;
export declare function _BinaryenLoadGetPtr(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenLoadSetPtr(expr: BinaryenExpressionRef, ptrExpr: BinaryenExpressionRef): void;
// ^ with atomic = true
export declare function _BinaryenAtomicLoad(module: BinaryenModuleRef, bytes: BinaryenIndex, offset: BinaryenIndex, type: BinaryenType, ptrExpr: BinaryenExpressionRef): BinaryenExpressionRef;

export declare function _BinaryenStore(module: BinaryenModuleRef, bytes: u32, offset: u32, align: u32, ptrExpr: BinaryenExpressionRef, valueExpr: BinaryenExpressionRef, type: BinaryenType): BinaryenExpressionRef;
export declare function _BinaryenStoreIsAtomic(expr: BinaryenExpressionRef): bool;
export declare function _BinaryenStoreSetAtomic(expr: BinaryenExpressionRef, isAtomic: bool): void;
export declare function _BinaryenStoreGetBytes(expr: BinaryenExpressionRef): u32;
export declare function _BinaryenStoreSetBytes(expr: BinaryenExpressionRef, bytes: u32): void;
export declare function _BinaryenStoreGetOffset(expr: BinaryenExpressionRef): u32;
export declare function _BinaryenStoreSetOffset(expr: BinaryenExpressionRef, offset: u32): void;
export declare function _BinaryenStoreGetAlign(expr: BinaryenExpressionRef): u32;
export declare function _BinaryenStoreSetAlign(expr: BinaryenExpressionRef, align: u32): void;
export declare function _BinaryenStoreGetPtr(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenStoreSetPtr(expr: BinaryenExpressionRef, ptrExpr: BinaryenExpressionRef): void;
export declare function _BinaryenStoreGetValue(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenStoreSetValue(expr: BinaryenExpressionRef, valueExpr: BinaryenExpressionRef): void;
export declare function _BinaryenStoreGetValueType(expr: BinaryenExpressionRef): BinaryenType;
export declare function _BinaryenStoreSetValueType(expr: BinaryenExpressionRef, valueType: BinaryenType): void;
// ^ with atomic = true
export declare function _BinaryenAtomicStore(module: BinaryenModuleRef, bytes: BinaryenIndex, offset: BinaryenIndex, ptrExpr: BinaryenExpressionRef, valueExpr: BinaryenExpressionRef, type: BinaryenType): BinaryenExpressionRef;

export declare function _BinaryenConst(module: BinaryenModuleRef, value: BinaryenLiteral): BinaryenExpressionRef;
export declare function _BinaryenConstGetValueI32(expr: BinaryenExpressionRef): i32;
export declare function _BinaryenConstSetValueI32(expr: BinaryenExpressionRef, value: i32): void;
export declare function _BinaryenConstGetValueI64Low(expr: BinaryenExpressionRef): i32;
export declare function _BinaryenConstSetValueI64Low(expr: BinaryenExpressionRef, value: i32): void;
export declare function _BinaryenConstGetValueI64High(expr: BinaryenExpressionRef): i32;
export declare function _BinaryenConstSetValueI64High(expr: BinaryenExpressionRef, value: i32): void;
export declare function _BinaryenConstGetValueF32(expr: BinaryenExpressionRef): f32;
export declare function _BinaryenConstSetValueF32(expr: BinaryenExpressionRef, value: f32): void;
export declare function _BinaryenConstGetValueF64(expr: BinaryenExpressionRef): f64;
export declare function _BinaryenConstSetValueF64(expr: BinaryenExpressionRef, value: f64): void;
export declare function _BinaryenConstGetValueV128(expr: BinaryenExpressionRef, valueOut: BinaryenArray<u8>): void;
export declare function _BinaryenConstSetValueV128(expr: BinaryenExpressionRef, value: BinaryenArray<u8>): void;

export declare function _BinaryenUnary(module: BinaryenModuleRef, op: BinaryenOp, valueExpr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenUnaryGetOp(expr: BinaryenExpressionRef): BinaryenOp;
export declare function _BinaryenUnarySetOp(expr: BinaryenExpressionRef, op: BinaryenOp): void;
export declare function _BinaryenUnaryGetValue(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenUnarySetValue(expr: BinaryenExpressionRef, valueExpr: BinaryenExpressionRef): void;

export declare function _BinaryenBinary(module: BinaryenModuleRef, op: BinaryenOp, leftExpr: BinaryenExpressionRef, rightExpr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenBinaryGetOp(expr: BinaryenExpressionRef): BinaryenOp;
export declare function _BinaryenBinarySetOp(expr: BinaryenExpressionRef, op: BinaryenOp): void;
export declare function _BinaryenBinaryGetLeft(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenBinarySetLeft(expr: BinaryenExpressionRef, leftExpr: BinaryenExpressionRef): void;
export declare function _BinaryenBinaryGetRight(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenBinarySetRight(expr: BinaryenExpressionRef, rightExpr: BinaryenExpressionRef): void;

export declare function _BinaryenSelect(module: BinaryenModuleRef, conditionExpr: BinaryenExpressionRef, ifTrueExpr: BinaryenExpressionRef, ifFalseExpr: BinaryenExpressionRef, type: BinaryenType): BinaryenExpressionRef;
export declare function _BinaryenSelectGetIfTrue(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenSelectSetIfTrue(expr: BinaryenExpressionRef, ifTrueExpr: BinaryenExpressionRef): void;
export declare function _BinaryenSelectGetIfFalse(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenSelectSetIfFalse(expr: BinaryenExpressionRef, ifFalseExpr: BinaryenExpressionRef): void;
export declare function _BinaryenSelectGetCondition(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenSelectSetCondition(expr: BinaryenExpressionRef, conditionExpr: BinaryenExpressionRef): void;

export declare function _BinaryenDrop(module: BinaryenModuleRef, valueExpr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenDropGetValue(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenDropSetValue(expr: BinaryenExpressionRef, valueExpr: BinaryenExpressionRef): void;

export declare function _BinaryenReturn(module: BinaryenModuleRef, valueExpr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenReturnGetValue(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenReturnSetValue(expr: BinaryenExpressionRef, valueExpr: BinaryenExpressionRef): void;

export declare function _BinaryenNop(module: BinaryenModuleRef): BinaryenExpressionRef;

export declare function _BinaryenUnreachable(module: BinaryenModuleRef): BinaryenExpressionRef;

export declare function _BinaryenAtomicRMW(module: BinaryenModuleRef, op: BinaryenOp, bytes: u32, offset: u32, ptrExpr: BinaryenExpressionRef, valueExpr: BinaryenExpressionRef, type: BinaryenType): BinaryenExpressionRef;
export declare function _BinaryenAtomicRMWGetOp(expr: BinaryenExpressionRef): BinaryenOp;
export declare function _BinaryenAtomicRMWSetOp(expr: BinaryenExpressionRef, op: BinaryenOp): void;
export declare function _BinaryenAtomicRMWGetBytes(expr: BinaryenExpressionRef): u32;
export declare function _BinaryenAtomicRMWSetBytes(expr: BinaryenExpressionRef, bytes: u32): void;
export declare function _BinaryenAtomicRMWGetOffset(expr: BinaryenExpressionRef): u32;
export declare function _BinaryenAtomicRMWSetOffset(expr: BinaryenExpressionRef, offset: u32): void;
export declare function _BinaryenAtomicRMWGetPtr(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenAtomicRMWSetPtr(expr: BinaryenExpressionRef, ptrExpr: BinaryenExpressionRef): void;
export declare function _BinaryenAtomicRMWGetValue(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenAtomicRMWSetValue(expr: BinaryenExpressionRef, valueExpr: BinaryenExpressionRef): void;

export declare function _BinaryenAtomicCmpxchg(module: BinaryenModuleRef, bytes: u32, offset: u32, ptrExpr: BinaryenExpressionRef, expectedExpr: BinaryenExpressionRef, replacementExpr: BinaryenExpressionRef, type: BinaryenType): BinaryenExpressionRef;
export declare function _BinaryenAtomicCmpxchgGetBytes(expr: BinaryenExpressionRef): u32;
export declare function _BinaryenAtomicCmpxchgSetBytes(expr: BinaryenExpressionRef, bytes: u32): void;
export declare function _BinaryenAtomicCmpxchgGetOffset(expr: BinaryenExpressionRef): u32;
export declare function _BinaryenAtomicCmpxchgSetOffset(expr: BinaryenExpressionRef, offset: u32): void;
export declare function _BinaryenAtomicCmpxchgGetPtr(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenAtomicCmpxchgSetPtr(expr: BinaryenExpressionRef, ptrExpr: BinaryenExpressionRef): void;
export declare function _BinaryenAtomicCmpxchgGetExpected(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenAtomicCmpxchgSetExpected(expr: BinaryenExpressionRef, expectedExpr: BinaryenExpressionRef): void;
export declare function _BinaryenAtomicCmpxchgGetReplacement(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenAtomicCmpxchgSetReplacement(expr: BinaryenExpressionRef, replacementExpr: BinaryenExpressionRef): void;

export declare function _BinaryenAtomicWait(module: BinaryenModuleRef, ptrExpr: BinaryenExpressionRef, expectedExpr: BinaryenExpressionRef, timeoutExpr: BinaryenExpressionRef, expectedType: BinaryenType): BinaryenExpressionRef;
export declare function _BinaryenAtomicWaitGetPtr(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenAtomicWaitSetPtr(expr: BinaryenExpressionRef, ptrExpr: BinaryenExpressionRef): void;
export declare function _BinaryenAtomicWaitGetExpected(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenAtomicWaitSetExpected(expr: BinaryenExpressionRef, expectedExpr: BinaryenExpressionRef): void;
export declare function _BinaryenAtomicWaitGetTimeout(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenAtomicWaitSetTimeout(expr: BinaryenExpressionRef, timeoutExpr: BinaryenExpressionRef): void;
export declare function _BinaryenAtomicWaitGetExpectedType(expr: BinaryenExpressionRef): BinaryenType;
export declare function _BinaryenAtomicWaitSetExpectedType(expr: BinaryenExpressionRef, expectedType: BinaryenType): void;

export declare function _BinaryenAtomicNotify(module: BinaryenModuleRef, ptrExpr: BinaryenExpressionRef, notifyCountExpr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenAtomicNotifyGetPtr(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenAtomicNotifySetPtr(expr: BinaryenExpressionRef, ptrExpr: BinaryenExpressionRef): void;
export declare function _BinaryenAtomicNotifyGetNotifyCount(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenAtomicNotifySetNotifyCount(expr: BinaryenExpressionRef, notifyCountExpr: BinaryenExpressionRef): void;

export declare function _BinaryenAtomicFence(module: BinaryenModuleRef): BinaryenExpressionRef;
export declare function _BinaryenAtomicFenceGetOrder(expr: BinaryenExportRef): u8; // unused
export declare function _BinaryenAtomicFenceSetOrder(expr: BinaryenExportRef, order: u8): void; // unused

export declare function _BinaryenSIMDExtract(module: BinaryenModuleRef, op: BinaryenOp, vecExpr: BinaryenExpressionRef, index: u8): BinaryenExpressionRef;
export declare function _BinaryenSIMDExtractGetOp(expr: BinaryenExpressionRef): BinaryenOp;
export declare function _BinaryenSIMDExtractSetOp(expr: BinaryenExpressionRef, op: BinaryenOp): void;
export declare function _BinaryenSIMDExtractGetVec(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenSIMDExtractSetVec(expr: BinaryenExpressionRef, vecExpr: BinaryenExpressionRef): void;
export declare function _BinaryenSIMDExtractGetIndex(expr: BinaryenExpressionRef): u8;
export declare function _BinaryenSIMDExtractSetIndex(expr: BinaryenExpressionRef, index: u8): void;

export declare function _BinaryenSIMDReplace(module: BinaryenModuleRef, op: BinaryenOp, vecEpr: BinaryenExpressionRef, index: u8, valueExpr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenSIMDReplaceGetOp(expr: BinaryenExpressionRef): BinaryenOp;
export declare function _BinaryenSIMDReplaceSetOp(expr: BinaryenExpressionRef, op: BinaryenOp): void;
export declare function _BinaryenSIMDReplaceGetVec(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenSIMDReplaceSetVec(expr: BinaryenExpressionRef, vecExpr: BinaryenExpressionRef): void;
export declare function _BinaryenSIMDReplaceGetIndex(expr: BinaryenExpressionRef): u8;
export declare function _BinaryenSIMDReplaceSetIndex(expr: BinaryenExpressionRef, index: u8): void;
export declare function _BinaryenSIMDReplaceGetValue(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenSIMDReplaceSetValue(expr: BinaryenExpressionRef, valueExpr: BinaryenExpressionRef): void;

export declare function _BinaryenSIMDShuffle(module: BinaryenModuleRef, leftExpr: BinaryenExpressionRef, rightExpr: BinaryenExpressionRef, mask: BinaryenArray<u8>): BinaryenExpressionRef;
export declare function _BinaryenSIMDShuffleGetLeft(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenSIMDShuffleSetLeft(expr: BinaryenExpressionRef, leftExpr: BinaryenExpressionRef): void;
export declare function _BinaryenSIMDShuffleGetRight(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenSIMDShuffleSetRight(expr: BinaryenExpressionRef, rightExpr: BinaryenExpressionRef): void;
export declare function _BinaryenSIMDShuffleGetMask(expr: BinaryenExpressionRef, maskOut: BinaryenArray<u8>): void;
export declare function _BinaryenSIMDShuffleSetMask(expr: BinaryenExpressionRef, mask: BinaryenArray<u8>): void;

export declare function _BinaryenSIMDTernary(module: BinaryenModuleRef, op: BinaryenOp, aExpr: BinaryenExpressionRef, bExpr: BinaryenExpressionRef, cExpr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenSIMDTernaryGetOp(expr: BinaryenExpressionRef): BinaryenOp;
export declare function _BinaryenSIMDTernarySetOp(expr: BinaryenExpressionRef, op: BinaryenOp): void;
export declare function _BinaryenSIMDTernaryGetA(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenSIMDTernarySetA(expr: BinaryenExpressionRef, aExpr: BinaryenExpressionRef): void;
export declare function _BinaryenSIMDTernaryGetB(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenSIMDTernarySetB(expr: BinaryenExpressionRef, bExpr: BinaryenExpressionRef): void;
export declare function _BinaryenSIMDTernaryGetC(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenSIMDTernarySetC(expr: BinaryenExpressionRef, cExpr: BinaryenExpressionRef): void;

export declare function _BinaryenSIMDShift(module: BinaryenModuleRef, op: BinaryenOp, vecExpr: BinaryenExpressionRef, shiftExpr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenSIMDShiftGetOp(expr: BinaryenExpressionRef): BinaryenOp;
export declare function _BinaryenSIMDShiftSetOp(expr: BinaryenExpressionRef, op: BinaryenOp): void;
export declare function _BinaryenSIMDShiftGetVec(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenSIMDShiftSetVec(expr: BinaryenExpressionRef, vecExpr: BinaryenExpressionRef): void;
export declare function _BinaryenSIMDShiftGetShift(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenSIMDShiftSetShift(expr: BinaryenExpressionRef, shiftExpr: BinaryenExpressionRef): void;

export declare function _BinaryenSIMDLoad(module: BinaryenModuleRef, op: BinaryenOp, offset: u32, align: u32, ptrExpr: BinaryenExportRef): BinaryenExpressionRef;
export declare function _BinaryenSIMDLoadGetOp(expr: BinaryenExpressionRef): BinaryenOp;
export declare function _BinaryenSIMDLoadSetOp(expr: BinaryenExpressionRef, op: BinaryenOp): void;
export declare function _BinaryenSIMDLoadGetOffset(expr: BinaryenExpressionRef): u32;
export declare function _BinaryenSIMDLoadSetOffset(expr: BinaryenExpressionRef, offset: u32): void;
export declare function _BinaryenSIMDLoadGetAlign(expr: BinaryenExpressionRef): u32;
export declare function _BinaryenSIMDLoadSetAlign(expr: BinaryenExpressionRef, align: u32): void;
export declare function _BinaryenSIMDLoadGetPtr(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenSIMDLoadSetPtr(expr: BinaryenExpressionRef, ptrExpr: BinaryenExpressionRef): void;

export declare function _BinaryenMemoryInit(module: BinaryenModuleRef, segmentIndex: u32, destExpr: BinaryenExpressionRef, offsetExpr: BinaryenExpressionRef, sizeExpr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenMemoryInitGetSegment(expr: BinaryenExpressionRef): u32;
export declare function _BinaryenMemoryInitSetSegment(expr: BinaryenExpressionRef, segmentIndex: u32): void;
export declare function _BinaryenMemoryInitGetDest(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenMemoryInitSetDest(expr: BinaryenExpressionRef, destExpr: BinaryenExpressionRef): void;
export declare function _BinaryenMemoryInitGetOffset(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenMemoryInitSetOffset(expr: BinaryenExpressionRef, offsetExpr: BinaryenExpressionRef): void;
export declare function _BinaryenMemoryInitGetSize(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenMemoryInitSetSize(expr: BinaryenExpressionRef, sizeExpr: BinaryenExpressionRef): void;

export declare function _BinaryenDataDrop(module: BinaryenModuleRef, segmentIndex: u32): BinaryenExpressionRef;
export declare function _BinaryenDataDropGetSegment(expr: BinaryenExpressionRef): u32;
export declare function _BinaryenDataDropSetSegment(expr: BinaryenExpressionRef, segmentIndex: u32): void;

export declare function _BinaryenMemoryCopy(module: BinaryenModuleRef, destExpr: BinaryenExpressionRef, sourceExpr: BinaryenExpressionRef, sizeExpr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenMemoryCopyGetDest(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenMemoryCopySetDest(expr: BinaryenExpressionRef, destExpr: BinaryenExpressionRef): void;
export declare function _BinaryenMemoryCopyGetSource(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenMemoryCopySetSource(expr: BinaryenExpressionRef, sourceExpr: BinaryenExpressionRef): void;
export declare function _BinaryenMemoryCopyGetSize(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenMemoryCopySetSize(expr: BinaryenExpressionRef, sizeExpr: BinaryenExpressionRef): void;

export declare function _BinaryenMemoryFill(module: BinaryenModuleRef, destExpr: BinaryenExpressionRef, valueExpr: BinaryenExpressionRef, sizeExpr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenMemoryFillGetDest(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenMemoryFillSetDest(expr: BinaryenExpressionRef, destExpr: BinaryenExpressionRef): void;
export declare function _BinaryenMemoryFillGetValue(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenMemoryFillSetValue(expr: BinaryenExpressionRef, valueExpr: BinaryenExpressionRef): void;
export declare function _BinaryenMemoryFillGetSize(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenMemoryFillSetSize(expr: BinaryenExpressionRef, sizeExpr: BinaryenExpressionRef): void;

export declare function _BinaryenRefNull(module: BinaryenModuleRef, type: BinaryenType): BinaryenExpressionRef;

export declare function _BinaryenRefIsNull(module: BinaryenModuleRef, valueExpr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenRefIsNullGetValue(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenRefIsNullSetValue(expr: BinaryenExpressionRef, valueExpr: BinaryenExpressionRef): void;

export declare function _BinaryenRefFunc(module: BinaryenModuleRef, funcName: BinaryenString): BinaryenExpressionRef;
export declare function _BinaryenRefFuncGetFunc(expr: BinaryenExpressionRef): BinaryenString;
export declare function _BinaryenRefFuncSetFunc(expr: BinaryenExpressionRef, funcName: BinaryenString): void;

export declare function _BinaryenTry(module: BinaryenModuleRef, bodyExpr: BinaryenExpressionRef, catchBodyExpr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenTryGetBody(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenTrySetBody(expr: BinaryenExpressionRef, bodyExpr: BinaryenExpressionRef): void;
export declare function _BinaryenTryGetCatchBody(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenTrySetCatchBody(expr: BinaryenExpressionRef, catchBodyExpr: BinaryenExpressionRef): void;

export declare function _BinaryenThrow(module: BinaryenModuleRef, eventName: BinaryenString, operands: BinaryenArray<BinaryenExpressionRef>, numOperands: BinaryenIndex): BinaryenExpressionRef;
export declare function _BinaryenThrowGetEvent(expr: BinaryenExpressionRef): BinaryenString;
export declare function _BinaryenThrowSetEvent(expr: BinaryenExpressionRef, eventName: BinaryenString): void;
export declare function _BinaryenThrowGetNumOperands(expr: BinaryenExpressionRef): BinaryenIndex;
export declare function _BinaryenThrowGetOperandAt(expr: BinaryenExpressionRef, index: BinaryenIndex): BinaryenExpressionRef;
export declare function _BinaryenThrowSetOperandAt(expr: BinaryenExpressionRef, index: BinaryenIndex, operandExpr: BinaryenExpressionRef): void;
export declare function _BinaryenThrowAppendOperand(expr: BinaryenExpressionRef, operandExpr: BinaryenExpressionRef): BinaryenIndex;
export declare function _BinaryenThrowInsertOperandAt(expr: BinaryenExpressionRef, index: BinaryenIndex, operandExpr: BinaryenExpressionRef): void;
export declare function _BinaryenThrowRemoveOperandAt(expr: BinaryenExpressionRef, index: BinaryenIndex): BinaryenExpressionRef;

export declare function _BinaryenRethrow(module: BinaryenModuleRef, exnrefExpr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenRethrowGetExnref(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenRethrowSetExnref(expr: BinaryenExpressionRef, exnrefExpr: BinaryenExpressionRef): void;

export declare function _BinaryenBrOnExn(module: BinaryenModuleRef, name: BinaryenString, eventName: BinaryenString, exnrefExpr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenBrOnExnGetEvent(expr: BinaryenExpressionRef): BinaryenString;
export declare function _BinaryenBrOnExnSetEvent(expr: BinaryenExpressionRef, eventName: BinaryenString): void;
export declare function _BinaryenBrOnExnGetName(expr: BinaryenExpressionRef): BinaryenString;
export declare function _BinaryenBrOnExnSetName(expr: BinaryenExpressionRef, name: BinaryenString): void;
export declare function _BinaryenBrOnExnGetExnref(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenBrOnExnSetExnref(expr: BinaryenExpressionRef, exnrefExpr: BinaryenExpressionRef): void;

export declare function _BinaryenTupleMake(module: BinaryenModuleRef, operandExprs: BinaryenArray<BinaryenExpressionRef>, numOperands: BinaryenIndex): BinaryenExpressionRef;
export declare function _BinaryenTupleMakeGetNumOperands(expr: BinaryenExpressionRef): BinaryenIndex;
export declare function _BinaryenTupleMakeGetOperandAt(expr: BinaryenExpressionRef, index: BinaryenIndex): BinaryenExpressionRef;
export declare function _BinaryenTupleMakeSetOperandAt(expr: BinaryenExpressionRef, index: BinaryenIndex, operandExpr: BinaryenExpressionRef): void;
export declare function _BinaryenTupleMakeAppendOperand(expr: BinaryenExpressionRef, operandExpr: BinaryenExpressionRef): BinaryenIndex;
export declare function _BinaryenTupleMakeInsertOperandAt(expr: BinaryenExpressionRef, index: BinaryenIndex, operandExpr: BinaryenExpressionRef): void;
export declare function _BinaryenTupleMakeRemoveOperandAt(expr: BinaryenExpressionRef, index: BinaryenIndex): BinaryenExpressionRef;

export declare function _BinaryenTupleExtract(module: BinaryenModuleRef, tupleExpr: BinaryenExpressionRef, index: BinaryenIndex): BinaryenExpressionRef;
export declare function _BinaryenTupleExtractGetTuple(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenTupleExtractSetTuple(expr: BinaryenExpressionRef, tupleExpr: BinaryenExpressionRef): void;
export declare function _BinaryenTupleExtractGetIndex(expr: BinaryenExpressionRef): BinaryenIndex;
export declare function _BinaryenTupleExtractSetIndex(expr: BinaryenExpressionRef, index: BinaryenIndex): void;

export declare function _BinaryenPop(module: BinaryenModuleRef, type: BinaryenType): BinaryenExpressionRef;

type BinaryenFunctionRef = usize;

export declare function _BinaryenAddFunction(module: BinaryenModuleRef, name: BinaryenString, params: BinaryenType, results: BinaryenType, varTypes: BinaryenArray<BinaryenType>, numVarTypes: BinaryenIndex, body: BinaryenExpressionRef): BinaryenFunctionRef;
export declare function _BinaryenGetFunction(module: BinaryenModuleRef, name: BinaryenString): BinaryenFunctionRef;
export declare function _BinaryenRemoveFunction(module: BinaryenModuleRef, name: BinaryenString): void;
export declare function _BinaryenGetNumFunctions(module: BinaryenModuleRef): BinaryenIndex;
export declare function _BinaryenGetFunctionByIndex(module: BinaryenModuleRef, index: BinaryenIndex): BinaryenFunctionRef;

export declare function _BinaryenFunctionGetName(func: BinaryenFunctionRef): BinaryenString;
export declare function _BinaryenFunctionGetParams(func: BinaryenFunctionRef): BinaryenType;
export declare function _BinaryenFunctionGetResults(func: BinaryenFunctionRef): BinaryenType;
export declare function _BinaryenFunctionGetNumVars(func: BinaryenFunctionRef): BinaryenIndex;
export declare function _BinaryenFunctionGetVar(func: BinaryenFunctionRef, index: BinaryenIndex): BinaryenType;
export declare function _BinaryenFunctionGetNumLocals(func: BinaryenFunctionRef): BinaryenIndex;
export declare function _BinaryenFunctionHasLocalName(func: BinaryenFunctionRef, index: BinaryenIndex): bool;
export declare function _BinaryenFunctionGetLocalName(func: BinaryenFunctionRef, index: BinaryenIndex): BinaryenString;
export declare function _BinaryenFunctionSetLocalName(func: BinaryenFunctionRef, index: BinaryenIndex, name: BinaryenString): void;
export declare function _BinaryenFunctionGetBody(func: BinaryenFunctionRef): BinaryenExpressionRef;
export declare function _BinaryenFunctionSetBody(func: BinaryenFunctionRef, bodyExpr: BinaryenExpressionRef): void;
export declare function _BinaryenFunctionOptimize(func: BinaryenFunctionRef, module: BinaryenModuleRef): void;
export declare function _BinaryenFunctionRunPasses(func: BinaryenFunctionRef, module: BinaryenModuleRef, passes: BinaryenArray<BinaryenString>, numPasses: BinaryenIndex): void;
export declare function _BinaryenFunctionSetDebugLocation(func: BinaryenFunctionRef, expr: BinaryenExpressionRef, fileIndex: BinaryenIndex, lineNumber: BinaryenIndex, columnNumber: BinaryenIndex): void;

type BinaryenImportRef = usize;

export declare function _BinaryenAddFunctionImport(module: BinaryenModuleRef, internalName: BinaryenString, externalModuleName: BinaryenString, externalBaseName: BinaryenString, params: BinaryenType, results: BinaryenType): void;
export declare function _BinaryenAddTableImport(module: BinaryenModuleRef, internalName: BinaryenString, externalModuleName: BinaryenString, externalBaseName: BinaryenString): void;
export declare function _BinaryenAddMemoryImport(module: BinaryenModuleRef, internalName: BinaryenString, externalModuleName: BinaryenString, externalBaseName: BinaryenString, shared:bool): void;
export declare function _BinaryenAddGlobalImport(module: BinaryenModuleRef, internalName: BinaryenString, externalModuleName: BinaryenString, externalBaseName: BinaryenString, globalType: BinaryenType, mutable: bool): void;
export declare function _BinaryenAddEventImport(module: BinaryenModuleRef, internalName: BinaryenString, externalModuleName: BinaryenString, externalBaseName: BinaryenString, attribute: u32, params: BinaryenType, results: BinaryenType): void;

type BinaryenExportRef = usize;

export declare function _BinaryenAddFunctionExport(module: BinaryenModuleRef, internalName: BinaryenString, externalName: BinaryenString): BinaryenExportRef;
export declare function _BinaryenAddTableExport(module: BinaryenModuleRef, internalName: BinaryenString, externalName: BinaryenString): BinaryenExportRef;
export declare function _BinaryenAddMemoryExport(module: BinaryenModuleRef, internalName: BinaryenString, externalName: BinaryenString): BinaryenExportRef;
export declare function _BinaryenAddGlobalExport(module: BinaryenModuleRef, internalName: BinaryenString, externalName: BinaryenString): BinaryenExportRef;
export declare function _BinaryenAddEventExport(module: BinaryenModuleRef, internalName: BinaryenString, externalName: BinaryenString): BinaryenExportRef;
export declare function _BinaryenRemoveExport(module: BinaryenModuleRef, externalName: BinaryenString): void;
export declare function _BinaryenGetNumExports(module: BinaryenModuleRef): BinaryenIndex;
export declare function _BinaryenGetExportByIndex(module: BinaryenModuleRef, index: BinaryenIndex): BinaryenExportRef;

type BinaryenGlobalRef = usize;

export declare function _BinaryenAddGlobal(module: BinaryenModuleRef, name: BinaryenString, type: BinaryenType, mutable: bool, init: BinaryenExpressionRef): BinaryenGlobalRef;
export declare function _BinaryenGetGlobal(module: BinaryenModuleRef, name: BinaryenString): BinaryenGlobalRef;
export declare function _BinaryenRemoveGlobal(module: BinaryenModuleRef, name: BinaryenString): void;

export declare function _BinaryenGlobalGetName(global: BinaryenGlobalRef): BinaryenString;
export declare function _BinaryenGlobalGetType(global: BinaryenGlobalRef): BinaryenType;
export declare function _BinaryenGlobalIsMutable(global: BinaryenGlobalRef): bool;
export declare function _BinaryenGlobalGetInitExpr(global: BinaryenGlobalRef): BinaryenExpressionRef;

type BinaryenEventRef = usize;

export declare function _BinaryenAddEvent(module: BinaryenModuleRef, name: BinaryenString, attribute: u32, params: BinaryenType, results: BinaryenType): BinaryenEventRef;
export declare function _BinaryenGetEvent(module: BinaryenModuleRef, name: BinaryenString): BinaryenEventRef;
export declare function _BinaryenRemoveEvent(module: BinaryenModuleRef, name: BinaryenString): void;

export declare function _BinaryenEventGetName(event: BinaryenEventRef): BinaryenString;
export declare function _BinaryenEventGetAttribute(event: BinaryenEventRef): u32;
export declare function _BinaryenEventGetParams(event: BinaryenEventRef): BinaryenType;
export declare function _BinaryenEventGetResults(event: BinaryenEventRef): BinaryenType;

export declare function _BinaryenSetFunctionTable(module: BinaryenModuleRef, initial: BinaryenIndex, maximum: BinaryenIndex, funcs: BinaryenArray<BinaryenString>, numFuncs: BinaryenIndex, offset: BinaryenExpressionRef): void;

export declare function _BinaryenSetMemory(module: BinaryenModuleRef, initial: BinaryenIndex, maximum: BinaryenIndex, exportName: BinaryenString, segments: BinaryenArray<BinaryenArray<u8>>, segmentPassive: BinaryenArray<bool>, segmentOffsets: BinaryenArray<usize>, segmentSizes: BinaryenArray<u32>, numSegments: BinaryenIndex, shared: bool): void;
export declare function _BinaryenGetNumMemorySegments(module: BinaryenModuleRef): BinaryenIndex;
export declare function _BinaryenGetMemorySegmentByteOffset(module: BinaryenModuleRef, index: BinaryenIndex): u32;
export declare function _BinaryenGetMemorySegmentByteLength(module: BinaryenModuleRef, id: BinaryenIndex): usize;
export declare function _BinaryenCopyMemorySegmentData(module: BinaryenModuleRef, id: BinaryenIndex, buffer: BinaryenArray<u8>): void;

export declare function _BinaryenSetStart(module: BinaryenModuleRef, start: BinaryenFunctionRef): void;

export declare function _BinaryenModuleParse(text: BinaryenString): BinaryenModuleRef;
export declare function _BinaryenModulePrint(module: BinaryenModuleRef): void;
export declare function _BinaryenModulePrintAsmjs(module: BinaryenModuleRef): void;
export declare function _BinaryenModuleValidate(module: BinaryenModuleRef): i32;
export declare function _BinaryenModuleOptimize(module: BinaryenModuleRef): void;
export declare function _BinaryenModuleRunPasses(module: BinaryenModuleRef, passes: BinaryenArray<BinaryenString>, numPasses: BinaryenIndex): void;
export declare function _BinaryenModuleAutoDrop(module: BinaryenModuleRef): void;
export declare function _BinaryenModuleAllocateAndWrite(out: BinaryenArray<u8>, module: BinaryenModuleRef, sourceMapUrl: BinaryenString): void;
export declare function _BinaryenModuleRead(input: BinaryenArray<u8>, inputSize: usize): BinaryenModuleRef;
export declare function _BinaryenModuleInterpret(module: BinaryenModuleRef): void;
export declare function _BinaryenModuleAddDebugInfoFileName(module: BinaryenModuleRef, filename: BinaryenString): BinaryenIndex;
export declare function _BinaryenModuleGetDebugInfoFileName(module: BinaryenModuleRef, index: BinaryenIndex): BinaryenString;
export declare function _BinaryenModuleGetFeatures(module: BinaryenModuleRef): BinaryenFeatureFlags;
export declare function _BinaryenModuleSetFeatures(module: BinaryenModuleRef, featureFlags: BinaryenFeatureFlags): void;

export declare function _BinaryenAddCustomSection(module: BinaryenModuleRef, name: BinaryenString, contents: BinaryenArray<u8>, contentsSize: BinaryenIndex): void;

type BinaryenSideEffects = u32;

export declare function _BinaryenSideEffectNone(): BinaryenSideEffects;
export declare function _BinaryenSideEffectBranches(): BinaryenSideEffects;
export declare function _BinaryenSideEffectCalls(): BinaryenSideEffects;
export declare function _BinaryenSideEffectReadsLocal(): BinaryenSideEffects;
export declare function _BinaryenSideEffectWritesLocal(): BinaryenSideEffects;
export declare function _BinaryenSideEffectReadsGlobal(): BinaryenSideEffects;
export declare function _BinaryenSideEffectWritesGlobal(): BinaryenSideEffects;
export declare function _BinaryenSideEffectReadsMemory(): BinaryenSideEffects;
export declare function _BinaryenSideEffectWritesMemory(): BinaryenSideEffects;
export declare function _BinaryenSideEffectImplicitTrap(): BinaryenSideEffects;
export declare function _BinaryenSideEffectIsAtomic(): BinaryenSideEffects;
export declare function _BinaryenSideEffectAny(): BinaryenSideEffects;

export declare function _BinaryenExpressionGetSideEffects(expr: BinaryenExpressionRef, features: BinaryenFeatureFlags): BinaryenSideEffects;

type BinaryenRelooperRef = usize;
type BinaryenRelooperBlockRef = usize;

export declare function _RelooperCreate(module: BinaryenModuleRef): BinaryenRelooperRef;
export declare function _RelooperAddBlock(relooper: BinaryenRelooperRef, code: BinaryenExpressionRef): BinaryenRelooperBlockRef;
export declare function _RelooperAddBranch(from: BinaryenRelooperBlockRef, to: BinaryenRelooperBlockRef, condition: BinaryenExpressionRef, code: BinaryenExpressionRef): void;
export declare function _RelooperAddBlockWithSwitch(relooper: BinaryenRelooperRef, code: BinaryenExpressionRef, condition: BinaryenExpressionRef): BinaryenRelooperBlockRef;
export declare function _RelooperAddBranchForSwitch(from: BinaryenRelooperBlockRef, to: BinaryenRelooperBlockRef, indexes: BinaryenArray<BinaryenIndex>, numIndexes: BinaryenIndex, code: BinaryenExpressionRef): void;
export declare function _RelooperRenderAndDispose(relooper: BinaryenRelooperRef, entry: BinaryenRelooperBlockRef, labelHelper: BinaryenIndex): BinaryenExpressionRef;

type BinaryenExpressionRunnerRef = usize;
type BinaryenExpressionRunnerFlags = u32;

export declare function _ExpressionRunnerFlagsDefault(): BinaryenExpressionRunnerFlags;
export declare function _ExpressionRunnerFlagsPreserveSideeffects(): BinaryenExpressionRunnerFlags;
export declare function _ExpressionRunnerFlagsTraverseCalls(): BinaryenExpressionRunnerFlags;
export declare function _ExpressionRunnerCreate(module: BinaryenModuleRef, flags: BinaryenExpressionRunnerFlags, maxDepth: BinaryenIndex, maxLoopIterations: BinaryenIndex): BinaryenExpressionRunnerRef;
export declare function _ExpressionRunnerSetLocalValue(runner: BinaryenExpressionRunnerRef, index: BinaryenIndex, value: BinaryenExpressionRef): bool;
export declare function _ExpressionRunnerSetGlobalValue(runner: BinaryenExpressionRunnerRef, name: BinaryenString, value: BinaryenExpressionRef): bool;
export declare function _ExpressionRunnerRunAndDispose(runner: BinaryenExpressionRunnerRef, expr: BinaryenExpressionRef): BinaryenExpressionRef;

export declare function _BinaryenGetOptimizeLevel(): i32;
export declare function _BinaryenSetOptimizeLevel(level: i32): void;
export declare function _BinaryenGetShrinkLevel(): i32;
export declare function _BinaryenSetShrinkLevel(level: i32): void;
export declare function _BinaryenGetDebugInfo(): bool;
export declare function _BinaryenSetDebugInfo(on: bool): void;
export declare function _BinaryenGetLowMemoryUnused(): bool;
export declare function _BinaryenSetLowMemoryUnused(on: bool): void;
export declare function _BinaryenGetFastMath(): bool;
export declare function _BinaryenSetFastMath(on: bool): void;
export declare function _BinaryenGetPassArgument(key: BinaryenString): BinaryenString;
export declare function _BinaryenSetPassArgument(key: BinaryenString, value: BinaryenString): void;
export declare function _BinaryenClearPassArguments(): void;
export declare function _BinaryenGetAlwaysInlineMaxSize(): BinaryenIndex;
export declare function _BinaryenSetAlwaysInlineMaxSize(size: BinaryenIndex): void;
export declare function _BinaryenGetFlexibleInlineMaxSize(): BinaryenIndex;
export declare function _BinaryenSetFlexibleInlineMaxSize(size: BinaryenIndex): void;
export declare function _BinaryenGetOneCallerInlineMaxSize(): BinaryenIndex;
export declare function _BinaryenSetOneCallerInlineMaxSize(size: BinaryenIndex): void;
export declare function _BinaryenGetAllowInliningFunctionsWithLoops(): bool;
export declare function _BinaryenSetAllowInliningFunctionsWithLoops(enabled: bool): void;
