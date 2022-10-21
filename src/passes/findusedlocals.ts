/**
 * @fileoverview Utility to find all locals used in an expression.
 * @license Apache-2.0
 */

import {
  BitSet
} from "../util";

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
  used: BitSet;

  constructor(used: BitSet = new BitSet()) {
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

let singleton: FindUsedLocalsVisitor | null = null;

/** Finds the indexes of all locals used in the specified expression. */
export function findUsedLocals(
  expr: ExpressionRef,
  used: BitSet = new BitSet()
): BitSet {
  let visitor = singleton;
  if (!visitor) singleton = visitor = new FindUsedLocalsVisitor(used);
  else visitor.used = used;
  visitor.visit(expr);
  return used;
}
