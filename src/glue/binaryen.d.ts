/**
 * TypeScript definitions for Binaryen's C-API.
 *
 * See: https://github.com/WebAssembly/binaryen/blob/master/src/binaryen-c.h
 *
 * @module glue/binaryen
 *//***/

declare function _malloc(size: usize): usize;
declare function _free(ptr: usize): void;

declare type BinaryenIndex = u32;

declare type BinaryenType = i32;

declare function _BinaryenTypeNone(): BinaryenType;
declare function _BinaryenTypeInt32(): BinaryenType;
declare function _BinaryenTypeInt64(): BinaryenType;
declare function _BinaryenTypeFloat32(): BinaryenType;
declare function _BinaryenTypeFloat64(): BinaryenType;
declare function _BinaryenTypeUnreachable(): BinaryenType;
declare function _BinaryenTypeAuto(): BinaryenType;

declare type BinaryenExpressionId = i32;

declare function _BinaryenInvalidId(): BinaryenExpressionId;
declare function _BinaryenBlockId(): BinaryenExpressionId;
declare function _BinaryenIfId(): BinaryenExpressionId;
declare function _BinaryenLoopId(): BinaryenExpressionId;
declare function _BinaryenBreakId(): BinaryenExpressionId;
declare function _BinaryenSwitchId(): BinaryenExpressionId;
declare function _BinaryenCallId(): BinaryenExpressionId;
declare function _BinaryenCallImportId(): BinaryenExpressionId;
declare function _BinaryenCallIndirectId(): BinaryenExpressionId;
declare function _BinaryenGetLocalId(): BinaryenExpressionId;
declare function _BinaryenSetLocalId(): BinaryenExpressionId;
declare function _BinaryenGetGlobalId(): BinaryenExpressionId;
declare function _BinaryenSetGlobalId(): BinaryenExpressionId;
declare function _BinaryenLoadId(): BinaryenExpressionId;
declare function _BinaryenStoreId(): BinaryenExpressionId;
declare function _BinaryenConstId(): BinaryenExpressionId;
declare function _BinaryenUnaryId(): BinaryenExpressionId;
declare function _BinaryenBinaryId(): BinaryenExpressionId;
declare function _BinaryenSelectId(): BinaryenExpressionId;
declare function _BinaryenDropId(): BinaryenExpressionId;
declare function _BinaryenReturnId(): BinaryenExpressionId;
declare function _BinaryenHostId(): BinaryenExpressionId;
declare function _BinaryenNopId(): BinaryenExpressionId;
declare function _BinaryenUnreachableId(): BinaryenExpressionId;
declare function _BinaryenAtomicCmpxchgId(): BinaryenExpressionId;
declare function _BinaryenAtomicRMWId(): BinaryenExpressionId;
declare function _BinaryenAtomicWaitId(): BinaryenExpressionId;
declare function _BinaryenAtomicWakeId(): BinaryenExpressionId;

declare type BinaryenModuleRef = usize;

declare function _BinaryenModuleCreate(): BinaryenModuleRef;
declare function _BinaryenModuleDispose(module: BinaryenModuleRef): void;

// LLVM C ABI with `out` being a large enough buffer receiving the
// BinaryenLiteral struct.
declare function _BinaryenLiteralInt32(out: usize, x: i32): void;
declare function _BinaryenLiteralInt64(out: usize, x: i32, y: i32): void;
declare function _BinaryenLiteralFloat32(out: usize, x: f32): void;
declare function _BinaryenLiteralFloat64(out: usize, x: f64): void;
declare function _BinaryenLiteralFloat32Bits(out: usize, x: i32): void;
declare function _BinaryenLiteralFloat64Bits(out: usize, x: i32, y: i32): void;

declare type BinaryenOp = i32;

declare function _BinaryenClzInt32(): BinaryenOp;
declare function _BinaryenCtzInt32(): BinaryenOp;
declare function _BinaryenPopcntInt32(): BinaryenOp;
declare function _BinaryenNegFloat32(): BinaryenOp;
declare function _BinaryenAbsFloat32(): BinaryenOp;
declare function _BinaryenCeilFloat32(): BinaryenOp;
declare function _BinaryenFloorFloat32(): BinaryenOp;
declare function _BinaryenTruncFloat32(): BinaryenOp;
declare function _BinaryenNearestFloat32(): BinaryenOp;
declare function _BinaryenSqrtFloat32(): BinaryenOp;
declare function _BinaryenEqZInt32(): BinaryenOp;
declare function _BinaryenClzInt64(): BinaryenOp;
declare function _BinaryenCtzInt64(): BinaryenOp;
declare function _BinaryenPopcntInt64(): BinaryenOp;
declare function _BinaryenNegFloat64(): BinaryenOp;
declare function _BinaryenAbsFloat64(): BinaryenOp;
declare function _BinaryenCeilFloat64(): BinaryenOp;
declare function _BinaryenFloorFloat64(): BinaryenOp;
declare function _BinaryenTruncFloat64(): BinaryenOp;
declare function _BinaryenNearestFloat64(): BinaryenOp;
declare function _BinaryenSqrtFloat64(): BinaryenOp;
declare function _BinaryenEqZInt64(): BinaryenOp;
declare function _BinaryenExtendSInt32(): BinaryenOp;
declare function _BinaryenExtendUInt32(): BinaryenOp;
declare function _BinaryenWrapInt64(): BinaryenOp;
declare function _BinaryenTruncSFloat32ToInt32(): BinaryenOp;
declare function _BinaryenTruncSFloat32ToInt64(): BinaryenOp;
declare function _BinaryenTruncUFloat32ToInt32(): BinaryenOp;
declare function _BinaryenTruncUFloat32ToInt64(): BinaryenOp;
declare function _BinaryenTruncSFloat64ToInt32(): BinaryenOp;
declare function _BinaryenTruncSFloat64ToInt64(): BinaryenOp;
declare function _BinaryenTruncUFloat64ToInt32(): BinaryenOp;
declare function _BinaryenTruncUFloat64ToInt64(): BinaryenOp;
declare function _BinaryenReinterpretFloat32(): BinaryenOp;
declare function _BinaryenReinterpretFloat64(): BinaryenOp;
declare function _BinaryenConvertSInt32ToFloat32(): BinaryenOp;
declare function _BinaryenConvertSInt32ToFloat64(): BinaryenOp;
declare function _BinaryenConvertUInt32ToFloat32(): BinaryenOp;
declare function _BinaryenConvertUInt32ToFloat64(): BinaryenOp;
declare function _BinaryenConvertSInt64ToFloat32(): BinaryenOp;
declare function _BinaryenConvertSInt64ToFloat64(): BinaryenOp;
declare function _BinaryenConvertUInt64ToFloat32(): BinaryenOp;
declare function _BinaryenConvertUInt64ToFloat64(): BinaryenOp;
declare function _BinaryenPromoteFloat32(): BinaryenOp;
declare function _BinaryenDemoteFloat64(): BinaryenOp;
declare function _BinaryenReinterpretInt32(): BinaryenOp;
declare function _BinaryenReinterpretInt64(): BinaryenOp;
declare function _BinaryenExtendS8Int32(): BinaryenOp;
declare function _BinaryenExtendS16Int32(): BinaryenOp;
declare function _BinaryenExtendS8Int64(): BinaryenOp;
declare function _BinaryenExtendS16Int64(): BinaryenOp;
declare function _BinaryenExtendS32Int64(): BinaryenOp;
declare function _BinaryenAddInt32(): BinaryenOp;
declare function _BinaryenSubInt32(): BinaryenOp;
declare function _BinaryenMulInt32(): BinaryenOp;
declare function _BinaryenDivSInt32(): BinaryenOp;
declare function _BinaryenDivUInt32(): BinaryenOp;
declare function _BinaryenRemSInt32(): BinaryenOp;
declare function _BinaryenRemUInt32(): BinaryenOp;
declare function _BinaryenAndInt32(): BinaryenOp;
declare function _BinaryenOrInt32(): BinaryenOp;
declare function _BinaryenXorInt32(): BinaryenOp;
declare function _BinaryenShlInt32(): BinaryenOp;
declare function _BinaryenShrUInt32(): BinaryenOp;
declare function _BinaryenShrSInt32(): BinaryenOp;
declare function _BinaryenRotLInt32(): BinaryenOp;
declare function _BinaryenRotRInt32(): BinaryenOp;
declare function _BinaryenEqInt32(): BinaryenOp;
declare function _BinaryenNeInt32(): BinaryenOp;
declare function _BinaryenLtSInt32(): BinaryenOp;
declare function _BinaryenLtUInt32(): BinaryenOp;
declare function _BinaryenLeSInt32(): BinaryenOp;
declare function _BinaryenLeUInt32(): BinaryenOp;
declare function _BinaryenGtSInt32(): BinaryenOp;
declare function _BinaryenGtUInt32(): BinaryenOp;
declare function _BinaryenGeSInt32(): BinaryenOp;
declare function _BinaryenGeUInt32(): BinaryenOp;
declare function _BinaryenAddInt64(): BinaryenOp;
declare function _BinaryenSubInt64(): BinaryenOp;
declare function _BinaryenMulInt64(): BinaryenOp;
declare function _BinaryenDivSInt64(): BinaryenOp;
declare function _BinaryenDivUInt64(): BinaryenOp;
declare function _BinaryenRemSInt64(): BinaryenOp;
declare function _BinaryenRemUInt64(): BinaryenOp;
declare function _BinaryenAndInt64(): BinaryenOp;
declare function _BinaryenOrInt64(): BinaryenOp;
declare function _BinaryenXorInt64(): BinaryenOp;
declare function _BinaryenShlInt64(): BinaryenOp;
declare function _BinaryenShrUInt64(): BinaryenOp;
declare function _BinaryenShrSInt64(): BinaryenOp;
declare function _BinaryenRotLInt64(): BinaryenOp;
declare function _BinaryenRotRInt64(): BinaryenOp;
declare function _BinaryenEqInt64(): BinaryenOp;
declare function _BinaryenNeInt64(): BinaryenOp;
declare function _BinaryenLtSInt64(): BinaryenOp;
declare function _BinaryenLtUInt64(): BinaryenOp;
declare function _BinaryenLeSInt64(): BinaryenOp;
declare function _BinaryenLeUInt64(): BinaryenOp;
declare function _BinaryenGtSInt64(): BinaryenOp;
declare function _BinaryenGtUInt64(): BinaryenOp;
declare function _BinaryenGeSInt64(): BinaryenOp;
declare function _BinaryenGeUInt64(): BinaryenOp;
declare function _BinaryenAddFloat32(): BinaryenOp;
declare function _BinaryenSubFloat32(): BinaryenOp;
declare function _BinaryenMulFloat32(): BinaryenOp;
declare function _BinaryenDivFloat32(): BinaryenOp;
declare function _BinaryenCopySignFloat32(): BinaryenOp;
declare function _BinaryenMinFloat32(): BinaryenOp;
declare function _BinaryenMaxFloat32(): BinaryenOp;
declare function _BinaryenEqFloat32(): BinaryenOp;
declare function _BinaryenNeFloat32(): BinaryenOp;
declare function _BinaryenLtFloat32(): BinaryenOp;
declare function _BinaryenLeFloat32(): BinaryenOp;
declare function _BinaryenGtFloat32(): BinaryenOp;
declare function _BinaryenGeFloat32(): BinaryenOp;
declare function _BinaryenAddFloat64(): BinaryenOp;
declare function _BinaryenSubFloat64(): BinaryenOp;
declare function _BinaryenMulFloat64(): BinaryenOp;
declare function _BinaryenDivFloat64(): BinaryenOp;
declare function _BinaryenCopySignFloat64(): BinaryenOp;
declare function _BinaryenMinFloat64(): BinaryenOp;
declare function _BinaryenMaxFloat64(): BinaryenOp;
declare function _BinaryenEqFloat64(): BinaryenOp;
declare function _BinaryenNeFloat64(): BinaryenOp;
declare function _BinaryenLtFloat64(): BinaryenOp;
declare function _BinaryenLeFloat64(): BinaryenOp;
declare function _BinaryenGtFloat64(): BinaryenOp;
declare function _BinaryenGeFloat64(): BinaryenOp;

declare type BinaryenHostOp = BinaryenOp;

declare function _BinaryenCurrentMemory(): BinaryenHostOp;
declare function _BinaryenGrowMemory(): BinaryenHostOp;

declare type BinaryenAtomicRMWOp = BinaryenOp;

declare function _BinaryenAtomicRMWAdd(): BinaryenAtomicRMWOp;
declare function _BinaryenAtomicRMWSub(): BinaryenAtomicRMWOp;
declare function _BinaryenAtomicRMWAnd(): BinaryenAtomicRMWOp;
declare function _BinaryenAtomicRMWOr(): BinaryenAtomicRMWOp;
declare function _BinaryenAtomicRMWXor(): BinaryenAtomicRMWOp;
declare function _BinaryenAtomicRMWXchg(): BinaryenAtomicRMWOp;

declare type BinaryenExpressionRef = usize;

declare function _BinaryenBlock(module: BinaryenModuleRef, name: usize, children: usize, numChildren: BinaryenIndex, type: BinaryenType): BinaryenExpressionRef;
declare function _BinaryenIf(module: BinaryenModuleRef, condition: BinaryenExpressionRef, ifTrue: BinaryenExpressionRef, ifFalse: BinaryenExpressionRef): BinaryenExpressionRef;
declare function _BinaryenLoop(module: BinaryenModuleRef, name: usize, body: BinaryenExpressionRef): BinaryenExpressionRef;
declare function _BinaryenBreak(module: BinaryenModuleRef, name: usize, condition: BinaryenExpressionRef, value: BinaryenExpressionRef): BinaryenExpressionRef;
declare function _BinaryenSwitch(module: BinaryenModuleRef, names: usize, numNames: BinaryenIndex, defaultName: usize, condition: BinaryenExpressionRef, value: BinaryenExpressionRef): BinaryenExpressionRef;
declare function _BinaryenCall(module: BinaryenModuleRef, target: usize, operands: usize, numOperands: BinaryenIndex, returnType: BinaryenType): BinaryenExpressionRef;
declare function _BinaryenCallImport(module: BinaryenModuleRef, target: usize, operands: usize, numOperands: BinaryenIndex, returnType: BinaryenType): BinaryenExpressionRef;
declare function _BinaryenCallIndirect(module: BinaryenModuleRef, target: BinaryenExpressionRef, operands: usize, numOperands: BinaryenIndex, type: usize): BinaryenExpressionRef;
declare function _BinaryenGetLocal(module: BinaryenModuleRef, index: BinaryenIndex, type: BinaryenType): BinaryenExpressionRef;
declare function _BinaryenSetLocal(module: BinaryenModuleRef, index: BinaryenIndex, value: BinaryenExpressionRef): BinaryenExpressionRef;
declare function _BinaryenTeeLocal(module: BinaryenModuleRef, index: BinaryenIndex, value: BinaryenExpressionRef): BinaryenExpressionRef;
declare function _BinaryenGetGlobal(module: BinaryenModuleRef, name: usize, type: BinaryenType): BinaryenExpressionRef;
declare function _BinaryenSetGlobal(module: BinaryenModuleRef, name: usize, value: BinaryenExpressionRef): BinaryenExpressionRef;
declare function _BinaryenLoad(module: BinaryenModuleRef, bytes: u32, signed: i8, offset: u32, align: u32, type: BinaryenType, ptr: BinaryenExpressionRef): BinaryenExpressionRef;
declare function _BinaryenStore(module: BinaryenModuleRef, bytes: u32, offset: u32, align: u32, ptr: BinaryenExpressionRef, value: BinaryenExpressionRef, type: BinaryenType): BinaryenExpressionRef;
declare function _BinaryenConst(module: BinaryenModuleRef, value: usize): BinaryenExpressionRef;
declare function _BinaryenUnary(module: BinaryenModuleRef, op: BinaryenOp, value: BinaryenExpressionRef): BinaryenExpressionRef;
declare function _BinaryenBinary(module: BinaryenModuleRef, op: BinaryenOp, left: BinaryenExpressionRef, right: BinaryenExpressionRef): BinaryenExpressionRef;
declare function _BinaryenSelect(module: BinaryenModuleRef, condition: BinaryenExpressionRef, ifTrue: BinaryenExpressionRef, ifFalse: BinaryenExpressionRef): BinaryenExpressionRef;
declare function _BinaryenDrop(module: BinaryenModuleRef, value: BinaryenExpressionRef): BinaryenExpressionRef;
declare function _BinaryenReturn(module: BinaryenModuleRef, value: BinaryenExpressionRef): BinaryenExpressionRef;
declare function _BinaryenHost(module: BinaryenModuleRef, op: BinaryenOp, name: usize | 0, operands: usize, numOperands: BinaryenIndex): BinaryenExpressionRef;
declare function _BinaryenNop(module: BinaryenModuleRef): BinaryenExpressionRef;
declare function _BinaryenUnreachable(module: BinaryenModuleRef): BinaryenExpressionRef;
declare function _BinaryenAtomicLoad(module: BinaryenModuleRef, bytes: BinaryenIndex, offset: BinaryenIndex, type: BinaryenType, ptr: BinaryenExpressionRef): BinaryenExpressionRef;
declare function _BinaryenAtomicStore(module: BinaryenModuleRef, bytes: BinaryenIndex, offset: BinaryenIndex, ptr: BinaryenExpressionRef, value: BinaryenExpressionRef, type: BinaryenType): BinaryenExpressionRef;
declare function _BinaryenAtomicRMW(module: BinaryenModuleRef, op: BinaryenAtomicRMWOp, bytes: i32, offset: i32, ptr: BinaryenExpressionRef, value: BinaryenExpressionRef, type: BinaryenType): BinaryenExpressionRef;
declare function _BinaryenAtomicCmpxchg(module: BinaryenModuleRef, bytes: i32, offset: i32, ptr: BinaryenExpressionRef, expected: BinaryenExpressionRef, replacement: BinaryenExpressionRef, type: BinaryenType): BinaryenExpressionRef;
declare function _BinaryenAtomicWait(module: BinaryenModuleRef, ptr: BinaryenExpressionRef, expected: BinaryenExpressionRef, timeout: BinaryenExpressionRef, expectedType: BinaryenType): BinaryenExpressionRef;
declare function _BinaryenAtomicWake(module: BinaryenModuleRef, ptr: BinaryenExpressionRef, wakeCount: BinaryenExpressionRef): BinaryenExpressionRef;

declare function _BinaryenExpressionGetId(expr: BinaryenExpressionRef): BinaryenExpressionId;
declare function _BinaryenExpressionGetType(expr: BinaryenExpressionRef): BinaryenType;
declare function _BinaryenExpressionPrint(expr: BinaryenExpressionRef): void;

declare function _BinaryenBlockGetName(expr: BinaryenExpressionRef): usize;
declare function _BinaryenBlockGetNumChildren(expr: BinaryenExpressionRef): BinaryenIndex;
declare function _BinaryenBlockGetChild(expr: BinaryenExpressionRef, index: BinaryenIndex): BinaryenExpressionRef;

declare function _BinaryenIfGetCondition(expr: BinaryenExpressionRef): BinaryenExpressionRef;
declare function _BinaryenIfGetIfTrue(expr: BinaryenExpressionRef): BinaryenExpressionRef;
declare function _BinaryenIfGetIfFalse(expr: BinaryenExpressionRef): BinaryenExpressionRef;

declare function _BinaryenLoopGetName(expr: BinaryenExpressionRef): usize;
declare function _BinaryenLoopGetBody(expr: BinaryenExpressionRef): BinaryenExpressionRef;

declare function _BinaryenBreakGetName(expr: BinaryenExpressionRef): usize;
declare function _BinaryenBreakGetCondition(expr: BinaryenExpressionRef): BinaryenExpressionRef;
declare function _BinaryenBreakGetValue(expr: BinaryenExpressionRef): BinaryenExpressionRef;

declare function _BinaryenSwitchGetNumNames(expr: BinaryenExpressionRef): BinaryenIndex;
declare function _BinaryenSwitchGetName(expr: BinaryenExpressionRef, index: BinaryenIndex): usize;
declare function _BinaryenSwitchGetDefaultName(expr: BinaryenExpressionRef): usize;
declare function _BinaryenSwitchGetCondition(expr: BinaryenExpressionRef): BinaryenExpressionRef;
declare function _BinaryenSwitchGetValue(expr: BinaryenExpressionRef): BinaryenExpressionRef;

declare function _BinaryenCallGetTarget(expr: BinaryenExpressionRef): usize;
declare function _BinaryenCallGetNumOperands(expr: BinaryenExpressionRef): BinaryenIndex;
declare function _BinaryenCallGetOperand(expr: BinaryenExpressionRef, index: BinaryenIndex): BinaryenExpressionRef;

declare function _BinaryenCallImportGetTarget(expr: BinaryenExpressionRef): usize;
declare function _BinaryenCallImportGetNumOperands(expr: BinaryenExpressionRef): BinaryenIndex;
declare function _BinaryenCallImportGetOperand(expr: BinaryenExpressionRef, index: BinaryenIndex): BinaryenExpressionRef;

declare function _BinaryenCallIndirectGetTarget(expr: BinaryenExpressionRef): BinaryenExpressionRef;
declare function _BinaryenCallIndirectGetNumOperands(expr: BinaryenExpressionRef): BinaryenIndex;
declare function _BinaryenCallIndirectGetOperand(expr: BinaryenExpressionRef, index: BinaryenIndex): BinaryenExpressionRef;

declare function _BinaryenGetLocalGetIndex(expr: BinaryenExpressionRef): BinaryenIndex;

declare function _BinaryenSetLocalIsTee(expr: BinaryenExpressionRef): bool;
declare function _BinaryenSetLocalGetIndex(expr: BinaryenExpressionRef): BinaryenIndex;
declare function _BinaryenSetLocalGetValue(expr: BinaryenExpressionRef): BinaryenExpressionRef;

declare function _BinaryenGetGlobalGetName(expr: BinaryenExpressionRef): usize;

declare function _BinaryenSetGlobalGetName(expr: BinaryenExpressionRef): usize;
declare function _BinaryenSetGlobalGetValue(expr: BinaryenExpressionRef): BinaryenExpressionRef;

declare function _BinaryenHostGetOp(expr: BinaryenExpressionRef): BinaryenOp;
declare function _BinaryenHostGetNameOperand(expr: BinaryenExpressionRef): usize;
declare function _BinaryenHostGetNumOperands(expr: BinaryenExpressionRef): BinaryenIndex;
declare function _BinaryenHostGetOperand(expr: BinaryenExpressionRef, index: BinaryenIndex): BinaryenExpressionRef;

declare function _BinaryenLoadIsAtomic(expr: BinaryenExpressionRef): bool;
declare function _BinaryenLoadIsSigned(expr: BinaryenExpressionRef): bool;
declare function _BinaryenLoadGetBytes(expr: BinaryenExpressionRef): u32;
declare function _BinaryenLoadGetOffset(expr: BinaryenExpressionRef): u32;
declare function _BinaryenLoadGetAlign(expr: BinaryenExpressionRef): u32;
declare function _BinaryenLoadGetPtr(expr: BinaryenExpressionRef): BinaryenExpressionRef;

declare function _BinaryenStoreIsAtomic(expr: BinaryenExpressionRef): bool;
declare function _BinaryenStoreGetBytes(expr: BinaryenExpressionRef): u32;
declare function _BinaryenStoreGetOffset(expr: BinaryenExpressionRef): u32;
declare function _BinaryenStoreGetAlign(expr: BinaryenExpressionRef): u32;
declare function _BinaryenStoreGetPtr(expr: BinaryenExpressionRef): BinaryenExpressionRef;
declare function _BinaryenStoreGetValue(expr: BinaryenExpressionRef): BinaryenExpressionRef;

declare function _BinaryenConstGetValueI32(expr: BinaryenExpressionRef): i32;
declare function _BinaryenConstGetValueI64Low(expr: BinaryenExpressionRef): i32;
declare function _BinaryenConstGetValueI64High(expr: BinaryenExpressionRef): i32;
declare function _BinaryenConstGetValueF32(expr: BinaryenExpressionRef): f32;
declare function _BinaryenConstGetValueF64(expr: BinaryenExpressionRef): f64;

declare function _BinaryenUnaryGetOp(expr: BinaryenExpressionRef): BinaryenOp;
declare function _BinaryenUnaryGetValue(expr: BinaryenExpressionRef): BinaryenExpressionRef;

declare function _BinaryenBinaryGetOp(expr: BinaryenExpressionRef): BinaryenOp;
declare function _BinaryenBinaryGetLeft(expr: BinaryenExpressionRef): BinaryenExpressionRef;
declare function _BinaryenBinaryGetRight(expr: BinaryenExpressionRef): BinaryenExpressionRef;

declare function _BinaryenSelectGetIfTrue(expr: BinaryenExpressionRef): BinaryenExpressionRef;
declare function _BinaryenSelectGetIfFalse(expr: BinaryenExpressionRef): BinaryenExpressionRef;
declare function _BinaryenSelectGetCondition(expr: BinaryenExpressionRef): BinaryenExpressionRef;

declare function _BinaryenDropGetValue(expr: BinaryenExpressionRef): BinaryenExpressionRef;

declare function _BinaryenReturnGetValue(expr: BinaryenExpressionRef): BinaryenExpressionRef;

declare function _BinaryenAtomicRMWGetOp(expr: BinaryenExpressionRef): BinaryenOp;
declare function _BinaryenAtomicRMWGetBytes(expr: BinaryenExpressionRef): u32;
declare function _BinaryenAtomicRMWGetOffset(expr: BinaryenExpressionRef): u32;
declare function _BinaryenAtomicRMWGetPtr(expr: BinaryenExpressionRef): BinaryenExpressionRef;
declare function _BinaryenAtomicRMWGetValue(expr: BinaryenExpressionRef): BinaryenExpressionRef;

declare function _BinaryenAtomicCmpxchgGetBytes(expr: BinaryenExpressionRef): u32;
declare function _BinaryenAtomicCmpxchgGetOffset(expr: BinaryenExpressionRef): u32;
declare function _BinaryenAtomicCmpxchgGetPtr(expr: BinaryenExpressionRef): BinaryenExpressionRef;
declare function _BinaryenAtomicCmpxchgGetExpected(expr: BinaryenExpressionRef): BinaryenExpressionRef;
declare function _BinaryenAtomicCmpxchgGetReplacement(expr: BinaryenExpressionRef): BinaryenExpressionRef;

declare function _BinaryenAtomicWaitGetPtr(expr: BinaryenExpressionRef): BinaryenExpressionRef;
declare function _BinaryenAtomicWaitGetExpected(expr: BinaryenExpressionRef): BinaryenExpressionRef;
declare function _BinaryenAtomicWaitGetTimeout(expr: BinaryenExpressionRef): BinaryenExpressionRef;
declare function _BinaryenAtomicWaitGetExpectedType(expr: BinaryenExpressionRef): BinaryenType;

declare function _BinaryenAtomicWakeGetPtr(expr: BinaryenExpressionRef): BinaryenExpressionRef;
declare function _BinaryenAtomicWakeGetWakeCount(expr: BinaryenExpressionRef): BinaryenExpressionRef;

declare type BinaryenFunctionTypeRef = usize;

declare function _BinaryenAddFunctionType(module: BinaryenModuleRef, name: usize, result: BinaryenType, paramTypes: usize, numParams: BinaryenIndex): BinaryenFunctionTypeRef;
declare function _BinaryenGetFunctionTypeBySignature(module: BinaryenModuleRef, result: BinaryenType, paramTypes: usize, numParams: BinaryenIndex): BinaryenFunctionTypeRef;
declare function _BinaryenRemoveFunctionType(module: BinaryenModuleRef, name: usize): void;

declare function _BinaryenFunctionTypeGetName(ftype: BinaryenFunctionTypeRef): usize;
declare function _BinaryenFunctionTypeGetNumParams(ftype: BinaryenFunctionTypeRef): BinaryenIndex;
declare function _BinaryenFunctionTypeGetParam(ftype: BinaryenFunctionTypeRef, index: BinaryenIndex): BinaryenType;
declare function _BinaryenFunctionTypeGetResult(ftype: BinaryenFunctionTypeRef): BinaryenType;

declare type BinaryenFunctionRef = usize;

declare function _BinaryenAddFunction(module: BinaryenModuleRef, name: usize, type: BinaryenFunctionTypeRef, varTypes: usize, numVarTypes: BinaryenIndex, body: BinaryenExpressionRef): BinaryenFunctionRef;
declare function _BinaryenGetFunction(module: BinaryenModuleRef, name: usize): BinaryenFunctionRef;
declare function _BinaryenRemoveFunction(module: BinaryenModuleRef, name: usize): void;

declare function _BinaryenFunctionGetName(func: BinaryenFunctionRef): usize;
declare function _BinaryenFunctionGetType(func: BinaryenFunctionRef): BinaryenFunctionTypeRef;
declare function _BinaryenFunctionGetNumParams(func: BinaryenFunctionRef): BinaryenIndex;
declare function _BinaryenFunctionGetParam(func: BinaryenFunctionRef, index: BinaryenIndex): BinaryenType;
declare function _BinaryenFunctionGetResult(func: BinaryenFunctionRef): BinaryenType;
declare function _BinaryenFunctionGetNumVars(func: BinaryenFunctionRef): BinaryenIndex;
declare function _BinaryenFunctionGetVar(func: BinaryenFunctionRef, index: BinaryenIndex): BinaryenType;
declare function _BinaryenFunctionGetBody(func: BinaryenFunctionRef): BinaryenExpressionRef;
declare function _BinaryenFunctionOptimize(func: BinaryenFunctionRef, module: BinaryenModuleRef): void;
declare function _BinaryenFunctionRunPasses(func: BinaryenFunctionRef, module: BinaryenModuleRef, passes: usize, numPasses: BinaryenIndex): void;
declare function _BinaryenFunctionSetDebugLocation(func: BinaryenFunctionRef, expr: BinaryenExpressionRef, fileIndex: BinaryenIndex, lineNumber: BinaryenIndex, columnNumber: BinaryenIndex): void;

declare type BinaryenImportRef = usize;

declare function _BinaryenAddFunctionImport(module: BinaryenModuleRef, internalName: usize, externalModuleName: usize, externalBaseName: usize, functionType: BinaryenFunctionTypeRef): BinaryenImportRef;
declare function _BinaryenAddTableImport(module: BinaryenModuleRef, internalName: usize, externalModuleName: usize, externalBaseName: usize): BinaryenImportRef;
declare function _BinaryenAddMemoryImport(module: BinaryenModuleRef, internalName: usize, externalModuleName: usize, externalBaseName: usize): BinaryenImportRef;
declare function _BinaryenAddGlobalImport(module: BinaryenModuleRef, internalName: usize, externalModuleName: usize, externalBaseName: usize, globalType: BinaryenType): BinaryenImportRef;
declare function _BinaryenRemoveImport(module: BinaryenModuleRef, internalName: usize): void;

declare type BinaryenExportRef = usize;

declare function _BinaryenAddFunctionExport(module: BinaryenModuleRef, internalName: usize, externalName: usize): BinaryenExportRef;
declare function _BinaryenAddTableExport(module: BinaryenModuleRef, internalName: usize, externalName: usize): BinaryenExportRef;
declare function _BinaryenAddMemoryExport(module: BinaryenModuleRef, internalName: usize, externalName: usize): BinaryenExportRef;
declare function _BinaryenAddGlobalExport(module: BinaryenModuleRef, internalName: usize, externalName: usize): BinaryenExportRef;
declare function _BinaryenRemoveExport(module: BinaryenModuleRef, externalName: usize): void;

declare type BinaryenGlobalRef = usize;

declare function _BinaryenAddGlobal(module: BinaryenModuleRef, name: usize, type: BinaryenType, mutable: i8, init: BinaryenExpressionRef): BinaryenGlobalRef;

declare function _BinaryenSetFunctionTable(module: BinaryenModuleRef, funcs: usize, numFuncs: BinaryenIndex): void;

declare function _BinaryenSetMemory(module: BinaryenModuleRef, initial: BinaryenIndex, maximum: BinaryenIndex, exportName: usize, segments: usize, segmentOffsets: usize, segmentSizes: usize, numSegments: BinaryenIndex): void;

declare function _BinaryenSetStart(module: BinaryenModuleRef, start: BinaryenFunctionRef): void;

declare function _BinaryenModuleParse(text: usize): BinaryenModuleRef;
declare function _BinaryenModulePrint(module: BinaryenModuleRef): void;
declare function _BinaryenModulePrintAsmjs(module: BinaryenModuleRef): void;
declare function _BinaryenModuleValidate(module: BinaryenModuleRef): i32;
declare function _BinaryenModuleOptimize(module: BinaryenModuleRef): void;
declare function _BinaryenModuleRunPasses(module: BinaryenModuleRef, passes: usize, numPasses: BinaryenIndex): void;
declare function _BinaryenModuleAutoDrop(module: BinaryenModuleRef): void;
declare function _BinaryenModuleAllocateAndWrite(out: usize, module: BinaryenModuleRef, sourceMapUrl: usize): void;
declare function _BinaryenModuleRead(input: usize, inputSize: usize): BinaryenModuleRef;
declare function _BinaryenModuleInterpret(module: BinaryenModuleRef): void;
declare function _BinaryenModuleAddDebugInfoFileName(module: BinaryenModuleRef, filename: usize): BinaryenIndex;
declare function _BinaryenModuleGetDebugInfoFileName(module: BinaryenModuleRef, index: BinaryenIndex): usize;

declare type RelooperRef = usize;
declare type RelooperBlockRef = usize;

declare function _RelooperCreate(): RelooperRef;
declare function _RelooperAddBlock(relooper: RelooperRef, code: BinaryenExpressionRef): RelooperBlockRef;
declare function _RelooperAddBranch(from: RelooperBlockRef, to: RelooperBlockRef, condition: BinaryenExpressionRef, code: BinaryenExpressionRef): void;
declare function _RelooperAddBlockWithSwitch(relooper: RelooperRef, code: BinaryenExpressionRef, condition: BinaryenExpressionRef): RelooperBlockRef;
declare function _RelooperAddBranchForSwitch(from: RelooperBlockRef, to: RelooperBlockRef, indexes: usize, numIndexes: BinaryenIndex, code: BinaryenExpressionRef): void;
declare function _RelooperRenderAndDispose(relooper: RelooperRef, entry: RelooperBlockRef, labelHelper: BinaryenIndex, module: BinaryenModuleRef): BinaryenExpressionRef;

declare function _BinaryenGetOptimizeLevel(): i32;
declare function _BinaryenSetOptimizeLevel(level: i32): void;
declare function _BinaryenGetShrinkLevel(): i32;
declare function _BinaryenSetShrinkLevel(level: i32): void;
declare function _BinaryenGetDebugInfo(): bool;
declare function _BinaryenSetDebugInfo(on: bool): void;

declare function _BinaryenSetAPITracing(on: i32): void;
