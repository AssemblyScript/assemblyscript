/**
 * @fileoverview Infrastructure for custom Binaryen passes.
 * @license Apache-2.0
 */

import {
  Module,
  ExpressionId,
  ExpressionRef,
  FunctionRef,
  GlobalRef,
  Index,
  StringRef,
} from "../module";

import {
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
  _BinaryenGetNumGlobals,
  _BinaryenGetGlobalByIndex,
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
  _BinaryenRefAsGetValue,
  _BinaryenTryGetBody,
  _BinaryenTryGetNumCatchBodies,
  _BinaryenTryGetCatchBodyAt,
  _BinaryenThrowGetNumOperands,
  _BinaryenThrowGetOperandAt,
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
  _BinaryenSIMDLoadStoreLaneGetPtr,
  _BinaryenSIMDLoadStoreLaneGetVec,
  _BinaryenSIMDLoadStoreLaneSetPtr,
  _BinaryenSIMDLoadStoreLaneSetVec,
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
  _BinaryenTrySetCatchBodyAt,
  _BinaryenThrowSetOperandAt,
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
  _BinaryenThrowGetTag,
  _BinaryenTupleExtractGetTuple,
  _BinaryenTupleExtractSetTuple,
  _BinaryenRefEqGetLeft,
  _BinaryenRefEqGetRight,
  _BinaryenRefEqSetLeft,
  _BinaryenRefEqSetRight,
  _BinaryenFunctionSetBody,
  _BinaryenI31NewGetValue,
  _BinaryenI31GetGetI31,
  _BinaryenI31NewSetValue,
  _BinaryenI31GetSetI31,
  _BinaryenCallRefGetNumOperands,
  _BinaryenCallRefGetOperandAt,
  _BinaryenCallRefGetTarget,
  _BinaryenRefTestGetRef,
  _BinaryenRefCastGetRef,
  _BinaryenBrOnGetName,
  _BinaryenBrOnGetRef,
  _BinaryenStructNewGetNumOperands,
  _BinaryenStructNewGetOperandAt,
  _BinaryenStructGetGetRef,
  _BinaryenStructSetGetRef,
  _BinaryenStructSetGetValue,
  _BinaryenStructSetGetIndex,
  _BinaryenStructGetGetIndex,
  _BinaryenArrayNewGetSize,
  _BinaryenArrayNewGetInit,
  _BinaryenArrayInitGetNumValues,
  _BinaryenArrayInitGetValueAt,
  _BinaryenArrayGetGetRef,
  _BinaryenArrayGetGetIndex,
  _BinaryenArraySetGetRef,
  _BinaryenArraySetGetIndex,
  _BinaryenArraySetGetValue,
  _BinaryenArrayLenGetRef,
  _BinaryenArrayCopyGetDestRef,
  _BinaryenArrayCopyGetDestIndex,
  _BinaryenArrayCopyGetSrcRef,
  _BinaryenArrayCopyGetSrcIndex,
  _BinaryenArrayCopyGetLength,
  _BinaryenStringNewGetPtr,
  _BinaryenStringNewGetLength,
  _BinaryenStringNewGetStart,
  _BinaryenStringNewGetEnd,
  _BinaryenStringMeasureGetRef,
  _BinaryenStringEncodeGetPtr,
  _BinaryenStringEncodeGetRef,
  _BinaryenStringEncodeGetStart,
  _BinaryenStringConcatGetLeft,
  _BinaryenStringConcatGetRight,
  _BinaryenStringEqGetLeft,
  _BinaryenStringEqGetRight,
  _BinaryenStringAsGetRef,
  _BinaryenStringWTF8AdvanceGetRef,
  _BinaryenStringWTF8AdvanceGetPos,
  _BinaryenStringWTF8AdvanceGetBytes,
  _BinaryenStringWTF16GetGetRef,
  _BinaryenStringWTF16GetGetPos,
  _BinaryenStringIterNextGetRef,
  _BinaryenStringIterMoveGetRef,
  _BinaryenStringIterMoveGetNum,
  _BinaryenStringSliceWTFGetRef,
  _BinaryenStringSliceWTFGetStart,
  _BinaryenStringSliceWTFGetEnd,
  _BinaryenStringSliceIterGetRef,
  _BinaryenStringSliceIterGetNum,
  _BinaryenCallRefSetOperandAt,
  _BinaryenCallRefSetTarget,
  _BinaryenRefTestSetRef,
  _BinaryenRefCastSetRef,
  _BinaryenBrOnSetRef,
  _BinaryenStructNewSetOperandAt,
  _BinaryenStructGetSetRef,
  _BinaryenStructSetSetRef,
  _BinaryenStructSetSetValue,
  _BinaryenArrayNewSetSize,
  _BinaryenArrayNewSetInit,
  _BinaryenArrayGetSetRef,
  _BinaryenArrayGetSetIndex,
  _BinaryenArraySetSetRef,
  _BinaryenArraySetSetIndex,
  _BinaryenArraySetSetValue,
  _BinaryenArrayLenSetRef,
  _BinaryenArrayCopySetDestRef,
  _BinaryenArrayCopySetDestIndex,
  _BinaryenArrayCopySetSrcRef,
  _BinaryenArrayCopySetSrcIndex,
  _BinaryenArrayCopySetLength,
  _BinaryenRefAsSetValue,
  _BinaryenStringNewSetPtr,
  _BinaryenStringNewSetLength,
  _BinaryenStringNewSetStart,
  _BinaryenStringNewSetEnd,
  _BinaryenStringMeasureSetRef,
  _BinaryenStringEncodeSetRef,
  _BinaryenStringEncodeSetPtr,
  _BinaryenStringEncodeSetStart,
  _BinaryenStringConcatSetLeft,
  _BinaryenStringConcatSetRight,
  _BinaryenStringEqSetLeft,
  _BinaryenStringEqSetRight,
  _BinaryenStringAsSetRef,
  _BinaryenStringWTF8AdvanceSetRef,
  _BinaryenStringWTF8AdvanceSetPos,
  _BinaryenStringWTF8AdvanceSetBytes,
  _BinaryenStringWTF16GetSetRef,
  _BinaryenStringWTF16GetSetPos,
  _BinaryenStringIterNextSetRef,
  _BinaryenStringIterMoveSetRef,
  _BinaryenStringIterMoveSetNum,
  _BinaryenStringSliceWTFSetRef,
  _BinaryenStringSliceWTFSetStart,
  _BinaryenStringSliceWTFSetEnd,
  _BinaryenStringSliceIterSetRef,
  _BinaryenStringSliceIterSetNum,
  _BinaryenArrayInitSetValueAt,
} from "../glue/binaryen";

/** Base class of custom Binaryen visitors. */
export abstract class Visitor {
  /** Expression stack. */
  private stack: ExpressionRef[] = new Array<ExpressionRef>();

  /** Gets the current expression being walked. */
  get currentExpression(): ExpressionRef {
    let currentExpression = this._currentExpression;
    if (!currentExpression) throw new Error("not walking expressions");
    return currentExpression;
  }
  _currentExpression: ExpressionRef = 0;

  /** Gets the parent expression of the current expression being walked. Returns zero if already the top-most expression. */
  get parentExpressionOrNull(): ExpressionRef {
    let stack = this.stack;
    let length = stack.length;
    return length ? stack[length - 1] : 0;
  }

  // Expressions

  visitBlock(expr: ExpressionRef): void {
    // unimp
  }

  visitIf(expr: ExpressionRef): void {
    // unimp
  }

  visitLoop(expr: ExpressionRef): void {
    // unimp
  }

  visitBreak(expr: ExpressionRef): void {
    // unimp
  }

  visitSwitch(expr: ExpressionRef): void {
    // unimp
  }

  visitCallPre(expr: ExpressionRef): void {
    // unimp
  }

  visitCall(expr: ExpressionRef): void {
    // unimp
  }

  visitCallIndirectPre(expr: ExpressionRef): void {
    // unimp
  }

  visitCallIndirect(expr: ExpressionRef): void {
    // unimp
  }

  visitLocalGet(expr: ExpressionRef): void {
    // unimp
  }

  visitLocalSet(expr: ExpressionRef): void {
    // unimp
  }

  visitGlobalGet(expr: ExpressionRef): void {
    // unimp
  }

  visitGlobalSet(expr: ExpressionRef): void {
    // unimp
  }

  visitLoad(expr: ExpressionRef): void {
    // unimp
  }

  visitStore(expr: ExpressionRef): void {
    // unimp
  }

  visitConst(expr: ExpressionRef): void {
    // unimp
  }

  visitUnary(expr: ExpressionRef): void {
    // unimp
  }

  visitBinary(expr: ExpressionRef): void {
    // unimp
  }

  visitSelect(expr: ExpressionRef): void {
    // unimp
  }

  visitDrop(expr: ExpressionRef): void {
    // unimp
  }

  visitReturn(expr: ExpressionRef): void {
    // unimp
  }

  visitMemorySize(expr: ExpressionRef): void {
    // unimp
  }

  visitMemoryGrow(expr: ExpressionRef): void {
    // unimp
  }

  visitNop(expr: ExpressionRef): void {
    // unimp
  }

  visitUnreachable(expr: ExpressionRef): void {
    // unimp
  }

  visitAtomicRMW(expr: ExpressionRef): void {
    // unimp
  }

  visitAtomicCmpxchg(expr: ExpressionRef): void {
    // unimp
  }

  visitAtomicWait(expr: ExpressionRef): void {
    // unimp
  }

  visitAtomicNotify(expr: ExpressionRef): void {
    // unimp
  }

  visitAtomicFence(expr: ExpressionRef): void {
    // unimp
  }

  visitSIMDExtract(expr: ExpressionRef): void {
    // unimp
  }

  visitSIMDReplace(expr: ExpressionRef): void {
    // unimp
  }

  visitSIMDShuffle(expr: ExpressionRef): void {
    // unimp
  }

  visitSIMDTernary(expr: ExpressionRef): void {
    // unimp
  }

  visitSIMDShift(expr: ExpressionRef): void {
    // unimp
  }

  visitSIMDLoad(expr: ExpressionRef): void {
    // unimp
  }

  visitSIMDLoadStoreLane(expr: ExpressionRef): void {
    // unimp
  }

  visitMemoryInit(expr: ExpressionRef): void {
    // unimp
  }

  visitDataDrop(expr: ExpressionRef): void {
    // unimp
  }

  visitMemoryCopy(expr: ExpressionRef): void {
    // unimp
  }

  visitMemoryFill(expr: ExpressionRef): void {
    // unimp
  }

  visitPop(expr: ExpressionRef): void {
    // unimp
  }

  visitRefNull(expr: ExpressionRef): void {
    // unimp
  }

  visitRefIsNull(expr: ExpressionRef): void {
    // unimp
  }

  visitRefFunc(expr: ExpressionRef): void {
    // unimp
  }

  visitRefEq(expr: ExpressionRef): void {
    // unimp
  }

  visitTry(expr: ExpressionRef): void {
    // unimp
  }

  visitThrow(expr: ExpressionRef): void {
    // unimp
  }

  visitRethrow(expr: ExpressionRef): void {
    // unimp
  }

  visitTupleMake(expr: ExpressionRef): void {
    // unimp
  }

  visitTupleExtract(expr: ExpressionRef): void {
    // unimp
  }

  visitI31New(expr: ExpressionRef): void {
    // unimp
  }

  visitI31Get(expr: ExpressionRef): void {
    // unimp
  }

  visitCallRef(expr: ExpressionRef): void {
    // unimp
  }

  visitRefTest(expr: ExpressionRef): void {
    // unimp
  }

  visitRefCast(expr: ExpressionRef): void {
    // unimp
  }

  visitBrOn(expr: ExpressionRef): void {
    // unimp
  }

  visitStructNew(expr: ExpressionRef): void {
    // unimp
  }

  visitStructGet(expr: ExpressionRef): void {
    // unimp
  }

  visitStructSet(expr: ExpressionRef): void {
    // unimp
  }

  visitArrayNew(expr: ExpressionRef): void {
    // unimp
  }

  visitArrayInit(expr: ExpressionRef): void {
    // unimp
  }

  visitArrayGet(expr: ExpressionRef): void {
    // unimp
  }

  visitArraySet(expr: ExpressionRef): void {
    // unimp
  }

  visitArrayLen(expr: ExpressionRef): void {
    // unimp
  }

  visitArrayCopy(expr: ExpressionRef): void {
    // unimp
  }

  visitRefAs(expr: ExpressionRef): void {
    // unimp
  }

  visitStringNew(expr: ExpressionRef): void {
    // unimp
  }

  visitStringConst(expr: ExpressionRef): void {
    // unimp
  }

  visitStringMeasure(expr: ExpressionRef): void {
    // unimp
  }

  visitStringEncode(expr: ExpressionRef): void {
    // unimp
  }

  visitStringConcat(expr: ExpressionRef): void {
    // unimp
  }

  visitStringEq(expr: ExpressionRef): void {
    // unimp
  }

  visitStringAs(expr: ExpressionRef): void {
    // unimp
  }

  visitStringWTF8Advance(expr: ExpressionRef): void {
    // unimp
  }

  visitStringWTF16Get(expr: ExpressionRef): void {
    // unimp
  }

  visitStringIterNext(expr: ExpressionRef): void {
    // unimp
  }

  visitStringIterMove(expr: ExpressionRef): void {
    // unimp
  }

  visitStringSliceWTF(expr: ExpressionRef): void {
    // unimp
  }

  visitStringSliceIter(expr: ExpressionRef): void {
    // unimp
  }

  // Immediates

  visitName(name: StringRef): void {
    // unimp
  }

  visitLabel(name: StringRef): void {
    // unimp
  }

  visitIndex(index: Index): void {
    // unimp
  }

  visitTag(name: StringRef): void {
    // unimp
  }

  // Delegate

  /** Visits any expression, delegating to the respective visitor methods. */
  visit(expr: ExpressionRef): void {
    let previousExpression = this._currentExpression;
    this._currentExpression = assert(expr);
    switch (_BinaryenExpressionGetId(expr)) {
      case ExpressionId.Block: {
        this.stack.push(expr);
        let name = _BinaryenBlockGetName(expr);
        if (name) this.visitLabel(name);
        for (
          let i: Index = 0, n = _BinaryenBlockGetNumChildren(expr);
          i < n;
          ++i
        ) {
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
        for (let i: Index = 0; i < numNames; ++i) {
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
        for (let i: Index = 0; i < numOperands; ++i) {
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
        for (
          let i: Index = 0, k = _BinaryenCallIndirectGetNumOperands(expr);
          i < k;
          ++i
        ) {
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
      case ExpressionId.SIMDLoadStoreLane: {
        this.stack.push(expr);
        this.visit(_BinaryenSIMDLoadStoreLaneGetPtr(expr));
        this.visit(_BinaryenSIMDLoadStoreLaneGetVec(expr));
        assert(this.stack.pop() == expr);
        this.visitSIMDLoadStoreLane(expr);
        break;
      }
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
        let numCatchBodies = _BinaryenTryGetNumCatchBodies(expr);
        for (let i: Index = 0; i < numCatchBodies; ++i) {
          this.visit(_BinaryenTryGetCatchBodyAt(expr, i));
        }
        assert(this.stack.pop() == expr);
        this.visitTry(expr);
        break;
      }
      case ExpressionId.Throw: {
        this.stack.push(expr);
        this.visitTag(_BinaryenThrowGetTag(expr));
        let numOperands = _BinaryenThrowGetNumOperands(expr);
        for (let i: Index = 0; i < numOperands; ++i) {
          this.visit(_BinaryenThrowGetOperandAt(expr, i));
        }
        assert(this.stack.pop() == expr);
        this.visitThrow(expr);
        break;
      }
      case ExpressionId.Rethrow: {
        this.visitRethrow(expr);
        break;
      }
      case ExpressionId.TupleMake: {
        let numOperands = _BinaryenTupleMakeGetNumOperands(expr);
        if (numOperands) {
          this.stack.push(expr);
          for (let i: Index = 0; i < numOperands; ++i) {
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
      case ExpressionId.I31New: {
        this.stack.push(expr);
        this.visit(_BinaryenI31NewGetValue(expr));
        assert(this.stack.pop() == expr);
        this.visitI31New(expr);
        break;
      }
      case ExpressionId.I31Get: {
        this.stack.push(expr);
        this.visit(_BinaryenI31GetGetI31(expr));
        assert(this.stack.pop() == expr);
        this.visitI31Get(expr);
        break;
      }
      case ExpressionId.CallRef: {
        this.stack.push(expr);
        let numOperands = _BinaryenCallRefGetNumOperands(expr);
        if (numOperands) {
          for (let i: Index = 0; i < numOperands; ++i) {
            this.visit(_BinaryenCallRefGetOperandAt(expr, i));
          }
        }
        this.visit(_BinaryenCallRefGetTarget(expr));
        assert(this.stack.pop() == expr);
        this.visitCallRef(expr);
        break;
      }
      case ExpressionId.RefTest: {
        this.stack.push(expr);
        this.visit(_BinaryenRefTestGetRef(expr));
        assert(this.stack.pop() == expr);
        this.visitRefTest(expr);
        break;
      }
      case ExpressionId.RefCast: {
        this.stack.push(expr);
        this.visit(_BinaryenRefCastGetRef(expr));
        assert(this.stack.pop() == expr);
        this.visitRefCast(expr);
        break;
      }
      case ExpressionId.BrOn: {
        this.stack.push(expr);
        this.visitLabel(_BinaryenBrOnGetName(expr));
        this.visit(_BinaryenBrOnGetRef(expr));
        assert(this.stack.pop() == expr);
        this.visitBrOn(expr);
        break;
      }
      case ExpressionId.StructNew: {
        let numOperands = _BinaryenStructNewGetNumOperands(expr);
        if (numOperands) {
          this.stack.push(expr);
          for (let i: Index = 0; i < numOperands; ++i) {
            this.visit(_BinaryenStructNewGetOperandAt(expr, i));
          }
          assert(this.stack.pop() == expr);
        }
        this.visitStructNew(expr);
        break;
      }
      case ExpressionId.StructGet: {
        this.stack.push(expr);
        this.visit(_BinaryenStructGetGetRef(expr));
        this.visitIndex(_BinaryenStructGetGetIndex(expr));
        assert(this.stack.pop() == expr);
        this.visitStructGet(expr);
        break;
      }
      case ExpressionId.StructSet: {
        this.stack.push(expr);
        this.visit(_BinaryenStructSetGetRef(expr));
        this.visitIndex(_BinaryenStructSetGetIndex(expr));
        this.visit(_BinaryenStructSetGetValue(expr));
        assert(this.stack.pop() == expr);
        this.visitStructSet(expr);
        break;
      }
      case ExpressionId.ArrayNew: {
        this.stack.push(expr);
        this.visit(_BinaryenArrayNewGetSize(expr));
        let init = _BinaryenArrayNewGetInit(expr);
        if (init) this.visit(init);
        assert(this.stack.pop() == expr);
        this.visitArrayNew(expr);
        break;
      }
      case ExpressionId.ArrayInit: {
        let numValues = _BinaryenArrayInitGetNumValues(expr);
        if (numValues) {
          this.stack.push(expr);
          for (let i: Index = 0; i < numValues; ++i) {
            this.visit(_BinaryenArrayInitGetValueAt(expr, i));
          }
          assert(this.stack.pop() == expr);
        }
        this.visitArrayInit(expr);
        break;
      }
      case ExpressionId.ArrayGet: {
        this.stack.push(expr);
        this.visit(_BinaryenArrayGetGetRef(expr));
        this.visit(_BinaryenArrayGetGetIndex(expr));
        assert(this.stack.pop() == expr);
        this.visitArrayGet(expr);
        break;
      }
      case ExpressionId.ArraySet: {
        this.stack.push(expr);
        this.visit(_BinaryenArraySetGetRef(expr));
        this.visit(_BinaryenArraySetGetIndex(expr));
        this.visit(_BinaryenArraySetGetValue(expr));
        assert(this.stack.pop() == expr);
        this.visitArraySet(expr);
        break;
      }
      case ExpressionId.ArrayLen: {
        this.stack.push(expr);
        this.visit(_BinaryenArrayLenGetRef(expr));
        assert(this.stack.pop() == expr);
        this.visitArrayLen(expr);
        break;
      }
      case ExpressionId.ArrayCopy: {
        this.stack.push(expr);
        this.visit(_BinaryenArrayCopyGetDestRef(expr));
        this.visit(_BinaryenArrayCopyGetDestIndex(expr));
        this.visit(_BinaryenArrayCopyGetSrcRef(expr));
        this.visit(_BinaryenArrayCopyGetSrcIndex(expr));
        this.visit(_BinaryenArrayCopyGetLength(expr));
        assert(this.stack.pop() == expr);
        this.visitArrayCopy(expr);
        break;
      }
      case ExpressionId.RefAs: {
        this.stack.push(expr);
        this.visit(_BinaryenRefAsGetValue(expr));
        assert(this.stack.pop() == expr);
        this.visitRefAs(expr);
        break;
      }
      case ExpressionId.StringNew: {
        this.stack.push(expr);
        this.visit(_BinaryenStringNewGetPtr(expr));
        let length = _BinaryenStringNewGetLength(expr); // LM only
        if (length) this.visit(length);
        let start = _BinaryenStringNewGetStart(expr); // GC only
        if (start) this.visit(start);
        let end = _BinaryenStringNewGetEnd(expr); // GC only
        if (end) this.visit(end);
        assert(this.stack.pop() == expr);
        this.visitStringNew(expr);
        break;
      }
      case ExpressionId.StringConst: {
        this.stack.push(expr);
        assert(this.stack.pop() == expr);
        this.visitStringConst(expr);
        break;
      }
      case ExpressionId.StringMeasure: {
        this.stack.push(expr);
        this.visit(_BinaryenStringMeasureGetRef(expr));
        assert(this.stack.pop() == expr);
        this.visitStringMeasure(expr);
        break;
      }
      case ExpressionId.StringEncode: {
        this.stack.push(expr);
        this.visit(_BinaryenStringEncodeGetRef(expr));
        this.visit(_BinaryenStringEncodeGetPtr(expr));
        let start = _BinaryenStringEncodeGetStart(expr); // GC only
        if (start) this.visit(start);
        assert(this.stack.pop() == expr);
        this.visitStringEncode(expr);
        break;
      }
      case ExpressionId.StringConcat: {
        this.stack.push(expr);
        this.visit(_BinaryenStringConcatGetLeft(expr));
        this.visit(_BinaryenStringConcatGetRight(expr));
        assert(this.stack.pop() == expr);
        this.visitStringConcat(expr);
        break;
      }
      case ExpressionId.StringEq: {
        this.stack.push(expr);
        this.visit(_BinaryenStringEqGetLeft(expr));
        this.visit(_BinaryenStringEqGetRight(expr));
        assert(this.stack.pop() == expr);
        this.visitStringEq(expr);
        break;
      }
      case ExpressionId.StringAs: {
        this.stack.push(expr);
        this.visit(_BinaryenStringAsGetRef(expr));
        assert(this.stack.pop() == expr);
        this.visitStringAs(expr);
        break;
      }
      case ExpressionId.StringWTF8Advance: {
        this.stack.push(expr);
        this.visit(_BinaryenStringWTF8AdvanceGetRef(expr));
        this.visit(_BinaryenStringWTF8AdvanceGetPos(expr));
        this.visit(_BinaryenStringWTF8AdvanceGetBytes(expr));
        assert(this.stack.pop() == expr);
        this.visitStringWTF8Advance(expr);
        break;
      }
      case ExpressionId.StringWTF16Get: {
        this.stack.push(expr);
        this.visit(_BinaryenStringWTF16GetGetRef(expr));
        this.visit(_BinaryenStringWTF16GetGetPos(expr));
        assert(this.stack.pop() == expr);
        this.visitStringWTF16Get(expr);
        break;
      }
      case ExpressionId.StringIterNext: {
        this.stack.push(expr);
        this.visit(_BinaryenStringIterNextGetRef(expr));
        assert(this.stack.pop() == expr);
        this.visitStringIterNext(expr);
        break;
      }
      case ExpressionId.StringIterMove: {
        this.stack.push(expr);
        this.visit(_BinaryenStringIterMoveGetRef(expr));
        this.visit(_BinaryenStringIterMoveGetNum(expr));
        assert(this.stack.pop() == expr);
        this.visitStringIterMove(expr);
        break;
      }
      case ExpressionId.StringSliceWTF: {
        this.stack.push(expr);
        this.visit(_BinaryenStringSliceWTFGetRef(expr));
        this.visit(_BinaryenStringSliceWTFGetStart(expr));
        this.visit(_BinaryenStringSliceWTFGetEnd(expr));
        assert(this.stack.pop() == expr);
        this.visitStringSliceWTF(expr);
        break;
      }
      case ExpressionId.StringSliceIter: {
        this.stack.push(expr);
        this.visit(_BinaryenStringSliceIterGetRef(expr));
        this.visit(_BinaryenStringSliceIterGetNum(expr));
        assert(this.stack.pop() == expr);
        this.visitStringSliceIter(expr);
        break;
      }
      default:
        throw new Error("unexpected expression kind");
    }
    this._currentExpression = previousExpression;
  }
}

/** Base class of custom Binaryen passes. */
export abstract class Pass extends Visitor {
  /** Gets the current function being walked. */
  get currentFunction(): FunctionRef {
    let currentFunction = this._currentFunction;
    if (!currentFunction) throw new Error("not walking a function");
    return currentFunction;
  }
  private _currentFunction: FunctionRef = 0;

  /** Gets the current global being walked. */
  get currentGlobal(): GlobalRef {
    let currentGlobal = this._currentGlobal;
    if (!currentGlobal) throw new Error("not walking a global");
    return currentGlobal;
  }
  private _currentGlobal: GlobalRef = 0;

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
    let moduleRef = this.module.ref;
    for (
      let i: Index = 0, k = _BinaryenGetNumFunctions(moduleRef);
      i < k;
      ++i
    ) {
      this.walkFunction(_BinaryenGetFunctionByIndex(moduleRef, i));
    }
  }

  /** Walks a specific function. */
  walkFunction(func: FunctionRef): void {
    let body = _BinaryenFunctionGetBody(func);
    if (body) {
      this._currentFunction = func;
      this.visit(body);
      this._currentFunction = 0;
    }
  }

  /** Walks all global variables. */
  walkGlobals(): void {
    let moduleRef = this.module.ref;
    for (let i: Index = 0, k = _BinaryenGetNumGlobals(moduleRef); i < k; ++i) {
      this.walkGlobal(_BinaryenGetGlobalByIndex(moduleRef, i));
    }
  }

  /** Walks a specific global variable. */
  walkGlobal(global: GlobalRef): void {
    this._currentGlobal = global;
    let init = _BinaryenGlobalGetInitExpr(global);
    if (init) this.visit(init);
    this._currentGlobal = 0;
  }

  // Utility

  /** Replaces the current expression with the specified replacement. */
  replaceCurrent(replacement: ExpressionRef): void {
    let search = this.currentExpression;
    let func = this.currentFunction;
    let body = _BinaryenFunctionGetBody(func);
    if (body == search) {
      _BinaryenFunctionSetBody(func, replacement);
    } else {
      let parent = assert(this.parentExpressionOrNull);
      let replaced = replaceChild(parent, search, replacement);
      if (!replaced) throw Error("failed to replace expression");
      _BinaryenExpressionFinalize(parent);
    }
  }
}

/** Replaces an expression within a parent expression. Returns the replaced expression on success, otherwise `0`. */
export function replaceChild(
  /** Parent expression containing `search`. */
  parent: ExpressionRef,
  /** Expression to replace. */
  search: ExpressionRef,
  /** Expression to replace `search` with. */
  replacement: ExpressionRef,
): ExpressionRef {
  switch (_BinaryenExpressionGetId(parent)) {
    case ExpressionId.Block: {
      let numChildren = _BinaryenBlockGetNumChildren(parent);
      for (let i: Index = 0; i < numChildren; ++i) {
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
      for (let i: Index = 0; i < numOperands; ++i) {
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
      for (let i: Index = 0; i < numOperands; ++i) {
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
    case ExpressionId.SIMDLoadStoreLane: {
      let ptr = _BinaryenSIMDLoadStoreLaneGetPtr(parent);
      if (ptr == search) {
        _BinaryenSIMDLoadStoreLaneSetPtr(parent, replacement);
        return ptr;
      }
      let vec = _BinaryenSIMDLoadStoreLaneGetVec(parent);
      if (vec == search) {
        _BinaryenSIMDLoadStoreLaneSetVec(parent, replacement);
        return ptr;
      }
      break;
    }
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
      let numCatchBodies = _BinaryenTryGetNumCatchBodies(parent);
      for (let i: Index = 0; i < numCatchBodies; ++i) {
        let catchBody = _BinaryenTryGetCatchBodyAt(parent, i);
        if (catchBody == search) {
          _BinaryenTrySetCatchBodyAt(parent, i, replacement);
          return catchBody;
        }
      }
      break;
    }
    case ExpressionId.Throw: {
      let numOperands = _BinaryenThrowGetNumOperands(parent);
      for (let i: Index = 0; i < numOperands; ++i) {
        let operand = _BinaryenThrowGetOperandAt(parent, i);
        if (operand == search) {
          _BinaryenThrowSetOperandAt(parent, i, replacement);
          return operand;
        }
      }
      break;
    }
    case ExpressionId.Rethrow: {
      break;
    }
    case ExpressionId.TupleMake: {
      let numOperands = _BinaryenTupleMakeGetNumOperands(parent);
      for (let i: Index = 0; i < numOperands; ++i) {
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
    case ExpressionId.I31New: {
      let value = _BinaryenI31NewGetValue(parent);
      if (value == search) {
        _BinaryenI31NewSetValue(parent, replacement);
        return value;
      }
      break;
    }
    case ExpressionId.I31Get: {
      let i31Expr = _BinaryenI31GetGetI31(parent);
      if (i31Expr == search) {
        _BinaryenI31GetSetI31(parent, replacement);
        return i31Expr;
      }
      break;
    }
    case ExpressionId.CallRef: {
      let numOperands = _BinaryenCallRefGetNumOperands(parent);
      for (let i: Index = 0; i < numOperands; ++i) {
        let operand = _BinaryenCallRefGetOperandAt(parent, i);
        if (operand == search) {
          _BinaryenCallRefSetOperandAt(parent, i, replacement);
          return operand;
        }
      }
      let target = _BinaryenCallRefGetTarget(parent);
      if (target == search) {
        _BinaryenCallRefSetTarget(parent, replacement);
        return target;
      }
      break;
    }
    case ExpressionId.RefTest: {
      let ref = _BinaryenRefTestGetRef(parent);
      if (ref == search) {
        _BinaryenRefTestSetRef(parent, replacement);
        return ref;
      }
      break;
    }
    case ExpressionId.RefCast: {
      let ref = _BinaryenRefCastGetRef(parent);
      if (ref == search) {
        _BinaryenRefCastSetRef(parent, replacement);
        return ref;
      }
      break;
    }
    case ExpressionId.BrOn: {
      let ref = _BinaryenBrOnGetRef(parent);
      if (ref == search) {
        _BinaryenBrOnSetRef(parent, replacement);
        return ref;
      }
      break;
    }
    case ExpressionId.StructNew: {
      let numOperands = _BinaryenStructNewGetNumOperands(parent);
      for (let i: Index = 0; i < numOperands; ++i) {
        let operand = _BinaryenStructNewGetOperandAt(parent, i);
        if (operand == search) {
          _BinaryenStructNewSetOperandAt(parent, i, replacement);
          return operand;
        }
      }
      break;
    }
    case ExpressionId.StructGet: {
      let ref = _BinaryenStructGetGetRef(parent);
      if (ref == search) {
        _BinaryenStructGetSetRef(parent, replacement);
        return ref;
      }
      break;
    }
    case ExpressionId.StructSet: {
      let ref = _BinaryenStructSetGetRef(parent);
      if (ref == search) {
        _BinaryenStructSetSetRef(parent, replacement);
        return ref;
      }
      let value = _BinaryenStructSetGetValue(parent);
      if (value == search) {
        _BinaryenStructSetSetValue(parent, replacement);
        return value;
      }
      break;
    }
    case ExpressionId.ArrayNew: {
      let size = _BinaryenArrayNewGetSize(parent);
      if (size == search) {
        _BinaryenArrayNewSetSize(parent, replacement);
        return size;
      }
      let init = _BinaryenArrayNewGetInit(parent);
      if (init == search) {
        _BinaryenArrayNewSetInit(parent, replacement);
        return init;
      }
      break;
    }
    case ExpressionId.ArrayInit: {
      let numValues = _BinaryenArrayInitGetNumValues(parent);
      for (let i: Index = 0; i < numValues; ++i) {
        let value = _BinaryenArrayInitGetValueAt(parent, i);
        if (value == search) {
          _BinaryenArrayInitSetValueAt(parent, i, replacement);
          return value;
        }
      }
      break;
    }
    case ExpressionId.ArrayGet: {
      let ref = _BinaryenArrayGetGetRef(parent);
      if (ref == search) {
        _BinaryenArrayGetSetRef(parent, replacement);
        return ref;
      }
      let index = _BinaryenArrayGetGetIndex(parent);
      if (index == search) {
        _BinaryenArrayGetSetIndex(parent, replacement);
        return index;
      }
      break;
    }
    case ExpressionId.ArraySet: {
      let ref = _BinaryenArraySetGetRef(parent);
      if (ref == search) {
        _BinaryenArraySetSetRef(parent, replacement);
        return ref;
      }
      let index = _BinaryenArraySetGetIndex(parent);
      if (index == search) {
        _BinaryenArraySetSetIndex(parent, replacement);
        return index;
      }
      let value = _BinaryenArraySetGetValue(parent);
      if (value == search) {
        _BinaryenArraySetSetValue(parent, replacement);
        return value;
      }
      break;
    }
    case ExpressionId.ArrayLen: {
      let ref = _BinaryenArrayLenGetRef(parent);
      if (ref == search) {
        _BinaryenArrayLenSetRef(parent, replacement);
        return ref;
      }
      break;
    }
    case ExpressionId.ArrayCopy: {
      let destRef = _BinaryenArrayCopyGetDestRef(parent);
      if (destRef == search) {
        _BinaryenArrayCopySetDestRef(parent, replacement);
        return destRef;
      }
      let destIndex = _BinaryenArrayCopyGetDestIndex(parent);
      if (destIndex == search) {
        _BinaryenArrayCopySetDestIndex(parent, replacement);
        return destIndex;
      }
      let srcRef = _BinaryenArrayCopyGetSrcRef(parent);
      if (srcRef == search) {
        _BinaryenArrayCopySetSrcRef(parent, replacement);
        return srcRef;
      }
      let srcIndex = _BinaryenArrayCopyGetSrcIndex(parent);
      if (srcIndex == search) {
        _BinaryenArrayCopySetSrcIndex(parent, replacement);
        return srcIndex;
      }
      let length = _BinaryenArrayCopyGetLength(parent);
      if (length == search) {
        _BinaryenArrayCopySetLength(parent, replacement);
        return length;
      }
      break;
    }
    case ExpressionId.RefAs: {
      let value = _BinaryenRefAsGetValue(parent);
      if (value == search) {
        _BinaryenRefAsSetValue(parent, replacement);
        return value;
      }
      break;
    }
    case ExpressionId.StringNew: {
      let ptr = _BinaryenStringNewGetPtr(parent);
      if (ptr == search) {
        _BinaryenStringNewSetPtr(parent, replacement);
        return ptr;
      }
      let length = _BinaryenStringNewGetLength(parent);
      if (length == search) {
        _BinaryenStringNewSetLength(parent, replacement);
        return length;
      }
      let start = _BinaryenStringNewGetStart(parent);
      if (start == search) {
        _BinaryenStringNewSetStart(parent, replacement);
        return start;
      }
      let end = _BinaryenStringNewGetEnd(parent);
      if (end == search) {
        _BinaryenStringNewSetEnd(parent, replacement);
        return end;
      }
      break;
    }
    case ExpressionId.StringConst: {
      break;
    }
    case ExpressionId.StringMeasure: {
      let ref = _BinaryenStringMeasureGetRef(parent);
      if (ref == search) {
        _BinaryenStringMeasureSetRef(parent, replacement);
        return ref;
      }
      break;
    }
    case ExpressionId.StringEncode: {
      let ref = _BinaryenStringEncodeGetRef(parent);
      if (ref == search) {
        _BinaryenStringEncodeSetRef(parent, replacement);
        return ref;
      }
      let ptr = _BinaryenStringEncodeGetPtr(parent);
      if (ptr == search) {
        _BinaryenStringEncodeSetPtr(parent, replacement);
        return ptr;
      }
      let start = _BinaryenStringEncodeGetStart(parent);
      if (start == search) {
        _BinaryenStringEncodeSetStart(parent, replacement);
        return start;
      }
      break;
    }
    case ExpressionId.StringConcat: {
      let left = _BinaryenStringConcatGetLeft(parent);
      if (left == search) {
        _BinaryenStringConcatSetLeft(parent, replacement);
        return left;
      }
      let right = _BinaryenStringConcatGetRight(parent);
      if (right == search) {
        _BinaryenStringConcatSetRight(parent, replacement);
        return right;
      }
      break;
    }
    case ExpressionId.StringEq: {
      let left = _BinaryenStringEqGetLeft(parent);
      if (left == search) {
        _BinaryenStringEqSetLeft(parent, replacement);
        return left;
      }
      let right = _BinaryenStringEqGetRight(parent);
      if (right == search) {
        _BinaryenStringEqSetRight(parent, replacement);
        return right;
      }
      break;
    }
    case ExpressionId.StringAs: {
      let ref = _BinaryenStringAsGetRef(parent);
      if (ref == search) {
        _BinaryenStringAsSetRef(parent, replacement);
        return ref;
      }
      break;
    }
    case ExpressionId.StringWTF8Advance: {
      let ref = _BinaryenStringWTF8AdvanceGetRef(parent);
      if (ref == search) {
        _BinaryenStringWTF8AdvanceSetRef(parent, replacement);
        return ref;
      }
      let pos = _BinaryenStringWTF8AdvanceGetPos(parent);
      if (pos == search) {
        _BinaryenStringWTF8AdvanceSetPos(parent, replacement);
        return pos;
      }
      let bytes = _BinaryenStringWTF8AdvanceGetBytes(parent);
      if (bytes == search) {
        _BinaryenStringWTF8AdvanceSetBytes(parent, replacement);
        return bytes;
      }
      break;
    }
    case ExpressionId.StringWTF16Get: {
      let ref = _BinaryenStringWTF16GetGetRef(parent);
      if (ref == search) {
        _BinaryenStringWTF16GetSetRef(parent, replacement);
        return ref;
      }
      let pos = _BinaryenStringWTF16GetGetPos(parent);
      if (pos == search) {
        _BinaryenStringWTF16GetSetPos(parent, replacement);
        return pos;
      }
      break;
    }
    case ExpressionId.StringIterNext: {
      let ref = _BinaryenStringIterNextGetRef(parent);
      if (ref == search) {
        _BinaryenStringIterNextSetRef(parent, replacement);
        return ref;
      }
      break;
    }
    case ExpressionId.StringIterMove: {
      let ref = _BinaryenStringIterMoveGetRef(parent);
      if (ref == search) {
        _BinaryenStringIterMoveSetRef(parent, replacement);
        return ref;
      }
      let num = _BinaryenStringIterMoveGetNum(parent);
      if (num == search) {
        _BinaryenStringIterMoveSetNum(parent, replacement);
        return num;
      }
      break;
    }
    case ExpressionId.StringSliceWTF: {
      let ref = _BinaryenStringSliceWTFGetRef(parent);
      if (ref == search) {
        _BinaryenStringSliceWTFSetRef(parent, replacement);
        return ref;
      }
      let start = _BinaryenStringSliceWTFGetStart(parent);
      if (start == search) {
        _BinaryenStringSliceWTFSetStart(parent, replacement);
        return start;
      }
      let end = _BinaryenStringSliceWTFGetEnd(parent);
      if (end == search) {
        _BinaryenStringSliceWTFSetEnd(parent, replacement);
        return end;
      }
      break;
    }
    case ExpressionId.StringSliceIter: {
      let ref = _BinaryenStringSliceIterGetRef(parent);
      if (ref == search) {
        _BinaryenStringSliceIterSetRef(parent, replacement);
        return ref;
      }
      let num = _BinaryenStringSliceIterGetNum(parent);
      if (num == search) {
        _BinaryenStringSliceIterSetNum(parent, replacement);
        return num;
      }
      break;
    }
    default:
      throw new Error("unexpected expression id");
  }
  return 0;
}
