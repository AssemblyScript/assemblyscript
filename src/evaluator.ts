// TODO: not yet decided whether we'll need this
// https://github.com/WebAssembly/binaryen/pull/1294
// https://github.com/WebAssembly/binaryen/pull/1295

import { Type } from "./types";
import { I64 } from "./util";
import {

  NodeKind,

  Expression,
  BinaryExpression,
  LiteralExpression,
  UnaryExpression,
  UnaryPostfixExpression,
  UnaryPrefixExpression

} from "./ast";

export class Evaluator {

  success: bool = false;
  type: Type;
  integerValue: I64;
  floatValue: f64;
  stringValue: string;

  constructor(initialType: Type) {
    this.type = initialType;
  }

  evaluate(expression: Expression): this {
    switch (expression.kind) {

      case NodeKind.BINARY:
        this.evaluateBinary(<BinaryExpression>expression);
        break;

      case NodeKind.LITERAL:
        this.evaluateLiteral(<LiteralExpression>expression);
        break;

      case NodeKind.UNARYPREFIX:
        this.evaluateUnaryPrefix(<UnaryPrefixExpression>expression);
        break;
    }
    return this;
  }

  private evaluateBinary(expression: BinaryExpression): this {
    // TODO
    return this;
  }

  private evaluateLiteral(expression: LiteralExpression): this {
    // TODO
    return this;
  }

  private evaluateUnaryPrefix(expression: UnaryPrefixExpression): this {
    // TODO
    return this;
  }
}

export function evaluate(expression: Expression, contextualType: Type): Evaluator {
  return new Evaluator(contextualType).evaluate(expression);
}
