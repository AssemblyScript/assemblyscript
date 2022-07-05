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

export enum TypeMergeMode {
  AND,
  OR,
}

export class NarrowedTypeMap {
  private typeMap: Map<TypedElement, Type> = new Map();
  get(key: TypedElement): Type | null {
    if (this.typeMap.has(key)) {
      let type = assert(this.typeMap.get(key));
      if (type == Type.void) {
        return null;
      }
      return type;
    } else {
      return null;
    }
  }
  set(key: TypedElement, value: Type): void {
    this.typeMap.set(key, value);
  }
  delete(key: TypedElement): bool {
    return this.typeMap.delete(key);
  }
  clone(): NarrowedTypeMap {
    let map = this.typeMap;
    let other = new NarrowedTypeMap();
    let _key = Map_keys(map);
    for (let i = 0, k = _key.length; i < k; i++) {
      let key = _key[i];
      let value = assert(map.get(key));
      other.typeMap.set(key, value);
    }
    return other;
  }
  merge(other: NarrowedTypeMap, mode: TypeMergeMode = TypeMergeMode.OR): void {
    let aMap = this.typeMap;
    let bMap = other.typeMap;
    let bKeys = Map_keys(bMap);
    if (mode == TypeMergeMode.AND) {
      let aKeys = Map_keys(aMap);
      for (let i = 0, k = aKeys.length; i < k; i++) {
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
      let mergedType = mode == TypeMergeMode.OR 
        ? typeOr(aType, bType) 
        : typeAnd(aType, bType);
      if (mergedType) {
        aMap.set(key, mergedType);
      } else {
        aMap.delete(key);
      }
    }
  }
}

export class TypeNarrowChecker {
  expressionMap: Map<ExpressionRef, NarrowedTypeMap> = new Map();

  setConditionNarrowedType(
    expr: ExpressionRef,
    element: TypedElement,
    type: Type | null
  ): void {
    let expressionMap = this.expressionMap;
    if (expr > 0) {
      if (!expressionMap.has(expr)) {
        expressionMap.set(expr, new NarrowedTypeMap());
      }
      let narrowMap = assert(expressionMap.get(expr));
      if (type) {
        // case 1: add condition type, eg t instanceof B
        narrowMap.set(element, type);
      } else {
        // case 2: remove condition type, eg t = new A() in some condition
        narrowMap.set(element, Type.void);
      }
    }
  }

  collectNarrowedTypeIfTrue(expr: ExpressionRef): NarrowedTypeMap {
    let result = new NarrowedTypeMap();
    let expressionMap = assert(this.expressionMap);
    if (expressionMap.has(expr)) {
      let typeMap = assert(expressionMap.get(expr));
      result.merge(typeMap);
    }
    switch (getExpressionId(expr)) {
      case ExpressionId.LocalSet: {
        if (!isLocalTee(expr)) break;
        let subMap = this.collectNarrowedTypeIfTrue(getLocalSetValue(expr));
        result.merge(subMap);
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
          subMap.merge(subMapTrue);
          result.merge(subMap);
        }
        if (ifFalse && isConstNonZero(ifTrue)) {
          // Logical OR: (if (condition 1 ifFalse))
          // the only way this had become false is if condition and ifFalse are false
          let subMap = this.collectNarrowedTypeIfTrue(condition);
          let subMapFalse = this.collectNarrowedTypeIfTrue(ifFalse);
          subMap.merge(subMapFalse, TypeMergeMode.AND);
          result.merge(subMap);
        }
        break;
      }
      case ExpressionId.Unary: {
        switch (getUnaryOp(expr)) {
          case UnaryOp.EqzI32:
          case UnaryOp.EqzI64: {
            let subMap = this.collectNarrowedTypeIfFalse(getUnaryValue(expr)); // !value -> value must have been false
            result.merge(subMap);
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
              result.merge(subMap);
            } else if (isConstNonZero(right)) {
              let subMap = this.collectNarrowedTypeIfTrue(left); // left == TRUE -> left must have been true
              result.merge(subMap);
            }
            break;
          }
          case BinaryOp.NeI32:
          case BinaryOp.NeI64: {
            let left = getBinaryLeft(expr);
            let right = getBinaryRight(expr);
            if (isConstZero(left)) {
              let subMap = this.collectNarrowedTypeIfTrue(right); // TRUE == right -> right must have been true
              result.merge(subMap);
            } else if (isConstZero(right)) {
              let subMap = this.collectNarrowedTypeIfTrue(left); // TRUE == right -> right must have been true
              result.merge(subMap);
            }
            break;
          }
        }
        break;
      }
    }
    return result;
  }

  collectNarrowedTypeIfFalse(expr: ExpressionRef): NarrowedTypeMap {
    let result = new NarrowedTypeMap();
    switch (getExpressionId(expr)) {
      case ExpressionId.Unary: {
        switch (getUnaryOp(expr)) {
          case UnaryOp.EqzI32:
          case UnaryOp.EqzI64: {
            let subMap = this.collectNarrowedTypeIfTrue(getUnaryValue(expr)); // !value -> value must have been true
            result.merge(subMap);
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
          subMap.merge(subMapFalse);
          result.merge(subMap);
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
              result.merge(subMap);
            } else if (isConstZero(right)) {
              let subMap = this.collectNarrowedTypeIfTrue(left); // !(left == FALSE) -> left must have been true
              result.merge(subMap);
            }
            break;
          }
          case BinaryOp.NeI32:
          case BinaryOp.NeI64: {
            let left = getBinaryLeft(expr);
            let right = getBinaryRight(expr);
            if (isConstNonZero(left)) {
              let subMap = this.collectNarrowedTypeIfTrue(right); // !(TRUE != right) -> right must have been true
              result.merge(subMap);
            } else if (isConstNonZero(right)) {
              let subMap = this.collectNarrowedTypeIfTrue(left); // !(left != TRUE) -> left must have been true
              result.merge(subMap);
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

