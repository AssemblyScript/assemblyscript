/**
 * @fileoverview Portable definitions for Binaryen's C-API.
 *
 * tsc uses the .js file next to it, while asc makes it a Wasm import.
 *
 * See: https://github.com/WebAssembly/binaryen/blob/main/src/binaryen-c.h
 *
 * @license Apache-2.0
 */
module "binaryen";

type Ref = usize;

export type Index = u32;
export type ExpressionId = i32;
export type FeatureFlags = u32;
export type Op = i32;
export type ExternalKind = u32;
export type SideEffects = u32;
export type ExpressionRunnerFlags = u32;

export type StringRef = Ref;
export type Pointer<T> = Ref;
export type ArrayRef<T> = Ref;
export type TypeRef = Ref;
export type HeapTypeRef = Ref;
export type PackedType = u32;
export type ModuleRef = Ref;
export type LiteralRef = Ref;
export type ExpressionRef = Ref;
export type FunctionRef = Ref;
export type ImportRef = Ref;
export type ExportRef = Ref;
export type GlobalRef = Ref;
export type TagRef = Ref;
export type TableRef = Ref;
export type ElementSegmentRef = Ref;
export type RelooperRef = Ref;
export type RelooperBlockRef = Ref;
export type ExpressionRunnerRef = Ref;
export type BinaryenModuleAllocateAndWriteResultRef = Ref;
export type TypeBuilderRef = Ref;
export type TypeBuilderErrorReason = u32;
export type TypeSystem = u32;

export declare function _BinaryenTypeCreate(types: ArrayRef<TypeRef>, numTypes: u32): TypeRef;
export declare function _BinaryenTypeArity(type: TypeRef): u32;
export declare function _BinaryenTypeExpand(type: TypeRef, typesOut: ArrayRef<TypeRef>): void;
export declare function _BinaryenTypeGetHeapType(type: TypeRef): HeapTypeRef;
export declare function _BinaryenTypeFromHeapType(heapType: HeapTypeRef, nullable: bool): TypeRef;
export declare function _BinaryenTypeIsNullable(type: TypeRef): bool;

export declare function _BinaryenTypeFuncref(): TypeRef;
export declare function _BinaryenTypeExternref(): TypeRef;
export declare function _BinaryenTypeAnyref(): TypeRef;
export declare function _BinaryenTypeEqref(): TypeRef;
export declare function _BinaryenTypeStructref(): TypeRef;
export declare function _BinaryenTypeArrayref(): TypeRef;
export declare function _BinaryenTypeI31ref(): TypeRef;
export declare function _BinaryenTypeStringref(): TypeRef;
export declare function _BinaryenTypeStringviewWTF8(): TypeRef;
export declare function _BinaryenTypeStringviewWTF16(): TypeRef;
export declare function _BinaryenTypeStringviewIter(): TypeRef;
export declare function _BinaryenTypeNullref(): TypeRef;
export declare function _BinaryenTypeNullExternref(): TypeRef;
export declare function _BinaryenTypeNullFuncref(): TypeRef;

export declare function _BinaryenHeapTypeFunc(): HeapTypeRef;
export declare function _BinaryenHeapTypeExt(): HeapTypeRef;
export declare function _BinaryenHeapTypeAny(): HeapTypeRef;
export declare function _BinaryenHeapTypeEq(): HeapTypeRef;
export declare function _BinaryenHeapTypeI31(): HeapTypeRef;
export declare function _BinaryenHeapTypeStruct(): HeapTypeRef;
export declare function _BinaryenHeapTypeArray(): HeapTypeRef;
export declare function _BinaryenHeapTypeString(): HeapTypeRef;
export declare function _BinaryenHeapTypeStringviewWTF8(): HeapTypeRef;
export declare function _BinaryenHeapTypeStringviewWTF16(): HeapTypeRef;
export declare function _BinaryenHeapTypeStringviewIter(): HeapTypeRef;
export declare function _BinaryenHeapTypeNone(): HeapTypeRef;
export declare function _BinaryenHeapTypeNoext(): HeapTypeRef;
export declare function _BinaryenHeapTypeNofunc(): HeapTypeRef;

export declare function _BinaryenHeapTypeIsBasic(heapType: HeapTypeRef): bool;
export declare function _BinaryenHeapTypeIsSignature(heapType: HeapTypeRef): bool;
export declare function _BinaryenHeapTypeIsStruct(heapType: HeapTypeRef): bool;
export declare function _BinaryenHeapTypeIsArray(heapType: HeapTypeRef): bool;
export declare function _BinaryenHeapTypeIsBottom(heapType: HeapTypeRef): bool;
export declare function _BinaryenHeapTypeGetBottom(heapType: HeapTypeRef): HeapTypeRef;
export declare function _BinaryenHeapTypeIsSubType(left: HeapTypeRef, right: HeapTypeRef): bool;
export declare function _BinaryenStructTypeGetNumFields(heapType: HeapTypeRef): Index;
export declare function _BinaryenStructTypeGetFieldType(heapType: HeapTypeRef, index: Index): TypeRef;
export declare function _BinaryenStructTypeGetFieldPackedType(heapType: HeapTypeRef, index: Index): PackedType;
export declare function _BinaryenStructTypeIsFieldMutable(heapType: HeapTypeRef, index: Index): bool;
export declare function _BinaryenArrayTypeGetElementType(heapType: HeapTypeRef): TypeRef;
export declare function _BinaryenArrayTypeGetElementPackedType(heapType: HeapTypeRef): PackedType;
export declare function _BinaryenArrayTypeIsElementMutable(heapType: HeapTypeRef): bool;
export declare function _BinaryenSignatureTypeGetParams(heapType: HeapTypeRef): TypeRef;
export declare function _BinaryenSignatureTypeGetResults(heapType: HeapTypeRef): TypeRef;

export declare function _BinaryenModuleCreate(): ModuleRef;
export declare function _BinaryenModuleDispose(module: ModuleRef): void;

export declare function _BinaryenSizeofLiteral(): usize;
export declare function _BinaryenLiteralInt32(literalOut: LiteralRef, x: i32): void;
export declare function _BinaryenLiteralInt64(literalOut: LiteralRef, x: i32, y: i32): void;
export declare function _BinaryenLiteralFloat32(literalOut: LiteralRef, x: f32): void;
export declare function _BinaryenLiteralFloat64(literalOut: LiteralRef, x: f64): void;
export declare function _BinaryenLiteralVec128(literalOut: LiteralRef, x: ArrayRef<u8>): void;
export declare function _BinaryenLiteralFloat32Bits(literalOut: LiteralRef, x: i32): void;
export declare function _BinaryenLiteralFloat64Bits(literalOut: LiteralRef, x: i32, y: i32): void;

export declare function _BinaryenExpressionGetId(expr: ExpressionRef): ExpressionId;
export declare function _BinaryenExpressionGetType(expr: ExpressionRef): TypeRef;
export declare function _BinaryenExpressionSetType(expr: ExpressionRef, type: TypeRef): void;
export declare function _BinaryenExpressionPrint(expr: ExpressionRef): void;
export declare function _BinaryenExpressionCopy(expr: ExpressionRef, module: ModuleRef): ExpressionRef;
export declare function _BinaryenExpressionFinalize(expr: ExpressionRef): void;

export declare function _BinaryenBlock(module: ModuleRef, name: StringRef, childExprs: ArrayRef<ExpressionRef>, numChildren: Index, type: TypeRef): ExpressionRef;
export declare function _BinaryenBlockGetName(expr: ExpressionRef): StringRef;
export declare function _BinaryenBlockSetName(expr: ExpressionRef, name: StringRef): void;
export declare function _BinaryenBlockGetNumChildren(expr: ExpressionRef): Index;
export declare function _BinaryenBlockGetChildAt(expr: ExpressionRef, index: Index): ExpressionRef;
export declare function _BinaryenBlockSetChildAt(expr: ExpressionRef, index: Index, childExpr: ExpressionRef): void;
export declare function _BinaryenBlockAppendChild(expr: ExpressionRef, childExpr: ExpressionRef): Index;
export declare function _BinaryenBlockInsertChildAt(expr: ExpressionRef, index: Index, childExpr: ExpressionRef): void;
export declare function _BinaryenBlockRemoveChildAt(expr: ExpressionRef, index: Index): ExpressionRef;

export declare function _BinaryenIf(module: ModuleRef, conditionExpr: ExpressionRef, ifTrueExpr: ExpressionRef, ifFalseExpr: ExpressionRef): ExpressionRef;
export declare function _BinaryenIfGetCondition(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenIfSetCondition(expr: ExpressionRef, conditionExpr: ExpressionRef): void;
export declare function _BinaryenIfGetIfTrue(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenIfSetIfTrue(expr: ExpressionRef, ifTrueExpr: ExpressionRef): void;
export declare function _BinaryenIfGetIfFalse(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenIfSetIfFalse(expr: ExpressionRef, ifFalseExpr: ExpressionRef): void;

export declare function _BinaryenLoop(module: ModuleRef, name: StringRef, bodyExpr: ExpressionRef): ExpressionRef;
export declare function _BinaryenLoopGetName(expr: ExpressionRef): StringRef;
export declare function _BinaryenLoopSetName(expr: ExpressionRef, name: StringRef): void;
export declare function _BinaryenLoopGetBody(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenLoopSetBody(expr: ExpressionRef, bodyExpr: ExpressionRef): void;

export declare function _BinaryenBreak(module: ModuleRef, name: StringRef, conditionExpr: ExpressionRef, valueExpr: ExpressionRef): ExpressionRef;
export declare function _BinaryenBreakGetName(expr: ExpressionRef): StringRef;
export declare function _BinaryenBreakSetName(expr: ExpressionRef, name: StringRef): void;
export declare function _BinaryenBreakGetCondition(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenBreakSetCondition(expr: ExpressionRef, conditionExpr: ExpressionRef): void;
export declare function _BinaryenBreakGetValue(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenBreakSetValue(expr: ExpressionRef, valueExpr: ExpressionRef): void;

export declare function _BinaryenSwitch(module: ModuleRef, names: ArrayRef<StringRef>, numNames: Index, defaultName: StringRef, conditionExpr: ExpressionRef, valueExpr: ExpressionRef): ExpressionRef;
export declare function _BinaryenSwitchGetNumNames(expr: ExpressionRef): Index;
export declare function _BinaryenSwitchGetNameAt(expr: ExpressionRef, index: Index): StringRef;
export declare function _BinaryenSwitchSetNameAt(expr: ExpressionRef, index: Index, name: StringRef): void;
export declare function _BinaryenSwitchAppendName(expr: ExpressionRef, name: StringRef): Index;
export declare function _BinaryenSwitchInsertNameAt(expr: ExpressionRef, index: Index, name: StringRef): void;
export declare function _BinaryenSwitchRemoveNameAt(expr: ExpressionRef, index: Index): StringRef;
export declare function _BinaryenSwitchGetDefaultName(expr: ExpressionRef): StringRef;
export declare function _BinaryenSwitchSetDefaultName(expr: ExpressionRef, defaultName: StringRef): void;
export declare function _BinaryenSwitchGetCondition(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenSwitchSetCondition(expr: ExpressionRef, conditionExpr: ExpressionRef): void;
export declare function _BinaryenSwitchGetValue(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenSwitchSetValue(expr: ExpressionRef, valueExpr: ExpressionRef): void;

export declare function _BinaryenCall(module: ModuleRef, targetName: StringRef, operandExprs: ArrayRef<ExpressionRef>, numOperands: Index, returnType: TypeRef): ExpressionRef;
export declare function _BinaryenCallGetTarget(expr: ExpressionRef): StringRef;
export declare function _BinaryenCallSetTarget(expr: ExpressionRef, targetName: StringRef): void;
export declare function _BinaryenCallGetNumOperands(expr: ExpressionRef): Index;
export declare function _BinaryenCallGetOperandAt(expr: ExpressionRef, index: Index): ExpressionRef;
export declare function _BinaryenCallSetOperandAt(expr: ExpressionRef, index: Index, operandExpr: ExpressionRef): void;
export declare function _BinaryenCallAppendOperand(expr: ExpressionRef, operandExpr: ExpressionRef): Index;
export declare function _BinaryenCallInsertOperandAt(expr: ExpressionRef, index: Index, operandExpr: ExpressionRef): void;
export declare function _BinaryenCallRemoveOperandAt(expr: ExpressionRef, index: Index): ExpressionRef;
export declare function _BinaryenCallIsReturn(expr: ExpressionRef): bool;
export declare function _BinaryenCallSetReturn(expr: ExpressionRef, isReturn: bool): void;
// ^ with return = true
export declare function _BinaryenReturnCall(module: ModuleRef, targetName: StringRef, operandExprs: ArrayRef<ExpressionRef>, numOperands: Index, returnType: TypeRef): ExpressionRef;

export declare function _BinaryenCallIndirect(module: ModuleRef, table: StringRef, targetExpr: ExpressionRef, operandExprs: ArrayRef<ExpressionRef>, numOperands: Index, params: TypeRef, results: TypeRef): ExpressionRef;
export declare function _BinaryenCallIndirectGetTable(expr: ExpressionRef): StringRef;
export declare function _BinaryenCallIndirectSetTable(expr: ExpressionRef, table: StringRef): void;
export declare function _BinaryenCallIndirectGetTarget(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenCallIndirectSetTarget(expr: ExpressionRef, targetExpr: ExpressionRef): void;
export declare function _BinaryenCallIndirectGetNumOperands(expr: ExpressionRef): Index;
export declare function _BinaryenCallIndirectGetOperandAt(expr: ExpressionRef, index: Index): ExpressionRef;
export declare function _BinaryenCallIndirectSetOperandAt(expr: ExpressionRef, index: Index, operandExpr: ExpressionRef): void;
export declare function _BinaryenCallIndirectAppendOperand(expr: ExpressionRef, operandExpr: ExpressionRef): Index;
export declare function _BinaryenCallIndirectInsertOperandAt(expr: ExpressionRef, index: Index, operandExpr: ExpressionRef): void;
export declare function _BinaryenCallIndirectRemoveOperandAt(expr: ExpressionRef, index: Index): ExpressionRef;
export declare function _BinaryenCallIndirectIsReturn(expr: ExpressionRef): bool;
export declare function _BinaryenCallIndirectSetReturn(expr: ExpressionRef, isReturn: bool): void;
// ^ with return = true
export declare function _BinaryenReturnCallIndirect(module: ModuleRef, table: StringRef, targetExpr: ExpressionRef, operandExprs: ArrayRef<ExpressionRef>, numOperands: Index, params: TypeRef, results: TypeRef): ExpressionRef;

export declare function _BinaryenLocalGet(module: ModuleRef, index: Index, type: TypeRef): ExpressionRef;
export declare function _BinaryenLocalGetGetIndex(expr: ExpressionRef): Index;
export declare function _BinaryenLocalGetSetIndex(expr: ExpressionRef, index: Index): void;

export declare function _BinaryenLocalSet(module: ModuleRef, index: Index, valueExpr: ExpressionRef): ExpressionRef;
export declare function _BinaryenLocalSetIsTee(expr: ExpressionRef): bool;
export declare function _BinaryenLocalSetGetIndex(expr: ExpressionRef): Index;
export declare function _BinaryenLocalSetSetIndex(expr: ExpressionRef, index: Index): void;
export declare function _BinaryenLocalSetGetValue(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenLocalSetSetValue(expr: ExpressionRef, valueExpr: ExpressionRef): void;
// ^ with type != none
export declare function _BinaryenLocalTee(module: ModuleRef, index: Index, valueExpr: ExpressionRef, type: TypeRef): ExpressionRef;

export declare function _BinaryenGlobalGet(module: ModuleRef, name: StringRef, type: TypeRef): ExpressionRef;
export declare function _BinaryenGlobalGetGetName(expr: ExpressionRef): StringRef;
export declare function _BinaryenGlobalGetSetName(expr: ExpressionRef, name: StringRef): void;

export declare function _BinaryenGlobalSet(module: ModuleRef, name: StringRef, value: ExpressionRef): ExpressionRef;
export declare function _BinaryenGlobalSetGetName(expr: ExpressionRef): StringRef;
export declare function _BinaryenGlobalSetSetName(expr: ExpressionRef, name: StringRef): void;
export declare function _BinaryenGlobalSetGetValue(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenGlobalSetSetValue(expr: ExpressionRef, valueExpr: ExpressionRef): void;

export declare function _BinaryenMemorySize(module: ModuleRef, memoryName: StringRef, memoryIs64: bool): ExpressionRef;

export declare function _BinaryenMemoryGrow(module: ModuleRef, delta: ExpressionRef, memoryName: StringRef, memoryIs64: bool): ExpressionRef;
export declare function _BinaryenMemoryGrowGetDelta(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenMemoryGrowSetDelta(expr: ExpressionRef, delta: ExpressionRef): void;

export declare function _BinaryenLoad(module: ModuleRef, bytes: u32, signed: bool, offset: u32, align: u32, type: TypeRef, ptrExpr: ExpressionRef, memoryName: StringRef): ExpressionRef;
export declare function _BinaryenLoadIsAtomic(expr: ExpressionRef): bool;
export declare function _BinaryenLoadSetAtomic(expr: ExpressionRef, isAtomic: bool): void;
export declare function _BinaryenLoadIsSigned(expr: ExpressionRef): bool;
export declare function _BinaryenLoadSetSigned(expr: ExpressionRef, isSigned: bool): void;
export declare function _BinaryenLoadGetOffset(expr: ExpressionRef): u32;
export declare function _BinaryenLoadSetOffset(expr: ExpressionRef, offset: u32): void;
export declare function _BinaryenLoadGetBytes(expr: ExpressionRef): u32;
export declare function _BinaryenLoadSetBytes(expr: ExpressionRef, bytes: u32): void;
export declare function _BinaryenLoadGetAlign(expr: ExpressionRef): u32;
export declare function _BinaryenLoadSetAlign(expr: ExpressionRef, align: u32): void;
export declare function _BinaryenLoadGetPtr(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenLoadSetPtr(expr: ExpressionRef, ptrExpr: ExpressionRef): void;
// ^ with atomic = true
export declare function _BinaryenAtomicLoad(module: ModuleRef, bytes: Index, offset: Index, type: TypeRef, ptrExpr: ExpressionRef, memoryName: StringRef): ExpressionRef;

export declare function _BinaryenStore(module: ModuleRef, bytes: u32, offset: u32, align: u32, ptrExpr: ExpressionRef, valueExpr: ExpressionRef, type: TypeRef, memoryName: StringRef): ExpressionRef;
export declare function _BinaryenStoreIsAtomic(expr: ExpressionRef): bool;
export declare function _BinaryenStoreSetAtomic(expr: ExpressionRef, isAtomic: bool): void;
export declare function _BinaryenStoreGetBytes(expr: ExpressionRef): u32;
export declare function _BinaryenStoreSetBytes(expr: ExpressionRef, bytes: u32): void;
export declare function _BinaryenStoreGetOffset(expr: ExpressionRef): u32;
export declare function _BinaryenStoreSetOffset(expr: ExpressionRef, offset: u32): void;
export declare function _BinaryenStoreGetAlign(expr: ExpressionRef): u32;
export declare function _BinaryenStoreSetAlign(expr: ExpressionRef, align: u32): void;
export declare function _BinaryenStoreGetPtr(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenStoreSetPtr(expr: ExpressionRef, ptrExpr: ExpressionRef): void;
export declare function _BinaryenStoreGetValue(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenStoreSetValue(expr: ExpressionRef, valueExpr: ExpressionRef): void;
export declare function _BinaryenStoreGetValueType(expr: ExpressionRef): TypeRef;
export declare function _BinaryenStoreSetValueType(expr: ExpressionRef, valueType: TypeRef): void;
// ^ with atomic = true
export declare function _BinaryenAtomicStore(module: ModuleRef, bytes: Index, offset: Index, ptrExpr: ExpressionRef, valueExpr: ExpressionRef, type: TypeRef, memoryName: StringRef): ExpressionRef;

export declare function _BinaryenConst(module: ModuleRef, value: LiteralRef): ExpressionRef;
export declare function _BinaryenConstGetValueI32(expr: ExpressionRef): i32;
export declare function _BinaryenConstSetValueI32(expr: ExpressionRef, value: i32): void;
export declare function _BinaryenConstGetValueI64Low(expr: ExpressionRef): i32;
export declare function _BinaryenConstSetValueI64Low(expr: ExpressionRef, value: i32): void;
export declare function _BinaryenConstGetValueI64High(expr: ExpressionRef): i32;
export declare function _BinaryenConstSetValueI64High(expr: ExpressionRef, value: i32): void;
export declare function _BinaryenConstGetValueF32(expr: ExpressionRef): f32;
export declare function _BinaryenConstSetValueF32(expr: ExpressionRef, value: f32): void;
export declare function _BinaryenConstGetValueF64(expr: ExpressionRef): f64;
export declare function _BinaryenConstSetValueF64(expr: ExpressionRef, value: f64): void;
export declare function _BinaryenConstGetValueV128(expr: ExpressionRef, valueOut: ArrayRef<u8>): void;
export declare function _BinaryenConstSetValueV128(expr: ExpressionRef, value: ArrayRef<u8>): void;

export declare function _BinaryenUnary(module: ModuleRef, op: Op, valueExpr: ExpressionRef): ExpressionRef;
export declare function _BinaryenUnaryGetOp(expr: ExpressionRef): Op;
export declare function _BinaryenUnarySetOp(expr: ExpressionRef, op: Op): void;
export declare function _BinaryenUnaryGetValue(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenUnarySetValue(expr: ExpressionRef, valueExpr: ExpressionRef): void;

export declare function _BinaryenBinary(module: ModuleRef, op: Op, leftExpr: ExpressionRef, rightExpr: ExpressionRef): ExpressionRef;
export declare function _BinaryenBinaryGetOp(expr: ExpressionRef): Op;
export declare function _BinaryenBinarySetOp(expr: ExpressionRef, op: Op): void;
export declare function _BinaryenBinaryGetLeft(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenBinarySetLeft(expr: ExpressionRef, leftExpr: ExpressionRef): void;
export declare function _BinaryenBinaryGetRight(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenBinarySetRight(expr: ExpressionRef, rightExpr: ExpressionRef): void;

export declare function _BinaryenSelect(module: ModuleRef, conditionExpr: ExpressionRef, ifTrueExpr: ExpressionRef, ifFalseExpr: ExpressionRef, type: TypeRef): ExpressionRef;
export declare function _BinaryenSelectGetIfTrue(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenSelectSetIfTrue(expr: ExpressionRef, ifTrueExpr: ExpressionRef): void;
export declare function _BinaryenSelectGetIfFalse(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenSelectSetIfFalse(expr: ExpressionRef, ifFalseExpr: ExpressionRef): void;
export declare function _BinaryenSelectGetCondition(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenSelectSetCondition(expr: ExpressionRef, conditionExpr: ExpressionRef): void;

export declare function _BinaryenDrop(module: ModuleRef, valueExpr: ExpressionRef): ExpressionRef;
export declare function _BinaryenDropGetValue(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenDropSetValue(expr: ExpressionRef, valueExpr: ExpressionRef): void;

export declare function _BinaryenReturn(module: ModuleRef, valueExpr: ExpressionRef): ExpressionRef;
export declare function _BinaryenReturnGetValue(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenReturnSetValue(expr: ExpressionRef, valueExpr: ExpressionRef): void;

export declare function _BinaryenNop(module: ModuleRef): ExpressionRef;

export declare function _BinaryenUnreachable(module: ModuleRef): ExpressionRef;

export declare function _BinaryenAtomicRMW(module: ModuleRef, op: Op, bytes: u32, offset: u32, ptrExpr: ExpressionRef, valueExpr: ExpressionRef, type: TypeRef, memoryName: StringRef): ExpressionRef;
export declare function _BinaryenAtomicRMWGetOp(expr: ExpressionRef): Op;
export declare function _BinaryenAtomicRMWSetOp(expr: ExpressionRef, op: Op): void;
export declare function _BinaryenAtomicRMWGetBytes(expr: ExpressionRef): u32;
export declare function _BinaryenAtomicRMWSetBytes(expr: ExpressionRef, bytes: u32): void;
export declare function _BinaryenAtomicRMWGetOffset(expr: ExpressionRef): u32;
export declare function _BinaryenAtomicRMWSetOffset(expr: ExpressionRef, offset: u32): void;
export declare function _BinaryenAtomicRMWGetPtr(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenAtomicRMWSetPtr(expr: ExpressionRef, ptrExpr: ExpressionRef): void;
export declare function _BinaryenAtomicRMWGetValue(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenAtomicRMWSetValue(expr: ExpressionRef, valueExpr: ExpressionRef): void;

export declare function _BinaryenAtomicCmpxchg(module: ModuleRef, bytes: u32, offset: u32, ptrExpr: ExpressionRef, expectedExpr: ExpressionRef, replacementExpr: ExpressionRef, type: TypeRef, memoryName: StringRef): ExpressionRef;
export declare function _BinaryenAtomicCmpxchgGetBytes(expr: ExpressionRef): u32;
export declare function _BinaryenAtomicCmpxchgSetBytes(expr: ExpressionRef, bytes: u32): void;
export declare function _BinaryenAtomicCmpxchgGetOffset(expr: ExpressionRef): u32;
export declare function _BinaryenAtomicCmpxchgSetOffset(expr: ExpressionRef, offset: u32): void;
export declare function _BinaryenAtomicCmpxchgGetPtr(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenAtomicCmpxchgSetPtr(expr: ExpressionRef, ptrExpr: ExpressionRef): void;
export declare function _BinaryenAtomicCmpxchgGetExpected(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenAtomicCmpxchgSetExpected(expr: ExpressionRef, expectedExpr: ExpressionRef): void;
export declare function _BinaryenAtomicCmpxchgGetReplacement(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenAtomicCmpxchgSetReplacement(expr: ExpressionRef, replacementExpr: ExpressionRef): void;

export declare function _BinaryenAtomicWait(module: ModuleRef, ptrExpr: ExpressionRef, expectedExpr: ExpressionRef, timeoutExpr: ExpressionRef, expectedType: TypeRef, memoryName: StringRef): ExpressionRef;
export declare function _BinaryenAtomicWaitGetPtr(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenAtomicWaitSetPtr(expr: ExpressionRef, ptrExpr: ExpressionRef): void;
export declare function _BinaryenAtomicWaitGetExpected(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenAtomicWaitSetExpected(expr: ExpressionRef, expectedExpr: ExpressionRef): void;
export declare function _BinaryenAtomicWaitGetTimeout(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenAtomicWaitSetTimeout(expr: ExpressionRef, timeoutExpr: ExpressionRef): void;
export declare function _BinaryenAtomicWaitGetExpectedType(expr: ExpressionRef): TypeRef;
export declare function _BinaryenAtomicWaitSetExpectedType(expr: ExpressionRef, expectedType: TypeRef): void;

export declare function _BinaryenAtomicNotify(module: ModuleRef, ptrExpr: ExpressionRef, notifyCountExpr: ExpressionRef, memoryName: StringRef): ExpressionRef;
export declare function _BinaryenAtomicNotifyGetPtr(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenAtomicNotifySetPtr(expr: ExpressionRef, ptrExpr: ExpressionRef): void;
export declare function _BinaryenAtomicNotifyGetNotifyCount(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenAtomicNotifySetNotifyCount(expr: ExpressionRef, notifyCountExpr: ExpressionRef): void;

export declare function _BinaryenAtomicFence(module: ModuleRef, memoryName: StringRef): ExpressionRef;
export declare function _BinaryenAtomicFenceGetOrder(expr: ExpressionRef): u8; // unused
export declare function _BinaryenAtomicFenceSetOrder(expr: ExpressionRef, order: u8): void; // unused

export declare function _BinaryenSIMDExtract(module: ModuleRef, op: Op, vecExpr: ExpressionRef, index: u8): ExpressionRef;
export declare function _BinaryenSIMDExtractGetOp(expr: ExpressionRef): Op;
export declare function _BinaryenSIMDExtractSetOp(expr: ExpressionRef, op: Op): void;
export declare function _BinaryenSIMDExtractGetVec(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenSIMDExtractSetVec(expr: ExpressionRef, vecExpr: ExpressionRef): void;
export declare function _BinaryenSIMDExtractGetIndex(expr: ExpressionRef): u8;
export declare function _BinaryenSIMDExtractSetIndex(expr: ExpressionRef, index: u8): void;

export declare function _BinaryenSIMDReplace(module: ModuleRef, op: Op, vecEpr: ExpressionRef, index: u8, valueExpr: ExpressionRef): ExpressionRef;
export declare function _BinaryenSIMDReplaceGetOp(expr: ExpressionRef): Op;
export declare function _BinaryenSIMDReplaceSetOp(expr: ExpressionRef, op: Op): void;
export declare function _BinaryenSIMDReplaceGetVec(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenSIMDReplaceSetVec(expr: ExpressionRef, vecExpr: ExpressionRef): void;
export declare function _BinaryenSIMDReplaceGetIndex(expr: ExpressionRef): u8;
export declare function _BinaryenSIMDReplaceSetIndex(expr: ExpressionRef, index: u8): void;
export declare function _BinaryenSIMDReplaceGetValue(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenSIMDReplaceSetValue(expr: ExpressionRef, valueExpr: ExpressionRef): void;

export declare function _BinaryenSIMDShuffle(module: ModuleRef, leftExpr: ExpressionRef, rightExpr: ExpressionRef, mask: ArrayRef<u8>): ExpressionRef;
export declare function _BinaryenSIMDShuffleGetLeft(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenSIMDShuffleSetLeft(expr: ExpressionRef, leftExpr: ExpressionRef): void;
export declare function _BinaryenSIMDShuffleGetRight(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenSIMDShuffleSetRight(expr: ExpressionRef, rightExpr: ExpressionRef): void;
export declare function _BinaryenSIMDShuffleGetMask(expr: ExpressionRef, maskOut: ArrayRef<u8>): void;
export declare function _BinaryenSIMDShuffleSetMask(expr: ExpressionRef, mask: ArrayRef<u8>): void;

export declare function _BinaryenSIMDTernary(module: ModuleRef, op: Op, aExpr: ExpressionRef, bExpr: ExpressionRef, cExpr: ExpressionRef): ExpressionRef;
export declare function _BinaryenSIMDTernaryGetOp(expr: ExpressionRef): Op;
export declare function _BinaryenSIMDTernarySetOp(expr: ExpressionRef, op: Op): void;
export declare function _BinaryenSIMDTernaryGetA(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenSIMDTernarySetA(expr: ExpressionRef, aExpr: ExpressionRef): void;
export declare function _BinaryenSIMDTernaryGetB(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenSIMDTernarySetB(expr: ExpressionRef, bExpr: ExpressionRef): void;
export declare function _BinaryenSIMDTernaryGetC(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenSIMDTernarySetC(expr: ExpressionRef, cExpr: ExpressionRef): void;

export declare function _BinaryenSIMDShift(module: ModuleRef, op: Op, vecExpr: ExpressionRef, shiftExpr: ExpressionRef): ExpressionRef;
export declare function _BinaryenSIMDShiftGetOp(expr: ExpressionRef): Op;
export declare function _BinaryenSIMDShiftSetOp(expr: ExpressionRef, op: Op): void;
export declare function _BinaryenSIMDShiftGetVec(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenSIMDShiftSetVec(expr: ExpressionRef, vecExpr: ExpressionRef): void;
export declare function _BinaryenSIMDShiftGetShift(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenSIMDShiftSetShift(expr: ExpressionRef, shiftExpr: ExpressionRef): void;

export declare function _BinaryenSIMDLoad(module: ModuleRef, op: Op, offset: u32, align: u32, ptrExpr: ExpressionRef, memoryName: StringRef): ExpressionRef;
export declare function _BinaryenSIMDLoadGetOp(expr: ExpressionRef): Op;
export declare function _BinaryenSIMDLoadSetOp(expr: ExpressionRef, op: Op): void;
export declare function _BinaryenSIMDLoadGetOffset(expr: ExpressionRef): u32;
export declare function _BinaryenSIMDLoadSetOffset(expr: ExpressionRef, offset: u32): void;
export declare function _BinaryenSIMDLoadGetAlign(expr: ExpressionRef): u32;
export declare function _BinaryenSIMDLoadSetAlign(expr: ExpressionRef, align: u32): void;
export declare function _BinaryenSIMDLoadGetPtr(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenSIMDLoadSetPtr(expr: ExpressionRef, ptrExpr: ExpressionRef): void;

export declare function _BinaryenSIMDLoadStoreLane(module: ModuleRef, op: Op, offset: u32, align: u32, index: u8, ptr: ExpressionRef, vec: ExpressionRef, memoryName: StringRef): ExpressionRef;
export declare function _BinaryenSIMDLoadStoreLaneGetOp(expr: ExpressionRef): Op;
export declare function _BinaryenSIMDLoadStoreLaneSetOp(expr: ExpressionRef, op: Op): void;
export declare function _BinaryenSIMDLoadStoreLaneGetOffset(expr: ExpressionRef): u32;
export declare function _BinaryenSIMDLoadStoreLaneSetOffset(expr: ExpressionRef, offset: u32): void;
export declare function _BinaryenSIMDLoadStoreLaneGetAlign(expr: ExpressionRef): u32;
export declare function _BinaryenSIMDLoadStoreLaneSetAlign(expr: ExpressionRef, align: u32): void;
export declare function _BinaryenSIMDLoadStoreLaneGetIndex(expr: ExpressionRef): u8;
export declare function _BinaryenSIMDLoadStoreLaneSetIndex(expr: ExpressionRef, index: u8): void;
export declare function _BinaryenSIMDLoadStoreLaneGetPtr(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenSIMDLoadStoreLaneSetPtr(expr: ExpressionRef, ptrExpr: ExpressionRef): void;
export declare function _BinaryenSIMDLoadStoreLaneGetVec(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenSIMDLoadStoreLaneSetVec(expr: ExpressionRef, vecExpr: ExpressionRef): void;
export declare function _BinaryenSIMDLoadStoreLaneIsStore(expr: ExpressionRef): bool;

export declare function _BinaryenMemoryInit(module: ModuleRef, segmentName: StringRef, destExpr: ExpressionRef, offsetExpr: ExpressionRef, sizeExpr: ExpressionRef, memoryName: StringRef): ExpressionRef;
export declare function _BinaryenMemoryInitGetSegment(expr: ExpressionRef): StringRef;
export declare function _BinaryenMemoryInitSetSegment(expr: ExpressionRef, segmentName: StringRef): void;
export declare function _BinaryenMemoryInitGetDest(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenMemoryInitSetDest(expr: ExpressionRef, destExpr: ExpressionRef): void;
export declare function _BinaryenMemoryInitGetOffset(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenMemoryInitSetOffset(expr: ExpressionRef, offsetExpr: ExpressionRef): void;
export declare function _BinaryenMemoryInitGetSize(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenMemoryInitSetSize(expr: ExpressionRef, sizeExpr: ExpressionRef): void;

export declare function _BinaryenDataDrop(module: ModuleRef, segmentName: StringRef): ExpressionRef;
export declare function _BinaryenDataDropGetSegment(expr: ExpressionRef): StringRef;
export declare function _BinaryenDataDropSetSegment(expr: ExpressionRef, segmentName: StringRef): void;

export declare function _BinaryenMemoryCopy(module: ModuleRef, destExpr: ExpressionRef, sourceExpr: ExpressionRef, sizeExpr: ExpressionRef, destMemoryName: StringRef, sourceMemoryName: StringRef): ExpressionRef;
export declare function _BinaryenMemoryCopyGetDest(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenMemoryCopySetDest(expr: ExpressionRef, destExpr: ExpressionRef): void;
export declare function _BinaryenMemoryCopyGetSource(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenMemoryCopySetSource(expr: ExpressionRef, sourceExpr: ExpressionRef): void;
export declare function _BinaryenMemoryCopyGetSize(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenMemoryCopySetSize(expr: ExpressionRef, sizeExpr: ExpressionRef): void;

export declare function _BinaryenMemoryFill(module: ModuleRef, destExpr: ExpressionRef, valueExpr: ExpressionRef, sizeExpr: ExpressionRef, memoryName: StringRef): ExpressionRef;
export declare function _BinaryenMemoryFillGetDest(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenMemoryFillSetDest(expr: ExpressionRef, destExpr: ExpressionRef): void;
export declare function _BinaryenMemoryFillGetValue(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenMemoryFillSetValue(expr: ExpressionRef, valueExpr: ExpressionRef): void;
export declare function _BinaryenMemoryFillGetSize(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenMemoryFillSetSize(expr: ExpressionRef, sizeExpr: ExpressionRef): void;

export declare function _BinaryenRefNull(module: ModuleRef, type: TypeRef): ExpressionRef;

export declare function _BinaryenRefIsNull(module: ModuleRef, valueExpr: ExpressionRef): ExpressionRef;
export declare function _BinaryenRefIsNullGetValue(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenRefIsNullSetValue(expr: ExpressionRef, valueExpr: ExpressionRef): void;

export declare function _BinaryenRefAs(module: ModuleRef, op: Op, valueExpr: ExpressionRef): ExpressionRef;
export declare function _BinaryenRefAsGetOp(expr: ExpressionRef): Op;
export declare function _BinaryenRefAsSetOp(expr: ExpressionRef, op: Op): void;
export declare function _BinaryenRefAsGetValue(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenRefAsSetValue(expr: ExpressionRef, valueExpr: ExpressionRef): void;

export declare function _BinaryenRefFunc(module: ModuleRef, funcName: StringRef, type: TypeRef): ExpressionRef;
export declare function _BinaryenRefFuncGetFunc(expr: ExpressionRef): StringRef;
export declare function _BinaryenRefFuncSetFunc(expr: ExpressionRef, funcName: StringRef): void;

export declare function _BinaryenRefEq(module: ModuleRef, leftExpr: ExpressionRef, rightExpr: ExpressionRef): ExpressionRef;
export declare function _BinaryenRefEqGetLeft(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenRefEqSetLeft(expr: ExpressionRef, leftExpr: ExpressionRef): void;
export declare function _BinaryenRefEqGetRight(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenRefEqSetRight(expr: ExpressionRef, rightExpr: ExpressionRef): void;

export declare function _BinaryenTableGet(module: ModuleRef, name: StringRef, index: ExpressionRef, type: TypeRef): ExpressionRef;
export declare function _BinaryenTableGetGetTable(expr: ExpressionRef): StringRef;
export declare function _BinaryenTableGetSetTable(expr: ExpressionRef, table: StringRef): void;
export declare function _BinaryenTableGetGetIndex(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenTableGetSetIndex(expr: ExpressionRef, index: ExpressionRef): void;

export declare function _BinaryenTableSet(module: ModuleRef, name: StringRef, index: ExpressionRef, value: ExpressionRef): ExpressionRef;
export declare function _BinaryenTableSetGetTable(expr: ExpressionRef): StringRef;
export declare function _BinaryenTableSetSetTable(expr: ExpressionRef, table: StringRef): void;
export declare function _BinaryenTableSetGetIndex(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenTableSetSetIndex(expr: ExpressionRef, index: ExpressionRef): void;
export declare function _BinaryenTableSetGetValue(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenTableSetSetValue(expr: ExpressionRef, value: ExpressionRef): void;

export declare function _BinaryenTableSize(module: ModuleRef, name: StringRef): ExpressionRef;
export declare function _BinaryenTableSizeGetTable(expr: ExpressionRef): StringRef;
export declare function _BinaryenTableSizeSetTable(expr: ExpressionRef, table: StringRef): void;

export declare function _BinaryenTableGrow(module: ModuleRef, name: StringRef, value: ExpressionRef, delta: ExpressionRef): ExpressionRef;
export declare function _BinaryenTableGrowGetTable(expr: ExpressionRef): StringRef;
export declare function _BinaryenTableGrowSetTable(expr: ExpressionRef, table: StringRef): void;
export declare function _BinaryenTableGrowGetValue(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenTableGrowSetValue(expr: ExpressionRef, value: ExpressionRef): void;
export declare function _BinaryenTableGrowGetDelta(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenTableGrowSetDelta(expr: ExpressionRef, delta: ExpressionRef): void;

export declare function _BinaryenTry(module: ModuleRef, name: StringRef, bodyExpr: ExpressionRef, catchTags: ArrayRef<StringRef>, numCatchTags: Index, catchBodies: ArrayRef<ExpressionRef>, numCatchBodies: Index, delegateTarget: StringRef): ExpressionRef;
export declare function _BinaryenTryGetName(expr: ExpressionRef): StringRef;
export declare function _BinaryenTrySetName(expr: ExpressionRef, name: StringRef): void;
export declare function _BinaryenTryGetBody(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenTrySetBody(expr: ExpressionRef, bodyExpr: ExpressionRef): void;
export declare function _BinaryenTryGetNumCatchTags(expr: ExpressionRef): Index;
export declare function _BinaryenTryGetNumCatchBodies(expr: ExpressionRef): Index;
export declare function _BinaryenTryGetCatchTagAt(expr: ExpressionRef, index: Index): StringRef;
export declare function _BinaryenTrySetCatchTagAt(expr: ExpressionRef, index: Index, catchTag: StringRef): void;
export declare function _BinaryenTryAppendCatchTag(expr: ExpressionRef, catchTag: StringRef): Index;
export declare function _BinaryenTryInsertCatchTagAt(expr: ExpressionRef, index: Index, catchTag: StringRef): void;
export declare function _BinaryenTryRemoveCatchTagAt(expr: ExpressionRef, index: Index): StringRef;
export declare function _BinaryenTryGetCatchBodyAt(expr: ExpressionRef, index: Index): ExpressionRef;
export declare function _BinaryenTrySetCatchBodyAt(expr: ExpressionRef, index: Index, catchExpr: ExpressionRef): void;
export declare function _BinaryenTryAppendCatchBody(expr: ExpressionRef, catchExpr: ExpressionRef): Index;
export declare function _BinaryenTryInsertCatchBodyAt(expr: ExpressionRef, index: Index, catchExpr: ExpressionRef): void;
export declare function _BinaryenTryRemoveCatchBodyAt(expr: ExpressionRef, index: Index): ExpressionRef;
export declare function _BinaryenTryHasCatchAll(expr: ExpressionRef): bool;
export declare function _BinaryenTryGetDelegateTarget(expr: ExpressionRef): StringRef;
export declare function _BinaryenTrySetDelegateTarget(expr: ExpressionRef, delegateTarget: StringRef): void;
export declare function _BinaryenTryIsDelegate(expr: ExpressionRef): bool;

export declare function _BinaryenThrow(module: ModuleRef, tagName: StringRef, operands: ArrayRef<ExpressionRef>, numOperands: Index): ExpressionRef;
export declare function _BinaryenThrowGetTag(expr: ExpressionRef): StringRef;
export declare function _BinaryenThrowSetTag(expr: ExpressionRef, tagName: StringRef): void;
export declare function _BinaryenThrowGetNumOperands(expr: ExpressionRef): Index;
export declare function _BinaryenThrowGetOperandAt(expr: ExpressionRef, index: Index): ExpressionRef;
export declare function _BinaryenThrowSetOperandAt(expr: ExpressionRef, index: Index, operandExpr: ExpressionRef): void;
export declare function _BinaryenThrowAppendOperand(expr: ExpressionRef, operandExpr: ExpressionRef): Index;
export declare function _BinaryenThrowInsertOperandAt(expr: ExpressionRef, index: Index, operandExpr: ExpressionRef): void;
export declare function _BinaryenThrowRemoveOperandAt(expr: ExpressionRef, index: Index): ExpressionRef;

export declare function _BinaryenRethrow(module: ModuleRef, target: StringRef): ExpressionRef;
export declare function _BinaryenRethrowGetTarget(expr: ExpressionRef): StringRef;
export declare function _BinaryenRethrowSetDepth(expr: ExpressionRef, target: StringRef): void;

export declare function _BinaryenTupleMake(module: ModuleRef, operandExprs: ArrayRef<ExpressionRef>, numOperands: Index): ExpressionRef;
export declare function _BinaryenTupleMakeGetNumOperands(expr: ExpressionRef): Index;
export declare function _BinaryenTupleMakeGetOperandAt(expr: ExpressionRef, index: Index): ExpressionRef;
export declare function _BinaryenTupleMakeSetOperandAt(expr: ExpressionRef, index: Index, operandExpr: ExpressionRef): void;
export declare function _BinaryenTupleMakeAppendOperand(expr: ExpressionRef, operandExpr: ExpressionRef): Index;
export declare function _BinaryenTupleMakeInsertOperandAt(expr: ExpressionRef, index: Index, operandExpr: ExpressionRef): void;
export declare function _BinaryenTupleMakeRemoveOperandAt(expr: ExpressionRef, index: Index): ExpressionRef;

export declare function _BinaryenTupleExtract(module: ModuleRef, tupleExpr: ExpressionRef, index: Index): ExpressionRef;
export declare function _BinaryenTupleExtractGetTuple(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenTupleExtractSetTuple(expr: ExpressionRef, tupleExpr: ExpressionRef): void;
export declare function _BinaryenTupleExtractGetIndex(expr: ExpressionRef): Index;
export declare function _BinaryenTupleExtractSetIndex(expr: ExpressionRef, index: Index): void;

export declare function _BinaryenPop(module: ModuleRef, type: TypeRef): ExpressionRef;

export declare function _BinaryenI31New(module: ModuleRef, value: ExpressionRef): ExpressionRef;
export declare function _BinaryenI31NewGetValue(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenI31NewSetValue(expr: ExpressionRef, valueExpr: ExpressionRef): void;

export declare function _BinaryenI31Get(module: ModuleRef, i31Expr: ExpressionRef, signed: bool): ExpressionRef;
export declare function _BinaryenI31GetGetI31(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenI31GetSetI31(expr: ExpressionRef, i31Expr: ExpressionRef): void;
export declare function _BinaryenI31GetIsSigned(expr: ExpressionRef): bool;
export declare function _BinaryenI31GetSetSigned(expr: ExpressionRef, signed: bool): void;

export declare function _BinaryenCallRef(module: ModuleRef, target: ExpressionRef, operands: ArrayRef<ExpressionRef>, numOperands: Index, type: TypeRef, isReturn: bool): ExpressionRef;
export declare function _BinaryenCallRefGetNumOperands(expr: ExpressionRef): Index;
export declare function _BinaryenCallRefGetOperandAt(expr: ExpressionRef, index: Index): ExpressionRef;
export declare function _BinaryenCallRefSetOperandAt(expr: ExpressionRef, index: Index, operandExpr: ExpressionRef): void;
export declare function _BinaryenCallRefAppendOperand(expr: ExpressionRef, operandExpr: ExpressionRef): Index;
export declare function _BinaryenCallRefInsertOperandAt(expr: ExpressionRef, index: Index, operandExpr: ExpressionRef): void;
export declare function _BinaryenCallRefRemoveOperandAt(expr: ExpressionRef, index: Index): ExpressionRef;
export declare function _BinaryenCallRefGetTarget(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenCallRefSetTarget(expr: ExpressionRef, targetExpr: ExpressionRef): void;
export declare function _BinaryenCallRefIsReturn(expr: ExpressionRef): bool;
export declare function _BinaryenCallRefSetReturn(expr: ExpressionRef, isReturn: bool): void;

export declare function _BinaryenRefTest(module: ModuleRef, refExpr: ExpressionRef, castType: HeapTypeRef): ExpressionRef;
export declare function _BinaryenRefTestGetRef(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenRefTestSetRef(expr: ExpressionRef, refExpr: ExpressionRef): void;
export declare function _BinaryenRefTestGetCastType(expr: ExpressionRef): HeapTypeRef;
export declare function _BinaryenRefTestSetCastType(expr: ExpressionRef, castType: HeapTypeRef): void;

export declare function _BinaryenRefCast(module: ModuleRef, refExpr: ExpressionRef, intendedType: HeapTypeRef): ExpressionRef;
export declare function _BinaryenRefCastGetRef(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenRefCastSetRef(expr: ExpressionRef, refExpr: ExpressionRef): void;

export declare function _BinaryenBrOn(module: ModuleRef, op: Op, name: StringRef, ref: ExpressionRef, castType: HeapTypeRef): ExpressionRef;
export declare function _BinaryenBrOnGetOp(expr: ExpressionRef): Op;
export declare function _BinaryenBrOnSetOp(expr: ExpressionRef, op: Op): void;
export declare function _BinaryenBrOnGetName(expr: ExpressionRef): StringRef;
export declare function _BinaryenBrOnSetName(expr: ExpressionRef, nameStr: StringRef): void;
export declare function _BinaryenBrOnGetRef(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenBrOnSetRef(expr: ExpressionRef, refExpr: ExpressionRef): void;
export declare function _BinaryenBrOnGetCastType(expr: ExpressionRef): HeapTypeRef;
export declare function _BinaryenBrOnSetCastType(expr: ExpressionRef, castType: HeapTypeRef): void;

export declare function _BinaryenStructNew(module: ModuleRef, operands: ArrayRef<ExpressionRef>, numOperands: Index, type: HeapTypeRef): ExpressionRef;
export declare function _BinaryenStructNewGetNumOperands(expr: ExpressionRef): Index;
export declare function _BinaryenStructNewGetOperandAt(expr: ExpressionRef, index: Index): ExpressionRef;
export declare function _BinaryenStructNewSetOperandAt(expr: ExpressionRef, index: Index, operandExpr: ExpressionRef): void;
export declare function _BinaryenStructNewAppendOperand(expr: ExpressionRef, operandExpr: ExpressionRef): Index;
export declare function _BinaryenStructNewInsertOperandAt(expr: ExpressionRef, index: Index, operandExpr: ExpressionRef): void;
export declare function _BinaryenStructNewRemoveOperandAt(expr: ExpressionRef, index: Index): ExpressionRef;

export declare function _BinaryenStructGet(module: ModuleRef, index: Index, ref: ExpressionRef, type: TypeRef, signed: bool): ExpressionRef;
export declare function _BinaryenStructGetGetIndex(expr: ExpressionRef): Index;
export declare function _BinaryenStructGetSetIndex(expr: ExpressionRef, index: Index): void;
export declare function _BinaryenStructGetGetRef(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenStructGetSetRef(expr: ExpressionRef, refExpr: ExpressionRef): void;
export declare function _BinaryenStructGetIsSigned(expr: ExpressionRef): bool;
export declare function _BinaryenStructGetSetSigned(expr: ExpressionRef, signed: bool): void;

export declare function _BinaryenStructSet(module: ModuleRef, index: Index, ref: ExpressionRef, value: ExpressionRef): ExpressionRef;
export declare function _BinaryenStructSetGetIndex(expr: ExpressionRef): Index;
export declare function _BinaryenStructSetSetIndex(expr: ExpressionRef, index: Index): void;
export declare function _BinaryenStructSetGetRef(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenStructSetSetRef(expr: ExpressionRef, refExpr: ExpressionRef): void;
export declare function _BinaryenStructSetGetValue(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenStructSetSetValue(expr: ExpressionRef, valueExpr: ExpressionRef): void;

export declare function _BinaryenArrayNew(module: ModuleRef, type: HeapTypeRef, size: ExpressionRef, init: ExpressionRef): ExpressionRef;
export declare function _BinaryenArrayNewGetInit(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenArrayNewSetInit(expr: ExpressionRef, initExpr: ExpressionRef): void;
export declare function _BinaryenArrayNewGetSize(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenArrayNewSetSize(expr: ExpressionRef, sizeExpr: ExpressionRef): void;

// TODO: BinaryenArrayNewSeg

export declare function _BinaryenArrayNewFixed(module: ModuleRef, type: HeapTypeRef, values: ArrayRef<ExpressionRef>, numValues: Index): ExpressionRef;
export declare function _BinaryenArrayNewFixedGetNumValues(expr: ExpressionRef): Index;
export declare function _BinaryenArrayNewFixedGetValueAt(expr: ExpressionRef, index: Index): ExpressionRef;
export declare function _BinaryenArrayNewFixedSetValueAt(expr: ExpressionRef, index: Index, valueExpr: ExpressionRef): void;
export declare function _BinaryenArrayNewFixedAppendValue(expr: ExpressionRef, valueExpr: ExpressionRef): Index;
export declare function _BinaryenArrayNewFixedInsertValueAt(expr: ExpressionRef, index: Index, valueExpr: ExpressionRef): void;
export declare function _BinaryenArrayNewFixedRemoveValueAt(expr: ExpressionRef, index: Index): ExpressionRef;

export declare function _BinaryenArrayGet(module: ModuleRef, ref: ExpressionRef, index: ExpressionRef, type: TypeRef, signed: bool): ExpressionRef;
export declare function _BinaryenArrayGetGetRef(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenArrayGetSetRef(expr: ExpressionRef, refExpr: ExpressionRef): void;
export declare function _BinaryenArrayGetGetIndex(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenArrayGetSetIndex(expr: ExpressionRef, indexExpr: ExpressionRef): void;
export declare function _BinaryenArrayGetIsSigned(expr: ExpressionRef): bool;
export declare function _BinaryenArrayGetSetSigned(expr: ExpressionRef, signed: bool): void;

export declare function _BinaryenArraySet(module: ModuleRef, ref: ExpressionRef, index: ExpressionRef, value: ExpressionRef): ExpressionRef;
export declare function _BinaryenArraySetGetRef(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenArraySetSetRef(expr: ExpressionRef, refExpr: ExpressionRef): void;
export declare function _BinaryenArraySetGetIndex(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenArraySetSetIndex(expr: ExpressionRef, indexExpr: ExpressionRef): void;
export declare function _BinaryenArraySetGetValue(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenArraySetSetValue(expr: ExpressionRef, valueExpr: ExpressionRef): void;

export declare function _BinaryenArrayLen(module: ModuleRef, ref: ExpressionRef): ExpressionRef;
export declare function _BinaryenArrayLenGetRef(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenArrayLenSetRef(expr: ExpressionRef, refExpr: ExpressionRef): void;

export declare function _BinaryenArrayCopy(module: ModuleRef, destRef: ExpressionRef, destIndex: ExpressionRef, srcRef: ExpressionRef, srcIndex: ExpressionRef, length: ExpressionRef): ExpressionRef;
export declare function _BinaryenArrayCopyGetDestRef(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenArrayCopySetDestRef(expr: ExpressionRef, destRefExpr: ExpressionRef): void;
export declare function _BinaryenArrayCopyGetDestIndex(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenArrayCopySetDestIndex(expr: ExpressionRef, destIndexExpr: ExpressionRef): void;
export declare function _BinaryenArrayCopyGetSrcRef(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenArrayCopySetSrcRef(expr: ExpressionRef, srcRefExpr: ExpressionRef): void;
export declare function _BinaryenArrayCopyGetSrcIndex(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenArrayCopySetSrcIndex(expr: ExpressionRef, srcIndexExpr: ExpressionRef): void;
export declare function _BinaryenArrayCopyGetLength(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenArrayCopySetLength(expr: ExpressionRef, lengthExpr: ExpressionRef): void;

// TODO: BinaryenArrayFill
// TODO: BinaryenArrayInit

export declare function _BinaryenStringNew(module: ModuleRef, op: Op, ptr: ExpressionRef, length: ExpressionRef, start: ExpressionRef, end: ExpressionRef, isTry: bool): ExpressionRef;
export declare function _BinaryenStringNewGetOp(expr: ExpressionRef): Op;
export declare function _BinaryenStringNewSetOp(expr: ExpressionRef, op: Op): void;
export declare function _BinaryenStringNewGetPtr(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenStringNewSetPtr(expr: ExpressionRef, ptrExpr: ExpressionRef): void;
export declare function _BinaryenStringNewGetLength(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenStringNewSetLength(expr: ExpressionRef, lengthExpr: ExpressionRef): void;
export declare function _BinaryenStringNewGetStart(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenStringNewSetStart(expr: ExpressionRef, startExpr: ExpressionRef): void;
export declare function _BinaryenStringNewGetEnd(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenStringNewSetEnd(expr: ExpressionRef, endExpr: ExpressionRef): void;
export declare function _BinaryenStringNewIsTry(expr: ExpressionRef): bool;
export declare function _BinaryenStringNewSetTry(expr: ExpressionRef, isTry: bool): void;

export declare function _BinaryenStringConst(module: ExpressionRef, name: StringRef): ExpressionRef;
export declare function _BinaryenStringConstGetString(expr: ExpressionRef): StringRef;
export declare function _BinaryenStringConstSetString(expr: ExpressionRef, string: StringRef): void;

export declare function _BinaryenStringMeasure(module: ExpressionRef, op: Op, ref: ExpressionRef): ExpressionRef;
export declare function _BinaryenStringMeasureGetOp(expr: ExpressionRef): Op;
export declare function _BinaryenStringMeasureSetOp(expr: ExpressionRef, op: Op): void;
export declare function _BinaryenStringMeasureGetRef(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenStringMeasureSetRef(expr: ExpressionRef, refExpr: ExpressionRef): void;

export declare function _BinaryenStringEncode(module: ExpressionRef, op: Op, ref: ExpressionRef, ptr: ExpressionRef, start: ExpressionRef): ExpressionRef;
export declare function _BinaryenStringEncodeGetOp(expr: ExpressionRef): Op;
export declare function _BinaryenStringEncodeSetOp(expr: ExpressionRef, op: Op): void;
export declare function _BinaryenStringEncodeGetRef(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenStringEncodeSetRef(expr: ExpressionRef, refExpr: ExpressionRef): void;
export declare function _BinaryenStringEncodeGetPtr(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenStringEncodeSetPtr(expr: ExpressionRef, ptrExpr: ExpressionRef): void;
export declare function _BinaryenStringEncodeGetStart(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenStringEncodeSetStart(expr: ExpressionRef, startExpr: ExpressionRef): void;

export declare function _BinaryenStringConcat(module: ExpressionRef, left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export declare function _BinaryenStringConcatGetLeft(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenStringConcatSetLeft(expr: ExpressionRef, leftExpr: ExpressionRef): void;
export declare function _BinaryenStringConcatGetRight(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenStringConcatSetRight(expr: ExpressionRef, rightExpr: ExpressionRef): void;

export declare function _BinaryenStringEq(module: ExpressionRef, op: Op, left: ExpressionRef, right: ExpressionRef): ExpressionRef;
export declare function _BinaryenStringEqGetOp(expr: ExpressionRef): Op;
export declare function _BinaryenStringEqSetOp(expr: ExpressionRef, op: Op): void;
export declare function _BinaryenStringEqGetLeft(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenStringEqSetLeft(expr: ExpressionRef, leftExpr: ExpressionRef): void;
export declare function _BinaryenStringEqGetRight(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenStringEqSetRight(expr: ExpressionRef, rightExpr: ExpressionRef): void;

export declare function _BinaryenStringAs(module: ExpressionRef, op: Op, ref: ExpressionRef): ExpressionRef;
export declare function _BinaryenStringAsGetOp(expr: ExpressionRef): Op;
export declare function _BinaryenStringAsSetOp(expr: ExpressionRef, op: Op): void;
export declare function _BinaryenStringAsGetRef(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenStringAsSetRef(expr: ExpressionRef, refExpr: ExpressionRef): void;

export declare function _BinaryenStringWTF8Advance(module: ExpressionRef, ref: ExpressionRef, pos: ExpressionRef, bytes: ExpressionRef): ExpressionRef;
export declare function _BinaryenStringWTF8AdvanceGetRef(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenStringWTF8AdvanceSetRef(expr: ExpressionRef, refExpr: ExpressionRef): void;
export declare function _BinaryenStringWTF8AdvanceGetPos(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenStringWTF8AdvanceSetPos(expr: ExpressionRef, posExpr: ExpressionRef): void;
export declare function _BinaryenStringWTF8AdvanceGetBytes(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenStringWTF8AdvanceSetBytes(expr: ExpressionRef, bytesExpr: ExpressionRef): void;

export declare function _BinaryenStringWTF16Get(module: ExpressionRef, ref: ExpressionRef, pos: ExpressionRef): ExpressionRef;
export declare function _BinaryenStringWTF16GetGetRef(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenStringWTF16GetSetRef(expr: ExpressionRef, refExpr: ExpressionRef): void;
export declare function _BinaryenStringWTF16GetGetPos(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenStringWTF16GetSetPos(expr: ExpressionRef, posExpr: ExpressionRef): void;

export declare function _BinaryenStringIterNext(module: ExpressionRef, ref: ExpressionRef): ExpressionRef;
export declare function _BinaryenStringIterNextGetRef(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenStringIterNextSetRef(expr: ExpressionRef, refExpr: ExpressionRef): void;

export declare function _BinaryenStringIterMove(module: ExpressionRef, op: Op, ref: ExpressionRef, num: ExpressionRef): ExpressionRef;
export declare function _BinaryenStringIterMoveGetOp(expr: ExpressionRef): Op;
export declare function _BinaryenStringIterMoveSetOp(expr: ExpressionRef, op: Op): void;
export declare function _BinaryenStringIterMoveGetRef(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenStringIterMoveSetRef(expr: ExpressionRef, refExpr: ExpressionRef): void;
export declare function _BinaryenStringIterMoveGetNum(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenStringIterMoveSetNum(expr: ExpressionRef, numExpr: ExpressionRef): void;

export declare function _BinaryenStringSliceWTF(module: ExpressionRef, op: Op, ref: ExpressionRef, start: ExpressionRef, end: ExpressionRef): ExpressionRef;
export declare function _BinaryenStringSliceWTFGetOp(expr: ExpressionRef): Op;
export declare function _BinaryenStringSliceWTFSetOp(expr: ExpressionRef, op: Op): void;
export declare function _BinaryenStringSliceWTFGetRef(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenStringSliceWTFSetRef(expr: ExpressionRef, refExpr: ExpressionRef): void;
export declare function _BinaryenStringSliceWTFGetStart(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenStringSliceWTFSetStart(expr: ExpressionRef, startExpr: ExpressionRef): void;
export declare function _BinaryenStringSliceWTFGetEnd(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenStringSliceWTFSetEnd(expr: ExpressionRef, endExpr: ExpressionRef): void;

export declare function _BinaryenStringSliceIter(module: ExpressionRef, ref: ExpressionRef, num: ExpressionRef): ExpressionRef;
export declare function _BinaryenStringSliceIterGetRef(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenStringSliceIterSetRef(expr: ExpressionRef, refExpr: ExpressionRef): void;
export declare function _BinaryenStringSliceIterGetNum(expr: ExpressionRef): ExpressionRef;
export declare function _BinaryenStringSliceIterSetNum(expr: ExpressionRef, numExpr: ExpressionRef): void;

export declare function _BinaryenAddFunction(module: ModuleRef, name: StringRef, params: TypeRef, results: TypeRef, varTypes: ArrayRef<TypeRef>, numVarTypes: Index, body: ExpressionRef): FunctionRef;
export declare function _BinaryenGetFunction(module: ModuleRef, name: StringRef): FunctionRef;
export declare function _BinaryenRemoveFunction(module: ModuleRef, name: StringRef): void;
export declare function _BinaryenGetNumFunctions(module: ModuleRef): Index;
export declare function _BinaryenGetFunctionByIndex(module: ModuleRef, index: Index): FunctionRef;

export declare function _BinaryenFunctionGetName(func: FunctionRef): StringRef;
export declare function _BinaryenFunctionGetParams(func: FunctionRef): TypeRef;
export declare function _BinaryenFunctionGetResults(func: FunctionRef): TypeRef;
export declare function _BinaryenFunctionGetNumVars(func: FunctionRef): Index;
export declare function _BinaryenFunctionGetVar(func: FunctionRef, index: Index): TypeRef;
export declare function _BinaryenFunctionGetNumLocals(func: FunctionRef): Index;
export declare function _BinaryenFunctionHasLocalName(func: FunctionRef, index: Index): bool;
export declare function _BinaryenFunctionGetLocalName(func: FunctionRef, index: Index): StringRef;
export declare function _BinaryenFunctionSetLocalName(func: FunctionRef, index: Index, name: StringRef): void;
export declare function _BinaryenFunctionGetBody(func: FunctionRef): ExpressionRef;
export declare function _BinaryenFunctionSetBody(func: FunctionRef, bodyExpr: ExpressionRef): void;
export declare function _BinaryenFunctionOptimize(func: FunctionRef, module: ModuleRef): void;
export declare function _BinaryenFunctionRunPasses(func: FunctionRef, module: ModuleRef, passes: ArrayRef<StringRef>, numPasses: Index): void;
export declare function _BinaryenFunctionSetDebugLocation(func: FunctionRef, expr: ExpressionRef, fileIndex: Index, lineNumber: Index, columnNumber: Index): void;

export declare function _BinaryenAddFunctionImport(module: ModuleRef, internalName: StringRef, externalModuleName: StringRef, externalBaseName: StringRef, params: TypeRef, results: TypeRef): void;
export declare function _BinaryenAddTableImport(module: ModuleRef, internalName: StringRef, externalModuleName: StringRef, externalBaseName: StringRef): void;
export declare function _BinaryenAddMemoryImport(module: ModuleRef, internalName: StringRef, externalModuleName: StringRef, externalBaseName: StringRef, shared:bool): void;
export declare function _BinaryenAddGlobalImport(module: ModuleRef, internalName: StringRef, externalModuleName: StringRef, externalBaseName: StringRef, globalType: TypeRef, mutable: bool): void;
export declare function _BinaryenAddTagImport(module: ModuleRef, internalName: StringRef, externalModuleName: StringRef, externalBaseName: StringRef, params: TypeRef, results: TypeRef): void;

export declare function _BinaryenAddFunctionExport(module: ModuleRef, internalName: StringRef, externalName: StringRef): ExportRef;
export declare function _BinaryenAddTableExport(module: ModuleRef, internalName: StringRef, externalName: StringRef): ExportRef;
export declare function _BinaryenAddMemoryExport(module: ModuleRef, internalName: StringRef, externalName: StringRef): ExportRef;
export declare function _BinaryenAddGlobalExport(module: ModuleRef, internalName: StringRef, externalName: StringRef): ExportRef;
export declare function _BinaryenAddTagExport(module: ModuleRef, internalName: StringRef, externalName: StringRef): ExportRef;
export declare function _BinaryenGetExport(module: ModuleRef, externalName: StringRef): ExportRef;
export declare function _BinaryenRemoveExport(module: ModuleRef, externalName: StringRef): void;
export declare function _BinaryenGetNumExports(module: ModuleRef): Index;
export declare function _BinaryenGetExportByIndex(module: ModuleRef, index: Index): ExportRef;
export declare function _BinaryenExportGetKind(ref: ExportRef): ExternalKind;
export declare function _BinaryenExportGetName(ref: ExportRef): StringRef;
export declare function _BinaryenExportGetValue(ref: ExportRef): StringRef;

export declare function _BinaryenAddGlobal(module: ModuleRef, name: StringRef, type: TypeRef, mutable: bool, init: ExpressionRef): GlobalRef;
export declare function _BinaryenGetGlobal(module: ModuleRef, name: StringRef): GlobalRef;
export declare function _BinaryenRemoveGlobal(module: ModuleRef, name: StringRef): void;
export declare function _BinaryenGetNumGlobals(module: ModuleRef): Index;
export declare function _BinaryenGetGlobalByIndex(module: ModuleRef, index: Index): GlobalRef;

export declare function _BinaryenGlobalGetName(global: GlobalRef): StringRef;
export declare function _BinaryenGlobalGetType(global: GlobalRef): TypeRef;
export declare function _BinaryenGlobalIsMutable(global: GlobalRef): bool;
export declare function _BinaryenGlobalGetInitExpr(global: GlobalRef): ExpressionRef;

export declare function _BinaryenAddTag(module: ModuleRef, name: StringRef, params: TypeRef, results: TypeRef): TagRef;
export declare function _BinaryenGetTag(module: ModuleRef, name: StringRef): TagRef;
export declare function _BinaryenRemoveTag(module: ModuleRef, name: StringRef): void;

export declare function _BinaryenTagGetName(tag: TagRef): StringRef;
export declare function _BinaryenTagGetParams(tag: TagRef): TypeRef;
export declare function _BinaryenTagGetResults(tag: TagRef): TypeRef;

export declare function _BinaryenAddTable(module: ModuleRef, name: StringRef, initial: Index, maximum: Index, type: TypeRef): TableRef;
export declare function _BinaryenRemoveTable(module: ModuleRef, table: StringRef): void;
export declare function _BinaryenGetNumTables(module: ModuleRef): Index;
export declare function _BinaryenGetTable(module: ModuleRef, name: StringRef): TableRef;
export declare function _BinaryenGetTableByIndex(module: ModuleRef, index: Index): TableRef;

export declare function _BinaryenTableGetName(table: TableRef): StringRef;
export declare function _BinaryenTableSetName(table: TableRef, name: StringRef): void;
export declare function _BinaryenTableGetInitial(table: TableRef): Index;
export declare function _BinaryenTableSetInitial(table: TableRef, initial: Index): void;
export declare function _BinaryenTableHasMax(table: TableRef): bool;
export declare function _BinaryenTableGetMax(table: TableRef): Index;
export declare function _BinaryenTableSetMax(table: TableRef, max: Index): void;

export declare function _BinaryenAddActiveElementSegment(module: ModuleRef, table: StringRef, name: StringRef, funcNames: ArrayRef<StringRef>, numFuncNames: Index, offset: ExpressionRef): ElementSegmentRef;
export declare function _BinaryenAddPassiveElementSegment(module: ModuleRef, name: StringRef, funcNames: ArrayRef<StringRef>, numFuncNames: Index): ElementSegmentRef;
export declare function _BinaryenRemoveElementSegment(module: ModuleRef, name: StringRef): void;
export declare function _BinaryenGetNumElementSegments(module: ModuleRef, name: StringRef): Index;
export declare function _BinaryenGetElementSegment(module: ModuleRef, name: StringRef): ElementSegmentRef;
export declare function _BinaryenGetElementSegmentByIndex(module: ModuleRef, index: Index): ElementSegmentRef;

export declare function _BinaryenSetMemory(module: ModuleRef, initial: Index, maximum: Index, exportName: StringRef, segments: ArrayRef<ArrayRef<u8>>, segmentPassive: ArrayRef<bool>, segmentOffsets: ArrayRef<usize>, segmentSizes: ArrayRef<u32>, numSegments: Index, shared: bool, memory64: bool, name: StringRef): void;
export declare function _BinaryenGetNumMemorySegments(module: ModuleRef): Index;
export declare function _BinaryenGetMemorySegmentByteOffset(module: ModuleRef, index: Index): u32;
export declare function _BinaryenGetMemorySegmentByteLength(module: ModuleRef, id: Index): usize;
export declare function _BinaryenCopyMemorySegmentData(module: ModuleRef, id: Index, buffer: ArrayRef<u8>): void;

export declare function _BinaryenSetStart(module: ModuleRef, start: FunctionRef): void;

export declare function _BinaryenModuleParse(text: StringRef): ModuleRef;
export declare function _BinaryenModulePrint(module: ModuleRef): void;
export declare function _BinaryenModulePrintAsmjs(module: ModuleRef): void;
export declare function _BinaryenModuleValidate(module: ModuleRef): i32;
export declare function _BinaryenModuleOptimize(module: ModuleRef): void;
export declare function _BinaryenModuleRunPasses(module: ModuleRef, passes: ArrayRef<StringRef>, numPasses: Index): void;
export declare function _BinaryenModuleAutoDrop(module: ModuleRef): void;
export declare function _BinaryenSizeofAllocateAndWriteResult(): i32;
export declare function _BinaryenModuleAllocateAndWrite(resultOut: BinaryenModuleAllocateAndWriteResultRef, module: ModuleRef, sourceMapUrl: StringRef): void;
export declare function _BinaryenModuleAllocateAndWriteText(module: ModuleRef): StringRef;
export declare function _BinaryenModuleAllocateAndWriteStackIR(module: ModuleRef, optimize: bool): StringRef;
export declare function _BinaryenModuleRead(input: ArrayRef<u8>, inputSize: usize): ModuleRef;
export declare function _BinaryenModuleInterpret(module: ModuleRef): void;
export declare function _BinaryenModuleAddDebugInfoFileName(module: ModuleRef, filename: StringRef): Index;
export declare function _BinaryenModuleGetDebugInfoFileName(module: ModuleRef, index: Index): StringRef;
export declare function _BinaryenModuleGetFeatures(module: ModuleRef): FeatureFlags;
export declare function _BinaryenModuleSetFeatures(module: ModuleRef, featureFlags: FeatureFlags): void;

export declare function _BinaryenAddCustomSection(module: ModuleRef, name: StringRef, contents: ArrayRef<u8>, contentsSize: Index): void;

export declare function _BinaryenExpressionGetSideEffects(expr: ExpressionRef, module: ModuleRef): SideEffects;

export declare function _RelooperCreate(module: ModuleRef): RelooperRef;
export declare function _RelooperAddBlock(relooper: RelooperRef, code: ExpressionRef): RelooperBlockRef;
export declare function _RelooperAddBranch(from: RelooperBlockRef, to: RelooperBlockRef, condition: ExpressionRef, code: ExpressionRef): void;
export declare function _RelooperAddBlockWithSwitch(relooper: RelooperRef, code: ExpressionRef, condition: ExpressionRef): RelooperBlockRef;
export declare function _RelooperAddBranchForSwitch(from: RelooperBlockRef, to: RelooperBlockRef, indexes: ArrayRef<Index>, numIndexes: Index, code: ExpressionRef): void;
export declare function _RelooperRenderAndDispose(relooper: RelooperRef, entry: RelooperBlockRef, labelHelper: Index): ExpressionRef;

export declare function _ExpressionRunnerCreate(module: ModuleRef, flags: ExpressionRunnerFlags, maxDepth: Index, maxLoopIterations: Index): ExpressionRunnerRef;
export declare function _ExpressionRunnerSetLocalValue(runner: ExpressionRunnerRef, index: Index, value: ExpressionRef): bool;
export declare function _ExpressionRunnerSetGlobalValue(runner: ExpressionRunnerRef, name: StringRef, value: ExpressionRef): bool;
export declare function _ExpressionRunnerRunAndDispose(runner: ExpressionRunnerRef, expr: ExpressionRef): ExpressionRef;

export declare function _TypeBuilderCreate(size: Index): TypeBuilderRef;
export declare function _TypeBuilderGrow(builder: TypeBuilderRef, count: Index): void;
export declare function _TypeBuilderGetSize(builder: TypeBuilderRef): Index;
export declare function _TypeBuilderSetBasicHeapType(builder: TypeBuilderRef, index: Index, basicHeapType: HeapTypeRef): void;
export declare function _TypeBuilderSetSignatureType(builder: TypeBuilderRef, index: Index, paramTypes: TypeRef, resultTypes: TypeRef): void;
export declare function _TypeBuilderSetStructType(builder: TypeBuilderRef, index: Index, fieldTypes: ArrayRef<TypeRef>, fieldPackedTypes: ArrayRef<PackedType>, fieldMutables: ArrayRef<bool>, numFields: i32): void;
export declare function _TypeBuilderSetArrayType(builder: TypeBuilderRef, index: Index, elementType: TypeRef, elementPackedTyype: PackedType, elementMutable: bool): void;
export declare function _TypeBuilderIsBasic(builder: TypeBuilderRef, index: Index): bool;
export declare function _TypeBuilderGetBasic(builder: TypeBuilderRef, index: Index): HeapTypeRef;
export declare function _TypeBuilderGetTempHeapType(builder: TypeBuilderRef, index: Index): HeapTypeRef;
export declare function _TypeBuilderGetTempTupleType(builder: TypeBuilderRef, types: ArrayRef<TypeRef>, numTypes: Index): TypeRef;
export declare function _TypeBuilderGetTempRefType(builder: TypeBuilderRef, heapType: HeapTypeRef, nullable: bool): TypeRef;
export declare function _TypeBuilderSetSubType(builder: TypeBuilderRef, index: Index, superType: HeapTypeRef): void;
export declare function _TypeBuilderCreateRecGroup(builder: TypeBuilderRef, index: Index, length: Index): void;
export declare function _TypeBuilderBuildAndDispose(builder: TypeBuilderRef, heapTypes: ArrayRef<HeapTypeRef>, errorIndex: Pointer<Index>, errorReason: Pointer<TypeBuilderErrorReason>): bool;
export declare function _BinaryenModuleSetTypeName(module: ModuleRef, heapType: HeapTypeRef, name: StringRef): void;
export declare function _BinaryenModuleSetFieldName(module: ModuleRef, heapType: HeapTypeRef, index: Index, name: StringRef): void;

export declare function _BinaryenGetOptimizeLevel(): i32;
export declare function _BinaryenSetOptimizeLevel(level: i32): void;
export declare function _BinaryenGetShrinkLevel(): i32;
export declare function _BinaryenSetShrinkLevel(level: i32): void;
export declare function _BinaryenGetDebugInfo(): bool;
export declare function _BinaryenSetDebugInfo(on: bool): void;
export declare function _BinaryenGetLowMemoryUnused(): bool;
export declare function _BinaryenSetLowMemoryUnused(on: bool): void;
export declare function _BinaryenGetZeroFilledMemory(): bool;
export declare function _BinaryenSetZeroFilledMemory(on: bool): void;
export declare function _BinaryenGetFastMath(): bool;
export declare function _BinaryenSetFastMath(on: bool): void;
export declare function _BinaryenGetPassArgument(key: StringRef): StringRef;
export declare function _BinaryenSetPassArgument(key: StringRef, value: StringRef): void;
export declare function _BinaryenClearPassArguments(): void;
export declare function _BinaryenGetAlwaysInlineMaxSize(): Index;
export declare function _BinaryenSetAlwaysInlineMaxSize(size: Index): void;
export declare function _BinaryenGetFlexibleInlineMaxSize(): Index;
export declare function _BinaryenSetFlexibleInlineMaxSize(size: Index): void;
export declare function _BinaryenGetOneCallerInlineMaxSize(): Index;
export declare function _BinaryenSetOneCallerInlineMaxSize(size: Index): void;
export declare function _BinaryenGetAllowInliningFunctionsWithLoops(): bool;
export declare function _BinaryenSetAllowInliningFunctionsWithLoops(enabled: bool): void;
export declare function _BinaryenGetTypeSystem(): TypeSystem;
export declare function _BinaryenSetTypeSystem(typeSystem: TypeSystem): void;

// Helpers

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
