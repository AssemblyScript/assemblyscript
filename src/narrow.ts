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
import { Type, TypeFlags } from "./types";

/** both a and b can assign to return type */
export function typeAnd(a: Type | null, b: Type | null): Type | null {
  if (a == null || b == null) {
    return null;
  } else {
    const nonnulla = a.nonNullableType;
    const nonnullb = b.nonNullableType;
    const nullable = a.is(TypeFlags.NULLABLE) || b.is(TypeFlags.NULLABLE);
    if (nonnulla.isAssignableTo(nonnullb)) {
      return nullable ? b.nullableType : nonnullb;
    } else if (nonnullb.isAssignableTo(nonnulla)) {
      return nullable ? a.nullableType : nonnulla;
    } else {
      return null;
    }
  }
}

/** return type can assign a and b, aggressive type narrow */
export function typeOr(a: Type | null, b: Type | null): Type | null {
  if (a == null) {
    return b;
  } else if (b == null) {
    return a;
  } else {
    const nonnulla = a.nonNullableType;
    const nonnullb = b.nonNullableType;
    const nullable = a.is(TypeFlags.NULLABLE) && b.is(TypeFlags.NULLABLE);
    if (nonnulla.isAssignableTo(nonnullb)) {
      // a extends b
      return nullable ? a.nullableType : nonnulla;
    } else if (nonnullb.isAssignableTo(nonnulla)) {
      // b extends a
      return nullable ? b.nullableType : nonnullb;
    } else {
      return null;
    }
  }
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
  /** set TypedElement as non-nullable */
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
  mergeOr(other: NarrowedTypeMap): void {
    let aMap = this.typeMap;
    let bMap = other.typeMap;
    let bKeys = Map_keys(bMap);
    for (let i = 0, k = bKeys.length; i < k; i++) {
      let key = bKeys[i];
      let aType = aMap.has(key) ? assert(aMap.get(key)) : null;
      let bType = assert(bMap.get(key));
      let mergedType = typeOr(aType, bType);
      if (mergedType) {
        aMap.set(key, mergedType);
      } else {
        aMap.delete(key);
      }
    }
  }
  mergeAnd(other: NarrowedTypeMap): void {
    let aMap = this.typeMap;
    let bMap = other.typeMap;
    let bKeys = Map_keys(bMap);
    let aKeys = Map_keys(aMap);
    for (let i = 0, k = aKeys.length; i < k; i++) {
      let akey = aKeys[i];
      if (!bMap.has(akey)) {
        aMap.delete(akey);
      }
    }
    for (let i = 0, k = bKeys.length; i < k; i++) {
      let key = bKeys[i];
      let aType = aMap.has(key) ? assert(aMap.get(key)) : null;
      let bType = assert(bMap.get(key));
      let mergedType = typeAnd(aType, bType);
      if (mergedType) {
        aMap.set(key, mergedType);
      } else {
        aMap.delete(key);
      }
    }
  }

  mergeElementOr(narrowedElement: NarrowedTypeElement): void {
    let thisTypeMap = this.typeMap;
    let element = narrowedElement.element;
    let aType = thisTypeMap.has(element) ? assert(this.typeMap.get(element)) : null;
    let bType = narrowedElement.type;
    let mergedType = typeOr(aType, bType);
    if (mergedType) {
      thisTypeMap.set(element, mergedType);
    } else {
      thisTypeMap.delete(element);
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

class NarrowedTypeElement {
  constructor(public element: TypedElement, public type: Type) {}
}

export class TypeNarrowChecker {
  /** expression in condition, meeting this expr means type can be narrowed */
  condiMap: Map<ExpressionRef, NarrowedTypeElement> = new Map();
  /** expression in condition, meeting this expr means element assigned as a type */
  assignMap: Map<ExpressionRef, NarrowedTypeElement> = new Map();

  /** set conditional narrowed type */
  setConditionNarrowedType(expr: ExpressionRef, element: TypedElement, type: Type): void {
    let condiMap = this.condiMap;
    if (expr <= 0) return;
    assert(!condiMap.has(expr));
    condiMap.set(expr, new NarrowedTypeElement(element, type));
  }
  /** set type of assigned element */
  setAssignType(expr: ExpressionRef, element: TypedElement, type: Type): void {
    let assignMap = this.assignMap;
    if (expr <= 0) return;
    assert(!assignMap.has(expr));
    assignMap.set(expr, new NarrowedTypeElement(element, type));
  }
  /** remove TypedElement from mapping, called when element is no longer used or re-used */
  removeElement(element: TypedElement): void {
    let condiKeys = Map_keys(this.condiMap);
    let condiValues = Map_values(this.condiMap);
    for (let i = 0, k = condiValues.length; i < k; i++) {
      if (condiValues[i].element == element) this.condiMap.delete(condiKeys[i]);
    }
    let assignKeys = Map_keys(this.assignMap);
    let assignValues = Map_values(this.assignMap);
    for (let i = 0, k = assignValues.length; i < k; i++) {
      if (assignValues[i].element == element) this.condiMap.delete(assignKeys[i]);
    }
  }

  collectNarrowedTypeIfTrue(expr: ExpressionRef, flow: Flow, typeMap: NarrowedTypeMap | null = null): NarrowedTypeMap {
    if (typeMap == null) typeMap = new NarrowedTypeMap();
    // visit children
    switch (getExpressionId(expr)) {
      case ExpressionId.LocalSet: {
        if (!isLocalTee(expr)) break;
        this.collectNarrowedTypeIfTrue(getLocalSetValue(expr), flow, typeMap);
        break;
      }
      case ExpressionId.If: {
        let condition = getIfCondition(expr);
        let ifTrue = getIfTrue(expr);
        let ifFalse = getIfFalse(expr);
        if (ifFalse && isConstZero(ifFalse)) {
          // Logical AND: (if (condition ifTrue 0))
          // the only way this had become true is if condition and ifTrue are true
          this.collectNarrowedTypeIfTrue(condition, flow, typeMap);
          this.collectNarrowedTypeIfTrue(ifTrue, flow, typeMap);
        }
        if (ifFalse && isConstNonZero(ifTrue)) {
          // Logical OR: (if (condition 1 ifFalse))
          // the only way this had become false is if condition and ifFalse are false
          let subMapTrue = this.collectNarrowedTypeIfTrue(condition, flow, typeMap.clone());
          let subMapFalse = this.collectNarrowedTypeIfTrue(ifFalse, flow, typeMap.clone());
          subMapTrue.mergeAnd(subMapFalse);
          typeMap.mergeOr(subMapTrue);
        }
        break;
      }
      case ExpressionId.Unary: {
        switch (getUnaryOp(expr)) {
          case UnaryOp.EqzI32:
          case UnaryOp.EqzI64: {
            this.collectNarrowedTypeIfFalse(getUnaryValue(expr), flow, typeMap); // !value -> value must have been false

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
              this.collectNarrowedTypeIfTrue(right, flow, typeMap); // TRUE == right -> right must have been true
            } else if (isConstNonZero(right)) {
              this.collectNarrowedTypeIfTrue(left, flow, typeMap); // left == TRUE -> left must have been true
            }
            break;
          }
          case BinaryOp.NeI32:
          case BinaryOp.NeI64: {
            let left = getBinaryLeft(expr);
            let right = getBinaryRight(expr);
            if (isConstZero(left)) {
              this.collectNarrowedTypeIfTrue(right, flow, typeMap); // TRUE == right -> right must have been true
            } else if (isConstZero(right)) {
              this.collectNarrowedTypeIfTrue(left, flow, typeMap); // TRUE == right -> right must have been true
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
            this.collectNarrowedTypeIfTrue(right, flow, typeMap); // TRUE == right -> right must have been true
          } else if (isConstNonZero(right)) {
            this.collectNarrowedTypeIfTrue(left, flow, typeMap); // left == TRUE -> left must have been true
          }
        } else if (name == BuiltinNames.String_ne) {
          assert(getCallOperandCount(expr) == 2);
          let left = getCallOperandAt(expr, 0);
          let right = getCallOperandAt(expr, 1);
          if (isConstZero(left)) {
            this.collectNarrowedTypeIfTrue(right, flow, typeMap); // FALSE != right -> right must have been true
          } else if (isConstZero(right)) {
            this.collectNarrowedTypeIfTrue(left, flow, typeMap); // left != FALSE -> left must have been true
          }
        } else if (name == BuiltinNames.String_not) {
          assert(getCallOperandCount(expr) == 1);
          this.collectNarrowedTypeIfFalse(getCallOperandAt(expr, 0), flow, typeMap); // !value -> value must have been false
        } else if (name == BuiltinNames.tostack) {
          assert(getCallOperandCount(expr) == 1);
          this.collectNarrowedTypeIfTrue(getCallOperandAt(expr, 0), flow, typeMap);
        }
        break;
      }
    }

    // update expr
    const expressionMap = this.condiMap;
    if (expressionMap.has(expr)) {
      const narrowedTypeElement = assert(expressionMap.get(expr));
      typeMap.mergeElementOr(narrowedTypeElement);
    }
    const assignMap = this.assignMap;
    if (assignMap.has(expr)) {
      const assignTypeElement = assert(assignMap.get(expr));
      typeMap.set(assignTypeElement.element, assignTypeElement.type);
    }

    // nullable check
    switch (getExpressionId(expr)) {
      case ExpressionId.LocalSet: {
        const local = flow.parentFunction.localsByIndex[getLocalSetIndex(expr)];
        typeMap.setNonnull(local);
        break;
      }
      case ExpressionId.LocalGet: {
        const local = flow.parentFunction.localsByIndex[getLocalGetIndex(expr)];
        typeMap.setNonnull(local);
      }
    }
    
    return typeMap;
  }

  collectNarrowedTypeIfFalse(expr: ExpressionRef, flow: Flow, typeMap: NarrowedTypeMap | null = null): NarrowedTypeMap {
    if (typeMap == null) typeMap = new NarrowedTypeMap();
    switch (getExpressionId(expr)) {
      case ExpressionId.Unary: {
        switch (getUnaryOp(expr)) {
          case UnaryOp.EqzI32:
          case UnaryOp.EqzI64: {
            this.collectNarrowedTypeIfTrue(getUnaryValue(expr), flow, typeMap); // !value -> value must have been true
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
          this.collectNarrowedTypeIfFalse(getIfCondition(expr), flow, typeMap);
          this.collectNarrowedTypeIfFalse(getIfFalse(expr), flow, typeMap);
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
              this.collectNarrowedTypeIfTrue(right, flow, typeMap); // !(FALSE == right) -> right must have been true
            } else if (isConstZero(right)) {
              this.collectNarrowedTypeIfTrue(left, flow, typeMap); // !(left == FALSE) -> left must have been true
            }
            break;
          }
          case BinaryOp.NeI32:
          case BinaryOp.NeI64: {
            let left = getBinaryLeft(expr);
            let right = getBinaryRight(expr);
            if (isConstNonZero(left)) {
              this.collectNarrowedTypeIfTrue(right, flow, typeMap); // !(TRUE != right) -> right must have been true
            } else if (isConstNonZero(right)) {
              this.collectNarrowedTypeIfTrue(left, flow, typeMap); // !(left != TRUE) -> left must have been true
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
            this.collectNarrowedTypeIfTrue(right, flow, typeMap); // !(FALSE == right) -> right must have been true
          } else if (isConstZero(right)) {
            this.collectNarrowedTypeIfTrue(left, flow, typeMap); // !(left == FALSE) -> left must have been true
          }
        } else if (name == BuiltinNames.String_ne) {
          assert(getCallOperandCount(expr) == 2);
          let left = getCallOperandAt(expr, 0);
          let right = getCallOperandAt(expr, 1);
          if (isConstNonZero(left)) {
            this.collectNarrowedTypeIfTrue(right, flow, typeMap); // !(TRUE != right) -> right must have been true
          } else if (isConstNonZero(right)) {
            this.collectNarrowedTypeIfTrue(left, flow, typeMap); // !(left != TRUE) -> left must have been true
          }
        } else if (name == BuiltinNames.String_not) {
          assert(getCallOperandCount(expr) == 1);
          this.collectNarrowedTypeIfTrue(getCallOperandAt(expr, 0), flow, typeMap); // !(!value) -> value must have been true
        } else if (name == BuiltinNames.tostack) {
          assert(getCallOperandCount(expr) == 1);
          this.collectNarrowedTypeIfFalse(getCallOperandAt(expr, 0), flow, typeMap);
        }
        break;
      }
    }
    return typeMap;
  }
}
