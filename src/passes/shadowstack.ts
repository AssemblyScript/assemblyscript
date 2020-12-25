import {
  BinaryenPass
} from "./pass";

import {
  BinaryenExpressionRef,
  BinaryenFunctionRef,
  BinaryenIndex,
  BinaryenType,
  _BinaryenCallGetNumOperands,
  _BinaryenCallGetOperandAt,
  _BinaryenCallGetTarget,
  _BinaryenCallSetOperandAt,
  _BinaryenExpressionGetId,
  _BinaryenExpressionGetType,
  _BinaryenFunctionGetBody,
  _BinaryenFunctionSetBody,
  _BinaryenLocalSetGetIndex,
  _BinaryenLocalSetGetValue,
  _BinaryenLocalSetIsTee,
  _BinaryenReturnGetValue,
  _BinaryenReturnSetValue
} from "../glue/binaryen";

import {
  BinaryOp,
  ExpressionId,
  Module,
  NativeType,
  readString
} from "../module";

type LocalIndex = BinaryenIndex;
type SlotIndex = BinaryenIndex;
type SlotMap = Map<LocalIndex,SlotIndex>;
type TempMap = Map<BinaryenType,LocalIndex>;

const MANAGED = "~lib/rt/__managed";
const STACKPTR = "~lib/rt/__stackptr";

/** Instruments a module with a shadow stack for precise GC. */
export class ShadowStackPass extends BinaryenPass {
  /** Stack frame slots, per function. */
  slotMaps: Map<BinaryenFunctionRef, SlotMap> = new Map();
  /** Temporary locals, per function. */
  tempMaps: Map<BinaryenFunctionRef, TempMap> = new Map();
  /** Target pointer type. */
  ptrType: NativeType;

  constructor(module: Module, sizeType: NativeType) {
    super(module);
    this.ptrType = sizeType;
  }

  /** Target pointer size. */
  get ptrSize(): i32 { return this.ptrType == NativeType.I64 ? 8 : 4; }
  /** Target pointer addition operation. */
  get ptrBinaryAdd(): BinaryOp { return this.ptrType == NativeType.I64 ? BinaryOp.AddI64 : BinaryOp.AddI32; }
  /** Target pointer subtraction operation. */
  get ptrBinarySub(): BinaryOp { return this.ptrType == NativeType.I64 ? BinaryOp.SubI64 : BinaryOp.SubI32; }

  /** Gets a constant with the specified value of the target pointer type. */
  ptrConst(value: i32): BinaryenExpressionRef {
    return this.ptrType == NativeType.I64
      ? this.module.i64(value)
      : this.module.i32(value);
  }

  /** Attempts to match the `__managed(value)` pattern. Returns `value` if a match, otherwise `0`.  */
  match(expr: BinaryenExpressionRef): BinaryenExpressionRef {
    if (_BinaryenExpressionGetId(expr) == ExpressionId.Call && readString(_BinaryenCallGetTarget(expr)) == MANAGED) {
      assert(_BinaryenCallGetNumOperands(expr) == 1);
      let value = _BinaryenCallGetOperandAt(expr, 0);
      assert(_BinaryenExpressionGetType(value) == this.ptrType);
      return value;
    }
    return 0;
  }

  /** Notes the presence of a slot for the specified local, returning the slot index. */
  noteSlot(func: BinaryenFunctionRef, localIndex: BinaryenIndex): i32 {
    let slotMap: SlotMap;
    if (this.slotMaps.has(func)) {
      slotMap = changetype<SlotMap>(this.slotMaps.get(func));
      if (slotMap.has(localIndex)) {
        return changetype<i32>(slotMap.get(localIndex));
      }
    } else {
      slotMap = new Map();
      this.slotMaps.set(func, slotMap);
    }
    let slotIndex = slotMap.size;
    slotMap.set(localIndex, slotIndex);
    return slotIndex;
  }

  /** Gets a shared temporary local of the given type in the specified functions. */
  getSharedTemp(func: BinaryenFunctionRef, type: NativeType): BinaryenIndex {
    let tempMap: TempMap;
    if (this.tempMaps.has(func)) {
      tempMap = changetype<TempMap>(this.tempMaps.get(func));
      if (tempMap.has(type)) {
        return changetype<BinaryenIndex>(tempMap.get(type));
      }
    } else {
      tempMap = new Map();
      this.tempMaps.set(func, tempMap);
    }
    // FIXME: C-API
    let localIndex = 0; // _BinaryenFunctionAddVar(func, type);
    tempMap.set(type, localIndex);
    return localIndex;
  }

  /** Makes an expression modifying the stack pointer by the given offset. */
  makeModifyStackptr(offset: i32): BinaryenExpressionRef {
    var module = this.module;
    return module.global_set(STACKPTR,
      module.binary(offset >= 0 ? this.ptrBinaryAdd : this.ptrBinarySub,
        module.global_get(STACKPTR, this.ptrType),
        this.ptrConst(abs(offset))
      )
    );
  }

  /** @override */
  visitCall(call: BinaryenExpressionRef): void {
    let module = this.module;
    let numOperands = _BinaryenCallGetNumOperands(call);
    let numSlots = 0;
    for (let i: BinaryenIndex = 0; i < numOperands; ++i) {
      let operand = _BinaryenCallGetOperandAt(call, i);
      let match = this.match(operand);
      if (!match) continue;
      let temp = this.getSharedTemp(this.currentFunction, this.ptrType);
      let stmts = new Array<BinaryenExpressionRef>();
      // t = value
      stmts.push(
        module.local_set(temp, match)
      );
      // __stackptr -= sizeof<usize>()
      stmts.push(
        this.makeModifyStackptr(-this.ptrSize)
      );
      // store<usize>(__stackptr, t)
      stmts.push(
        module.store(this.ptrSize,
          module.global_get(STACKPTR, this.ptrType),
          module.local_get(temp, this.ptrType),
          this.ptrType
        )
      );
      // -> t
      stmts.push(
        module.local_get(temp, this.ptrType)
      );
      _BinaryenCallSetOperandAt(call, i, module.block(null, stmts, this.ptrType));
      ++numSlots;
    }
    if (numSlots) {
      let returnType = _BinaryenExpressionGetType(call);
      let stmts = new Array<BinaryenExpressionRef>();
      if (returnType == NativeType.None || returnType == NativeType.Unreachable) {
        // call(...)
        stmts.push(
          call
        );
        // __stackptr += numSlots * sizeof<usize>()
        stmts.push(
          this.makeModifyStackptr(numSlots * this.ptrSize)
        );
      } else {
        let temp = this.getSharedTemp(this.currentFunction, returnType);
        // t = call(...)
        stmts.push(
          module.local_set(temp,
            call
          )
        );
        // __stackptr += numSlots * sizeof<usize>()
        stmts.push(
          this.makeModifyStackptr(numSlots * this.ptrSize)
        );
        // -> t
        stmts.push(
          module.local_get(temp, returnType)
        );
      }
      this.replaceCurrent(module.flatten(stmts, returnType));
    }
  }

  /** @override */
  visitLocalSet(localSet: BinaryenExpressionRef): void {
    let value = _BinaryenLocalSetGetValue(localSet);
    let match = this.match(value);
    if (!match) return;
    var module = this.module;
    let index = _BinaryenLocalSetGetIndex(localSet);
    let slotIndex = this.noteSlot(this.currentFunction, index);
    let stmts = new Array<BinaryenExpressionRef>();
    // store<usize>(__stackptr, local = match, slotIndex * ptrSize)
    stmts.push(
      module.store(this.ptrSize,
        module.global_get(STACKPTR, this.ptrType),
        module.local_tee(index, match),
        this.ptrType, slotIndex * this.ptrSize
      )
    );
    if (_BinaryenLocalSetIsTee(localSet)) {
      // -> local
      stmts.push(
        module.local_get(index, this.ptrType)
      );
      this.replaceCurrent(module.flatten(stmts, this.ptrType));
    } else {
      this.replaceCurrent(module.flatten(stmts, NativeType.None));
    }
  }

  /** @override */
  walkModule(): void {
    super.walkModule();
    var module = this.module;
    var instrumentReturns = new InstrumentReturns(this);
    for (let _keys = Map_keys(this.slotMaps), i = 0; i < _keys.length; ++i) {
      let func = _keys[i];
      let slotMap = changetype<SlotMap>(this.slotMaps.get(func));
      let frameSize = slotMap.size * this.ptrSize;

      // Instrument function returns
      instrumentReturns.frameSize = frameSize;
      instrumentReturns.walkFunction(func);

      // Instrument function entry
      let stmts = new Array<BinaryenExpressionRef>();
      // __stackptr -= frameSize
      stmts.push(
        this.makeModifyStackptr(-frameSize)
      );
      // memory.fill(__stackptr, 0, frameSize)
      // TODO: detect bulk-memory feature
      let remain = frameSize;
      while (remain >= 8) {
        // store<i64>(__stackptr, 0, frameSize - remain)
        stmts.push(
          module.store(8,
            module.global_get(STACKPTR, this.ptrType),
            module.i64(0),
            NativeType.I64,
            frameSize - remain
          )
        );
      }
      if (remain) {
        assert(remain == 4);
        // store<i32>(__stackptr, 0, frameSize - remain)
        stmts.push(
          module.store(4,
            module.global_get(STACKPTR, this.ptrType),
            module.i32(0),
            NativeType.I32,
            frameSize - remain
          )
        );
      }
      
      // Handle implicit return
      let body = _BinaryenFunctionGetBody(func);
      let bodyType = _BinaryenExpressionGetType(body);
      if (bodyType != NativeType.Unreachable) {
        if (bodyType == NativeType.None) {
          // body
          stmts.push(
            body
          );
          // __stackptr += frameSize
          stmts.push(
            this.makeModifyStackptr(frameSize)
          );
        } else {
          let temp = this.getSharedTemp(func, bodyType);
          // t = body
          stmts.push(
            module.local_set(temp, body)
          );
          // __stackptr += frameSize
          stmts.push(
            this.makeModifyStackptr(frameSize)
          );
          // -> t
          stmts.push(
            module.local_get(temp, bodyType)
          );
        }
      }
      _BinaryenFunctionSetBody(func, module.flatten(stmts, bodyType));
    }
  }
}

/** Companion pass instrumenting `return` statements to restore the stack frame. */
class InstrumentReturns extends BinaryenPass {
  /** Parent pass. */
  parentPass: ShadowStackPass;
  /** Frame size of the current function being processed. */
  frameSize: i32 = 0;

  constructor(shadowStack: ShadowStackPass) {
    super(shadowStack.module);
    this.parentPass = shadowStack;
  }

  /** @override */
  visitReturn(ret: BinaryenExpressionRef): void {
    assert(this.frameSize);
    var module = this.module;
    var value = _BinaryenReturnGetValue(ret);
    var stmts = new Array<BinaryenExpressionRef>();
    if (value) {
      let returnType = _BinaryenExpressionGetType(value);
      let temp = this.parentPass.getSharedTemp(this.currentFunction, returnType);
      // t = value
      stmts.push(
        module.local_set(temp, value)
      );
      // __stackptr += frameSize
      stmts.push(
        this.parentPass.makeModifyStackptr(this.frameSize)
      );
      // return t
      _BinaryenReturnSetValue(ret, module.local_get(temp, returnType));
    } else {
      // __stackptr += frameSize
      stmts.push(
        this.parentPass.makeModifyStackptr(this.frameSize)
      );
      // return
    }
    stmts.push(
      ret
    );
    this.replaceCurrent(module.flatten(stmts, NativeType.Unreachable));
  }
}
