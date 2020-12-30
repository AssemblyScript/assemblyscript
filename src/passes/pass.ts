/**
 * @fileoverview Infrastructure for custom Binaryen passes.
 * @license Apache-2.0
 */

import {
  ExpressionId,
  Module
} from "../module";

import {
  BinaryenExpressionRef,
  BinaryenFunctionRef,
  BinaryenGlobalRef,
  BinaryenIndex,
  BinaryenString,
  _BinaryenExpressionGetId,
  _BinaryenBlockGetNumChildren,
  _BinaryenBlockGetChildAt,
  _BinaryenIfGetCondition,
  _BinaryenIfGetIfTrue,
  _BinaryenIfGetIfFalse,
  _BinaryenLoopGetBody,
  _BinaryenBreakGetCondition,
  _BinaryenBreakGetValue,
  _BinaryenGetNumFunctions,
  _BinaryenGetFunctionByIndex,
  _BinaryenFunctionGetBody,
  _BinaryenSwitchGetCondition,
  _BinaryenSwitchGetValue,
  _BinaryenCallGetNumOperands,
  _BinaryenCallGetOperandAt,
  _BinaryenCallIndirectGetNumOperands,
  _BinaryenCallIndirectGetOperandAt,
  _BinaryenLocalSetGetValue,
  _BinaryenGlobalSetGetValue,
  _BinaryenGlobalGetInitExpr,
  _BinaryenLoadGetPtr,
  _BinaryenStoreGetPtr,
  _BinaryenStoreGetValue,
  _BinaryenUnaryGetValue,
  _BinaryenBinaryGetLeft,
  _BinaryenBinaryGetRight,
  _BinaryenSelectGetIfTrue,
  _BinaryenSelectGetIfFalse,
  _BinaryenSelectGetCondition,
  _BinaryenDropGetValue,
  _BinaryenBlockSetChildAt,
  _BinaryenCallIndirectGetTarget,
  _BinaryenReturnGetValue,
  _BinaryenMemoryGrowGetDelta,
  _BinaryenAtomicRMWGetPtr,
  _BinaryenAtomicRMWGetValue,
  _BinaryenAtomicCmpxchgGetPtr,
  _BinaryenAtomicCmpxchgGetExpected,
  _BinaryenAtomicCmpxchgGetReplacement,
  _BinaryenAtomicWaitGetPtr,
  _BinaryenAtomicWaitGetExpected,
  _BinaryenAtomicWaitGetTimeout,
  _BinaryenAtomicNotifyGetPtr,
  _BinaryenSIMDExtractGetVec,
  _BinaryenSIMDReplaceGetVec,
  _BinaryenSIMDReplaceGetValue,
  _BinaryenSIMDShuffleGetLeft,
  _BinaryenSIMDShuffleGetRight,
  _BinaryenSIMDTernaryGetA,
  _BinaryenSIMDTernaryGetB,
  _BinaryenSIMDTernaryGetC,
  _BinaryenSIMDShiftGetVec,
  _BinaryenSIMDShiftGetShift,
  _BinaryenSIMDLoadGetPtr,
  _BinaryenMemoryInitGetDest,
  _BinaryenMemoryInitGetOffset,
  _BinaryenMemoryInitGetSize,
  _BinaryenMemoryCopyGetDest,
  _BinaryenMemoryCopyGetSource,
  _BinaryenMemoryCopyGetSize,
  _BinaryenMemoryFillGetDest,
  _BinaryenMemoryFillGetValue,
  _BinaryenMemoryFillGetSize,
  _BinaryenRefIsNullGetValue,
  _BinaryenTryGetBody,
  _BinaryenTryGetCatchBody,
  _BinaryenThrowGetNumOperands,
  _BinaryenThrowGetOperandAt,
  _BinaryenRethrowGetExnref,
  _BinaryenBrOnExnGetExnref,
  _BinaryenTupleMakeGetOperandAt,
  _BinaryenTupleMakeGetNumOperands,
  _BinaryenIfSetCondition,
  _BinaryenIfSetIfTrue,
  _BinaryenIfSetIfFalse,
  _BinaryenLoopSetBody,
  _BinaryenBreakSetCondition,
  _BinaryenBreakSetValue,
  _BinaryenSwitchSetCondition,
  _BinaryenSwitchSetValue,
  _BinaryenCallSetOperandAt,
  _BinaryenCallIndirectSetTarget,
  _BinaryenCallIndirectSetOperandAt,
  _BinaryenLocalSetSetValue,
  _BinaryenGlobalSetSetValue,
  _BinaryenLoadSetPtr,
  _BinaryenStoreSetPtr,
  _BinaryenStoreSetValue,
  _BinaryenUnarySetValue,
  _BinaryenExpressionFinalize,
  _BinaryenBinarySetLeft,
  _BinaryenBinarySetRight,
  _BinaryenSelectSetIfTrue,
  _BinaryenSelectSetIfFalse,
  _BinaryenSelectSetCondition,
  _BinaryenDropSetValue,
  _BinaryenReturnSetValue,
  _BinaryenMemoryGrowSetDelta,
  _BinaryenAtomicRMWSetPtr,
  _BinaryenAtomicRMWSetValue,
  _BinaryenAtomicCmpxchgSetPtr,
  _BinaryenAtomicCmpxchgSetExpected,
  _BinaryenAtomicCmpxchgSetReplacement,
  _BinaryenAtomicWaitSetPtr,
  _BinaryenAtomicWaitSetExpected,
  _BinaryenAtomicWaitSetTimeout,
  _BinaryenAtomicNotifySetPtr,
  _BinaryenSIMDExtractSetVec,
  _BinaryenSIMDReplaceSetVec,
  _BinaryenSIMDReplaceSetValue,
  _BinaryenSIMDShuffleSetLeft,
  _BinaryenSIMDShuffleSetRight,
  _BinaryenSIMDTernarySetA,
  _BinaryenSIMDTernarySetB,
  _BinaryenSIMDTernarySetC,
  _BinaryenSIMDShiftSetVec,
  _BinaryenSIMDShiftSetShift,
  _BinaryenSIMDLoadSetPtr,
  _BinaryenMemoryInitSetDest,
  _BinaryenMemoryInitSetOffset,
  _BinaryenMemoryInitSetSize,
  _BinaryenMemoryCopySetDest,
  _BinaryenMemoryCopySetSource,
  _BinaryenMemoryCopySetSize,
  _BinaryenMemoryFillSetDest,
  _BinaryenMemoryFillSetValue,
  _BinaryenMemoryFillSetSize,
  _BinaryenRefIsNullSetValue,
  _BinaryenTrySetBody,
  _BinaryenTrySetCatchBody,
  _BinaryenThrowSetOperandAt,
  _BinaryenRethrowSetExnref,
  _BinaryenBrOnExnSetExnref,
  _BinaryenTupleMakeSetOperandAt,
  _BinaryenBlockGetName,
  _BinaryenLoopGetName,
  _BinaryenBreakGetName,
  _BinaryenSwitchGetDefaultName,
  _BinaryenSwitchGetNumNames,
  _BinaryenSwitchGetNameAt,
  _BinaryenCallGetTarget,
  _BinaryenLocalGetGetIndex,
  _BinaryenLocalSetGetIndex,
  _BinaryenGlobalGetGetName,
  _BinaryenGlobalSetGetName,
  _BinaryenAtomicNotifyGetNotifyCount,
  _BinaryenAtomicNotifySetNotifyCount,
  _BinaryenRefFuncGetFunc,
  _BinaryenThrowGetEvent,
  _BinaryenBrOnExnGetEvent,
  _BinaryenBrOnExnGetName,
  _BinaryenTupleExtractGetTuple,
  _BinaryenTupleExtractSetTuple,
  _BinaryenRefEqGetLeft,
  _BinaryenRefEqGetRight,
  _BinaryenRefEqSetLeft,
  _BinaryenRefEqSetRight,
  _BinaryenFunctionSetBody
} from "../glue/binaryen";

/** Base class of custom Binaryen visitors. */
export abstract class BinaryenVisitor {
  /** Expression stack. */
  private stack: BinaryenExpressionRef[] = new Array<BinaryenExpressionRef>();

  /** Gets the current expression being walked. */
  get currentExpression(): BinaryenExpressionRef {
    var currentExpression = this._currentExpression;
    if (!currentExpression) throw new Error("not walking expressions");
    return currentExpression;
  }
  _currentExpression: BinaryenExpressionRef = 0;

  /** Gets the parent expression of the current expression being walked. Traps if the top-most parent. */
  get parentExpression(): BinaryenExpressionRef {
    var stack = this.stack;
    var length = stack.length;
    if (!length) throw new Error("stack is empty");
    return stack[length - 1];
  }

  visitBlock(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitIf(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitLoop(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitBreak(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitSwitch(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitCallPre(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitCall(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitCallIndirectPre(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitCallIndirect(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitLocalGet(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitLocalSet(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitGlobalGet(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitGlobalSet(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitLoad(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitStore(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitConst(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitUnary(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitBinary(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitSelect(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitDrop(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitReturn(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitMemorySize(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitMemoryGrow(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitNop(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitUnreachable(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitAtomicRMW(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitAtomicCmpxchg(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitAtomicWait(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitAtomicNotify(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitAtomicFence(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitSIMDExtract(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitSIMDReplace(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitSIMDShuffle(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitSIMDTernary(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitSIMDShift(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitSIMDLoad(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitMemoryInit(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitDataDrop(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitMemoryCopy(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitMemoryFill(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitPop(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitRefNull(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitRefIsNull(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitRefFunc(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitRefEq(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitTry(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitThrow(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitRethrow(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitBrOnExn(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitTupleMake(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitTupleExtract(expr: BinaryenExpressionRef): void {
    // unimp
  }

  visitName(name: BinaryenString): void {
    // unimp
  }

  visitLabel(name: BinaryenString): void {
    // unimp
  }

  visitIndex(index: BinaryenIndex): void {
    // unimp
  }

  visitEvent(name: BinaryenString): void {
    // unimp
  }

  /** Visits any expression, delegating to the respective visitor methods. */
  visit(expr: BinaryenExpressionRef): void {
    let previousExpression = this._currentExpression;
    this._currentExpression = expr;
    switch (_BinaryenExpressionGetId(expr)) {
      case ExpressionId.Block: {
        this.stack.push(expr);
        let name = _BinaryenBlockGetName(expr);
        if (name) this.visitLabel(name);
        for (let i: BinaryenIndex = 0, n = _BinaryenBlockGetNumChildren(expr); i < n; ++i) {
          this.visit(_BinaryenBlockGetChildAt(expr, i));
        }
        assert(this.stack.pop() == expr);
        this.visitBlock(expr);
        break;
      }
      case ExpressionId.If: {
        this.stack.push(expr);
        this.visit(_BinaryenIfGetCondition(expr));
        this.visit(_BinaryenIfGetIfTrue(expr));
        let ifFalse = _BinaryenIfGetIfFalse(expr);
        if (ifFalse) this.visit(ifFalse);
        assert(this.stack.pop() == expr);
        this.visitIf(expr);
        break;
      }
      case ExpressionId.Loop: {
        this.stack.push(expr);
        let name = _BinaryenLoopGetName(expr);
        if (name) this.visitLabel(name);
        this.visit(_BinaryenLoopGetBody(expr));
        assert(this.stack.pop() == expr);
        this.visitLoop(expr);
        break;
      }
      case ExpressionId.Break: {
        this.stack.push(expr);
        this.visitLabel(_BinaryenBreakGetName(expr));
        let condition = _BinaryenBreakGetCondition(expr);
        if (condition) this.visit(condition);
        let value = _BinaryenBreakGetValue(expr);
        if (value) this.visit(value);
        assert(this.stack.pop() == expr);
        this.visitBreak(expr);
        break;
      }
      case ExpressionId.Switch: {
        this.stack.push(expr);
        let defaultName = _BinaryenSwitchGetDefaultName(expr);
        if (defaultName) this.visitLabel(defaultName);
        let numNames = _BinaryenSwitchGetNumNames(expr);
        for (let i: BinaryenIndex = 0; i < numNames; ++i) {
          this.visitLabel(_BinaryenSwitchGetNameAt(expr, i));
        }
        this.visit(_BinaryenSwitchGetCondition(expr));
        let value = _BinaryenSwitchGetValue(expr);
        if (value) this.visit(value);
        assert(this.stack.pop() == expr);
        this.visitSwitch(expr);
        break;
      }
      case ExpressionId.Call: {
        this.visitCallPre(expr);
        this.stack.push(expr);
        this.visitName(_BinaryenCallGetTarget(expr));
        let numOperands = _BinaryenCallGetNumOperands(expr);
        for (let i: BinaryenIndex = 0; i < numOperands; ++i) {
          this.visit(_BinaryenCallGetOperandAt(expr, i));
        }
        assert(this.stack.pop() == expr);
        this.visitCall(expr);
        break;
      }
      case ExpressionId.CallIndirect: {
        this.visitCallIndirectPre(expr);
        this.stack.push(expr);
        this.visit(_BinaryenCallIndirectGetTarget(expr));
        for (let i: BinaryenIndex = 0, k = _BinaryenCallIndirectGetNumOperands(expr); i < k; ++i) {
          this.visit(_BinaryenCallIndirectGetOperandAt(expr, i));
        }
        assert(this.stack.pop() == expr);
        this.visitCallIndirect(expr);
        break;
      }
      case ExpressionId.LocalGet: {
        this.stack.push(expr);
        this.visitIndex(_BinaryenLocalGetGetIndex(expr));
        assert(this.stack.pop() == expr);
        this.visitLocalGet(expr);
        break;
      }
      case ExpressionId.LocalSet: {
        this.stack.push(expr);
        this.visitIndex(_BinaryenLocalSetGetIndex(expr));
        this.visit(_BinaryenLocalSetGetValue(expr));
        assert(this.stack.pop() == expr);
        this.visitLocalSet(expr);
        break;
      }
      case ExpressionId.GlobalGet: {
        this.stack.push(expr);
        this.visitName(_BinaryenGlobalGetGetName(expr));
        assert(this.stack.pop() == expr);
        this.visitGlobalGet(expr);
        break;
      }
      case ExpressionId.GlobalSet: {
        this.stack.push(expr);
        this.visitName(_BinaryenGlobalSetGetName(expr));
        this.visit(_BinaryenGlobalSetGetValue(expr));
        assert(this.stack.pop() == expr);
        this.visitGlobalSet(expr);
        break;
      }
      case ExpressionId.Load: {
        this.stack.push(expr);
        this.visit(_BinaryenLoadGetPtr(expr));
        assert(this.stack.pop() == expr);
        this.visitLoad(expr);
        break;
      }
      case ExpressionId.Store: {
        this.stack.push(expr);
        this.visit(_BinaryenStoreGetPtr(expr));
        this.visit(_BinaryenStoreGetValue(expr));
        assert(this.stack.pop() == expr);
        this.visitStore(expr);
        break;
      }
      case ExpressionId.Const: {
        this.visitConst(expr);
        break;
      }
      case ExpressionId.Unary: {
        this.stack.push(expr);
        this.visit(_BinaryenUnaryGetValue(expr));
        assert(this.stack.pop() == expr);
        this.visitUnary(expr);
        break;
      }
      case ExpressionId.Binary: {
        this.stack.push(expr);
        this.visit(_BinaryenBinaryGetLeft(expr));
        this.visit(_BinaryenBinaryGetRight(expr));
        assert(this.stack.pop() == expr);
        this.visitBinary(expr);
        break;
      }
      case ExpressionId.Select: {
        this.stack.push(expr);
        this.visit(_BinaryenSelectGetIfTrue(expr));
        this.visit(_BinaryenSelectGetIfFalse(expr));
        this.visit(_BinaryenSelectGetCondition(expr));
        assert(this.stack.pop() == expr);
        this.visitSelect(expr);
        break;
      }
      case ExpressionId.Drop: {
        this.stack.push(expr);
        this.visit(_BinaryenDropGetValue(expr));
        assert(this.stack.pop() == expr);
        this.visitDrop(expr);
        break;
      }
      case ExpressionId.Return: {
        let value = _BinaryenReturnGetValue(expr);
        if (value) {
          this.stack.push(expr);
          this.visit(value);
          assert(this.stack.pop() == expr);
        }
        this.visitReturn(expr);
        break;
      }
      case ExpressionId.MemorySize: {
        this.visitMemorySize(expr);
        break;
      }
      case ExpressionId.MemoryGrow: {
        this.stack.push(expr);
        this.visit(_BinaryenMemoryGrowGetDelta(expr));
        assert(this.stack.pop() == expr);
        this.visitMemoryGrow(expr);
        break;
      }
      case ExpressionId.Nop: {
        this.visitNop(expr);
        break;
      }
      case ExpressionId.Unreachable: {
        this.visitUnreachable(expr);
        break;
      }
      case ExpressionId.AtomicRMW: {
        this.stack.push(expr);
        this.visit(_BinaryenAtomicRMWGetPtr(expr));
        this.visit(_BinaryenAtomicRMWGetValue(expr));
        assert(this.stack.pop() == expr);
        this.visitAtomicRMW(expr);
        break;
      }
      case ExpressionId.AtomicCmpxchg: {
        this.stack.push(expr);
        this.visit(_BinaryenAtomicCmpxchgGetPtr(expr));
        this.visit(_BinaryenAtomicCmpxchgGetExpected(expr));
        this.visit(_BinaryenAtomicCmpxchgGetReplacement(expr));
        assert(this.stack.pop() == expr);
        this.visitAtomicCmpxchg(expr);
        break;
      }
      case ExpressionId.AtomicWait: {
        this.stack.push(expr);
        this.visit(_BinaryenAtomicWaitGetPtr(expr));
        this.visit(_BinaryenAtomicWaitGetExpected(expr));
        this.visit(_BinaryenAtomicWaitGetTimeout(expr));
        assert(this.stack.pop() == expr);
        this.visitAtomicWait(expr);
        break;
      }
      case ExpressionId.AtomicNotify: {
        this.stack.push(expr);
        this.visit(_BinaryenAtomicNotifyGetPtr(expr));
        this.visit(_BinaryenAtomicNotifyGetNotifyCount(expr));
        assert(this.stack.pop() == expr);
        this.visitAtomicNotify(expr);
        break;
      }
      case ExpressionId.AtomicFence: {
        this.visitAtomicFence(expr);
        break;
      }
      case ExpressionId.SIMDExtract: {
        this.stack.push(expr);
        this.visit(_BinaryenSIMDExtractGetVec(expr));
        assert(this.stack.pop() == expr);
        this.visitSIMDExtract(expr);
        break;
      }
      case ExpressionId.SIMDReplace: {
        this.stack.push(expr);
        this.visit(_BinaryenSIMDReplaceGetVec(expr));
        this.visit(_BinaryenSIMDReplaceGetValue(expr));
        assert(this.stack.pop() == expr);
        this.visitSIMDReplace(expr);
        break;
      }
      case ExpressionId.SIMDShuffle: {
        this.stack.push(expr);
        this.visit(_BinaryenSIMDShuffleGetLeft(expr));
        this.visit(_BinaryenSIMDShuffleGetRight(expr));
        assert(this.stack.pop() == expr);
        this.visitSIMDShuffle(expr);
        break;
      }
      case ExpressionId.SIMDTernary: {
        this.stack.push(expr);
        this.visit(_BinaryenSIMDTernaryGetA(expr));
        this.visit(_BinaryenSIMDTernaryGetB(expr));
        this.visit(_BinaryenSIMDTernaryGetC(expr));
        assert(this.stack.pop() == expr);
        this.visitSIMDTernary(expr);
        break;
      }
      case ExpressionId.SIMDShift: {
        this.stack.push(expr);
        this.visit(_BinaryenSIMDShiftGetVec(expr));
        this.visit(_BinaryenSIMDShiftGetShift(expr));
        assert(this.stack.pop() == expr);
        this.visitSIMDShift(expr);
        break;
      }
      case ExpressionId.SIMDLoad: {
        this.stack.push(expr);
        this.visit(_BinaryenSIMDLoadGetPtr(expr));
        assert(this.stack.pop() == expr);
        this.visitSIMDLoad(expr);
        break;
      }
      // TODO: SIMDLoadStoreLane
      case ExpressionId.MemoryInit: {
        this.stack.push(expr);
        this.visit(_BinaryenMemoryInitGetDest(expr));
        this.visit(_BinaryenMemoryInitGetOffset(expr));
        this.visit(_BinaryenMemoryInitGetSize(expr));
        assert(this.stack.pop() == expr);
        this.visitMemoryInit(expr);
        break;
      }
      case ExpressionId.DataDrop: {
        this.visitDataDrop(expr);
        break;
      }
      case ExpressionId.MemoryCopy: {
        this.stack.push(expr);
        this.visit(_BinaryenMemoryCopyGetDest(expr));
        this.visit(_BinaryenMemoryCopyGetSource(expr));
        this.visit(_BinaryenMemoryCopyGetSize(expr));
        assert(this.stack.pop() == expr);
        this.visitMemoryCopy(expr);
        break;
      }
      case ExpressionId.MemoryFill: {
        this.stack.push(expr);
        this.visit(_BinaryenMemoryFillGetDest(expr));
        this.visit(_BinaryenMemoryFillGetValue(expr));
        this.visit(_BinaryenMemoryFillGetSize(expr));
        assert(this.stack.pop() == expr);
        this.visitMemoryFill(expr);
        break;
      }
      case ExpressionId.Pop: {
        this.visitPop(expr);
        break;
      }
      case ExpressionId.RefNull: {
        this.visitRefNull(expr);
        break;
      }
      case ExpressionId.RefIsNull: {
        this.stack.push(expr);
        this.visit(_BinaryenRefIsNullGetValue(expr));
        assert(this.stack.pop() == expr);
        this.visitRefIsNull(expr);
        break;
      }
      case ExpressionId.RefFunc: {
        this.stack.push(expr);
        this.visitName(_BinaryenRefFuncGetFunc(expr));
        assert(this.stack.pop() == expr);
        this.visitRefFunc(expr);
        break;
      }
      case ExpressionId.RefEq: {
        this.stack.push(expr);
        this.visit(_BinaryenRefEqGetLeft(expr));
        this.visit(_BinaryenRefEqGetRight(expr));
        assert(this.stack.pop() == expr);
        this.visitRefEq(expr);
        break;
      }
      case ExpressionId.Try: {
        this.stack.push(expr);
        this.visit(_BinaryenTryGetBody(expr));
        this.visit(_BinaryenTryGetCatchBody(expr));
        assert(this.stack.pop() == expr);
        this.visitTry(expr);
        break;
      }
      case ExpressionId.Throw: {
        this.stack.push(expr);
        this.visitEvent(_BinaryenThrowGetEvent(expr));
        let numOperands = _BinaryenThrowGetNumOperands(expr);
        for (let i: BinaryenIndex = 0; i < numOperands; ++i) {
          this.visit(_BinaryenThrowGetOperandAt(expr, i));
        }
        assert(this.stack.pop() == expr);
        this.visitThrow(expr);
        break;
      }
      case ExpressionId.Rethrow: {
        this.stack.push(expr);
        this.visit(_BinaryenRethrowGetExnref(expr));
        assert(this.stack.pop() == expr);
        this.visitRethrow(expr);
        break;
      }
      case ExpressionId.BrOnExn: {
        this.stack.push(expr);
        this.visitEvent(_BinaryenBrOnExnGetEvent(expr));
        this.visitLabel(_BinaryenBrOnExnGetName(expr));
        this.visit(_BinaryenBrOnExnGetExnref(expr));
        assert(this.stack.pop() == expr);
        this.visitBrOnExn(expr);
        break;
      }
      case ExpressionId.TupleMake: {
        let numOperands = _BinaryenTupleMakeGetNumOperands(expr);
        if (numOperands) {
          this.stack.push(expr);
          for (let i: BinaryenIndex = 0; i < numOperands; ++i) {
            this.visit(_BinaryenTupleMakeGetOperandAt(expr, i));
          }
          assert(this.stack.pop() == expr);
        }
        this.visitTupleMake(expr);
        break;
      }
      case ExpressionId.TupleExtract: {
        this.stack.push(expr);
        this.visit(_BinaryenTupleExtractGetTuple(expr));
        assert(this.stack.pop() == expr);
        this.visitTupleExtract(expr);
        break;
      }
      default: throw new Error("unexpected expression kind");
    }
    this._currentExpression = previousExpression;
  }
}

/** Base class of custom Binaryen passes. */
export abstract class BinaryenPass extends BinaryenVisitor {

  /** Gets the current function being walked. */
  get currentFunction(): BinaryenFunctionRef {
    var currentFunction = this._currentFunction;
    if (!currentFunction) throw new Error("not walking a function");
    return currentFunction;
  }
  private _currentFunction: BinaryenFunctionRef = 0;

  /** Gets the current global being walked. */
  get currentGlobal(): BinaryenGlobalRef {
    var currentGlobal = this._currentGlobal;
    if (!currentGlobal) throw new Error("not walking a global");
    return currentGlobal;
  }
  private _currentGlobal: BinaryenGlobalRef = 0;

  /** Constructs a new Binaryen pass. */
  constructor(readonly module: Module) {
    super();
  }

  // Walking

  /** Walks the entire module. */
  walkModule(): void {
    this.walkFunctions();
    this.walkGlobals();
  }

  /** Walks all functions. */
  walkFunctions(): void {
    var moduleRef = this.module.ref;
    for (let i: BinaryenIndex = 0, k = _BinaryenGetNumFunctions(moduleRef); i < k; ++i) {
      this.walkFunction(_BinaryenGetFunctionByIndex(moduleRef, i));
    }
  }

  /** Walks a specific function. */
  walkFunction(func: BinaryenFunctionRef): void {
    var body = _BinaryenFunctionGetBody(func);
    if (body) {
      this._currentFunction = func;
      this.visit(body);
      this._currentFunction = 0;
    }
  }

  /** Walks all global variables. */
  walkGlobals(): void {
    // TODO: C-API
    // for (let i: BinaryenIndex = 0, k = _BinaryenGetNumGlobals(moduleRef); i < k; ++i) {
    //   this.walkGlobal(_BinaryenGetGlobalByIndex(moduleRef, i));
    // }
  }

  /** Walks a specific global variable. */
  walkGlobal(global: BinaryenGlobalRef): void {
    this._currentGlobal = global;
    var init = _BinaryenGlobalGetInitExpr(global);
    this.visit(init);
    this._currentGlobal = 0;
  }

  // Utility

  /** Replaces the current expression with the specified replacement. */
  replaceCurrent(replacement: BinaryenExpressionRef): void {
    var search = this.currentExpression;
    var func = this.currentFunction;
    var body = _BinaryenFunctionGetBody(func);
    if (body == search) {
      _BinaryenFunctionSetBody(func, replacement);
    } else {
      var parent = this.parentExpression;
      var replaced = replaceChild(parent, search, replacement);
      if (!replaced) throw Error("failed to replace expression");
      _BinaryenExpressionFinalize(parent);
    }
  }
}

/** Replaces an expression within a parent expression. Returns the replaced expression on success, otherwise `0`. */
export function replaceChild(
  /** Parent expression containing `search`. */
  parent: BinaryenExpressionRef,
  /** Expression to replace. */
  search: BinaryenExpressionRef,
  /** Expression to replace `search` with. */
  replacement: BinaryenExpressionRef
): BinaryenExpressionRef {
  switch (_BinaryenExpressionGetId(parent)) {
    case ExpressionId.Block: {
      let numChildren = _BinaryenBlockGetNumChildren(parent);
      for (let i: BinaryenIndex = 0; i < numChildren; ++i) {
        let child = _BinaryenBlockGetChildAt(parent, i);
        if (child == search) {
          _BinaryenBlockSetChildAt(parent, i, replacement);
          return child;
        }
      }
      break;
    }
    case ExpressionId.If: {
      let condition = _BinaryenIfGetCondition(parent);
      if (condition == search) {
        _BinaryenIfSetCondition(parent, replacement);
        return condition;
      }
      let ifTrue = _BinaryenIfGetIfTrue(parent);
      if (ifTrue == search) {
        _BinaryenIfSetIfTrue(parent, replacement);
        return ifTrue;
      }
      let ifFalse = _BinaryenIfGetIfFalse(parent);
      if (ifFalse == search) {
        _BinaryenIfSetIfFalse(parent, replacement);
        return ifFalse;
      }
      break;
    }
    case ExpressionId.Loop: {
      let body = _BinaryenLoopGetBody(parent);
      if (body == search) {
        _BinaryenLoopSetBody(parent, replacement);
        return body;
      }
      break;
    }
    case ExpressionId.Break: {
      let condition = _BinaryenBreakGetCondition(parent);
      if (condition == search) {
        _BinaryenBreakSetCondition(parent, replacement);
        return condition;
      }
      let value = _BinaryenBreakGetValue(parent);
      if (value == search) {
        _BinaryenBreakSetValue(parent, replacement);
        return value;
      }
      break;
    }
    case ExpressionId.Switch: {
      let condition = _BinaryenSwitchGetCondition(parent);
      if (condition == search) {
        _BinaryenSwitchSetCondition(parent, replacement);
        return condition;
      }
      let value = _BinaryenSwitchGetValue(parent);
      if (value == search) {
        _BinaryenSwitchSetValue(parent, replacement);
        return value;
      }
      break;
    }
    case ExpressionId.Call: {
      let numOperands = _BinaryenCallGetNumOperands(parent);
      for (let i: BinaryenIndex = 0; i < numOperands; ++i) {
        let operand = _BinaryenCallGetOperandAt(parent, i);
        if (operand == search) {
          _BinaryenCallSetOperandAt(parent, i, replacement);
          return operand;
        }
      }
      break;
    }
    case ExpressionId.CallIndirect: {
      let target = _BinaryenCallIndirectGetTarget(parent);
      if (target == search) {
        _BinaryenCallIndirectSetTarget(parent, replacement);
        return target;
      }
      let numOperands = _BinaryenCallIndirectGetNumOperands(parent);
      for (let i: BinaryenIndex = 0; i < numOperands; ++i) {
        let operand = _BinaryenCallIndirectGetOperandAt(parent, i);
        if (operand == search) {
          _BinaryenCallIndirectSetOperandAt(parent, i, replacement);
          return operand;
        }
      }
      break;
    }
    case ExpressionId.LocalGet: {
      break;
    }
    case ExpressionId.LocalSet: {
      let value = _BinaryenLocalSetGetValue(parent);
      if (value == search) {
        _BinaryenLocalSetSetValue(parent, replacement);
        return value;
      }
      break;
    }
    case ExpressionId.GlobalGet: {
      break;
    }
    case ExpressionId.GlobalSet: {
      let value = _BinaryenGlobalSetGetValue(parent);
      if (value == search) {
        _BinaryenGlobalSetSetValue(parent, replacement);
        return value;
      }
      break;
    }
    case ExpressionId.Load: {
      let ptr = _BinaryenLoadGetPtr(parent);
      if (ptr == search) {
        _BinaryenLoadSetPtr(parent, replacement);
        return ptr;
      }
      break;
    }
    case ExpressionId.Store: {
      let ptr = _BinaryenStoreGetPtr(parent);
      if (ptr == search) {
        _BinaryenStoreSetPtr(parent, replacement);
        return ptr;
      }
      let value = _BinaryenStoreGetValue(parent);
      if (value == search) {
        _BinaryenStoreSetValue(parent, replacement);
        return value;
      }
      break;
    }
    case ExpressionId.Const: {
      break;
    }
    case ExpressionId.Unary: {
      let value = _BinaryenUnaryGetValue(parent);
      if (value == search) {
        _BinaryenUnarySetValue(parent, replacement);
        return value;
      }
      break;
    }
    case ExpressionId.Binary: {
      let left = _BinaryenBinaryGetLeft(parent);
      if (left == search) {
        _BinaryenBinarySetLeft(parent, replacement);
        return left;
      }
      let right = _BinaryenBinaryGetRight(parent);
      if (right == search) {
        _BinaryenBinarySetRight(parent, replacement);
        return right;
      }
      break;
    }
    case ExpressionId.Select: {
      let ifTrue = _BinaryenSelectGetIfTrue(parent);
      if (ifTrue == search) {
        _BinaryenSelectSetIfTrue(parent, replacement);
        return ifTrue;
      }
      let ifFalse = _BinaryenSelectGetIfFalse(parent);
      if (ifFalse == search) {
        _BinaryenSelectSetIfFalse(parent, replacement);
        return ifFalse;
      }
      let condition = _BinaryenSelectGetCondition(parent);
      if (condition == search) {
        _BinaryenSelectSetCondition(parent, replacement);
        return condition;
      }
      break;
    }
    case ExpressionId.Drop: {
      let value = _BinaryenDropGetValue(parent);
      if (value == search) {
        _BinaryenDropSetValue(parent, replacement);
        return value;
      }
      break;
    }
    case ExpressionId.Return: {
      let value = _BinaryenReturnGetValue(parent);
      if (value == search) {
        _BinaryenReturnSetValue(parent, replacement);
        return value;
      }
      break;
    }
    case ExpressionId.MemorySize: {
      break;
    }
    case ExpressionId.MemoryGrow: {
      let delta = _BinaryenMemoryGrowGetDelta(parent);
      if (delta == search) {
        _BinaryenMemoryGrowSetDelta(parent, replacement);
        return delta;
      }
      break;
    }
    case ExpressionId.Nop: {
      break;
    }
    case ExpressionId.Unreachable: {
      break;
    }
    case ExpressionId.AtomicRMW: {
      let ptr = _BinaryenAtomicRMWGetPtr(parent);
      if (ptr == search) {
        _BinaryenAtomicRMWSetPtr(parent, replacement);
        return ptr;
      }
      let value = _BinaryenAtomicRMWGetValue(parent);
      if (value == search) {
        _BinaryenAtomicRMWSetValue(parent, replacement);
        return value;
      }
      break;
    }
    case ExpressionId.AtomicCmpxchg: {
      let ptr = _BinaryenAtomicCmpxchgGetPtr(parent);
      if (ptr == search) {
        _BinaryenAtomicCmpxchgSetPtr(parent, replacement);
        return ptr;
      }
      let expected = _BinaryenAtomicCmpxchgGetExpected(parent);
      if (expected == search) {
        _BinaryenAtomicCmpxchgSetExpected(parent, replacement);
        return expected;
      }
      let repl = _BinaryenAtomicCmpxchgGetReplacement(parent);
      if (repl == search) {
        _BinaryenAtomicCmpxchgSetReplacement(parent, replacement);
        return repl;
      }
      break;
    }
    case ExpressionId.AtomicWait: {
      let ptr = _BinaryenAtomicWaitGetPtr(parent);
      if (ptr == search) {
        _BinaryenAtomicWaitSetPtr(parent, replacement);
        return ptr;
      }
      let expected = _BinaryenAtomicWaitGetExpected(parent);
      if (expected == search) {
        _BinaryenAtomicWaitSetExpected(parent, replacement);
        return expected;
      }
      let timeout = _BinaryenAtomicWaitGetTimeout(parent);
      if (timeout == search) {
        _BinaryenAtomicWaitSetTimeout(parent, replacement);
        return timeout;
      }
      break;
    }
    case ExpressionId.AtomicNotify: {
      let ptr = _BinaryenAtomicNotifyGetPtr(parent);
      if (ptr == search) {
        _BinaryenAtomicNotifySetPtr(parent, replacement);
        return ptr;
      }
      let notifyCount = _BinaryenAtomicNotifyGetNotifyCount(parent);
      if (notifyCount == search) {
        _BinaryenAtomicNotifySetNotifyCount(parent, replacement);
        return notifyCount;
      }
      break;
    }
    case ExpressionId.AtomicFence: {
      break;
    }
    case ExpressionId.SIMDExtract: {
      let vec = _BinaryenSIMDExtractGetVec(parent);
      if (vec == search) {
        _BinaryenSIMDExtractSetVec(parent, replacement);
        return vec;
      }
      break;
    }
    case ExpressionId.SIMDReplace: {
      let vec = _BinaryenSIMDReplaceGetVec(parent);
      if (vec == search) {
        _BinaryenSIMDReplaceSetVec(parent, replacement);
        return vec;
      }
      let value = _BinaryenSIMDReplaceGetValue(parent);
      if (value == search) {
        _BinaryenSIMDReplaceSetValue(parent, replacement);
        return value;
      }
      break;
    }
    case ExpressionId.SIMDShuffle: {
      let left = _BinaryenSIMDShuffleGetLeft(parent);
      if (left == search) {
        _BinaryenSIMDShuffleSetLeft(parent, replacement);
        return left;
      }
      let right = _BinaryenSIMDShuffleGetRight(parent);
      if (right == search) {
        _BinaryenSIMDShuffleSetRight(parent, replacement);
        return right;
      }
      break;
    }
    case ExpressionId.SIMDTernary: {
      let a = _BinaryenSIMDTernaryGetA(parent);
      if (a == search) {
        _BinaryenSIMDTernarySetA(parent, replacement);
        return a;
      }
      let b = _BinaryenSIMDTernaryGetB(parent);
      if (b == search) {
        _BinaryenSIMDTernarySetB(parent, replacement);
        return b;
      }
      let c = _BinaryenSIMDTernaryGetC(parent);
      if (c == search) {
        _BinaryenSIMDTernarySetC(parent, replacement);
        return c;
      }
      break;
    }
    case ExpressionId.SIMDShift: {
      let vec = _BinaryenSIMDShiftGetVec(parent);
      if (vec == search) {
        _BinaryenSIMDShiftSetVec(parent, replacement);
        return vec;
      }
      let shift = _BinaryenSIMDShiftGetShift(parent);
      if (shift == search) {
        _BinaryenSIMDShiftSetShift(parent, replacement);
        return shift;
      }
      break;
    }
    case ExpressionId.SIMDLoad: {
      let ptr = _BinaryenSIMDLoadGetPtr(parent);
      if (ptr == search) {
        _BinaryenSIMDLoadSetPtr(parent, replacement);
        return ptr;
      }
      break;
    }
    // TODO: SIMDLoadStoreLane
    case ExpressionId.MemoryInit: {
      let dest = _BinaryenMemoryInitGetDest(parent);
      if (dest == search) {
        _BinaryenMemoryInitSetDest(parent, replacement);
        return dest;
      }
      let offset = _BinaryenMemoryInitGetOffset(parent);
      if (offset == search) {
        _BinaryenMemoryInitSetOffset(parent, replacement);
        return offset;
      }
      let size = _BinaryenMemoryInitGetSize(parent);
      if (size == search) {
        _BinaryenMemoryInitSetSize(parent, replacement);
        return size;
      }
      break;
    }
    case ExpressionId.DataDrop: {
      break;
    }
    case ExpressionId.MemoryCopy: {
      let dest = _BinaryenMemoryCopyGetDest(parent);
      if (dest == search) {
        _BinaryenMemoryCopySetDest(parent, replacement);
        return dest;
      }
      let source = _BinaryenMemoryCopyGetSource(parent);
      if (source == search) {
        _BinaryenMemoryCopySetSource(parent, replacement);
        return source;
      }
      let size = _BinaryenMemoryCopyGetSize(parent);
      if (size == search) {
        _BinaryenMemoryCopySetSize(parent, replacement);
        return size;
      }
      break;
    }
    case ExpressionId.MemoryFill: {
      let dest = _BinaryenMemoryFillGetDest(parent);
      if (dest == search) {
        _BinaryenMemoryFillSetDest(parent, replacement);
        return dest;
      }
      let value = _BinaryenMemoryFillGetValue(parent);
      if (value == search) {
        _BinaryenMemoryFillSetValue(parent, replacement);
        return value;
      }
      let size = _BinaryenMemoryFillGetSize(parent);
      if (size == search) {
        _BinaryenMemoryFillSetSize(parent, replacement);
        return size;
      }
      break;
    }
    case ExpressionId.Pop: {
      break;
    }
    case ExpressionId.RefNull: {
      break;
    }
    case ExpressionId.RefIsNull: {
      let value = _BinaryenRefIsNullGetValue(parent);
      if (value == search) {
        _BinaryenRefIsNullSetValue(parent, replacement);
        return value;
      }
      break;
    }
    case ExpressionId.RefFunc: {
      break;
    }
    case ExpressionId.RefEq: {
      let left = _BinaryenRefEqGetLeft(parent);
      if (left == search) {
        _BinaryenRefEqSetLeft(parent, replacement);
        return left;
      }
      let right = _BinaryenRefEqGetRight(parent);
      if (right == search) {
        _BinaryenRefEqSetRight(parent, replacement);
        return right;
      }
      break;
    }
    case ExpressionId.Try: {
      let body = _BinaryenTryGetBody(parent);
      if (body == search) {
        _BinaryenTrySetBody(parent, replacement);
        return body;
      }
      let catchBody = _BinaryenTryGetCatchBody(parent);
      if (catchBody == search) {
        _BinaryenTrySetCatchBody(parent, replacement);
        return catchBody;
      }
      break;
    }
    case ExpressionId.Throw: {
      let numOperands = _BinaryenThrowGetNumOperands(parent);
      for (let i: BinaryenIndex = 0; i < numOperands; ++i) {
        let operand = _BinaryenThrowGetOperandAt(parent, i);
        if (operand == search) {
          _BinaryenThrowSetOperandAt(parent, i, replacement);
          return operand;
        }
      }
      break;
    }
    case ExpressionId.Rethrow: {
      let exnref = _BinaryenRethrowGetExnref(parent);
      if (exnref == search) {
        _BinaryenRethrowSetExnref(parent, replacement);
        return exnref;
      }
      break;
    }
    case ExpressionId.BrOnExn: {
      let exnref = _BinaryenBrOnExnGetExnref(parent);
      if (exnref == search) {
        _BinaryenBrOnExnSetExnref(parent, replacement);
        return exnref;
      }
      break;
    }
    case ExpressionId.TupleMake: {
      let numOperands = _BinaryenTupleMakeGetNumOperands(parent);
      for (let i: BinaryenIndex = 0; i < numOperands; ++i) {
        let operand = _BinaryenTupleMakeGetOperandAt(parent, i);
        if (operand == search) {
          _BinaryenTupleMakeSetOperandAt(parent, i, replacement);
          return operand;
        }
      }
      break;
    }
    case ExpressionId.TupleExtract: {
      let tuple = _BinaryenTupleExtractGetTuple(parent);
      if (tuple == search) {
        _BinaryenTupleExtractSetTuple(parent, replacement);
        return tuple;
      }
      break;
    }
    default: throw new Error("unexpected expression id");
  }
  return 0;
}
