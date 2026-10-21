/**
 * @fileoverview Detects tail calls after conversions and runtime instrumentation.
 * @license Apache-2.0
 */

import { Pass } from "./pass";
import { ExpressionId, ExpressionRef, FunctionRef, Index, TypeRef } from "../module";
import {
  _BinaryenBlockGetChildAt,
  _BinaryenBlockGetName,
  _BinaryenBlockGetNumChildren,
  _BinaryenBlockSetChildAt,
  _BinaryenCallSetReturn,
  _BinaryenCallIndirectSetReturn,
  _BinaryenExpressionFinalize,
  _BinaryenExpressionGetId,
  _BinaryenExpressionGetType,
  _BinaryenFunctionGetBody,
  _BinaryenFunctionGetResults,
  _BinaryenFunctionSetBody,
  _BinaryenIfGetIfTrue,
  _BinaryenIfGetIfFalse,
  _BinaryenIfSetIfTrue,
  _BinaryenIfSetIfFalse,
  _BinaryenLocalGetGetIndex,
  _BinaryenLocalSetGetIndex,
  _BinaryenLocalSetGetValue,
  _BinaryenLocalSetIsTee,
  _BinaryenReturnGetValue
} from "../glue/binaryen";

/** Converts calls only when their results reach the caller without further work. */
export class TailCallPass extends Pass {
  private results: TypeRef = TypeRef.None;

  /** @override */
  walkFunction(func: FunctionRef): void {
    this.results = _BinaryenFunctionGetResults(func);
    super.walkFunction(func);
    let body = _BinaryenFunctionGetBody(func);
    if (body) _BinaryenFunctionSetBody(func, this.makeTail(body));
  }

  /** @override */
  visit(expr: ExpressionRef): void {
    // Returning through a handler must still allow that handler to catch exceptions
    // thrown by the callee. Do not move calls out of exception regions.
    if (_BinaryenExpressionGetId(expr) == ExpressionId.Try) return;
    super.visit(expr);
    _BinaryenExpressionFinalize(expr);
  }

  /** @override */
  visitReturn(expr: ExpressionRef): void {
    let value = _BinaryenReturnGetValue(expr);
    if (value) {
      value = this.makeTail(value);
      if (_BinaryenExpressionGetType(value) == TypeRef.Unreachable) {
        this.replaceCurrent(value);
      }
    }
  }

  /** @override */
  visitBlock(expr: ExpressionRef): void {
    let count = _BinaryenBlockGetNumChildren(expr);
    for (let i: Index = 1; i < count; ++i) {
      let ret = _BinaryenBlockGetChildAt(expr, i);
      if (_BinaryenExpressionGetId(ret) != ExpressionId.Return) continue;
      let value = _BinaryenReturnGetValue(ret);
      let previous = _BinaryenBlockGetChildAt(expr, i - 1);
      if (value) {
        // The adjacent store cannot be observed after returning. Never move a
        // call across intervening work, including shadow-stack restoration.
        if (
          _BinaryenExpressionGetId(value) != ExpressionId.LocalGet ||
          _BinaryenExpressionGetId(previous) != ExpressionId.LocalSet ||
          _BinaryenLocalSetIsTee(previous) ||
          _BinaryenLocalGetGetIndex(value) != _BinaryenLocalSetGetIndex(previous)
        ) continue;
        value = this.makeTail(_BinaryenLocalSetGetValue(previous));
      } else {
        if (this.results != TypeRef.None) continue;
        value = this.makeTail(previous);
      }
      if (_BinaryenExpressionGetType(value) == TypeRef.Unreachable) {
        _BinaryenBlockSetChildAt(expr, i - 1, this.module.nop());
        _BinaryenBlockSetChildAt(expr, i, value);
      }
    }
  }

  /** Follows value-preserving wrappers, leaving conversions and cleanup intact. */
  private makeTail(expr: ExpressionRef): ExpressionRef {
    switch (_BinaryenExpressionGetId(expr)) {
      case ExpressionId.Call: {
        if (_BinaryenExpressionGetType(expr) == this.results) {
          _BinaryenCallSetReturn(expr, true);
        }
        break;
      }
      case ExpressionId.CallIndirect: {
        if (_BinaryenExpressionGetType(expr) == this.results) {
          _BinaryenCallIndirectSetReturn(expr, true);
        }
        break;
      }
      case ExpressionId.Block: {
        // Named blocks can also receive values from branches to their label.
        if (_BinaryenBlockGetName(expr)) break;
        let count = _BinaryenBlockGetNumChildren(expr);
        if (count) {
          let last = _BinaryenBlockGetChildAt(expr, count - 1);
          _BinaryenBlockSetChildAt(expr, count - 1, this.makeTail(last));
        }
        break;
      }
      case ExpressionId.If: {
        let ifTrue = _BinaryenIfGetIfTrue(expr);
        let ifFalse = _BinaryenIfGetIfFalse(expr);
        _BinaryenIfSetIfTrue(expr, this.makeTail(ifTrue));
        if (ifFalse) _BinaryenIfSetIfFalse(expr, this.makeTail(ifFalse));
        break;
      }
    }
    _BinaryenExpressionFinalize(expr);
    return expr;
  }
}
