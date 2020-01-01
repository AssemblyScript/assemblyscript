/**
 * Portable definitions for Binaryen's C-API. tsc uses the .js file next to it,
 * while asc makes it a Wasm import.
 *
 * See: https://github.com/WebAssembly/binaryen/blob/master/src/binaryen-c.h
 *
 * @module glue/binaryen
 *//***/

export declare function _malloc(size: usize): usize;
export declare function _free(ptr: usize): void;
export declare function __i32_store8(ptr: usize, value: number): void;
export declare function __i32_store16(ptr: usize, value: number): void;
export declare function __i32_store(ptr: usize, value: number): void;
export declare function __f32_store(ptr: usize, value: number): void;
export declare function __f64_store(ptr: usize, value: number): void;
export declare function __i32_load8_s(ptr: usize): number;
export declare function __i32_load8_u(ptr: usize): number;
export declare function __i32_load16_s(ptr: usize): number;
export declare function __i32_load16_u(ptr: usize): number;
export declare function __i32_load(ptr: usize): number;
export declare function __f32_load(ptr: usize): number;
export declare function __f64_load(ptr: usize): number;

type BinaryenIndex = u32;

type BinaryenType = i32;

export declare function _BinaryenTypeNone(): BinaryenType;
export declare function _BinaryenTypeInt32(): BinaryenType;
export declare function _BinaryenTypeInt64(): BinaryenType;
export declare function _BinaryenTypeFloat32(): BinaryenType;
export declare function _BinaryenTypeFloat64(): BinaryenType;
export declare function _BinaryenTypeVec128(): BinaryenType;
export declare function _BinaryenTypeFuncref(): BinaryenType;
export declare function _BinaryenTypeAnyref(): BinaryenType;
export declare function _BinaryenTypeNullref(): BinaryenType;
export declare function _BinaryenTypeExnref(): BinaryenType;
export declare function _BinaryenTypeUnreachable(): BinaryenType;
export declare function _BinaryenTypeAuto(): BinaryenType;

export declare function _BinaryenTypeCreate(buf: usize, count: u32): BinaryenType;
export declare function _BinaryenTypeArity(type: BinaryenType): u32;
export declare function _BinaryenTypeExpand(type: BinaryenType, buf: usize): void;

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
export declare function _BinaryenHostId(): BinaryenExpressionId;
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
export declare function _BinaryenTryId(): BinaryenExpressionId;
export declare function _BinaryenThrowId(): BinaryenExpressionId;
export declare function _BinaryenRethrowId(): BinaryenExpressionId;
export declare function _BinaryenBrOnExnId(): BinaryenExpressionId;
export declare function _BinaryenPushId(): BinaryenExpressionId;
export declare function _BinaryenPopId(): BinaryenExpressionId;

type BinaryenModuleRef = usize;

export declare function _BinaryenModuleCreate(): BinaryenModuleRef;
export declare function _BinaryenModuleDispose(module: BinaryenModuleRef): void;

// LLVM C ABI with `out` being a large enough buffer receiving the
// BinaryenLiteral struct of size `_BinaryenSizeofLiteral()`.
export declare function _BinaryenSizeofLiteral(): usize;
export declare function _BinaryenLiteralInt32(out: usize, x: i32): void;
export declare function _BinaryenLiteralInt64(out: usize, x: i32, y: i32): void;
export declare function _BinaryenLiteralFloat32(out: usize, x: f32): void;
export declare function _BinaryenLiteralFloat64(out: usize, x: f64): void;
export declare function _BinaryenLiteralVec128(out: usize, xPtr: usize): void;
export declare function _BinaryenLiteralFloat32Bits(out: usize, x: i32): void;
export declare function _BinaryenLiteralFloat64Bits(out: usize, x: i32, y: i32): void;

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

export declare function _BinaryenMemorySize(): BinaryenOp;
export declare function _BinaryenMemoryGrow(): BinaryenOp;

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
export declare function _BinaryenNegVecI8x16(): BinaryenOp;
export declare function _BinaryenAnyTrueVecI8x16(): BinaryenOp;
export declare function _BinaryenAllTrueVecI8x16(): BinaryenOp;
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
export declare function _BinaryenNegVecI16x8(): BinaryenOp;
export declare function _BinaryenAnyTrueVecI16x8(): BinaryenOp;
export declare function _BinaryenAllTrueVecI16x8(): BinaryenOp;
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
export declare function _BinaryenNegVecI32x4(): BinaryenOp;
export declare function _BinaryenAnyTrueVecI32x4(): BinaryenOp;
export declare function _BinaryenAllTrueVecI32x4(): BinaryenOp;
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

export declare function _BinaryenBlock(module: BinaryenModuleRef, name: usize, children: usize, numChildren: BinaryenIndex, type: BinaryenType): BinaryenExpressionRef;
export declare function _BinaryenIf(module: BinaryenModuleRef, condition: BinaryenExpressionRef, ifTrue: BinaryenExpressionRef, ifFalse: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenLoop(module: BinaryenModuleRef, name: usize, body: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenBreak(module: BinaryenModuleRef, name: usize, condition: BinaryenExpressionRef, value: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenSwitch(module: BinaryenModuleRef, names: usize, numNames: BinaryenIndex, defaultName: usize, condition: BinaryenExpressionRef, value: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenCall(module: BinaryenModuleRef, target: usize, operands: usize, numOperands: BinaryenIndex, returnType: BinaryenType): BinaryenExpressionRef;
export declare function _BinaryenReturnCall(module: BinaryenModuleRef, target: usize, operands: usize, numOperands: BinaryenIndex, returnType: BinaryenType): BinaryenExpressionRef;
export declare function _BinaryenCallIndirect(module: BinaryenModuleRef, target: BinaryenExpressionRef, operands: usize, numOperands: BinaryenIndex, params: BinaryenType, results: BinaryenType): BinaryenExpressionRef;
export declare function _BinaryenReturnCallIndirect(module: BinaryenModuleRef, target: BinaryenExpressionRef, operands: usize, numOperands: BinaryenIndex, params: BinaryenType, results: BinaryenType): BinaryenExpressionRef;
export declare function _BinaryenLocalGet(module: BinaryenModuleRef, index: BinaryenIndex, type: BinaryenType): BinaryenExpressionRef;
export declare function _BinaryenLocalSet(module: BinaryenModuleRef, index: BinaryenIndex, value: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenLocalTee(module: BinaryenModuleRef, index: BinaryenIndex, value: BinaryenExpressionRef, type: BinaryenType): BinaryenExpressionRef;
export declare function _BinaryenGlobalGet(module: BinaryenModuleRef, name: usize, type: BinaryenType): BinaryenExpressionRef;
export declare function _BinaryenGlobalSet(module: BinaryenModuleRef, name: usize, value: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenLoad(module: BinaryenModuleRef, bytes: u32, signed: i8, offset: u32, align: u32, type: BinaryenType, ptr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenStore(module: BinaryenModuleRef, bytes: u32, offset: u32, align: u32, ptr: BinaryenExpressionRef, value: BinaryenExpressionRef, type: BinaryenType): BinaryenExpressionRef;
export declare function _BinaryenConst(module: BinaryenModuleRef, value: usize): BinaryenExpressionRef;
export declare function _BinaryenUnary(module: BinaryenModuleRef, op: BinaryenOp, value: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenBinary(module: BinaryenModuleRef, op: BinaryenOp, left: BinaryenExpressionRef, right: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenSelect(module: BinaryenModuleRef, condition: BinaryenExpressionRef, ifTrue: BinaryenExpressionRef, ifFalse: BinaryenExpressionRef, type: BinaryenType): BinaryenExpressionRef;
export declare function _BinaryenDrop(module: BinaryenModuleRef, value: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenReturn(module: BinaryenModuleRef, value: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenHost(module: BinaryenModuleRef, op: BinaryenOp, name: usize | 0, operands: usize, numOperands: BinaryenIndex): BinaryenExpressionRef;
export declare function _BinaryenNop(module: BinaryenModuleRef): BinaryenExpressionRef;
export declare function _BinaryenUnreachable(module: BinaryenModuleRef): BinaryenExpressionRef;

export declare function _BinaryenAtomicLoad(module: BinaryenModuleRef, bytes: BinaryenIndex, offset: BinaryenIndex, type: BinaryenType, ptr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenAtomicStore(module: BinaryenModuleRef, bytes: BinaryenIndex, offset: BinaryenIndex, ptr: BinaryenExpressionRef, value: BinaryenExpressionRef, type: BinaryenType): BinaryenExpressionRef;
export declare function _BinaryenAtomicRMW(module: BinaryenModuleRef, op: BinaryenOp, bytes: i32, offset: i32, ptr: BinaryenExpressionRef, value: BinaryenExpressionRef, type: BinaryenType): BinaryenExpressionRef;
export declare function _BinaryenAtomicCmpxchg(module: BinaryenModuleRef, bytes: i32, offset: i32, ptr: BinaryenExpressionRef, expected: BinaryenExpressionRef, replacement: BinaryenExpressionRef, type: BinaryenType): BinaryenExpressionRef;
export declare function _BinaryenAtomicWait(module: BinaryenModuleRef, ptr: BinaryenExpressionRef, expected: BinaryenExpressionRef, timeout: BinaryenExpressionRef, expectedType: BinaryenType): BinaryenExpressionRef;
export declare function _BinaryenAtomicNotify(module: BinaryenModuleRef, ptr: BinaryenExpressionRef, notifyCount: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenAtomicFence(module: BinaryenModuleRef): BinaryenExpressionRef;

export declare function _BinaryenSIMDExtract(module: BinaryenModuleRef, op: BinaryenOp, vec: BinaryenExpressionRef, idx: u8): BinaryenExpressionRef;
export declare function _BinaryenSIMDReplace(module: BinaryenModuleRef, op: BinaryenOp, vec: BinaryenExpressionRef, idx: u8, value: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenSIMDShuffle(module: BinaryenModuleRef, left: BinaryenExpressionRef, right: BinaryenExpressionRef, maskPtr: usize): BinaryenExpressionRef;
export declare function _BinaryenSIMDTernary(module: BinaryenModuleRef, op: BinaryenOp, a: BinaryenExpressionRef, b: BinaryenExpressionRef, c: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenSIMDShift(module: BinaryenModuleRef, op: BinaryenOp, vec: BinaryenExpressionRef, shift: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenSIMDLoad(module: BinaryenModuleRef, op: BinaryenOp, offset: u32, align: u32, ptr: BinaryenExportRef): BinaryenExpressionRef;

export declare function _BinaryenMemoryInit(module: BinaryenModuleRef, segment: u32, dest: BinaryenExpressionRef, offset: BinaryenExpressionRef, size: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenDataDrop(module: BinaryenModuleRef, segment: u32): BinaryenExpressionRef;
export declare function _BinaryenMemoryCopy(module: BinaryenModuleRef, dest: BinaryenExpressionRef, source: BinaryenExpressionRef, size: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenMemoryFill(module: BinaryenModuleRef, dest: BinaryenExpressionRef, value: BinaryenExpressionRef, size: BinaryenExpressionRef): BinaryenExpressionRef;

export declare function _BinaryenRefNull(module: BinaryenModuleRef): BinaryenExpressionRef;
export declare function _BinaryenRefIsNull(module: BinaryenModuleRef, value: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenRefFunc(module: BinaryenModuleRef, funcName: usize): BinaryenExpressionRef;

export declare function _BinaryenTry(module: BinaryenModuleRef, body: BinaryenExpressionRef, catchBody: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenThrow(module: BinaryenModuleRef, event: usize, operands: usize, numOperands: BinaryenIndex): BinaryenExpressionRef;
export declare function _BinaryenRethrow(module: BinaryenModuleRef, exnref: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenBrOnExn(module: BinaryenModuleRef, name: usize, eventName: usize, exnref: BinaryenExpressionRef): BinaryenExpressionRef;

export declare function _BinaryenPush(module: BinaryenModuleRef, value: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenPop(module: BinaryenModuleRef, type: BinaryenType): BinaryenExpressionRef;

export declare function _BinaryenExpressionGetId(expr: BinaryenExpressionRef): BinaryenExpressionId;
export declare function _BinaryenExpressionGetType(expr: BinaryenExpressionRef): BinaryenType;
export declare function _BinaryenExpressionPrint(expr: BinaryenExpressionRef): void;

export declare function _BinaryenBlockGetName(expr: BinaryenExpressionRef): usize;
export declare function _BinaryenBlockGetNumChildren(expr: BinaryenExpressionRef): BinaryenIndex;
export declare function _BinaryenBlockGetChild(expr: BinaryenExpressionRef, index: BinaryenIndex): BinaryenExpressionRef;

export declare function _BinaryenIfGetCondition(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenIfGetIfTrue(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenIfGetIfFalse(expr: BinaryenExpressionRef): BinaryenExpressionRef;

export declare function _BinaryenLoopGetName(expr: BinaryenExpressionRef): usize;
export declare function _BinaryenLoopGetBody(expr: BinaryenExpressionRef): BinaryenExpressionRef;

export declare function _BinaryenBreakGetName(expr: BinaryenExpressionRef): usize;
export declare function _BinaryenBreakGetCondition(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenBreakGetValue(expr: BinaryenExpressionRef): BinaryenExpressionRef;

export declare function _BinaryenSwitchGetNumNames(expr: BinaryenExpressionRef): BinaryenIndex;
export declare function _BinaryenSwitchGetName(expr: BinaryenExpressionRef, index: BinaryenIndex): usize;
export declare function _BinaryenSwitchGetDefaultName(expr: BinaryenExpressionRef): usize;
export declare function _BinaryenSwitchGetCondition(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenSwitchGetValue(expr: BinaryenExpressionRef): BinaryenExpressionRef;

export declare function _BinaryenCallGetTarget(expr: BinaryenExpressionRef): usize;
export declare function _BinaryenCallGetNumOperands(expr: BinaryenExpressionRef): BinaryenIndex;
export declare function _BinaryenCallGetOperand(expr: BinaryenExpressionRef, index: BinaryenIndex): BinaryenExpressionRef;

export declare function _BinaryenCallIndirectGetTarget(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenCallIndirectGetNumOperands(expr: BinaryenExpressionRef): BinaryenIndex;
export declare function _BinaryenCallIndirectGetOperand(expr: BinaryenExpressionRef, index: BinaryenIndex): BinaryenExpressionRef;

export declare function _BinaryenLocalGetGetIndex(expr: BinaryenExpressionRef): BinaryenIndex;

export declare function _BinaryenLocalSetIsTee(expr: BinaryenExpressionRef): bool;
export declare function _BinaryenLocalSetGetIndex(expr: BinaryenExpressionRef): BinaryenIndex;
export declare function _BinaryenLocalSetGetValue(expr: BinaryenExpressionRef): BinaryenExpressionRef;

export declare function _BinaryenGlobalGetGetName(expr: BinaryenExpressionRef): usize;

export declare function _BinaryenGlobalSetGetName(expr: BinaryenExpressionRef): usize;
export declare function _BinaryenGlobalSetGetValue(expr: BinaryenExpressionRef): BinaryenExpressionRef;

export declare function _BinaryenHostGetOp(expr: BinaryenExpressionRef): BinaryenOp;
export declare function _BinaryenHostGetNameOperand(expr: BinaryenExpressionRef): usize;
export declare function _BinaryenHostGetNumOperands(expr: BinaryenExpressionRef): BinaryenIndex;
export declare function _BinaryenHostGetOperand(expr: BinaryenExpressionRef, index: BinaryenIndex): BinaryenExpressionRef;

export declare function _BinaryenLoadIsAtomic(expr: BinaryenExpressionRef): bool;
export declare function _BinaryenLoadIsSigned(expr: BinaryenExpressionRef): bool;
export declare function _BinaryenLoadGetBytes(expr: BinaryenExpressionRef): u32;
export declare function _BinaryenLoadGetOffset(expr: BinaryenExpressionRef): u32;
export declare function _BinaryenLoadGetAlign(expr: BinaryenExpressionRef): u32;
export declare function _BinaryenLoadGetPtr(expr: BinaryenExpressionRef): BinaryenExpressionRef;

export declare function _BinaryenStoreIsAtomic(expr: BinaryenExpressionRef): bool;
export declare function _BinaryenStoreGetBytes(expr: BinaryenExpressionRef): u32;
export declare function _BinaryenStoreGetOffset(expr: BinaryenExpressionRef): u32;
export declare function _BinaryenStoreGetAlign(expr: BinaryenExpressionRef): u32;
export declare function _BinaryenStoreGetPtr(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenStoreGetValue(expr: BinaryenExpressionRef): BinaryenExpressionRef;

export declare function _BinaryenConstGetValueI32(expr: BinaryenExpressionRef): i32;
export declare function _BinaryenConstGetValueI64Low(expr: BinaryenExpressionRef): i32;
export declare function _BinaryenConstGetValueI64High(expr: BinaryenExpressionRef): i32;
export declare function _BinaryenConstGetValueF32(expr: BinaryenExpressionRef): f32;
export declare function _BinaryenConstGetValueF64(expr: BinaryenExpressionRef): f64;

export declare function _BinaryenUnaryGetOp(expr: BinaryenExpressionRef): BinaryenOp;
export declare function _BinaryenUnaryGetValue(expr: BinaryenExpressionRef): BinaryenExpressionRef;

export declare function _BinaryenBinaryGetOp(expr: BinaryenExpressionRef): BinaryenOp;
export declare function _BinaryenBinaryGetLeft(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenBinaryGetRight(expr: BinaryenExpressionRef): BinaryenExpressionRef;

export declare function _BinaryenSelectGetIfTrue(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenSelectGetIfFalse(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenSelectGetCondition(expr: BinaryenExpressionRef): BinaryenExpressionRef;

export declare function _BinaryenDropGetValue(expr: BinaryenExpressionRef): BinaryenExpressionRef;

export declare function _BinaryenReturnGetValue(expr: BinaryenExpressionRef): BinaryenExpressionRef;

export declare function _BinaryenAtomicRMWGetOp(expr: BinaryenExpressionRef): BinaryenOp;
export declare function _BinaryenAtomicRMWGetBytes(expr: BinaryenExpressionRef): u32;
export declare function _BinaryenAtomicRMWGetOffset(expr: BinaryenExpressionRef): u32;
export declare function _BinaryenAtomicRMWGetPtr(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenAtomicRMWGetValue(expr: BinaryenExpressionRef): BinaryenExpressionRef;

export declare function _BinaryenAtomicCmpxchgGetBytes(expr: BinaryenExpressionRef): u32;
export declare function _BinaryenAtomicCmpxchgGetOffset(expr: BinaryenExpressionRef): u32;
export declare function _BinaryenAtomicCmpxchgGetPtr(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenAtomicCmpxchgGetExpected(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenAtomicCmpxchgGetReplacement(expr: BinaryenExpressionRef): BinaryenExpressionRef;

export declare function _BinaryenAtomicWaitGetPtr(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenAtomicWaitGetExpected(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenAtomicWaitGetTimeout(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenAtomicWaitGetExpectedType(expr: BinaryenExpressionRef): BinaryenType;

export declare function _BinaryenAtomicNotifyGetPtr(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenAtomicNotifyGetNotifyCount(expr: BinaryenExpressionRef): BinaryenExpressionRef;

export declare function _BinaryenAtomicFenceGetOrder(expr: BinaryenExportRef): u8;

export declare function _BinaryenSIMDExtractGetOp(expr: BinaryenExpressionRef): BinaryenOp;
export declare function _BinaryenSIMDExtractGetVec(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenSIMDExtractGetIdx(expr: BinaryenExpressionRef): u8;

export declare function _BinaryenSIMDReplaceGetOp(expr: BinaryenExpressionRef): BinaryenOp;
export declare function _BinaryenSIMDReplaceGetVec(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenSIMDReplaceGetIdx(expr: BinaryenExpressionRef): u8;
export declare function _BinaryenSIMDReplaceGetValue(expr: BinaryenExpressionRef): BinaryenExpressionRef;

export declare function _BinaryenSIMDShuffleGetLeft(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenSIMDShuffleGetRight(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenSIMDShuffleGetMask(expr: BinaryenExpressionRef, outPtr: usize): void;

export declare function _BinaryenSIMDTernaryGetOp(expr: BinaryenExpressionRef): BinaryenOp;
export declare function _BinaryenSIMDTernaryGetA(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenSIMDTernaryGetB(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenSIMDTernaryGetC(expr: BinaryenExpressionRef): BinaryenExpressionRef;

export declare function _BinaryenSIMDShiftGetOp(expr: BinaryenExpressionRef): BinaryenOp;
export declare function _BinaryenSIMDShiftGetVec(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenSIMDShiftGetShift(expr: BinaryenExpressionRef): BinaryenExpressionRef;

export declare function _BinaryenSIMDLoadGetOp(expr: BinaryenExpressionRef): BinaryenOp;
export declare function _BinaryenSIMDLoadGetOffset(expr: BinaryenExpressionRef): u32;
export declare function _BinaryenSIMDLoadGetAlign(expr: BinaryenExpressionRef): u32;
export declare function _BinaryenSIMDLoadGetPtr(expr: BinaryenExpressionRef): BinaryenExpressionRef;

export declare function _BinaryenMemoryInitGetSegment(expr: BinaryenExpressionRef): u32;
export declare function _BinaryenMemoryInitGetDest(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenMemoryInitGetOffset(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenMemoryInitGetSize(expr: BinaryenExpressionRef): BinaryenExpressionRef;

export declare function _BinaryenDataDropGetSegment(expr: BinaryenExpressionRef): u32;

export declare function _BinaryenMemoryCopyGetDest(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenMemoryCopyGetSource(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenMemoryCopyGetSize(expr: BinaryenExpressionRef): BinaryenExpressionRef;

export declare function _BinaryenMemoryFillGetDest(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenMemoryFillGetValue(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenMemoryFillGetSize(expr: BinaryenExpressionRef): BinaryenExpressionRef;

export declare function _BinaryenRefIsNullGetValue(expr: BinaryenExpressionRef): BinaryenExpressionRef;

export declare function _BinaryenRefFuncGetFunc(expr: BinaryenExpressionRef): usize;

export declare function _BinaryenTryGetBody(expr: BinaryenExpressionRef): BinaryenExpressionRef;
export declare function _BinaryenTryGetCatchBody(expr: BinaryenExpressionRef): BinaryenExpressionRef;

export declare function _BinaryenThrowGetEvent(expr: BinaryenExpressionRef): usize;
export declare function _BinaryenThrowGetNumOperands(expr: BinaryenExpressionRef): BinaryenIndex;
export declare function _BinaryenThrowGetOperand(expr: BinaryenExpressionRef, index: BinaryenIndex): BinaryenExpressionRef;

export declare function _BinaryenRethrowGetExnref(expr: BinaryenExpressionRef): BinaryenExpressionRef;

export declare function _BinaryenBrOnExnGetEvent(expr: BinaryenExpressionRef): usize;
export declare function _BinaryenBrOnExnGetName(expr: BinaryenExpressionRef): usize;
export declare function _BinaryenBrOnExnGetExnref(expr: BinaryenExpressionRef): BinaryenExpressionRef;

export declare function _BinaryenPushGetValue(expr: BinaryenExpressionRef): BinaryenExpressionRef;

type BinaryenFunctionRef = usize;

export declare function _BinaryenAddFunction(module: BinaryenModuleRef, name: usize, params: BinaryenType, results: BinaryenType, varTypes: usize, numVarTypes: BinaryenIndex, body: BinaryenExpressionRef): BinaryenFunctionRef;
export declare function _BinaryenGetFunction(module: BinaryenModuleRef, name: usize): BinaryenFunctionRef;
export declare function _BinaryenRemoveFunction(module: BinaryenModuleRef, name: usize): void;
export declare function _BinaryenGetNumFunctions(module: BinaryenModuleRef): BinaryenIndex;
export declare function _BinaryenGetFunctionByIndex(module: BinaryenModuleRef, index: BinaryenIndex): BinaryenFunctionRef;

export declare function _BinaryenFunctionGetName(func: BinaryenFunctionRef): usize;
export declare function _BinaryenFunctionGetParams(func: BinaryenFunctionRef): BinaryenType;
export declare function _BinaryenFunctionGetResults(func: BinaryenFunctionRef): BinaryenType;
export declare function _BinaryenFunctionGetNumVars(func: BinaryenFunctionRef): BinaryenIndex;
export declare function _BinaryenFunctionGetVar(func: BinaryenFunctionRef, index: BinaryenIndex): BinaryenType;
export declare function _BinaryenFunctionGetBody(func: BinaryenFunctionRef): BinaryenExpressionRef;
export declare function _BinaryenFunctionOptimize(func: BinaryenFunctionRef, module: BinaryenModuleRef): void;
export declare function _BinaryenFunctionRunPasses(func: BinaryenFunctionRef, module: BinaryenModuleRef, passes: usize, numPasses: BinaryenIndex): void;
export declare function _BinaryenFunctionSetDebugLocation(func: BinaryenFunctionRef, expr: BinaryenExpressionRef, fileIndex: BinaryenIndex, lineNumber: BinaryenIndex, columnNumber: BinaryenIndex): void;

type BinaryenImportRef = usize;

export declare function _BinaryenAddFunctionImport(module: BinaryenModuleRef, internalName: usize, externalModuleName: usize, externalBaseName: usize, params: BinaryenType, results: BinaryenType): void;
export declare function _BinaryenAddTableImport(module: BinaryenModuleRef, internalName: usize, externalModuleName: usize, externalBaseName: usize): void;
export declare function _BinaryenAddMemoryImport(module: BinaryenModuleRef, internalName: usize, externalModuleName: usize, externalBaseName: usize, shared:bool): void;
export declare function _BinaryenAddGlobalImport(module: BinaryenModuleRef, internalName: usize, externalModuleName: usize, externalBaseName: usize, globalType: BinaryenType, mutable: bool): void;
export declare function _BinaryenAddEventImport(module: BinaryenModuleRef, internalName: usize, externalModuleName: usize, externalBaseName: usize, attribute: u32, params: BinaryenType, results: BinaryenType): void;

type BinaryenExportRef = usize;

export declare function _BinaryenAddFunctionExport(module: BinaryenModuleRef, internalName: usize, externalName: usize): BinaryenExportRef;
export declare function _BinaryenAddTableExport(module: BinaryenModuleRef, internalName: usize, externalName: usize): BinaryenExportRef;
export declare function _BinaryenAddMemoryExport(module: BinaryenModuleRef, internalName: usize, externalName: usize): BinaryenExportRef;
export declare function _BinaryenAddGlobalExport(module: BinaryenModuleRef, internalName: usize, externalName: usize): BinaryenExportRef;
export declare function _BinaryenAddEventExport(module: BinaryenModuleRef, internalName: usize, externalName: usize): BinaryenExportRef;
export declare function _BinaryenRemoveExport(module: BinaryenModuleRef, externalName: usize): void;
export declare function _BinaryenGetNumExports(module: BinaryenModuleRef): BinaryenIndex;
export declare function _BinaryenGetExportByIndex(module: BinaryenModuleRef, index: BinaryenIndex): BinaryenExportRef;

type BinaryenGlobalRef = usize;

export declare function _BinaryenAddGlobal(module: BinaryenModuleRef, name: usize, type: BinaryenType, mutable: bool, init: BinaryenExpressionRef): BinaryenGlobalRef;
export declare function _BinaryenGetGlobal(module: BinaryenModuleRef, name: usize): BinaryenGlobalRef;
export declare function _BinaryenRemoveGlobal(module: BinaryenModuleRef, name: usize): void;

export declare function _BinaryenGlobalGetName(global: BinaryenGlobalRef): usize;
export declare function _BinaryenGlobalGetType(global: BinaryenGlobalRef): BinaryenType;
export declare function _BinaryenGlobalIsMutable(global: BinaryenGlobalRef): bool;
export declare function _BinaryenGlobalGetInit(global: BinaryenGlobalRef): BinaryenExpressionRef;

type BinaryenEventRef = usize;

export declare function _BinaryenAddEvent(module: BinaryenModuleRef, name: usize, attribute: u32, params: BinaryenType, results: BinaryenType): BinaryenEventRef;
export declare function _BinaryenGetEvent(module: BinaryenModuleRef, name: usize): BinaryenEventRef;
export declare function _BinaryenRemoveEvent(module: BinaryenModuleRef, name: usize): void;

export declare function _BinaryenEventGetName(event: BinaryenEventRef): usize;
export declare function _BinaryenEventGetAttribute(event: BinaryenEventRef): u32;
export declare function _BinaryenEventGetType(event: BinaryenEventRef): usize;
export declare function _BinaryenEventGetNumParams(event: BinaryenEventRef): BinaryenIndex;
export declare function _BinaryenEventGetParam(event: BinaryenEventRef, index: BinaryenIndex): BinaryenType;

export declare function _BinaryenSetFunctionTable(module: BinaryenModuleRef, initial: BinaryenIndex, maximum: BinaryenIndex, funcs: usize, numFuncs: BinaryenIndex, offset: BinaryenExpressionRef): void;

export declare function _BinaryenSetMemory(module: BinaryenModuleRef, initial: BinaryenIndex, maximum: BinaryenIndex, exportName: usize, segments: usize, segmentPassive: usize, segmentOffsets: usize, segmentSizes: usize, numSegments: BinaryenIndex, shared: bool): void;
export declare function _BinaryenGetNumMemorySegments(module: BinaryenModuleRef): BinaryenIndex;
export declare function _BinaryenGetMemorySegmentByteOffset(module: BinaryenModuleRef, index: BinaryenIndex): u32;
export declare function _BinaryenGetMemorySegmentByteLength(module: BinaryenModuleRef, id: BinaryenIndex): usize;
export declare function _BinaryenCopyMemorySegmentData(module: BinaryenModuleRef, id: BinaryenIndex, buffer: usize): void;

export declare function _BinaryenSetStart(module: BinaryenModuleRef, start: BinaryenFunctionRef): void;

export declare function _BinaryenModuleParse(text: usize): BinaryenModuleRef;
export declare function _BinaryenModulePrint(module: BinaryenModuleRef): void;
export declare function _BinaryenModulePrintAsmjs(module: BinaryenModuleRef): void;
export declare function _BinaryenModuleValidate(module: BinaryenModuleRef): i32;
export declare function _BinaryenModuleOptimize(module: BinaryenModuleRef): void;
export declare function _BinaryenModuleRunPasses(module: BinaryenModuleRef, passes: usize, numPasses: BinaryenIndex): void;
export declare function _BinaryenModuleAutoDrop(module: BinaryenModuleRef): void;
export declare function _BinaryenModuleAllocateAndWrite(out: usize, module: BinaryenModuleRef, sourceMapUrl: usize): void;
export declare function _BinaryenModuleRead(input: usize, inputSize: usize): BinaryenModuleRef;
export declare function _BinaryenModuleInterpret(module: BinaryenModuleRef): void;
export declare function _BinaryenModuleAddDebugInfoFileName(module: BinaryenModuleRef, filename: usize): BinaryenIndex;
export declare function _BinaryenModuleGetDebugInfoFileName(module: BinaryenModuleRef, index: BinaryenIndex): usize;
export declare function _BinaryenModuleGetFeatures(module: BinaryenModuleRef): BinaryenFeatureFlags;
export declare function _BinaryenModuleSetFeatures(module: BinaryenModuleRef, featureFlags: BinaryenFeatureFlags): void;

export declare function _BinaryenAddCustomSection(module: BinaryenModuleRef, name: usize, contents: usize, contentsSize: BinaryenIndex): void;

type BinaryenRelooperRef = usize;
type BinaryenRelooperBlockRef = usize;

export declare function _RelooperCreate(module: BinaryenModuleRef): BinaryenRelooperRef;
export declare function _RelooperAddBlock(relooper: BinaryenRelooperRef, code: BinaryenExpressionRef): BinaryenRelooperBlockRef;
export declare function _RelooperAddBranch(from: BinaryenRelooperBlockRef, to: BinaryenRelooperBlockRef, condition: BinaryenExpressionRef, code: BinaryenExpressionRef): void;
export declare function _RelooperAddBlockWithSwitch(relooper: BinaryenRelooperRef, code: BinaryenExpressionRef, condition: BinaryenExpressionRef): BinaryenRelooperBlockRef;
export declare function _RelooperAddBranchForSwitch(from: BinaryenRelooperBlockRef, to: BinaryenRelooperBlockRef, indexes: usize, numIndexes: BinaryenIndex, code: BinaryenExpressionRef): void;
export declare function _RelooperRenderAndDispose(relooper: BinaryenRelooperRef, entry: BinaryenRelooperBlockRef, labelHelper: BinaryenIndex): BinaryenExpressionRef;

export declare function _BinaryenGetOptimizeLevel(): i32;
export declare function _BinaryenSetOptimizeLevel(level: i32): void;
export declare function _BinaryenGetShrinkLevel(): i32;
export declare function _BinaryenSetShrinkLevel(level: i32): void;
export declare function _BinaryenGetDebugInfo(): bool;
export declare function _BinaryenSetDebugInfo(on: bool): void;

export declare function _BinaryenSetAPITracing(on: bool): void;
