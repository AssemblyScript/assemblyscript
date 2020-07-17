/**
 * @fileoverview AssemblyScript Intermediate Representation.
 *
 * AIR is a thin layer on top of Binaryen IR.
 *
 * @license Apache-2.0
 */
import * as binaryen from "./glue/binaryen";
import {
  readString,
  allocString,
  Index,
  ExpressionRef,
  ExpressionId,
  NativeType
} from "./module";

@unmanaged
export abstract class Expression {

  static wrap(ref: ExpressionRef): Expression {
    switch (binaryen._BinaryenExpressionGetId(ref)) {
      case ExpressionId.Block: return new Block(ref);
      case ExpressionId.If: return new If(ref);
      // case ExpressionId.Loop: return new Loop(ref);
      // case ExpressionId.Break: return new Break(ref);
      // case ExpressionId.Switch: return new Switch(ref);
      // TODO
    }
    assert(false);
    return unreachable();
  }

  private _ref: ExpressionRef;

  constructor(ref: ExpressionRef) {
    assert(ASC_TARGET === 0);
    this._ref = ref;
  }

  get ref(): ExpressionRef {
    if (ASC_TARGET !== 0) return changetype<ExpressionRef>(this);
    return this._ref;
  }

  get id(): ExpressionId {
    return binaryen._BinaryenExpressionGetId(this.ref);
  }

  get type(): NativeType {
    return binaryen._BinaryenExpressionGetType(this.ref);
  }

  finalize(): void {
    binaryen._BinaryenExpressionFinalize(this.ref);
  }
}

@unmanaged
export class Block extends Expression {

  constructor(ref: ExpressionRef) {
    if (ASC_TARGET !== 0) return changetype<Block>(ref);
    super(ref);
  }

  get name(): string | null {
    return readString(binaryen._BinaryenBlockGetName(this.ref));
  }

  set name(name: string | null) {
    var namePtr = allocString(name);
    binaryen._BinaryenBlockSetName(this.ref, namePtr);
    binaryen._free(namePtr);
  }

  get numChildren(): Index {
    return binaryen._BinaryenBlockGetNumChildren(this.ref);
  }

  // TBD
  // get children(): Expression[] {
  //   var numChildren = binaryen._BinaryenBlockGetNumChildren(this.ref);
  //   var children = new Array<Expression>(numChildren);
  //   for (let index: Index = 0; index < numChildren; ++index) {
  //     children[index] = Expression.wrap(binaryen._BinaryenBlockGetChildAt(this.ref, index));
  //   }
  //   return children;
  // }

  getChildAt(index: Index): Expression {
    return Expression.wrap(binaryen._BinaryenBlockGetChildAt(this.ref, index));
  }

  setChildAt(index: Index, child: Expression): void {
    binaryen._BinaryenBlockSetChildAt(this.ref, index, child.ref);
  }

  appendChild(child: Expression): Index {
    return binaryen._BinaryenBlockAppendChild(this.ref, child.ref);
  }

  insertChildAt(index: Index, child: Expression): void {
    binaryen._BinaryenBlockInsertChildAt(this.ref, index, child.ref);
  }

  removeChildAt(index: Index): Expression {
    return Expression.wrap(binaryen._BinaryenBlockRemoveChildAt(this.ref, index));
  }
}

@unmanaged
export class If extends Expression {

  constructor(ref: ExpressionRef) {
    if (ASC_TARGET !== 0) return changetype<If>(ref);
    super(ref);
  }

  get condition(): Expression {
    return Expression.wrap(binaryen._BinaryenIfGetCondition(this.ref));
  }

  set condition(expr: Expression) {
    binaryen._BinaryenIfSetCondition(this.ref, expr.ref);
  }

  get ifTrue(): Expression {
    return Expression.wrap(binaryen._BinaryenIfGetIfTrue(this.ref));
  }

  set ifTrue(expr: Expression) {
    binaryen._BinaryenIfSetIfTrue(this.ref, expr.ref);
  }

  get ifFalse(): Expression | null {
    var expr = binaryen._BinaryenIfGetIfFalse(this.ref);
    return expr ? Expression.wrap(expr) : null;
  }

  set ifFalse(expr: Expression | null) {
    binaryen._BinaryenIfSetIfFalse(this.ref, expr ? expr.ref : 0);
  }
}
