import { Flow } from "./flow";
import {
  BinaryOp,
  ExpressionId,
  ExpressionRef,
  getBinaryLeft,
  getBinaryOp,
  getBinaryRight,
  getExpressionId,
  getIfCondition,
  getIfFalse,
  getIfTrue,
  getLocalSetValue,
  getUnaryOp,
  getUnaryValue,
  isConstNonZero,
  isConstZero,
  isLocalTee,
  UnaryOp,
} from "./module";
import { TypedElement } from "./program";
import { Type } from "./types";

function mergeTypeMap(
  main: Map<TypedElement, Type>,
  other: Map<TypedElement, Type>
): void {
  let _key = Map_keys(other);
  for (let i = 0, k = _key.length; i < k; i++) {
    let key = _key[i];
    let otherType = assert(other.get(key));
    if (main.has(key)) {
      let mainType = assert(main.get(key));
      let mergeType = Flow.mergeType(mainType, otherType);
      if (mergeType) {
        main.set(key, mergeType);
      } else {
        main.delete(key);
      }
    } else {
      main.set(key, otherType);
    }
  }
}

class ConditionalNarrowedType {
  constructor(public expr: ExpressionRef, public type: Type) {}
}

type ElementType = Map<TypedElement, ConditionalNarrowedType[]>;
class TypeNarrowChecker {
  elementMap: ElementType = new Map<TypedElement, ConditionalNarrowedType[]>();
  expressionMap: Map<ExpressionRef, Map<TypedElement, Type>> | null = null;

  private updateMap(): void {
    let expressionMap = new Map<ExpressionRef, Map<TypedElement, Type>>();
    let narrowedTypesConditional = this.elementMap;
    let _key = Map_keys(narrowedTypesConditional);
    for (let i = 0, k = _key.length; i < k; i++) {
      let element = _key[i];
      let narrowedTypes = assert(narrowedTypesConditional.get(element));
      for (let i = 0, k = narrowedTypes.length; i < k; i++) {
        let expr = narrowedTypes[i].expr;
        let type = narrowedTypes[i].type;
        if (!expressionMap.has(expr)) {
          expressionMap.set(expr, new Map());
        }
        let typedMap = assert(expressionMap.get(expr));
        typedMap.set(element, type);
      }
    }
    this.expressionMap = expressionMap;
  }

  setConditionNarrowedType(
    expr: ExpressionRef,
    element: TypedElement,
    type: Type | null
  ): void {
    this.expressionMap = null; // reset map
    let potential = this.elementMap;
    // case1: add condition type, eg t instanceof B
    if (expr > 0 && type) {
      if (potential.has(element)) {
        let conditionTypes = assert(potential.get(element));
        conditionTypes.push(
          new ConditionalNarrowedType(expr, type)
        );
      } else {
        potential.set(element, [new ConditionalNarrowedType(expr, type)]);
      }
    }
    // case 2: remove condition type, eg t = new A() in some condition
    // TODO
  }

  collectNarrowedTypeIfTrue(expr: ExpressionRef): Map<TypedElement, Type> {
    let result = new Map<TypedElement, Type>();
    if (this.expressionMap == null) this.updateMap();
    let expressionMap = assert(this.expressionMap);
    if (expressionMap.has(expr)) {
      let typeMap = assert(expressionMap.get(expr));
      mergeTypeMap(result, typeMap);
    }
    switch (getExpressionId(expr)) {
      case ExpressionId.LocalSet: {
        if (!isLocalTee(expr)) break;
        let subMap = this.collectNarrowedTypeIfTrue(getLocalSetValue(expr));
        mergeTypeMap(result, subMap);
        break;
      }
      case ExpressionId.If: {
        let ifFalse = getIfFalse(expr);
        if (ifFalse && isConstZero(ifFalse)) {
          // Logical AND: (if (condition ifTrue 0))
          // the only way this had become true is if condition and ifTrue are true
          let subMapCondi = this.collectNarrowedTypeIfTrue(
            getIfCondition(expr)
          );
          mergeTypeMap(result, subMapCondi);
          let subMapTrue = this.collectNarrowedTypeIfTrue(getIfTrue(expr));
          mergeTypeMap(result, subMapTrue);
        }
        break;
      }
      case ExpressionId.Unary: {
        switch (getUnaryOp(expr)) {
          case UnaryOp.EqzI32:
          case UnaryOp.EqzI64: {
            let subMap = this.collectNarrowedTypeIfFalse(getUnaryValue(expr)); // !value -> value must have been false
            mergeTypeMap(result, subMap);
            break;
          }
        }
        break;
      }
      case ExpressionId.Binary: {
        switch (getBinaryOp(expr)) {
          case BinaryOp.EqI32:
          case BinaryOp.EqI64: {
            let left = getBinaryLeft(expr);
            let right = getBinaryRight(expr);
            if (isConstNonZero(left)) {
              let subMap = this.collectNarrowedTypeIfTrue(right); // TRUE == right -> right must have been true
              mergeTypeMap(result, subMap);
            } else if (isConstNonZero(right)) {
              let subMap = this.collectNarrowedTypeIfTrue(left); // left == TRUE -> left must have been true
              mergeTypeMap(result, subMap);
            }
            break;
          }
          case BinaryOp.NeI32:
          case BinaryOp.NeI64: {
            let left = getBinaryLeft(expr);
            let right = getBinaryRight(expr);
            if (isConstZero(left)) {
              let subMap = this.collectNarrowedTypeIfTrue(right); // TRUE == right -> right must have been true
              mergeTypeMap(result, subMap);
            } else if (isConstZero(right)) {
              let subMap = this.collectNarrowedTypeIfTrue(left); // TRUE == right -> right must have been true
              mergeTypeMap(result, subMap);
            }
            break;
          }
        }
        break;
      }
    }
    return result;
  }

  collectNarrowedTypeIfFalse(expr: ExpressionRef): Map<TypedElement, Type> {
    let result = new Map<TypedElement, Type>();
    if (this.expressionMap == null) this.updateMap();
    switch (getExpressionId(expr)) {
      case ExpressionId.Unary: {
        switch (getUnaryOp(expr)) {
          case UnaryOp.EqzI32:
          case UnaryOp.EqzI64: {
            let subMap = this.collectNarrowedTypeIfTrue(getUnaryValue(expr)); // !value -> value must have been true
            mergeTypeMap(result, subMap);
            break;
          }
        }
        break;
      }
      case ExpressionId.If: {
        let ifTrue = getIfTrue(expr);
        let ifFalse = getIfFalse(expr);
        if (ifFalse && isConstNonZero(ifTrue)) {
          // Logical OR: (if (condition 1 ifFalse))
          // the only way this had become false is if condition and ifFalse are false
          let subMapCondi = this.collectNarrowedTypeIfFalse(
            getIfCondition(expr)
          );
          let subMapFalse = this.collectNarrowedTypeIfFalse(getIfFalse(expr));
          mergeTypeMap(result, subMapCondi);
          mergeTypeMap(result, subMapFalse);
        }
        break;
      }
      case ExpressionId.Binary: {
        switch (getBinaryOp(expr)) {
          // remember: we want to know how the _entire_ expression became FALSE (!)
          case BinaryOp.EqI32:
          case BinaryOp.EqI64: {
            let left = getBinaryLeft(expr);
            let right = getBinaryRight(expr);
            if (isConstZero(left)) {
              let subMap = this.collectNarrowedTypeIfTrue(right); // !(FALSE == right) -> right must have been true
              mergeTypeMap(result, subMap);
            } else if (isConstZero(right)) {
              let subMap = this.collectNarrowedTypeIfTrue(left); // !(left == FALSE) -> left must have been true
              mergeTypeMap(result, subMap);
            }
            break;
          }
          case BinaryOp.NeI32:
          case BinaryOp.NeI64: {
            let left = getBinaryLeft(expr);
            let right = getBinaryRight(expr);
            if (isConstNonZero(left)) {
              let subMap = this.collectNarrowedTypeIfTrue(right); // !(TRUE != right) -> right must have been true
              mergeTypeMap(result, subMap);
            } else if (isConstNonZero(right)) {
              let subMap = this.collectNarrowedTypeIfTrue(left); // !(left != TRUE) -> left must have been true
              mergeTypeMap(result, subMap);
            }
            break;
          }
        }
        break;
      }
    }
    return result;
  }
}

export let conditionalNarrowedTypeChecker = new TypeNarrowChecker();
