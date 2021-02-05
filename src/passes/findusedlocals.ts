/**
 * @fileoverview Utility to find all locals used in an expression.
 * @license Apache-2.0
 */

import {
  Visitor
} from "./pass";

import {
  ExpressionRef
} from "../module";

import {
  _BinaryenLocalGetGetIndex,
  _BinaryenLocalSetGetIndex
} from "../glue/binaryen";

class FindUsedLocalsVisitor extends Visitor {
  used: Set<i32>;

  constructor(used: Set<i32> = new Set()) {
    super();
    this.used = used;
  }
  
  /** @override */
  visitLocalGet(localGet: ExpressionRef): void {
    this.used.add(<i32>_BinaryenLocalGetGetIndex(localGet));
  }

  /** @override */
  visitLocalSet(localSet: ExpressionRef): void {
    this.used.add(<i32>_BinaryenLocalSetGetIndex(localSet));
  }
}

var singleton: FindUsedLocalsVisitor | null = null;

/** Finds the indexes of all locals used in the specified expression. */
export function findUsedLocals(
  expr: ExpressionRef,
  used: Set<i32> = new Set()
): Set<i32> {
  var visitor = singleton;
  if (!visitor) singleton = visitor = new FindUsedLocalsVisitor(used);
  else visitor.used = used;
  visitor.visit(expr);
  return used;
}
