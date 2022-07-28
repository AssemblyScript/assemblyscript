import { BuiltinNames } from "./builtins";
import { Flow } from "./flow";
import {
  BinaryOp,
  ExpressionId,
  ExpressionRef,
  getBinaryLeft,
  getBinaryOp,
  getBinaryRight,
  getCallOperandAt,
  getCallOperandCount,
  getCallTarget,
  getExpressionId,
  getIfCondition,
  getIfFalse,
  getIfTrue,
  getLocalGetIndex,
  getLocalSetIndex,
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
  get size(): i32 {
    return this.typeMap.size;
  }
  get(element: TypedElement): Type | null {
    if (this.typeMap.has(element)) {
      let type = assert(this.typeMap.get(element));
      if (type == Type.void) {
        return null;
      }
      return type;
    } else {
      return null;
    }
  }
  set(element: TypedElement, type: Type): void {
    this.typeMap.set(element, type);
  }
  setNonnull(typedElement: TypedElement): void {
    let typeMap = this.typeMap;
    if (typeMap.has(typedElement)) {
      let type = assert(typeMap.get(typedElement));
      typeMap.set(typedElement, type.nonNullableType);
    } else {
      typeMap.set(typedElement, typedElement.type.nonNullableType);
    }
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
        if (!bMap.has(akey)) {
          aMap.delete(akey);
        }
      }
    }
    for (let i = 0, k = bKeys.length; i < k; i++) {
      let key = bKeys[i];
      let aType = aMap.has(key) ? assert(aMap.get(key)) : null;
      let bType = assert(bMap.get(key));
      let mergedType =
        mode == TypeMergeMode.OR ? typeOr(aType, bType) : typeAnd(aType, bType);
      if (mergedType) {
        aMap.set(key, mergedType);
      } else {
        aMap.delete(key);
      }
    }
  }

  toString(): string {
    let key = Map_keys(this.typeMap);
    let value = Map_values(this.typeMap);
    let str = new Array<string>();
    for (let i = 0, k = key.length; i < k; i++) {
      str.push(`${key[i].internalName}: ${value[i]}`);
    }
    return "narrowedTypes: " + str.join("; ");
  }
}

export class TypeNarrowChecker {
  expressionMap: Map<ExpressionRef, NarrowedTypeMap> = new Map();

  removeConditionNarrowedType(element: TypedElement): void {
    let maps = Map_values(this.expressionMap);
    for (let i = 0, k = maps.length; i < k; i++) {
      maps[i].delete(element);
    }
  }

  /**
   * case 1: type is nonnull, add condition type, eg t instanceof B
   * case 2: type is null, remove condition type, eg t = new A() in some condition
   */
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
        narrowMap.set(element, type);
      } else {
        narrowMap.set(element, Type.void);
      }
    }
  }

  collectNarrowedTypeIfTrue(expr: ExpressionRef, flow: Flow): NarrowedTypeMap {  
    let result = new NarrowedTypeMap();
    let expressionMap = assert(this.expressionMap);
    if (expressionMap.has(expr)) {
      let typeMap = assert(expressionMap.get(expr));
      result.merge(typeMap);
    }
    switch (getExpressionId(expr)) {
      case ExpressionId.LocalSet: {
        if (!isLocalTee(expr)) break;
        let subMap = this.collectNarrowedTypeIfTrue(
          getLocalSetValue(expr),
          flow
        );
        result.merge(subMap);
        let local = flow.parentFunction.localsByIndex[getLocalSetIndex(expr)];
        result.setNonnull(local);
        break;
      }
      case ExpressionId.LocalGet: {
        let local = flow.parentFunction.localsByIndex[getLocalGetIndex(expr)];
        result.setNonnull(local);
        break;
      }
      case ExpressionId.If: {
        let condition = getIfCondition(expr);
        let ifTrue = getIfTrue(expr);
        let ifFalse = getIfFalse(expr);
        if (ifFalse && isConstZero(ifFalse)) {
          // Logical AND: (if (condition ifTrue 0))
          // the only way this had become true is if condition and ifTrue are true
          let subMap = this.collectNarrowedTypeIfTrue(condition, flow);
          let subMapTrue = this.collectNarrowedTypeIfTrue(ifTrue, flow);
          subMap.merge(subMapTrue);
          result.merge(subMap);
        }
        if (ifFalse && isConstNonZero(ifTrue)) {
          // Logical OR: (if (condition 1 ifFalse))
          // the only way this had become false is if condition and ifFalse are false
          let subMap = this.collectNarrowedTypeIfTrue(condition, flow);
          let subMapFalse = this.collectNarrowedTypeIfTrue(ifFalse, flow);
          subMap.merge(subMapFalse, TypeMergeMode.AND);
          result.merge(subMap);
        }
        break;
      }
      case ExpressionId.Unary: {
        switch (getUnaryOp(expr)) {
          case UnaryOp.EqzI32:
          case UnaryOp.EqzI64: {
            let subMap = this.collectNarrowedTypeIfFalse(
              getUnaryValue(expr),
              flow
            ); // !value -> value must have been false
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
              let subMap = this.collectNarrowedTypeIfTrue(right, flow); // TRUE == right -> right must have been true
              result.merge(subMap);
            } else if (isConstNonZero(right)) {
              let subMap = this.collectNarrowedTypeIfTrue(left, flow); // left == TRUE -> left must have been true
              result.merge(subMap);
            }
            break;
          }
          case BinaryOp.NeI32:
          case BinaryOp.NeI64: {
            let left = getBinaryLeft(expr);
            let right = getBinaryRight(expr);
            if (isConstZero(left)) {
              let subMap = this.collectNarrowedTypeIfTrue(right, flow); // TRUE == right -> right must have been true
              result.merge(subMap);
            } else if (isConstZero(right)) {
              let subMap = this.collectNarrowedTypeIfTrue(left, flow); // TRUE == right -> right must have been true
              result.merge(subMap);
            }
            break;
          }
        }
        break;
      }
      case ExpressionId.Call: {
        // handle string eq/ne/not overloads
        let name = getCallTarget(expr);
        if (name == BuiltinNames.String_eq) {
          assert(getCallOperandCount(expr) == 2);
          let left = getCallOperandAt(expr, 0);
          let right = getCallOperandAt(expr, 1);
          if (isConstNonZero(left)) {
            let subMap = this.collectNarrowedTypeIfTrue(right, flow); // TRUE == right -> right must have been true
            result.merge(subMap);
          } else if (isConstNonZero(right)) {
            let subMap = this.collectNarrowedTypeIfTrue(left, flow); // left == TRUE -> left must have been true
            result.merge(subMap);
          }
        } else if (name == BuiltinNames.String_ne) {
          assert(getCallOperandCount(expr) == 2);
          let left = getCallOperandAt(expr, 0);
          let right = getCallOperandAt(expr, 1);
          if (isConstZero(left)) {
            let subMap = this.collectNarrowedTypeIfTrue(right, flow); // FALSE != right -> right must have been true
            result.merge(subMap);
          } else if (isConstZero(right)) {
            let subMap = this.collectNarrowedTypeIfTrue(left, flow); // left != FALSE -> left must have been true
            result.merge(subMap);
          }
        } else if (name == BuiltinNames.String_not) {
          assert(getCallOperandCount(expr) == 1);
          let subMap = this.collectNarrowedTypeIfFalse(
            getCallOperandAt(expr, 0),
            flow
          ); // !value -> value must have been false
          result.merge(subMap);
        } else if (name == BuiltinNames.tostack) {
          assert(getCallOperandCount(expr) == 1);
          let subMap = this.collectNarrowedTypeIfTrue(
            getCallOperandAt(expr, 0),
            flow
          );
          result.merge(subMap);
        }
        break;
      }
    }
    return result;
  }

  collectNarrowedTypeIfFalse(expr: ExpressionRef, flow: Flow): NarrowedTypeMap {
    let result = new NarrowedTypeMap();
    switch (getExpressionId(expr)) {
      case ExpressionId.Unary: {
        switch (getUnaryOp(expr)) {
          case UnaryOp.EqzI32:
          case UnaryOp.EqzI64: {
            let subMap = this.collectNarrowedTypeIfTrue(
              getUnaryValue(expr),
              flow
            ); // !value -> value must have been true
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
          let subMap = this.collectNarrowedTypeIfFalse(
            getIfCondition(expr),
            flow
          );
          let subMapFalse = this.collectNarrowedTypeIfFalse(
            getIfFalse(expr),
            flow
          );
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
              let subMap = this.collectNarrowedTypeIfTrue(right, flow); // !(FALSE == right) -> right must have been true
              result.merge(subMap);
            } else if (isConstZero(right)) {
              let subMap = this.collectNarrowedTypeIfTrue(left, flow); // !(left == FALSE) -> left must have been true
              result.merge(subMap);
            }
            break;
          }
          case BinaryOp.NeI32:
          case BinaryOp.NeI64: {
            let left = getBinaryLeft(expr);
            let right = getBinaryRight(expr);
            if (isConstNonZero(left)) {
              let subMap = this.collectNarrowedTypeIfTrue(right, flow); // !(TRUE != right) -> right must have been true
              result.merge(subMap);
            } else if (isConstNonZero(right)) {
              let subMap = this.collectNarrowedTypeIfTrue(left, flow); // !(left != TRUE) -> left must have been true
              result.merge(subMap);
            }
            break;
          }
        }
        break;
      }
      case ExpressionId.Call: {
        // handle string eq/ne/not overloads
        let name = getCallTarget(expr);
        if (name == BuiltinNames.String_eq) {
          assert(getCallOperandCount(expr) == 2);
          let left = getCallOperandAt(expr, 0);
          let right = getCallOperandAt(expr, 1);
          if (isConstZero(left)) {
            this.collectNarrowedTypeIfTrue(right, flow); // !(FALSE == right) -> right must have been true
          } else if (isConstZero(right)) {
            let subMap = this.collectNarrowedTypeIfTrue(left, flow); // !(left == FALSE) -> left must have been true
            result.merge(subMap);
          }
        } else if (name == BuiltinNames.String_ne) {
          assert(getCallOperandCount(expr) == 2);
          let left = getCallOperandAt(expr, 0);
          let right = getCallOperandAt(expr, 1);
          if (isConstNonZero(left)) {
            let subMap = this.collectNarrowedTypeIfTrue(right, flow); // !(TRUE != right) -> right must have been true
            result.merge(subMap);
          } else if (isConstNonZero(right)) {
            let subMap = this.collectNarrowedTypeIfTrue(left, flow); // !(left != TRUE) -> left must have been true
            result.merge(subMap);
          }
        } else if (name == BuiltinNames.String_not) {
          assert(getCallOperandCount(expr) == 1);
          let subMap = this.collectNarrowedTypeIfTrue(
            getCallOperandAt(expr, 0),
            flow
          ); // !(!value) -> value must have been true
          result.merge(subMap);
        } else if (name == BuiltinNames.tostack) {
          assert(getCallOperandCount(expr) == 1);
          let subMap = this.collectNarrowedTypeIfFalse(
            getCallOperandAt(expr, 0),
            flow
          );
          result.merge(subMap);
        }
        break;
      }
    }
    return result;
  }
}
