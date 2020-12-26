/**
 * @fileoverview Shadow stack instrumentation for a precise GC / TriCMS.
 * 
 * Instruments function arguments and local sets marked as being 'managed' by
 * the generator to also do stores to a respective emulated shadow stack slot
 * while maintaining two halves of a stack frame pre- and post-call.
 * 
 * Consider a simple call to a function looking like the following, taking
 * managed values as arguments, with the function assigning managed values to
 * locals in its body:
 * 
 *   function foo(a: Obj, b: Obj): Obj {
 *     var c = __managed(a) // slot 2
 *     __collect()
 *     return b
 *   }
 *   
 *   foo(__managed(a), __managed(b)) // slot 0, 1
 * 
 * The two halves of the GC-relevant stack frame for `foo` look like:
 * 
 *   Offset | Value stored
 *   -------|---------------------------
 *      0   | First managed argument 'a'
 *      4   | Second managed argument 'b'
 *   -------|----------------------------
 *      8   | First managed local 'c'
 * 
 * We are maintaining two halves here because the first half is simpler plus we
 * need to do it anyway for indirect calls, where both halves are only known
 * separately. Note that the first half is necessary due to execution order of
 * function arguments, where each argument may be arbitrarily complex and
 * trigger GC while evaluating. In the example above, we must place 'a' on the
 * stack before evaluating 'b', which may trigger GC while executing.
 * 
 * Instrumentation done below looks like this:
 * 
 *   function foo(a: usize, b: usize): usize { // frameSize = 4
 *     memory.fill(__stackptr -= 4, 0, 4)
       store<usize>(__stackptr, c = a, 0)
 *     __collect()
 *     var t = b
 *     __stackptr += 4
 *     return t
 *   }
 * 
 *   (
 *     t = foo(
 *       (
 *         t = a,
 *         __stackptr -= 4,
 *         store<usize>(__stackptr, t, 0),
 *         t
 *       ),
 *       (
 *         t = b,
 *         __stackptr -= 4,
 *         store<usize>(__stackptr, b, 4),
 *         t
 *       )
 *     ),
 *     __stackptr += 8,
 *     t
 *   )
 * 
 * @license Apache-2.0
 */

import {
  BinaryenPass
} from "./pass";

import {
  BinaryenExpressionRef,
  BinaryenFunctionRef,
  BinaryenIndex,
  BinaryenType,
  _BinaryenAddFunction,
  _BinaryenCallGetNumOperands,
  _BinaryenCallGetOperandAt,
  _BinaryenCallGetTarget,
  _BinaryenCallSetOperandAt,
  _BinaryenExpressionGetId,
  _BinaryenExpressionGetType,
  _BinaryenFunctionGetBody,
  _BinaryenFunctionGetName,
  _BinaryenFunctionGetNumLocals,
  _BinaryenFunctionGetNumVars,
  _BinaryenFunctionGetParams,
  _BinaryenFunctionGetResults,
  _BinaryenFunctionGetVar,
  _BinaryenFunctionSetBody,
  _BinaryenLocalSetGetIndex,
  _BinaryenLocalSetGetValue,
  _BinaryenLocalSetIsTee,
  _BinaryenRemoveFunction,
  _BinaryenReturnGetValue,
  _BinaryenReturnSetValue,
  _free
} from "../glue/binaryen";

import {
  BinaryOp,
  ExpressionId,
  Module,
  NativeType,
  readString,
  allocPtrArray
} from "../module";

import {
  Options
} from "../compiler";

import {
  Feature
} from "../common";

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
  /** Compiler options. */
  options: Options;

  constructor(module: Module, options: Options) {
    super(module);
    this.options = options;
  }

  /** Target pointer type. */
  get ptrType(): NativeType { return this.options.nativeSizeType; }
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
    let numLocals = _BinaryenFunctionGetNumLocals(func);
    let localIndex = numLocals + tempMap.size;
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

  /** Updates a function with additional locals etc. */
  updateFunction(func: BinaryenFunctionRef): void {
    let name = _BinaryenFunctionGetName(func);
    let params = _BinaryenFunctionGetParams(func);
    let results = _BinaryenFunctionGetResults(func);
    let body = assert(_BinaryenFunctionGetBody(func));
    let numVars = _BinaryenFunctionGetNumVars(func);
    let vars = new Array<NativeType>();
    for (let i: BinaryenIndex = 0; i < numVars; ++i) {
      vars[i] = _BinaryenFunctionGetVar(func, i);
    }
    let tempMaps = this.tempMaps;
    if (tempMaps.has(func)) {
      let tempMap = changetype<TempMap>(tempMaps.get(func));
      for (let _keys = Map_keys(tempMap), i = 0, k = _keys.length; i < k; ++i) {
        vars.push(_keys[i]);
      }
    }
    let moduleRef = this.module.ref;
    _BinaryenRemoveFunction(moduleRef, name);
    let cArr = allocPtrArray(vars);
    _BinaryenAddFunction(moduleRef, name, params, results, cArr, vars.length, body);
    _free(cArr);
  }

  /** @override */
  walkModule(): void {
    // Run the pass normally
    super.walkModule();

    // Instrument returns in functions utilizing stack slots
    var module = this.module;
    var instrumentReturns = new InstrumentReturns(this);
    for (let _keys = Map_keys(this.slotMaps), i = 0, k = _keys.length; i < k; ++i) {
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
      if (this.options.hasFeature(Feature.BULK_MEMORY)) {
        stmts.push(
          module.memory_fill(
            module.global_get(STACKPTR, this.ptrType),
            module.i32(0), // TODO: Wasm64 also i32?
            this.ptrConst(frameSize)
          )
        );
      } else {
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
          remain -= 8;
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

    // Update functions we added more locals to
    // TODO: _BinaryenFunctionAddVar ?
    for (let _keys = Map_keys(this.tempMaps), i = 0, k = _keys.length; i < k; ++i) {
      this.updateFunction(_keys[i]);
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
