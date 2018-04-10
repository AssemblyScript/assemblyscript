/**
 * A thin wrapper around Binaryen's C-API.
 * @module module
 *//***/

import {
  Target
} from "./compiler";

export type ModuleRef = usize;
export type FunctionTypeRef = usize;
export type FunctionRef = usize;
export type ExpressionRef = usize;
export type GlobalRef = usize;
export type ImportRef = usize;
export type ExportRef = usize;
export type Index = u32;

export enum NativeType {
  None = _BinaryenTypeNone(),
  I32 = _BinaryenTypeInt32(),
  I64 = _BinaryenTypeInt64(),
  F32 = _BinaryenTypeFloat32(),
  F64 =  _BinaryenTypeFloat64(),
  Unreachable = _BinaryenTypeUnreachable(),
  Auto = _BinaryenTypeAuto()
}

export enum ExpressionId {
  Invalid = _BinaryenInvalidId(),
  Block = _BinaryenBlockId(),
  If = _BinaryenIfId(),
  Loop = _BinaryenLoopId(),
  Break = _BinaryenBreakId(),
  Switch = _BinaryenSwitchId(),
  Call = _BinaryenCallId(),
  CallImport = _BinaryenCallImportId(),
  CallIndirect = _BinaryenCallIndirectId(),
  GetLocal = _BinaryenGetLocalId(),
  SetLocal = _BinaryenSetLocalId(),
  GetGlobal = _BinaryenGetGlobalId(),
  SetGlobal = _BinaryenSetGlobalId(),
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
  AtomicWake = _BinaryenAtomicWakeId()
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
  ReinterpretI64 = _BinaryenReinterpretInt64()

  // see: https://github.com/WebAssembly/threads/blob/master/proposals/threads/Overview.md#new-sign-extending-operators
  // ExtendI8ToI32 =_BinaryenExtendS8Int32()
  // ExtendI16ToI32 = _BinaryenExtendS16Int32()
  // ExtendI8ToI64 = _BinaryenExtendS8Int64() // operand is I64
  // ExtendI16ToI64 = _BinaryenExtendS16Int64()
  // ExtendI32ToI64 = _BinaryenExtendS32Int64()

  // see: https://github.com/WebAssembly/nontrapping-float-to-int-conversions
  // TruncF32ToI32Sat
  // TruncF32ToU32Sat
  // TruncF64ToI32Sat
  // TruncF64ToU32Sat
  // TruncF32ToI64Sat
  // TruncF32ToU64Sat
  // TruncF64ToI64Sat
  // TruncF64ToU64Sat
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
  GeF64 = _BinaryenGeFloat64()
}

export enum HostOp {
  PageSize = _BinaryenPageSize(),
  CurrentMemory = _BinaryenCurrentMemory(),
  GrowMemory = _BinaryenGrowMemory(),
  HasFeature = _BinaryenHasFeature(),

  // see: https://github.com/WebAssembly/bulk-memory-operations
  // MoveMemory
  // SetMemory
}

export enum AtomicRMWOp {
  Add = _BinaryenAtomicRMWAdd(),
  Sub = _BinaryenAtomicRMWSub(),
  And = _BinaryenAtomicRMWAnd(),
  Or = _BinaryenAtomicRMWOr(),
  Xor = _BinaryenAtomicRMWXor(),
  Xchg = _BinaryenAtomicRMWXchg()
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
  out: usize;

  /** Maximum number of pages when targeting WASM32. */
  static readonly MAX_MEMORY_WASM32: Index = 0xffff;

  /** Maximum number of pages when targeting WASM64. */
  static readonly MAX_MEMORY_WASM64: Index = 0xffff; // TODO

  static create(): Module {
    var module = new Module();
    module.ref = _BinaryenModuleCreate();
    module.out = allocate_memory(16);
    return module;
  }

  static createFrom(buffer: Uint8Array): Module {
    var cArr = allocU8Array(buffer);
    try {
      let module = new Module();
      module.ref = _BinaryenModuleRead(cArr, buffer.length);
      module.out = allocate_memory(3 * 8); // LLVM C-ABI, max used is 3 * usize
      return module;
    } finally {
      free_memory(changetype<usize>(cArr));
    }
  }

  private constructor() { }

  // types

  addFunctionType(
    name: string,
    result: NativeType,
    paramTypes: NativeType[] | null
  ): FunctionRef {
    var cStr = allocString(name);
    var cArr = allocI32Array(paramTypes);
    try {
      return _BinaryenAddFunctionType(this.ref, cStr, result, cArr, paramTypes ? paramTypes.length : 0);
    } finally {
      free_memory(cArr);
      free_memory(cStr);
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
      free_memory(cArr);
    }
  }

  // constants

  createI32(value: i32): ExpressionRef {
    var out = this.out;
    _BinaryenLiteralInt32(out, value);
    return _BinaryenConst(this.ref, out);
  }

  createI64(valueLow: i32, valueHigh: i32 = 0): ExpressionRef {
    var out = this.out;
    _BinaryenLiteralInt64(out, valueLow, valueHigh);
    return _BinaryenConst(this.ref, out);
  }

  createF32(value: f32): ExpressionRef {
    var out = this.out;
    _BinaryenLiteralFloat32(out, value);
    return _BinaryenConst(this.ref, out);
  }

  createF64(value: f64): ExpressionRef {
    var out = this.out;
    _BinaryenLiteralFloat64(out, value);
    return _BinaryenConst(this.ref, out);
  }

  // expressions

  createUnary(
    op: UnaryOp,
    expr: ExpressionRef
  ): ExpressionRef {
    return _BinaryenUnary(this.ref, op, expr);
  }

  createBinary(
    op: BinaryOp,
    left: ExpressionRef,
    right: ExpressionRef
  ): ExpressionRef {
    return _BinaryenBinary(this.ref, op, left, right);
  }

  createHost(
    op: HostOp,
    name: string | null = null,
    operands: ExpressionRef[] | null = null
  ): ExpressionRef {
    var cStr = allocString(name);
    var cArr = allocI32Array(operands);
    try {
      return _BinaryenHost(this.ref, op, cStr, cArr, operands ? (<ExpressionRef[]>operands).length : 0);
    } finally {
      free_memory(cArr);
      free_memory(cStr);
    }
  }

  createGetLocal(
    index: i32,
    type: NativeType
  ): ExpressionRef {
    return _BinaryenGetLocal(this.ref, index, type);
  }

  createTeeLocal(
    index: i32,
    value: ExpressionRef
  ): ExpressionRef {
    return _BinaryenTeeLocal(this.ref, index, value);
  }

  createGetGlobal(
    name: string,
    type: NativeType
  ): ExpressionRef {
    var cStr = allocString(name);
    try {
      return _BinaryenGetGlobal(this.ref, cStr, type);
    } finally {
      free_memory(cStr);
    }
  }

  createLoad(
    bytes: Index,
    signed: bool,
    ptr: ExpressionRef,
    type: NativeType,
    offset: Index = 0
  ): ExpressionRef {
    return _BinaryenLoad(this.ref, bytes, signed ? 1 : 0, offset, /* always aligned */ bytes, type, ptr);
  }

  createStore(
    bytes: Index,
    ptr: ExpressionRef,
    value: ExpressionRef,
    type: NativeType,
    offset: Index = 0
  ): ExpressionRef {
    return _BinaryenStore(this.ref, bytes, offset, /* always aligned */ bytes, ptr, value, type);
  }

  createAtomicLoad(
    bytes: Index,
    ptr: ExpressionRef,
    type: NativeType,
    offset: Index = 0
  ): ExpressionRef {
    return _BinaryenAtomicLoad(this.ref, bytes, offset, type, ptr);
  }

  createAtomicStore(
    bytes: Index,
    ptr: ExpressionRef,
    value: ExpressionRef,
    type: NativeType,
    offset: Index = 0
  ): ExpressionRef {
    return _BinaryenAtomicStore(this.ref, bytes, offset, ptr, value, type);
  }

  createAtomicRMW(
    op: AtomicRMWOp,
    bytes: Index,
    offset: Index,
    ptr: ExpressionRef,
    value: ExpressionRef,
    type: NativeType
  ): ExpressionRef {
    return _BinaryenAtomicRMW(this.ref, op, bytes, offset, ptr, value, type);
  }

  createAtomicCmpxchg(
    bytes: Index,
    offset: Index,
    ptr: ExpressionRef,
    expected: ExpressionRef,
    replacement: ExpressionRef,
    type: NativeType
  ): ExpressionRef {
    return _BinaryenAtomicCmpxchg(this.ref, bytes, offset, ptr, expected, replacement, type);
  }

  createAtomicWait(
    ptr: ExpressionRef,
    expected: ExpressionRef,
    timeout: ExpressionRef,
    expectedType: NativeType
  ): ExpressionRef {
    return _BinaryenAtomicWait(this.ref, ptr, expected, timeout, expectedType);
  }

  createAtomicWake(
    ptr: ExpressionRef,
    wakeCount: ExpressionRef
  ): ExpressionRef {
    return _BinaryenAtomicWake(this.ref, ptr, wakeCount);
  }

  // statements

  createSetLocal(
    index: Index,
    value: ExpressionRef
  ): ExpressionRef {
    return _BinaryenSetLocal(this.ref, index, value);
  }

  createSetGlobal(
    name: string,
    value: ExpressionRef
  ): ExpressionRef {
    var cStr = allocString(name);
    try {
      return _BinaryenSetGlobal(this.ref, cStr, value);
    } finally {
      free_memory(cStr);
    }
  }

  createBlock(
    label: string | null,
    children: ExpressionRef[],
    type: NativeType = NativeType.None
  ): ExpressionRef {
    var cStr = allocString(label);
    var cArr = allocI32Array(children);
    try {
      return _BinaryenBlock(this.ref, cStr, cArr, children.length, type);
    } finally {
      free_memory(cArr);
      free_memory(cStr);
    }
  }

  createBreak(
    label: string | null,
    condition: ExpressionRef = 0,
    value: ExpressionRef = 0
  ): ExpressionRef {
    var cStr = allocString(label);
    try {
      return _BinaryenBreak(this.ref, cStr, condition, value);
    } finally {
      free_memory(cStr);
    }
  }

  createDrop(
    expression: ExpressionRef
  ): ExpressionRef {
    return _BinaryenDrop(this.ref, expression);
  }

  createLoop(
    label: string | null,
    body: ExpressionRef
  ): ExpressionRef {
    var cStr = allocString(label);
    try {
      return _BinaryenLoop(this.ref, cStr, body);
    } finally {
      free_memory(cStr);
    }
  }

  createIf(
    condition: ExpressionRef,
    ifTrue: ExpressionRef,
    ifFalse: ExpressionRef = 0
  ): ExpressionRef {
    return _BinaryenIf(this.ref, condition, ifTrue, ifFalse);
  }

  createNop(): ExpressionRef {
    return _BinaryenNop(this.ref);
  }

  createReturn(
    expression: ExpressionRef = 0
  ): ExpressionRef {
    return _BinaryenReturn(this.ref, expression);
  }

  createSelect(
    ifTrue: ExpressionRef,
    ifFalse: ExpressionRef,
    condition: ExpressionRef
  ): ExpressionRef {
    return _BinaryenSelect(this.ref, condition, ifTrue, ifFalse);
  }

  createSwitch(
    names: string[],
    defaultName: string | null,
    condition: ExpressionRef,
    value: ExpressionRef = 0
  ): ExpressionRef {
    var numNames = names.length;
    var strs = new Array<usize>(numNames);
    for (let i = 0; i < numNames; ++i) {
      strs[i] = allocString(names[i]);
    }
    var cArr = allocI32Array(strs);
    var cStr = allocString(defaultName);
    try {
      return _BinaryenSwitch(this.ref, cArr, numNames, cStr, condition, value);
    } finally {
      free_memory(cStr);
      free_memory(cArr);
      for (let i = numNames - 1; i >= 0; --i) free_memory(strs[i]);
    }
  }

  createCall(
    target: string,
    operands: ExpressionRef[] | null,
    returnType: NativeType
  ): ExpressionRef {
    var cStr = allocString(target);
    var cArr = allocI32Array(operands);
    try {
      return _BinaryenCall(this.ref, cStr, cArr, operands && operands.length || 0, returnType);
    } finally {
      free_memory(cArr);
      free_memory(cStr);
    }
  }

  createCallImport(
    target: string,
    operands: ExpressionRef[] | null,
    returnType: NativeType
  ): ExpressionRef {
    var cStr = allocString(target);
    var cArr = allocI32Array(operands);
    try {
      return _BinaryenCallImport(this.ref, cStr, cArr, operands && operands.length || 0, returnType);
    } finally {
      free_memory(cArr);
      free_memory(cStr);
    }
  }

  createCallIndirect(
    index: ExpressionRef,
    operands: ExpressionRef[] | null,
    typeName: string
  ): ExpressionRef {
    var cArr = allocI32Array(operands);
    var cStr = allocString(typeName);
    try {
      return _BinaryenCallIndirect(this.ref, index, cArr, operands && operands.length || 0, cStr);
    } finally {
      free_memory(cStr);
      free_memory(cArr);
    }
  }

  createUnreachable(): ExpressionRef {
    return _BinaryenUnreachable(this.ref);
  }

  // meta

  addGlobal(
    name: string,
    type: NativeType,
    mutable: bool,
    initializer: ExpressionRef
  ): GlobalRef {
    var cStr = allocString(name);
    try {
      return _BinaryenAddGlobal(this.ref, cStr, type, mutable ? 1 : 0, initializer);
    } finally {
      free_memory(cStr);
    }
  }

  addFunction(
    name: string,
    type: FunctionTypeRef,
    varTypes: NativeType[] | null,
    body: ExpressionRef
  ): FunctionRef {
    var cStr = allocString(name);
    var cArr = allocI32Array(varTypes);
    try {
      return _BinaryenAddFunction(this.ref, cStr, type, cArr, varTypes ? varTypes.length : 0, body);
    } finally {
      free_memory(cArr);
      free_memory(cStr);
    }
  }

  removeFunction(name: string): void {
    var cStr = allocString(name);
    try {
      _BinaryenRemoveFunction(this.ref, cStr);
    } finally {
      free_memory(cStr);
    }
  }

  addFunctionExport(
    internalName: string,
    externalName: string
  ): ExportRef {
    var cStr1 = allocString(internalName);
    var cStr2 = allocString(externalName);
    try {
      return _BinaryenAddFunctionExport(this.ref, cStr1, cStr2);
    } finally {
      free_memory(cStr2);
      free_memory(cStr1);
    }
  }

  addTableExport(
    internalName: string,
    externalName: string
  ): ExportRef {
    var cStr1 = allocString(internalName);
    var cStr2 = allocString(externalName);
    try {
      return _BinaryenAddTableExport(this.ref, cStr1, cStr2);
    } finally {
      free_memory(cStr2);
      free_memory(cStr1);
    }
  }

  addMemoryExport(
    internalName: string,
    externalName: string
  ): ExportRef {
    var cStr1 = allocString(internalName);
    var cStr2 = allocString(externalName);
    try {
      return _BinaryenAddMemoryExport(this.ref, cStr1, cStr2);
    } finally {
      free_memory(cStr2);
      free_memory(cStr1);
    }
  }

  addGlobalExport(
    internalName: string,
    externalName: string
  ): ExportRef {
    var cStr1 = allocString(internalName);
    var cStr2 = allocString(externalName);
    try {
      return _BinaryenAddGlobalExport(this.ref, cStr1, cStr2);
    } finally {
      free_memory(cStr2);
      free_memory(cStr1);
    }
  }

  removeExport(externalName: string): void {
    var cStr = allocString(externalName);
    try {
      _BinaryenRemoveExport(this.ref, cStr);
    } finally {
      free_memory(cStr);
    }
  }

  addFunctionImport(
    internalName: string,
    externalModuleName: string,
    externalBaseName: string,
    functionType: FunctionTypeRef
  ): ImportRef {
    var cStr1 = allocString(internalName);
    var cStr2 = allocString(externalModuleName);
    var cStr3 = allocString(externalBaseName);
    try {
      return _BinaryenAddFunctionImport(this.ref, cStr1, cStr2, cStr3, functionType);
    } finally {
      free_memory(cStr3);
      free_memory(cStr2);
      free_memory(cStr1);
    }
  }

  addTableImport(
    internalName: string,
    externalModuleName: string,
    externalBaseName: string
  ): ImportRef {
    var cStr1 = allocString(internalName);
    var cStr2 = allocString(externalModuleName);
    var cStr3 = allocString(externalBaseName);
    try {
      return _BinaryenAddTableImport(this.ref, cStr1, cStr2, cStr3);
    } finally {
      free_memory(cStr3);
      free_memory(cStr2);
      free_memory(cStr1);
    }
  }

  addMemoryImport(
    internalName: string,
    externalModuleName: string,
    externalBaseName: string
  ): ImportRef {
    var cStr1 = allocString(internalName);
    var cStr2 = allocString(externalModuleName);
    var cStr3 = allocString(externalBaseName);
    try {
      return _BinaryenAddMemoryImport(this.ref, cStr1, cStr2, cStr3);
    } finally {
      free_memory(cStr3);
      free_memory(cStr2);
      free_memory(cStr1);
    }
  }

  addGlobalImport(
    internalName: string,
    externalModuleName: string,
    externalBaseName: string,
    globalType: NativeType
  ): ImportRef {
    var cStr1 = allocString(internalName);
    var cStr2 = allocString(externalModuleName);
    var cStr3 = allocString(externalBaseName);
    try {
      return _BinaryenAddGlobalImport(this.ref, cStr1, cStr2, cStr3, globalType);
    } finally {
      free_memory(cStr3);
      free_memory(cStr2);
      free_memory(cStr1);
    }
  }

  removeImport(internalName: string): void {
    var cStr = allocString(internalName);
    try {
      _BinaryenRemoveImport(this.ref, cStr);
    } finally {
      free_memory(cStr);
    }
  }

  setMemory(
    initial: Index,
    maximum: Index,
    segments: MemorySegment[],
    target: Target,
    exportName: string | null = null
  ): void {
    var cStr = allocString(exportName);
    var k = segments.length;
    var segs = new Array<usize>(k);
    var offs = new Array<ExpressionRef>(k);
    var sizs = new Array<Index>(k);
    for (let i = 0; i < k; ++i) {
      let buffer = segments[i].buffer;
      let offset = segments[i].offset;
      segs[i] = allocU8Array(buffer);
      offs[i] = target == Target.WASM64
        ? this.createI64(i64_low(offset), i64_high(offset))
        : this.createI32(i64_low(offset));
      sizs[i] = buffer.length;
    }
    var cArr1 = allocI32Array(segs);
    var cArr2 = allocI32Array(offs);
    var cArr3 = allocI32Array(sizs);
    try {
      _BinaryenSetMemory(this.ref, initial, maximum, cStr, cArr1, cArr2, cArr3, k);
    } finally {
      free_memory(cArr3);
      free_memory(cArr2);
      free_memory(cArr1);
      for (let i = k - 1; i >= 0; --i) free_memory(segs[i]);
      free_memory(cStr);
    }
  }

  setFunctionTable(funcs: FunctionRef[]): void {
    var cArr = allocI32Array(funcs);
    try {
      _BinaryenSetFunctionTable(this.ref, cArr, funcs.length);
    } finally {
      free_memory(cArr);
    }
  }

  setStart(func: FunctionRef): void {
    _BinaryenSetStart(this.ref, func);
  }

  setOptimizeLevel(level: i32 = 2): void {
    _BinaryenSetOptimizeLevel(level);
  }

  setShrinkLevel(level: i32 = 1): void {
    _BinaryenSetShrinkLevel(level);
  }

  setDebugInfo(on: bool = false): void {
    _BinaryenSetDebugInfo(on);
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
      free_memory(cArr);
      for (let i = numNames; i >= 0; --i) {
        free_memory(names[i]);
      }
    }
  }

  validate(): bool {
    return _BinaryenModuleValidate(this.ref) == 1;
  }

  interpret(): void {
    _BinaryenModuleInterpret(this.ref);
  }

  toBinary(sourceMapUrl: string | null): BinaryModule {
    var out = this.out;
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
      if (cStr) free_memory(cStr);
      if (binaryPtr) free_memory(binaryPtr);
      if (sourceMapPtr) free_memory(sourceMapPtr);
    }
  }

  toText(): string {
    throw new Error("not implemented"); // JS glue overrides this
  }

  toAsmjs(): string {
    throw new Error("not implemented"); // JS glue overrides this
  }

  dispose(): void {
    if (!this.ref) return; // sic
    _BinaryenModuleDispose(this.ref);
    free_memory(this.out);
  }

  createRelooper(): Relooper {
    return Relooper.create(this);
  }

  cloneExpression(expr: ExpressionRef,
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
            return this.createI32(_BinaryenConstGetValueI32(expr));
          }
          case NativeType.I64: {
            return this.createI64(
              _BinaryenConstGetValueI64Low(expr),
              _BinaryenConstGetValueI64High(expr)
            );
          }
          case NativeType.F32: {
            return this.createF32(_BinaryenConstGetValueF32(expr));
          }
          case NativeType.F64: {
            return this.createF64(_BinaryenConstGetValueF64(expr));
          }
          default: {
            throw new Error("concrete type expected");
          }
        }
      }
      case ExpressionId.GetLocal: {
        return _BinaryenGetLocal(this.ref,
          _BinaryenGetLocalGetIndex(expr),
          _BinaryenExpressionGetType(expr)
        );
      }
      case ExpressionId.GetGlobal: {
        let globalName = _BinaryenGetGlobalGetName(expr);
        if (!globalName) break;
        return _BinaryenGetGlobal(this.ref, globalName, _BinaryenExpressionGetType(expr));
      }
      case ExpressionId.Load: {
        if (!(nested1 = this.cloneExpression(_BinaryenLoadGetPtr(expr), noSideEffects, maxDepth))) {
          break;
        }
        return _BinaryenLoadIsAtomic(expr)
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
      free_memory(cStr);
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

export class Relooper {

  module: Module;
  ref: RelooperRef;

  static create(module: Module): Relooper {
    var relooper = new Relooper();
    relooper.module = module;
    relooper.ref = _RelooperCreate();
      return relooper;
  }

  static createStub(module: Module): Relooper {
    var relooper = new Relooper();
    relooper.module = module;
    relooper.ref = 0;
    return relooper;
  }

  private constructor() {}

  addBlock(code: ExpressionRef): RelooperBlockRef {
    return _RelooperAddBlock(this.ref, code);
  }

  addBranch(from: RelooperBlockRef, to: RelooperBlockRef, condition: ExpressionRef = 0, code: ExpressionRef = 0): void {
    _RelooperAddBranch(from, to, condition, code);
  }

  addBlockWithSwitch(code: ExpressionRef, condition: ExpressionRef): RelooperBlockRef {
    return _RelooperAddBlockWithSwitch(this.ref, code, condition);
  }

  addBranchForSwitch(from: RelooperBlockRef, to: RelooperBlockRef, indexes: i32[], code: ExpressionRef = 0): void {
    var cArr = allocI32Array(indexes);
    try {
      _RelooperAddBranchForSwitch(from, to, cArr, indexes.length, code);
    } finally {
      free_memory(cArr);
    }
  }

  renderAndDispose(entry: RelooperBlockRef, labelHelper: Index): ExpressionRef {
    return _RelooperRenderAndDispose(this.ref, entry, labelHelper, this.module.ref);
  }
}

// export function hasSideEffects(expr: ExpressionRef): bool {
//   switch (_BinaryenExpressionGetId(expr)) {
//     case ExpressionId.GetLocal:
//     case ExpressionId.GetGlobal:
//     case ExpressionId.Const:
//     case ExpressionId.Nop:
//     case ExpressionId.Unreachable: {
//       return false;
//     }
//     case ExpressionId.Block: {
//       for (let i = 0, k = _BinaryenBlockGetNumChildren(expr); i < k; ++i) {
//         if (hasSideEffects(_BinaryenBlockGetChild(expr, i))) return true;
//       }
//       return false;
//     }
//     case ExpressionId.If: {
//       return hasSideEffects(_BinaryenIfGetCondition(expr))
//           || hasSideEffects(_BinaryenIfGetIfTrue(expr))
//           || hasSideEffects(_BinaryenIfGetIfFalse(expr));
//     }
//     case ExpressionId.Unary: {
//       return hasSideEffects(_BinaryenUnaryGetValue(expr));
//     }
//     case ExpressionId.Binary: {
//       return hasSideEffects(_BinaryenBinaryGetLeft(expr))
//           || hasSideEffects(_BinaryenBinaryGetRight(expr));
//     }
//     case ExpressionId.Drop: {
//       return hasSideEffects(_BinaryenDropGetValue(expr));
//     }
//     case ExpressionId.Select: {
//       return hasSideEffects(_BinaryenSelectGetIfTrue(expr))
//           || hasSideEffects(_BinaryenSelectGetIfFalse(expr))
//           || hasSideEffects(_BinaryenSelectGetCondition(expr));
//     }
//   }
//   return true;
// }

// helpers
// can't do stack allocation here: STACKTOP is a global in WASM but a hidden variable in asm.js

function allocU8Array(u8s: Uint8Array | null): usize {
  if (!u8s) return 0;
  var numValues = u8s.length;
  var ptr = allocate_memory(numValues);
  var idx = ptr;
  for (let i = 0; i < numValues; ++i) {
    store<u8>(idx++, u8s[i]);
  }
  return ptr;
}

function allocI32Array(i32s: i32[] | null): usize {
  if (!i32s) return 0;
  var ptr = allocate_memory(i32s.length << 2);
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
  var ptr = allocate_memory(stringLengthUTF8(str) + 1);
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
