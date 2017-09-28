import { U64 } from "./util";
import { Target } from "./compiler";

export enum Type {
  None = _BinaryenNone(),
  I32 = _BinaryenInt32(),
  I64 = _BinaryenInt64(),
  F32 = _BinaryenFloat32(),
  F64 =  _BinaryenFloat64(),
  Undefined = _BinaryenUndefined()
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
  TruncF32_I32 = _BinaryenTruncSFloat32ToInt32(),
  TruncF32_I64 = _BinaryenTruncSFloat32ToInt64(),
  TruncF32_U32 = _BinaryenTruncUFloat32ToInt32(),
  TruncF32_U64 = _BinaryenTruncUFloat32ToInt64(),
  TruncF64_I32 = _BinaryenTruncSFloat64ToInt32(),
  TruncF64_I64 = _BinaryenTruncSFloat64ToInt64(),
  TruncF64_U32 = _BinaryenTruncUFloat64ToInt32(),
  TruncF64_U64 = _BinaryenTruncUFloat64ToInt64(),
  ReinterpretF32 = _BinaryenReinterpretFloat32(),
  ReinterpretF64 = _BinaryenReinterpretFloat64(),
  ConvertI32_F32 = _BinaryenConvertSInt32ToFloat32(),
  ConvertI32_F64 = _BinaryenConvertSInt32ToFloat64(),
  ConvertU32_F32 = _BinaryenConvertUInt32ToFloat32(),
  ConvertU32_F64 = _BinaryenConvertUInt32ToFloat64(),
  ConvertI64_F32 = _BinaryenConvertSInt64ToFloat32(),
  ConvertI64_F64 = _BinaryenConvertSInt64ToFloat64(),
  ConvertU64_F32 = _BinaryenConvertUInt64ToFloat32(),
  ConvertU64_F64 = _BinaryenConvertUInt64ToFloat64(),
  PromoteF32 = _BinaryenPromoteFloat32(),
  DemoteF64 = _BinaryenDemoteFloat64(),
  ReinterpretI32 = _BinaryenReinterpretInt32(),
  ReinterpretI64 = _BinaryenReinterpretInt64()
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
  HasFeature = _BinaryenHasFeature()
}

export enum AtomicRMWOp { // TODO: not yet part of the C-API
  Add,
  Sub,
  And,
  Or,
  Xor,
  Xchg
}

export class MemorySegment {

  buffer: Uint8Array;
  offset: U64;

  static create(buffer: Uint8Array, offset: U64) {
    const segment: MemorySegment = new MemorySegment();
    segment.buffer = buffer;
    segment.offset = offset;
    return segment;
  }
}

export class Module {

  ref: BinaryenModuleRef;
  lit: BinaryenLiteral;

  static create(): Module {
    const module: Module = new Module();
    module.ref = _BinaryenModuleCreate();
    module.lit = _malloc(16);
    return module;
  }

  static createFrom(buffer: Uint8Array): Module {
    const cArr: CArray<u8> = allocU8Array(buffer);
    try {
      const module: Module = new Module();
      module.ref = _BinaryenModuleRead(cArr, buffer.length);
      module.lit = _malloc(16);
      return module;
    } finally {
      _free(cArr);
    }
  }

  static MAX_MEMORY_WASM32: BinaryenIndex = 0xffff;

  // types

  addFunctionType(name: string, result: Type, paramTypes: Type[]): BinaryenFunctionRef {
    const cStr: CString = allocString(name);
    const cArr: CArray<i32> = allocI32Array(paramTypes);
    try {
      return _BinaryenAddFunctionType(this.ref, cStr, result, cArr, paramTypes.length);
    } finally {
      _free(cStr);
      _free(cArr);
    }
  }

  getFunctionTypeBySignature(result: Type, paramTypes: Type[]): BinaryenFunctionTypeRef {
    const cArr: CArray<i32> = allocI32Array(paramTypes);
    try {
      return _BinaryenGetFunctionTypeBySignature(this.ref, result, cArr, paramTypes.length);
    } finally {
      _free(cArr);
    }
  }

  // expressions

  createI32(value: i32): BinaryenExpressionRef {
    _BinaryenLiteralInt32(this.lit, value);
    return _BinaryenConst(this.ref, this.lit);
  }

  createI64(lo: i32, hi: i32): BinaryenExpressionRef {
    _BinaryenLiteralInt64(this.lit, lo, hi);
    return _BinaryenConst(this.ref, this.lit);
  }

  createF32(value: f32): BinaryenExpressionRef {
    _BinaryenLiteralFloat32(this.lit, value);
    return _BinaryenConst(this.ref, this.lit);
  }

  createF64(value: f64): BinaryenExpressionRef {
    _BinaryenLiteralFloat64(this.lit, value);
    return _BinaryenConst(this.ref, this.lit);
  }

  createUnary(op: UnaryOp, expr: BinaryenExpressionRef): BinaryenExpressionRef {
    return _BinaryenUnary(this.ref, op, expr);
  }

  createBinary(op: BinaryOp, left: BinaryenExpressionRef, right: BinaryenExpressionRef): BinaryenExpressionRef {
    return _BinaryenBinary(this.ref, op, left, right);
  }

  createHost(op: HostOp, name: string | null = null, operands: BinaryenExpressionRef[] | null = null): BinaryenExpressionRef {
    const cStr: CString = allocString(name);
    const cArr: CArray<i32> = allocI32Array(operands);
    try {
      return _BinaryenHost(this.ref, op, cStr, cArr, operands ? (<BinaryenExpressionRef[]>operands).length : 0);
    } finally {
      _free(cStr);
      _free(cArr);
    }
  }

  createGetLocal(index: i32, type: Type): BinaryenExpressionRef {
    return _BinaryenGetLocal(this.ref, index, type);
  }

  createTeeLocal(index: i32, value: BinaryenExpressionRef): BinaryenExpressionRef {
    return _BinaryenTeeLocal(this.ref, index, value);
  }

  createGetGlobal(name: string, type: Type): BinaryenExpressionRef {
    const cStr: CString = allocString(name);
    try {
      return _BinaryenGetGlobal(this.ref, cStr, type);
    } finally {
      _free(cStr);
    }
  }

  createTeeGlobal(name: string, value: BinaryenExpressionRef, type: Type): BinaryenExpressionRef {
    // emulated, lives here for simplicity reasons
    return this.createBlock(null, [
      this.createSetGlobal(name, value),
      this.createGetGlobal(name, type)
    ], type);
  }

  // statements

  createSetLocal(index: i32, value: BinaryenExpressionRef): BinaryenExpressionRef {
    return _BinaryenSetLocal(this.ref, index, value);
  }

  createSetGlobal(name: string, value: BinaryenExpressionRef): BinaryenExpressionRef {
    const cStr: CString = allocString(name);
    try {
      return _BinaryenSetGlobal(this.ref, cStr, value);
    } finally {
      _free(cStr);
    }
  }

  createBlock(label: string | null, children: BinaryenExpressionRef[], type: Type = Type.Undefined): BinaryenExpressionRef {
    const cStr: CString = allocString(label);
    const cArr: CArray<i32> = allocI32Array(children);
    try {
      return _BinaryenBlock(this.ref, cStr, cArr, children.length, type);
    } finally {
      _free(cStr);
      _free(cArr);
    }
  }

  createBreak(label: string | null, condition: BinaryenExpressionRef = 0, value: BinaryenExpressionRef = 0): BinaryenExpressionRef {
    const cStr: CString = allocString(label);
    try {
      return _BinaryenBreak(this.ref, cStr, condition, value);
    } finally {
      _free(cStr);
    }
  }

  createDrop(expression: BinaryenExpressionRef): BinaryenExpressionRef {
    return _BinaryenDrop(this.ref, expression);
  }

  createLoop(label: string | null, body: BinaryenExpressionRef): BinaryenExpressionRef {
    const cStr: CString = allocString(label);
    try {
      return _BinaryenLoop(this.ref, cStr, body);
    } finally {
      _free(cStr);
    }
  }

  createIf(condition: BinaryenExpressionRef, ifTrue: BinaryenExpressionRef, ifFalse: BinaryenExpressionRef = 0): BinaryenExpressionRef {
    return _BinaryenIf(this.ref, condition, ifTrue, ifFalse);
  }

  createNop(): BinaryenExpressionRef {
    return _BinaryenNop(this.ref);
  }

  createReturn(expression: BinaryenExpressionRef = 0): BinaryenExpressionRef {
    return _BinaryenReturn(this.ref, expression);
  }

  createSelect(condition: BinaryenExpressionRef, ifTrue: BinaryenExpressionRef, ifFalse: BinaryenExpressionRef): BinaryenExpressionRef {
    return _BinaryenSelect(this.ref, condition, ifTrue, ifFalse);
  }

  createSwitch(names: string[], defaultName: string | null, condition: BinaryenExpressionRef, value: BinaryenExpressionRef = 0): BinaryenExpressionRef {
    const strs: CString[] = new Array(names.length);
    let i: i32, k: i32 = names.length;
    for (i = 0; i < k; ++i) strs[i] = allocString(names[i]);
    const cArr: CArray<i32> = allocI32Array(strs);
    const cStr: CString = allocString(defaultName);
    try {
      return _BinaryenSwitch(this.ref, cArr, k, cStr, condition, value);
    } finally {
      for (i = 0; i < k; ++i) _free(strs[i]);
      _free(cArr);
      _free(cStr);
    }
  }

  createCall(target: BinaryenFunctionRef, operands: BinaryenExpressionRef[], returnType: Type): BinaryenExpressionRef {
    const cArr: CArray<i32> = allocI32Array(operands);
    try {
      return _BinaryenCall(this.ref, target, cArr, operands.length, returnType);
    } finally {
      _free(cArr);
    }
  }

  createCallImport(target: BinaryenImportRef, operands: BinaryenExpressionRef[], returnType: Type): BinaryenExpressionRef {
    const cArr: CArray<i32> = allocI32Array(operands);
    try {
      return _BinaryenCallImport(this.ref, target, cArr, operands.length, returnType);
    } finally {
      _free(cArr);
    }
  }

  createUnreachable(): BinaryenExpressionRef {
    return _BinaryenUnreachable(this.ref);
  }

  // meta

  addGlobal(name: string, type: Type, mutable: bool, initializer: BinaryenExpressionRef): BinaryenImportRef {
    const cStr: CString = allocString(name);
    try {
      return _BinaryenAddGlobal(this.ref, cStr, type, mutable ? 1 : 0, initializer);
    } finally {
      _free(cStr);
    }
  }

  addFunction(name: string, type: Type, varTypes: Type[], body: BinaryenExpressionRef): BinaryenFunctionRef {
    const cStr: CString = allocString(name);
    const cArr: CArray<i32> = allocI32Array(varTypes);
    try {
      return _BinaryenAddFunction(this.ref, cStr, type, cArr, varTypes.length, body);
    } finally {
      _free(cStr);
      _free(cArr);
    }
  }

  addExport(internalName: string, externalName: string): BinaryenExportRef {
    const cStr1: CString = allocString(internalName);
    const cStr2: CString = allocString(externalName);
    try {
      return _BinaryenAddExport(this.ref, cStr1, cStr2);
    } finally {
      _free(cStr1);
      _free(cStr2);
    }
  }

  removeExport(externalName: string): void {
    const cStr = allocString(externalName);
    try {
      _BinaryenRemoveExport(this.ref, cStr);
    } finally {
      _free(cStr);
    }
  }

  addImport(internalName: string, externalModuleName: string, externalBaseName: string, type: BinaryenFunctionTypeRef): BinaryenImportRef {
    const cStr1: CString = allocString(internalName);
    const cStr2: CString = allocString(externalModuleName);
    const cStr3: CString = allocString(externalBaseName);
    try {
      return _BinaryenAddImport(this.ref, cStr1, cStr2, cStr3, type);
    } finally {
      _free(cStr1);
      _free(cStr2);
      _free(cStr3);
    }
  }

  removeImport(internalName: string): void {
    const cStr: CString = allocString(internalName);
    try {
      _BinaryenRemoveImport(this.ref, cStr);
    } finally {
      _free(cStr);
    }
  }

  setMemory(initial: BinaryenIndex, maximum: BinaryenIndex, segments: MemorySegment[], target: Target, exportName: string | null = null): void {
    const cStr: CString = allocString(exportName);
    let i: i32, k: i32 = segments.length;
    const segs: CArray<u8>[] = new Array(k);
    const offs: BinaryenExpressionRef[] = new Array(k);
    const sizs: BinaryenIndex[] = new Array(k);
    for (i = 0; i < k; ++i) {
      const buffer: Uint8Array = segments[i].buffer;
      const offset: U64 = segments[i].offset;
      segs[i] = allocU8Array(buffer);
      offs[i] = target == Target.WASM64
        ? this.createI64(offset.lo, offset.hi)
        : this.createI32(offset.toI32());
      sizs[i] = buffer.length;
    }
    const cArr1: CArray<i32> = allocI32Array(segs);
    const cArr2: CArray<i32> = allocI32Array(offs);
    const cArr3: CArray<i32> = allocI32Array(sizs);
    try {
      _BinaryenSetMemory(this.ref, initial, maximum, cStr, cArr1, cArr2, cArr3, k);
    } finally {
      _free(cStr);
      for (i = 0; i < k; ++i) _free(segs[i]);
      _free(cArr1);
      _free(cArr2);
      _free(cArr3);
    }
  }

  setStart(func: BinaryenFunctionRef): void {
    _BinaryenSetStart(this.ref, func);
  }

  optimize(): void {
    _BinaryenModuleOptimize(this.ref);
  }

  validate(): bool {
    return _BinaryenModuleValidate(this.ref) == 1;
  }

  dispose(): void {
    _BinaryenModuleDispose(this.ref);
    _free(this.lit);
  }
}

// helpers
// TODO: investigate stack allocation?

function allocU8Array(u8s: Uint8Array | null): CArray<u8> {
  if (!u8s) return 0;
  const ptr: usize = _malloc((<Uint8Array>u8s).length);
  let idx: usize = ptr;
  for (let i: i32 = 0, k: i32 = (<Uint8Array>u8s).length; i < k; ++i)
    store<u8>(idx++, (<Uint8Array>u8s)[i])
  return ptr;
}

function allocI32Array(i32s: i32[] | null): CArray<i32> {
  if (!i32s) return 0;
  const ptr: usize = _malloc((<i32[]>i32s).length << 2);
  let idx: usize = ptr;
  for (let i: i32 = 0, k: i32 = (<i32[]>i32s).length; i < k; ++i) {
    let val: i32 = (<i32[]>i32s)[i];
    store<u8>(idx    , ( val         & 0xff) as u8);
    store<u8>(idx + 1, ((val >>   8) & 0xff) as u8);
    store<u8>(idx + 2, ((val >>  16) & 0xff) as u8);
    store<u8>(idx + 3, ( val >>> 24        ) as u8);
    idx += 4;
  }
  return ptr;
}

function stringLengthUTF8(str: string): usize {
  let len: i32 = 0;
  for (let i: i32 = 0, k: i32 = str.length; i < k; ++i) {
    let u: i32 = str.charCodeAt(i);
    if (u >= 0xD800 && u <= 0xDFFF && i + 1 < k)
      u = 0x10000 + ((u & 0x3FF) << 10) | (str.charCodeAt(++i) & 0x3FF);
    if (u <= 0x7F)
      ++len;
    else if (u <= 0x7FF)
      len += 2;
    else if (u <= 0xFFFF)
      len += 3;
    else if (u <= 0x1FFFFF)
      len += 4;
    else if (u <= 0x3FFFFFF)
      len += 5;
    else
      len += 6;
  }
  return len;
}

function allocString(str: string | null): CString {
  if (!str) return 0;
  const ptr: usize = _malloc(stringLengthUTF8((<string>str)) + 1);
  let idx: usize = ptr;
  for (let i: i32 = 0, k = (<string>str).length; i < k; ++i) {
    let u: i32 = (<string>str).charCodeAt(i);
    if (u >= 0xD800 && u <= 0xDFFF && i + 1 < k)
      u = 0x10000 + ((u & 0x3FF) << 10) | ((<string>str).charCodeAt(++i) & 0x3FF);
    if (u <= 0x7F)
      store<u8>(idx++, u as u8);
    else if (u <= 0x7FF) {
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
