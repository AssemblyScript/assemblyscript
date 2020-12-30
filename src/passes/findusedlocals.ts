/**
 * @fileoverview Utility to find all locals used in an expression.
 * @license Apache-2.0
 */

import {
  BinaryenVisitor
} from "./pass";

import {
  BinaryenExpressionRef,
  _BinaryenLocalGetGetIndex,
  _BinaryenLocalSetGetIndex
} from "../glue/binaryen";

class FindUsedLocalsVisitor extends BinaryenVisitor {
  used: Set<i32>;

  constructor(used: Set<i32> = new Set()) {
    super();
    this.used = used;
  }
  
  /** @override */
  visitLocalGet(localGet: BinaryenExpressionRef): void {
    this.used.add(<i32>_BinaryenLocalGetGetIndex(localGet));
  }

  /** @override */
  visitLocalSet(localSet: BinaryenExpressionRef): void {
    this.used.add(<i32>_BinaryenLocalSetGetIndex(localSet));
  }
}

var singleton: FindUsedLocalsVisitor | null = null;

/** Finds the indexes of all locals used in the specified expression. */
export function findUsedLocals(
  expr: BinaryenExpressionRef,
  used: Set<i32> = new Set()
): Set<i32> {
  var visitor = singleton;
  if (!visitor) singleton = visitor = new FindUsedLocalsVisitor(used);
  else visitor.used = used;
  visitor.visit(expr);
  return used;
}
