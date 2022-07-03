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

export function typeAnd(a: Type | null, b: Type | null): Type | null {
  if (a == null || b == null) {
    return null;
  } else if (a.isAssignableTo(b)) {
    return b;
  } else if (b.isAssignableTo(a)) {
    return a;
  } else {
    return null;
  }
}
export function typeOr(a: Type | null, b: Type | null): Type | null {
  if (a == null) {
    return b;
  } else if (b == null) {
    return a;
  } else if (a.isAssignableTo(b)) {
    // a extends b
    return a;
  } else if (b.isAssignableTo(a)) {
    // b extends a
    return b;
  } else {
    return null;
  }
}

enum Mode {
  AND,
  OR,
}

function mergeTypeMap(
  aMap: Map<TypedElement, Type>,
  bMap: Map<TypedElement, Type>,
  mode: Mode = Mode.OR
): void {
  let bKeys = Map_keys(bMap);
  if (mode == Mode.AND) {
    let aKeys = Map_keys(aMap);
    for(let i = 0, k = aKeys.length; i < k; i++) {
      let akey = aKeys[i];
      if (!bKeys.includes(akey)) {
        aMap.delete(akey);
      }
    }
  }
  for (let i = 0, k = bKeys.length; i < k; i++) {
    let key = bKeys[i];
    let aType = aMap.has(key) ? assert(aMap.get(key)) : null;
    let bType = assert(bMap.get(key));
    let mergedType = mode == Mode.OR ? typeOr(aType, bType) : typeAnd(aType, bType);
    if (mergedType) {
      aMap.set(key, mergedType);
    } else {
      aMap.delete(key);
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
    // TODO could update when change, maintain 2 map both
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
        conditionTypes.push(new ConditionalNarrowedType(expr, type));
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
        let condition = getIfCondition(expr);
        let ifTrue = getIfTrue(expr);
        let ifFalse = getIfFalse(expr);
        if (ifFalse && isConstZero(ifFalse)) {
          // Logical AND: (if (condition ifTrue 0))
          // the only way this had become true is if condition and ifTrue are true
          let subMap = this.collectNarrowedTypeIfTrue(condition);
          let subMapTrue = this.collectNarrowedTypeIfTrue(ifTrue);
          mergeTypeMap(subMap, subMapTrue);
          mergeTypeMap(result, subMap);
        }
        if (ifFalse && isConstNonZero(ifTrue)) {
          // Logical OR: (if (condition 1 ifFalse))
          // the only way this had become false is if condition and ifFalse are false
          let subMap = this.collectNarrowedTypeIfTrue(condition);
          let subMapFalse = this.collectNarrowedTypeIfTrue(ifFalse);
          mergeTypeMap(subMap, subMapFalse, Mode.AND);
          mergeTypeMap(result, subMap);
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
          let subMap = this.collectNarrowedTypeIfFalse(getIfCondition(expr));
          let subMapFalse = this.collectNarrowedTypeIfFalse(getIfFalse(expr));
          mergeTypeMap(subMap, subMapFalse);
          mergeTypeMap(result, subMap);
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
