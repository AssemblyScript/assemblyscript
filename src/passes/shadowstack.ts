/**
 * @fileoverview Shadow stack instrumentation for a precise GC.
 * 
 * Instruments function arguments and local assignments marked with a 'tostack'
 * call to also do stores to a shadow stack of managed values only.
 * 
 * Consider a simple call to a function looking like the following, taking
 * managed arguments, plus assigning managed values to locals:
 * 
 *   function foo(a: Obj, b: Obj): Obj {
 *     var c = __tostack(a) // slot 2
 *     __collect()
 *     return b
 *   }
 *   
 *   foo(__tostack(a), __tostack(b)) // slot 0, 1
 * 
 * At the call to `__collect()` the 32-bit stack frame of the function is:
 * 
 *   Offset | Value stored
 *   -------|----------------------------
 *      0   | First managed argument 'a'
 *      4   | Second managed argument 'b'
 *   -------|----------------------------
 *      8   | First managed local 'c'
 * 
 * We are splitting the frame in two halves as annotated since both halves are
 * only known separately for indirect calls, with the first half becoming an
 * extension of the calling function's stack frame by means of treating the
 * arguments as if these were locals beyond the caller's `numLocals`. Function
 * arguments stay a bit longer on the stack than usually, but we also don't have
 * to modify the stack pointer pre-call at all this way. The caller's amended
 * stack frame when assuming one managed local may look like this:
 * 
 *   Offset | Value stored
 *   -------|----------------------------
 *      0   | First managed local '?'
 *      4   | Extended with first managed argument 'a'
 *      8   | Extended with second managed argument 'b'
 * 
 * with the callee's stack frame becoming just:
 * 
 *   Offset | Value stored
 *   -------|----------------------------
 *      0   | First managed local 'c'
 * 
 * Instrumentation added below looks about like the following, with the stack
 * growing downwards and 't' and 'r' being new temporary locals:
 * 
 *   // callee frameSize = 1 * sizeof<usize>()
 *   function foo(a: usize, b: usize): usize {
 *     memory.fill(__stack_pointer -= frameSize, 0, frameSize)
 *     store<usize>(__stack_pointer, c = a, 0 * sizeof<usize>())
 *     __collect()
 *     var r = b
 *     __stack_pointer += frameSize
 *     return r
 *   }
 * 
 *   // caller frameSize = (numLocalSlots + 2 [by extension]) * sizeof<usize>()
 *   (
 *     r = foo(
 *       ( t = a,
 *         store<usize>(__stack_pointer, t, (numLocalSlots + 0) * sizeof<usize>()),
 *         t ),
 *       ( t = b,
 *         store<usize>(__stack_pointer, t, (numLocalSlots + 1) * sizeof<usize>()),
 *         t )
 *     ),
 *     r
 *   )
 * 
 * Also note that we have to `memory.fill` the second half because the first
 * assignment to a local may happen at a later point within the function. The
 * invariant we need to maintain for a precise GC is that it only sees zeroes
 * or valid pointers, but never an invalid pointer left on the stack earlier.
 * Since most frames are small, we unroll a sequence of `store`s up to a frame
 * size of 16 bytes, and `memory.fill`, if available, beyond.
 * 
 * @license Apache-2.0
 */

import {
  Pass
} from "./pass";

import {
  _BinaryenAddFunction,
  _BinaryenAddFunctionExport,
  _BinaryenCallGetNumOperands,
  _BinaryenCallGetOperandAt,
  _BinaryenCallGetTarget,
  _BinaryenCallIndirectGetNumOperands,
  _BinaryenCallIndirectGetOperandAt,
  _BinaryenCallIndirectSetOperandAt,
  _BinaryenCallSetOperandAt,
  _BinaryenExportGetKind,
  _BinaryenExportGetName,
  _BinaryenExportGetValue,
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
  _BinaryenGetExport,
  _BinaryenGetFunction,
  _BinaryenLocalSetGetIndex,
  _BinaryenLocalSetGetValue,
  _BinaryenLocalSetIsTee,
  _BinaryenLocalSetSetValue,
  _BinaryenRemoveExport,
  _BinaryenRemoveFunction,
  _BinaryenReturnGetValue,
  _BinaryenReturnSetValue,
  _free
} from "../glue/binaryen";

import {
  ExpressionId,
  ExpressionRef,
  FunctionRef,
  Index,
  BinaryOp,
  NativeType,
  allocPtrArray,
  Module,
  ExternalKind,
  ExportRef,
  expandType,
  isConstZero
} from "../module";

import {
  Compiler,
  Options
} from "../compiler";

import {
  Feature
} from "../common";

import {
  BuiltinNames
} from "../builtins";

type LocalIndex = Index;
type SlotIndex = Index;
type SlotMap = Map<LocalIndex,SlotIndex>;
type TempMap = Map<NativeType,LocalIndex>;

/** Attempts to match the `__tostack(value)` pattern. Returns `value` if a match, otherwise `0`.  */
function matchPattern(module: Module, expr: ExpressionRef): ExpressionRef {
  if (_BinaryenExpressionGetId(expr) == ExpressionId.Call && module.readStringCached(_BinaryenCallGetTarget(expr)) == BuiltinNames.tostack) {
    assert(_BinaryenCallGetNumOperands(expr) == 1);
    return _BinaryenCallGetOperandAt(expr, 0);
  }
  return 0;
}

/** Tests whether a `value` matched by `matchTostack` needs a slot. */
function needsSlot(module: Module, value: ExpressionRef): bool {
  switch (_BinaryenExpressionGetId(value)) {
    // no need to stack null pointers
    case ExpressionId.Const: return !isConstZero(value);
    // already kept in another slot
    case ExpressionId.LocalGet:
    case ExpressionId.LocalSet: return false; // tee
  }
  return true;
}

/** Instruments a module with a shadow stack for precise GC. */
export class ShadowStackPass extends Pass {
  /** Stack frame slots, per function. */
  slotMaps: Map<FunctionRef, SlotMap> = new Map();
  /** Temporary locals, per function. */
  tempMaps: Map<FunctionRef, TempMap> = new Map();
  /** Exports (with managed operands) map. */
  exportMap: Map<string,i32[]> = new Map();
  /** Compiler reference. */
  compiler: Compiler;

  constructor(compiler: Compiler) {
    super(compiler.module);
    this.compiler = compiler;
  }

  /** Compiler options. */
  get options(): Options { return this.compiler.options; }
  /** Target pointer type. */
  get ptrType(): NativeType { return this.options.nativeSizeType; }
  /** Target pointer size. */
  get ptrSize(): i32 { return this.ptrType == NativeType.I64 ? 8 : 4; }
  /** Target pointer addition operation. */
  get ptrBinaryAdd(): BinaryOp { return this.ptrType == NativeType.I64 ? BinaryOp.AddI64 : BinaryOp.AddI32; }
  /** Target pointer subtraction operation. */
  get ptrBinarySub(): BinaryOp { return this.ptrType == NativeType.I64 ? BinaryOp.SubI64 : BinaryOp.SubI32; }

  /** Gets a constant with the specified value of the target pointer type. */
  ptrConst(value: i32): ExpressionRef {
    return this.ptrType == NativeType.I64
      ? this.module.i64(value)
      : this.module.i32(value);
  }

  /** Notes the presence of a slot for the specified (imaginary) local, returning the slot index. */
  noteSlot(func: FunctionRef, localIndex: Index): i32 {
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

  /** Notes the presence of an exported function taking managed operands. */
  noteExport(name: string, managedOperandIndices: i32[]): void {
    if (!managedOperandIndices.length) return;
    this.exportMap.set(name, managedOperandIndices);
  }

  /** Gets a shared temporary local of the given type in the specified functions. */
  getSharedTemp(func: FunctionRef, type: NativeType): Index {
    let tempMap: TempMap;
    if (this.tempMaps.has(func)) {
      tempMap = changetype<TempMap>(this.tempMaps.get(func));
      if (tempMap.has(type)) {
        return changetype<Index>(tempMap.get(type));
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
  makeStackOffset(offset: i32): ExpressionRef {
    assert(offset != 0);
    var module = this.module;
    var expr = module.global_set(BuiltinNames.stack_pointer,
      module.binary(offset >= 0 ? this.ptrBinaryAdd : this.ptrBinarySub,
        module.global_get(BuiltinNames.stack_pointer, this.ptrType),
        this.ptrConst(abs(offset))
      )
    );
    if (offset > 0) return expr;
    return module.block(null, [
      expr,
      this.makeStackCheck()
    ], NativeType.None);
  }

  /** Makes a sequence of expressions zeroing the stack frame. */
  makeStackFill(frameSize: i32, stmts: ExpressionRef[]): void {
    assert(frameSize > 0);
    var module = this.module;
    if (this.options.hasFeature(Feature.BULK_MEMORY) && frameSize > 16) {
      stmts.push(
        module.memory_fill(
          module.global_get(BuiltinNames.stack_pointer, this.ptrType),
          module.i32(0), // TODO: Wasm64 also i32?
          this.ptrConst(frameSize)
        )
      );
    } else {
      let remain = frameSize;
      while (remain >= 8) {
        // store<i64>(__stack_pointer, 0, frameSize - remain)
        stmts.push(
          module.store(8,
            module.global_get(BuiltinNames.stack_pointer, this.ptrType),
            module.i64(0),
            NativeType.I64,
            frameSize - remain
          )
        );
        remain -= 8;
      }
      if (remain) {
        assert(remain == 4);
        // store<i32>(__stack_pointer, 0, frameSize - remain)
        stmts.push(
          module.store(4,
            module.global_get(BuiltinNames.stack_pointer, this.ptrType),
            module.i32(0),
            NativeType.I32,
            frameSize - remain
          )
        );
      }
    }
  }

  private hasStackCheckFunction: bool = false;

  /** Makes a check that the current stack pointer is valid. */
  makeStackCheck(): ExpressionRef {
    var module = this.module;
    if (!this.hasStackCheckFunction) {
      this.hasStackCheckFunction = true;
      module.addFunction("~stack_check", NativeType.None, NativeType.None, null,
        module.if(
          module.binary(BinaryOp.LtI32,
            module.global_get(BuiltinNames.stack_pointer, this.ptrType),
            module.global_get(BuiltinNames.data_end, this.ptrType)
          ),
          this.compiler.makeStaticAbort(this.compiler.ensureStaticString("stack overflow"), this.compiler.program.nativeSource)
        )
      );
    }
    return module.call("~stack_check", null, NativeType.None);
  }

  private updateCallOperands(operands: ExpressionRef[]): i32 {
    var module = this.module;
    var numSlots = 0;
    for (let i = 0, k = operands.length; i < k; ++i) {
      let operand = operands[i];
      let match = matchPattern(module, operand);
      if (!match) continue;
      if (!needsSlot(module, match)) {
        operands[i] = match;
        continue;
      }
      let currentFunction = this.currentFunction;
      let numLocals = _BinaryenFunctionGetNumLocals(currentFunction);
      let slotIndex = this.noteSlot(currentFunction, numLocals + this.callSlotOffset + i);
      let temp = this.getSharedTemp(currentFunction, this.ptrType);
      let stmts = new Array<ExpressionRef>();
      // t = value
      stmts.push(
        module.local_set(temp, match, false)
      );
      // store<usize>(__stack_pointer, t, slotIndex * ptrSize)
      stmts.push(
        module.store(this.ptrSize,
          module.global_get(BuiltinNames.stack_pointer, this.ptrType),
          module.local_get(temp, this.ptrType),
          this.ptrType, slotIndex * this.ptrSize
        )
      );
      // -> t
      stmts.push(
        module.local_get(temp, this.ptrType)
      );
      operands[i] = module.block(null, stmts, this.ptrType);
      ++numSlots;
    }
    return numSlots;
  }

  /** Slot offset accounting for nested calls. */
  private callSlotOffset: i32 = 0;
  /** Slot offset stack in nested calls. */
  private callSlotStack: i32[] = new Array();

  /** @override */
  visitCallPre(call: ExpressionRef): void {
    var numOperands = _BinaryenCallGetNumOperands(call);
    var operands = new Array<ExpressionRef>(numOperands);
    for (let i: Index = 0; i < numOperands; ++i) {
      operands[i] = _BinaryenCallGetOperandAt(call, i);
    }
    let numSlots = this.updateCallOperands(operands);
    for (let i = 0, k = operands.length; i < k; ++i) {
      _BinaryenCallSetOperandAt(call, i, operands[i]);
    }
    if (numSlots) {
      // Reserve these slots for us so nested calls use their own
      this.callSlotOffset += numSlots;
    }
    this.callSlotStack.push(numSlots);
  }

  /** @override */
  visitCall(call: ExpressionRef): void {
    let numSlots = this.callSlotStack.pop();
    if (numSlots) this.callSlotOffset -= numSlots;
  }

  /** @override */
  visitCallIndirectPre(callIndirect: ExpressionRef): void {
    let numOperands = _BinaryenCallIndirectGetNumOperands(callIndirect);
    let operands = new Array<ExpressionRef>(numOperands);
    for (let i: Index = 0; i < numOperands; ++i) {
      operands[i] = _BinaryenCallIndirectGetOperandAt(callIndirect, i);
    }
    let numSlots = this.updateCallOperands(operands);
    for (let i = 0, k = operands.length; i < k; ++i) {
      _BinaryenCallIndirectSetOperandAt(callIndirect, i, operands[i]);
    }
    if (numSlots) {
      // Reserve these slots for us so nested calls use their own
      this.callSlotOffset += numSlots;
    }
    this.callSlotStack.push(numSlots);
  }

  /** @override */
  visitCallIndirect(callIndirect: ExpressionRef): void {
    let numSlots = this.callSlotStack.pop();
    if (numSlots) this.callSlotOffset -= numSlots;
  }

  /** @override */
  visitLocalSet(localSet: ExpressionRef): void {
    let module = this.module;
    let value = _BinaryenLocalSetGetValue(localSet);
    let match = matchPattern(module, value);
    if (!match) return;
    if (!needsSlot(module, match)) {
      _BinaryenLocalSetSetValue(localSet, match);
      return;
    }
    let index = _BinaryenLocalSetGetIndex(localSet);
    let slotIndex = this.noteSlot(this.currentFunction, index);
    let stmts = new Array<ExpressionRef>();
    // store<usize>(__stack_pointer, local = match, slotIndex * ptrSize)
    stmts.push(
      module.store(this.ptrSize,
        module.global_get(BuiltinNames.stack_pointer, this.ptrType),
        module.local_tee(index, match, false),
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
  updateFunction(funcRef: FunctionRef): void {
    let name = _BinaryenFunctionGetName(funcRef);
    let params = _BinaryenFunctionGetParams(funcRef);
    let results = _BinaryenFunctionGetResults(funcRef);
    let body = assert(_BinaryenFunctionGetBody(funcRef));
    let numVars = _BinaryenFunctionGetNumVars(funcRef);
    let vars = new Array<NativeType>();
    for (let i: Index = 0; i < numVars; ++i) {
      vars[i] = _BinaryenFunctionGetVar(funcRef, i);
    }
    let tempMaps = this.tempMaps;
    if (tempMaps.has(funcRef)) {
      let tempMap = changetype<TempMap>(tempMaps.get(funcRef));
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

  /** Updates a function export taking managed arguments. */
  updateExport(exportRef: ExportRef, managedOperandIndices: i32[]): void {
    var module = this.module;
    var moduleRef = module.ref;
    assert(_BinaryenExportGetKind(exportRef) == ExternalKind.Function);

    var internalNameRef = _BinaryenExportGetValue(exportRef);
    var internalName = module.readStringCached(internalNameRef)!;
    var externalNameRef = _BinaryenExportGetName(exportRef);
    var funcRef = _BinaryenGetFunction(moduleRef, internalNameRef);
    var params = _BinaryenFunctionGetParams(funcRef);
    var paramTypes = expandType(params);
    var numParams = paramTypes.length;
    var results = _BinaryenFunctionGetResults(funcRef);
    var numLocals = numParams;
    var vars = new Array<NativeType>();
    var numSlots = assert(managedOperandIndices.length);
    var frameSize = numSlots * this.ptrSize;
    var wrapperName = "export:" + internalName;
    var wrapperNameRef = module.allocStringCached(wrapperName);

    if (_BinaryenGetFunction(moduleRef, wrapperNameRef) == 0) {
      let stmts = new Array<ExpressionRef>();
      // __stack_pointer -= frameSize
      stmts.push(
        this.makeStackOffset(-frameSize)
      );
      for (let slotIndex = 0; slotIndex < numSlots; ++slotIndex) {
        // store<usize>(__stack_pointer, $local, slotIndex * ptrSize)
        stmts.push(
          module.store(this.ptrSize,
            module.global_get(BuiltinNames.stack_pointer, this.ptrType),
            module.local_get(managedOperandIndices[slotIndex], this.ptrType),
            this.ptrType, slotIndex * this.ptrSize
          )
        );
      }
      let forwardedOperands = new Array<ExpressionRef>(numParams);
      for (let i = 0; i < numParams; ++i) {
        forwardedOperands[i] = module.local_get(i, paramTypes[i]);
      }
      if (results != NativeType.None) {
        let tempIndex = numLocals++;
        vars.push(results);
        // t = original(...)
        stmts.push(
          module.local_set(tempIndex,
            module.call(internalName, forwardedOperands, results),
            false // internal
          )
        );
        // __stack_pointer += frameSize
        stmts.push(
          this.makeStackOffset(+frameSize)
        );
        // -> t
        stmts.push(
          module.local_get(tempIndex, results)
        );
      } else {
        // original(...)
        stmts.push(
          module.call(internalName, forwardedOperands, results)
        );
        // __stack_pointer += frameSize
        stmts.push(
          this.makeStackOffset(+frameSize)
        );
      }
      let cArr = allocPtrArray(vars);
      _BinaryenAddFunction(moduleRef, wrapperNameRef, params, results, cArr, vars.length,
        module.block(null, stmts, results)
      );
      _free(cArr);
    }
    _BinaryenRemoveExport(moduleRef, externalNameRef);
    _BinaryenAddFunctionExport(moduleRef, wrapperNameRef, externalNameRef);
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
      let stmts = new Array<ExpressionRef>();
      // __stack_pointer -= frameSize
      stmts.push(
        this.makeStackOffset(-frameSize)
      );
      // memory.fill(__stack_pointer, 0, frameSize)
      this.makeStackFill(frameSize, stmts);
      
      // Handle implicit return
      let body = _BinaryenFunctionGetBody(func);
      let bodyType = _BinaryenExpressionGetType(body);
      if (bodyType == NativeType.Unreachable) {
        // body
        stmts.push(
          body
        );
      } else if (bodyType == NativeType.None) {
        // body
        stmts.push(
          body
        );
        // __stack_pointer += frameSize
        stmts.push(
          this.makeStackOffset(+frameSize)
        );
      } else {
        let temp = this.getSharedTemp(func, bodyType);
        // t = body
        stmts.push(
          module.local_set(temp, body, false)
        );
        // __stack_pointer += frameSize
        stmts.push(
          this.makeStackOffset(+frameSize)
        );
        // -> t
        stmts.push(
          module.local_get(temp, bodyType)
        );
      }
      _BinaryenFunctionSetBody(func, module.flatten(stmts, bodyType));
    }

    // Update functions we added more locals to
    // TODO: _BinaryenFunctionAddVar ?
    for (let _keys = Map_keys(this.tempMaps), i = 0, k = _keys.length; i < k; ++i) {
      this.updateFunction(_keys[i]);
    }

    // Update exports taking managed arguments
    var exportMap = this.exportMap;
    for (let _keys = Map_keys(exportMap), i = 0, k = _keys.length; i < k; ++i) {
      let exportName = _keys[i];
      let exportRef = _BinaryenGetExport(module.ref, module.allocStringCached(exportName));
      let managedOperandIndices = changetype<i32[]>(exportMap.get(exportName));
      this.updateExport(exportRef, managedOperandIndices);
    }
  }
}

/** Companion pass instrumenting `return` statements to restore the stack frame. */
class InstrumentReturns extends Pass {
  /** Parent pass. */
  parentPass: ShadowStackPass;
  /** Frame size of the current function being processed. */
  frameSize: i32 = 0;

  constructor(shadowStack: ShadowStackPass) {
    super(shadowStack.module);
    this.parentPass = shadowStack;
  }

  /** @override */
  visitReturn(ret: ExpressionRef): void {
    assert(this.frameSize);
    var module = this.module;
    var value = _BinaryenReturnGetValue(ret);
    var stmts = new Array<ExpressionRef>();
    if (value) {
      let returnType = _BinaryenExpressionGetType(value);
      let temp = this.parentPass.getSharedTemp(this.currentFunction, returnType);
      // t = value
      stmts.push(
        module.local_set(temp, value, false)
      );
      // __stack_pointer += frameSize
      stmts.push(
        this.parentPass.makeStackOffset(+this.frameSize)
      );
      // return t
      _BinaryenReturnSetValue(ret, module.local_get(temp, returnType));
    } else {
      // __stack_pointer += frameSize
      stmts.push(
        this.parentPass.makeStackOffset(+this.frameSize)
      );
      // return
    }
    stmts.push(
      ret
    );
    this.replaceCurrent(module.flatten(stmts, NativeType.Unreachable));
  }
}