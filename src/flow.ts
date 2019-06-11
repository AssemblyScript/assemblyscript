/**
 * A control flow analyzer.
 * @module flow
 *//***/

import {
  Type,
  TypeFlags,
  TypeKind
} from "./types";

import {
  Local,
  Function,
  Element,
  ElementKind,
  Global
} from "./program";

import {
  NativeType,
  ExpressionId,
  ExpressionRef,

  getExpressionId,
  getLocalGetIndex,
  isLocalTee,
  getLocalSetValue,
  getGlobalGetName,
  getBinaryOp,
  BinaryOp,
  getBinaryLeft,
  getConstValueI32,
  getBinaryRight,
  getUnaryOp,
  UnaryOp,
  getExpressionType,
  getConstValueI64Low,
  getConstValueF32,
  getConstValueF64,
  getLoadBytes,
  isLoadSigned,
  getBlockName,
  getBlockChildCount,
  getBlockChild,
  getIfTrue,
  getIfFalse,
  getSelectThen,
  getSelectElse,
  getCallTarget,
  getLocalSetIndex,
  getIfCondition,
  getConstValueI64High,
  getUnaryValue,
  getCallOperand,
  traverse
} from "./module";

import {
  CommonFlags
} from "./common";

import {
  DiagnosticCode
} from "./diagnostics";

import {
  Node
} from "./ast";

/** Control flow flags indicating specific conditions. */
export const enum FlowFlags {
  /** No specific conditions. */
  NONE = 0,

  // categorical

  /** This flow returns. */
  RETURNS = 1 << 0,
  /** This flow returns a wrapped value. */
  RETURNS_WRAPPED = 1 << 1,
  /** This flow returns a non-null value. */
  RETURNS_NONNULL = 1 << 2,
  /** This flow throws. */
  THROWS = 1 << 3,
  /** This flow breaks. */
  BREAKS = 1 << 4,
  /** This flow continues. */
  CONTINUES = 1 << 5,
  /** This flow allocates. Constructors only. */
  ALLOCATES = 1 << 6,
  /** This flow calls super. Constructors only. */
  CALLS_SUPER = 1 << 7,
  /** This flow terminates (returns, throws or continues). */
  TERMINATES = 1 << 8,

  // conditional

  /** This flow conditionally returns in a child flow. */
  CONDITIONALLY_RETURNS = 1 << 9,
  /** This flow conditionally throws in a child flow. */
  CONDITIONALLY_THROWS = 1 << 10,
  /** This flow conditionally terminates in a child flow. */
  CONDITIONALLY_TERMINATES = 1 << 11,
  /** This flow conditionally breaks in a child flow. */
  CONDITIONALLY_BREAKS = 1 << 12,
  /** This flow conditionally continues in a child flow. */
  CONDITIONALLY_CONTINUES = 1 << 13,
  /** This flow conditionally allocates in a child flow. Constructors only. */
  CONDITIONALLY_ALLOCATES = 1 << 14,

  // special

  /** This is an inlining flow. */
  INLINE_CONTEXT = 1 << 15,
  /** This is a flow with explicitly disabled bounds checking. */
  UNCHECKED_CONTEXT = 1 << 16,

  // masks

  /** Any categorical flag. */
  ANY_CATEGORICAL = FlowFlags.RETURNS
                  | FlowFlags.RETURNS_WRAPPED
                  | FlowFlags.RETURNS_NONNULL
                  | FlowFlags.THROWS
                  | FlowFlags.BREAKS
                  | FlowFlags.CONTINUES
                  | FlowFlags.ALLOCATES
                  | FlowFlags.CALLS_SUPER
                  | FlowFlags.TERMINATES,

  /** Any conditional flag. */
  ANY_CONDITIONAL = FlowFlags.CONDITIONALLY_RETURNS
                  | FlowFlags.CONDITIONALLY_THROWS
                  | FlowFlags.CONDITIONALLY_BREAKS
                  | FlowFlags.CONDITIONALLY_CONTINUES
                  | FlowFlags.CONDITIONALLY_ALLOCATES
}

/** Flags indicating the current state of a local. */
export enum LocalFlags {
  /** No specific conditions. */
  NONE = 0,

  /** Local is constant. */
  CONSTANT = 1 << 0,
  /** Local is properly wrapped. Relevant for small integers. */
  WRAPPED = 1 << 1,
  /** Local is non-null. */
  NONNULL = 1 << 2,
  /** Local is read from. */
  READFROM = 1 << 3,
  /** Local is written to. */
  WRITTENTO = 1 << 4,
  /** Local is retained. */
  RETAINED = 1 << 5,

  /** Local is conditionally read from. */
  CONDITIONALLY_READFROM = 1 << 6,
  /** Local is conditionally written to. */
  CONDITIONALLY_WRITTENTO = 1 << 7,
  /** Local must be conditionally retained. */
  CONDITIONALLY_RETAINED = 1 << 8,

  /** Any categorical flag. */
  ANY_CATEGORICAL = CONSTANT
                  | WRAPPED
                  | NONNULL
                  | READFROM
                  | WRITTENTO
                  | RETAINED,

  /** Any conditional flag. */
  ANY_CONDITIONAL = RETAINED
                  | CONDITIONALLY_READFROM
                  | CONDITIONALLY_WRITTENTO
                  | CONDITIONALLY_RETAINED,

  /** Any retained flag. */
  ANY_RETAINED = RETAINED
               | CONDITIONALLY_RETAINED
}
export namespace LocalFlags {
  export function join(left: LocalFlags, right: LocalFlags): LocalFlags {
    return ((left & LocalFlags.ANY_CATEGORICAL) & (right & LocalFlags.ANY_CATEGORICAL))
         |  (left & LocalFlags.ANY_CONDITIONAL) | (right & LocalFlags.ANY_CONDITIONAL);
  }
}

/** Flags indicating the current state of a field. */
export enum FieldFlags {
  /** No specific conditions. */
  NONE = 0,

  /** Field is initialized. Relevant in constructors. */
  INITIALIZED = 1 << 0,
  /** Field is conditionally initialized. Relevant in constructors. */
  CONDITIONALLY_INITIALIZED = 1 << 1,

  /** Any categorical flag. */
  ANY_CATEGORICAL = INITIALIZED,

  /** Any conditional flag. */
  ANY_CONDITIONAL = CONDITIONALLY_INITIALIZED
}
export namespace FieldFlags {
  export function join(left: FieldFlags, right: FieldFlags): FieldFlags {
    return ((left & FieldFlags.ANY_CATEGORICAL) & (right & FieldFlags.ANY_CATEGORICAL))
         |  (left & FieldFlags.ANY_CONDITIONAL) | (right & FieldFlags.ANY_CONDITIONAL);
  }
}

/** A control flow evaluator. */
export class Flow {

  /** Parent flow. */
  parent: Flow | null;
  /** Flow flags indicating specific conditions. */
  flags: FlowFlags;
  /** Function this flow belongs to. */
  parentFunction: Function;
  /** The label we break to when encountering a continue statement. */
  continueLabel: string | null;
  /** The label we break to when encountering a break statement. */
  breakLabel: string | null;
  /** The current return type. */
  returnType: Type;
  /** The current contextual type arguments. */
  contextualTypeArguments: Map<string,Type> | null;
  /** Scoped local variables. */
  scopedLocals: Map<string,Local> | null = null;
  /** Local flags. */
  localFlags: LocalFlags[];
  /** Field flags. Relevant in constructors. */
  fieldFlags: Map<string,FieldFlags> | null = null;
  /** Function being inlined, when inlining. */
  inlineFunction: Function | null;
  /** The label we break to when encountering a return statement, when inlining. */
  inlineReturnLabel: string | null;

  /** Creates the parent flow of the specified function. */
  static create(parentFunction: Function): Flow {
    var flow = new Flow();
    flow.parent = null;
    flow.flags = FlowFlags.NONE;
    flow.parentFunction = parentFunction;
    flow.continueLabel = null;
    flow.breakLabel = null;
    flow.returnType = parentFunction.signature.returnType;
    flow.contextualTypeArguments = parentFunction.contextualTypeArguments;
    flow.localFlags = [];
    flow.inlineFunction = null;
    flow.inlineReturnLabel = null;
    return flow;
  }

  /** Creates an inline flow within `parentFunction`. */
  static createInline(parentFunction: Function, inlineFunction: Function): Flow {
    var flow = Flow.create(parentFunction);
    flow.set(FlowFlags.INLINE_CONTEXT);
    flow.inlineFunction = inlineFunction;
    flow.inlineReturnLabel = inlineFunction.internalName + "|inlined." + (inlineFunction.nextInlineId++).toString(10);
    flow.returnType = inlineFunction.signature.returnType;
    flow.contextualTypeArguments = inlineFunction.contextualTypeArguments;
    return flow;
  }

  private constructor() { }

  /** Gets the actual function being compiled, The inlined function when inlining, otherwise the parent function. */
  get actualFunction(): Function {
    return this.inlineFunction || this.parentFunction;
  }

  /** Tests if this flow has the specified flag or flags. */
  is(flag: FlowFlags): bool { return (this.flags & flag) == flag; }
  /** Tests if this flow has one of the specified flags. */
  isAny(flag: FlowFlags): bool { return (this.flags & flag) != 0; }
  /** Sets the specified flag or flags. */
  set(flag: FlowFlags): void { this.flags |= flag; }
  /** Unsets the specified flag or flags. */
  unset(flag: FlowFlags): void { this.flags &= ~flag; }

  /** Forks this flow to a child flow. */
  fork(): Flow {
    var branch = new Flow();
    branch.parent = this;
    branch.flags = this.flags;
    branch.parentFunction = this.parentFunction;
    branch.continueLabel = this.continueLabel;
    branch.breakLabel = this.breakLabel;
    branch.returnType = this.returnType;
    branch.contextualTypeArguments = this.contextualTypeArguments;
    branch.localFlags = this.localFlags.slice();
    branch.inlineFunction = this.inlineFunction;
    branch.inlineReturnLabel = this.inlineReturnLabel;
    return branch;
  }

  /** Gets a free temporary local of the specified type. */
  getTempLocal(type: Type, except: Set<i32> | null = null): Local {
    var parentFunction = this.parentFunction;
    var temps: Local[] | null;
    switch (type.toNativeType()) {
      case NativeType.I32: { temps = parentFunction.tempI32s; break; }
      case NativeType.I64: { temps = parentFunction.tempI64s; break; }
      case NativeType.F32: { temps = parentFunction.tempF32s; break; }
      case NativeType.F64: { temps = parentFunction.tempF64s; break; }
      case NativeType.V128: { temps = parentFunction.tempV128s; break; }
      default: throw new Error("concrete type expected");
    }
    var local: Local;
    if (except) {
      if (temps && temps.length) {
        for (let i = 0, k = temps.length; i < k; ++i) {
          if (!except.has(temps[i].index)) {
            local = temps[i];
            let k = temps.length - 1;
            while (i < k) unchecked(temps[i] = temps[i++ + 1]);
            temps.length = k;
            local.type = type;
            local.flags = CommonFlags.NONE;
            this.unsetLocalFlag(local.index, ~0);
            return local;
          }
        }
      }
      local = parentFunction.addLocal(type);
    } else {
      if (temps && temps.length) {
        local = temps.pop();
        local.type = type;
        local.flags = CommonFlags.NONE;
      } else {
        local = parentFunction.addLocal(type);
      }
    }
    this.unsetLocalFlag(local.index, ~0);
    return local;
  }

  /** Gets a local that sticks around until this flow is exited, and then released. */
  getAutoreleaseLocal(type: Type, except: Set<i32> | null = null): Local {
    var local = this.getTempLocal(type, except);
    local.set(CommonFlags.SCOPED);
    var scopedLocals = this.scopedLocals;
    if (!scopedLocals) this.scopedLocals = scopedLocals = new Map();
    scopedLocals.set("~auto" + (this.parentFunction.nextAutoreleaseId++), local);
    this.setLocalFlag(local.index, LocalFlags.RETAINED);
    return local;
  }

  /** Frees the temporary local for reuse. */
  freeTempLocal(local: Local): void {
    if (local.is(CommonFlags.INLINED)) return;
    assert(local.index >= 0);
    var parentFunction = this.parentFunction;
    var temps: Local[];
    assert(local.type != null); // internal error
    switch ((<Type>local.type).toNativeType()) {
      case NativeType.I32: {
        temps = parentFunction.tempI32s || (parentFunction.tempI32s = []);
        break;
      }
      case NativeType.I64: {
        temps = parentFunction.tempI64s || (parentFunction.tempI64s = []);
        break;
      }
      case NativeType.F32: {
        temps = parentFunction.tempF32s || (parentFunction.tempF32s = []);
        break;
      }
      case NativeType.F64: {
        temps = parentFunction.tempF64s || (parentFunction.tempF64s = []);
        break;
      }
      case NativeType.V128: {
        temps = parentFunction.tempV128s || (parentFunction.tempV128s = []);
        break;
      }
      default: throw new Error("concrete type expected");
    }
    assert(local.index >= 0);
    temps.push(local);
  }

  /** Gets and immediately frees a temporary local of the specified type. */
  getAndFreeTempLocal(type: Type, except: Set<i32> | null = null): Local {
    var local = this.getTempLocal(type, except);
    this.freeTempLocal(local);
    return local;
  }

  /** Gets the scoped local of the specified name. */
  getScopedLocal(name: string): Local | null {
    var scopedLocals = this.scopedLocals;
    if (scopedLocals && scopedLocals.has(name)) return scopedLocals.get(name);
    return null;
  }

  /** Adds a new scoped local of the specified name. */
  addScopedLocal(name: string, type: Type, except: Set<i32> | null = null): Local {
    var scopedLocal = this.getTempLocal(type, except);
    var scopedLocals = this.scopedLocals;
    if (!scopedLocals) this.scopedLocals = scopedLocals = new Map();
    else assert(!scopedLocals.has(name));
    scopedLocal.set(CommonFlags.SCOPED);
    scopedLocals.set(name, scopedLocal);
    return scopedLocal;
  }

  /** Adds a new scoped alias for the specified local. For example `super` aliased to the `this` local. */
  addScopedAlias(name: string, type: Type, index: i32, reportNode: Node | null = null): Local {
    if (!this.scopedLocals) this.scopedLocals = new Map();
    else {
      let existingLocal = this.scopedLocals.get(name);
      if (existingLocal) {
        if (reportNode) {
          this.parentFunction.program.error(
            DiagnosticCode.Duplicate_identifier_0,
            reportNode.range
          );
        }
        return existingLocal;
      }
    }
    assert(index < this.parentFunction.localsByIndex.length);
    var scopedAlias = new Local(name, index, type, this.parentFunction);
    // not flagged as SCOPED as it must not be free'd when the flow is finalized
    this.scopedLocals.set(name, scopedAlias);
    return scopedAlias;
  }

  /** Frees this flow's scoped variables and returns its parent flow. */
  freeScopedLocals(): void {
    if (this.scopedLocals) {
      for (let scopedLocal of this.scopedLocals.values()) {
        if (scopedLocal.is(CommonFlags.SCOPED)) { // otherwise an alias
          this.freeTempLocal(scopedLocal);
        }
      }
      this.scopedLocals = null;
    }
  }

  /** Looks up the local of the specified name in the current scope. */
  lookupLocal(name: string): Local | null {
    var current: Flow | null = this;
    var scope: Map<String,Local> | null;
    do if ((scope = current.scopedLocals) && (scope.has(name))) return scope.get(name);
    while (current = current.parent);
    return this.parentFunction.localsByName.get(name);
  }

  /** Looks up the element with the specified name relative to the scope of this flow. */
  lookup(name: string): Element | null {
    var element = this.lookupLocal(name);
    if (element) return element;
    return this.actualFunction.lookup(name);
  }

  /** Tests if the local at the specified index has the specified flag or flags. */
  isLocalFlag(index: i32, flag: LocalFlags, defaultIfInlined: bool = true): bool {
    if (index < 0) return defaultIfInlined;
    var localFlags = this.localFlags;
    return index < localFlags.length && (unchecked(this.localFlags[index]) & flag) == flag;
  }

  /** Tests if the local at the specified index has any of the specified flags. */
  isAnyLocalFlag(index: i32, flag: LocalFlags, defaultIfInlined: bool = true): bool {
    if (index < 0) return defaultIfInlined;
    var localFlags = this.localFlags;
    return index < localFlags.length && (unchecked(this.localFlags[index]) & flag) != 0;
  }

  /** Sets the specified flag or flags on the local at the specified index. */
  setLocalFlag(index: i32, flag: LocalFlags): void {
    if (index < 0) return;
    var localFlags = this.localFlags;
    var flags = index < localFlags.length ? unchecked(localFlags[index]) : 0;
    this.localFlags[index] = flags | flag;
  }

  /** Unsets the specified flag or flags on the local at the specified index. */
  unsetLocalFlag(index: i32, flag: LocalFlags): void {
    if (index < 0) return;
    var localFlags = this.localFlags;
    var flags = index < localFlags.length ? unchecked(localFlags[index]) : 0;
    this.localFlags[index] = flags & ~flag;
  }

  /** Pushes a new break label to the stack, for example when entering a loop that one can `break` from. */
  pushBreakLabel(): string {
    var parentFunction = this.parentFunction;
    var id = parentFunction.nextBreakId++;
    var stack = parentFunction.breakStack;
    if (!stack) parentFunction.breakStack = [ id ];
    else stack.push(id);
    return parentFunction.breakLabel = id.toString(10);
  }

  /** Pops the most recent break label from the stack. */
  popBreakLabel(): void {
    var parentFunction = this.parentFunction;
    var stack = assert(parentFunction.breakStack);
    var length = assert(stack.length);
    stack.pop();
    if (length > 1) {
      parentFunction.breakLabel = stack[length - 2].toString(10);
    } else {
      parentFunction.breakLabel = null;
      parentFunction.breakStack = null;
    }
  }

  /** Inherits flags and local wrap states from the specified flow (e.g. blocks). */
  inherit(other: Flow): void {
    this.flags |= other.flags & (FlowFlags.ANY_CATEGORICAL | FlowFlags.ANY_CONDITIONAL);
    this.localFlags = other.localFlags; // no need to slice because other flow is finished
  }

  /** Inherits categorical flags as conditional flags from the specified flow (e.g. then without else). */
  inheritConditional(other: Flow): void {
    if (other.is(FlowFlags.RETURNS)) {
      this.set(FlowFlags.CONDITIONALLY_RETURNS);
    }
    if (other.is(FlowFlags.THROWS)) {
      this.set(FlowFlags.CONDITIONALLY_THROWS);
    }
    if (other.is(FlowFlags.BREAKS) && other.breakLabel == this.breakLabel) {
      this.set(FlowFlags.CONDITIONALLY_BREAKS);
    }
    if (other.is(FlowFlags.CONTINUES) && other.continueLabel == this.continueLabel) {
      this.set(FlowFlags.CONDITIONALLY_CONTINUES);
    }
    if (other.is(FlowFlags.ALLOCATES)) {
      this.set(FlowFlags.CONDITIONALLY_ALLOCATES);
    }
    var localFlags = other.localFlags;
    for (let i = 0, k = localFlags.length; i < k; ++i) {
      let flags = localFlags[i];
      if (flags & LocalFlags.RETAINED) this.setLocalFlag(i, LocalFlags.CONDITIONALLY_RETAINED);
      if (flags & LocalFlags.READFROM) this.setLocalFlag(i, LocalFlags.CONDITIONALLY_READFROM);
      if (flags & LocalFlags.WRITTENTO) this.setLocalFlag(i, LocalFlags.CONDITIONALLY_WRITTENTO);
    }
  }

  /** Inherits mutual flags and local wrap states from the specified flows (e.g. then with else). */
  inheritMutual(left: Flow, right: Flow): void {
    // categorical flags set in both arms
    this.set(left.flags & right.flags & FlowFlags.ANY_CATEGORICAL);

    // conditional flags set in any arm
    this.set(left.flags & FlowFlags.ANY_CONDITIONAL);
    this.set(right.flags & FlowFlags.ANY_CONDITIONAL);

    // categorical flags in either arm as conditional
    this.inheritConditional(left);
    this.inheritConditional(right);

    // categorical local flags set in both arms / conditional local flags set in at least one arm
    var leftLocalFlags = left.localFlags;
    var numLeftLocalFlags = leftLocalFlags.length;
    var rightLocalFlags = right.localFlags;
    var numRightLocalFlags = rightLocalFlags.length;
    var combinedFlags = new Array<LocalFlags>(max<i32>(numLeftLocalFlags, numRightLocalFlags));
    for (let i = 0; i < numLeftLocalFlags; ++i) {
      combinedFlags[i] = LocalFlags.join(
        unchecked(leftLocalFlags[i]),
        i < numRightLocalFlags
          ? unchecked(rightLocalFlags[i])
          : 0
      );
    }
    for (let i = numLeftLocalFlags; i < numRightLocalFlags; ++i) {
      combinedFlags[i] = LocalFlags.join(
        0,
        unchecked(rightLocalFlags[i])
      );
    }
    this.localFlags = combinedFlags;
  }

  /** Checks if an expression of the specified type is known to be non-null, even if the type might be nullable. */
  isNonnull(expr: ExpressionRef, type: Type): bool {
    if (!type.is(TypeFlags.NULLABLE)) return true;
    // below, only teeLocal/getLocal are relevant because these are the only expressions that
    // depend on a dynamic nullable state (flag = LocalFlags.NONNULL), while everything else
    // has already been handled by the nullable type check above.
    switch (getExpressionId(expr)) {
      case ExpressionId.LocalSet: {
        if (!isLocalTee(expr)) break;
        let local = this.parentFunction.localsByIndex[getLocalSetIndex(expr)];
        return !local.type.is(TypeFlags.NULLABLE) || this.isLocalFlag(local.index, LocalFlags.NONNULL, false);
      }
      case ExpressionId.LocalGet: {
        let local = this.parentFunction.localsByIndex[getLocalGetIndex(expr)];
        return !local.type.is(TypeFlags.NULLABLE) || this.isLocalFlag(local.index, LocalFlags.NONNULL, false);
      }
    }
    return false;
  }

  /** Updates local states to reflect that this branch is only taken when `expr` is true-ish. */
  inheritNonnullIfTrue(expr: ExpressionRef): void {
    // A: `expr` is true-ish -> Q: how did that happen?
    switch (getExpressionId(expr)) {
      case ExpressionId.LocalSet: {
        if (!isLocalTee(expr)) break;
        let local = this.parentFunction.localsByIndex[getLocalSetIndex(expr)];
        this.setLocalFlag(local.index, LocalFlags.NONNULL);
        this.inheritNonnullIfTrue(getLocalSetValue(expr)); // must have been true-ish as well
        break;
      }
      case ExpressionId.LocalGet: {
        let local = this.parentFunction.localsByIndex[getLocalGetIndex(expr)];
        this.setLocalFlag(local.index, LocalFlags.NONNULL);
        break;
      }
      case ExpressionId.If: {
        let ifFalse = getIfFalse(expr);
        if (!ifFalse) break;
        if (getExpressionId(ifFalse) == ExpressionId.Const) {
          // Logical AND: (if (condition ifTrue 0))
          // the only way this had become true is if condition and ifTrue are true
          if (
            (getExpressionType(ifFalse) == NativeType.I32 && getConstValueI32(ifFalse) == 0) ||
            (getExpressionType(ifFalse) == NativeType.I64 && getConstValueI64Low(ifFalse) == 0 && getConstValueI64High(ifFalse) == 0)
          ) {
            this.inheritNonnullIfTrue(getIfCondition(expr));
            this.inheritNonnullIfTrue(getIfTrue(expr));
          }
        }
        break;
      }
      case ExpressionId.Unary: {
        switch (getUnaryOp(expr)) {
          case UnaryOp.EqzI32:
          case UnaryOp.EqzI64: {
            this.inheritNonnullIfFalse(getUnaryValue(expr)); // !value -> value must have been false
            break;
          }
        }
        break;
      }
      case ExpressionId.Binary: {
        switch (getBinaryOp(expr)) {
          case BinaryOp.EqI32: {
            let left = getBinaryLeft(expr);
            let right = getBinaryRight(expr);
            if (getExpressionId(left) == ExpressionId.Const && getConstValueI32(left) != 0) {
              this.inheritNonnullIfTrue(right); // TRUE == right -> right must have been true
            } else if (getExpressionId(right) == ExpressionId.Const && getConstValueI32(right) != 0) {
              this.inheritNonnullIfTrue(left); // left == TRUE -> left must have been true
            }
            break;
          }
          case BinaryOp.EqI64: {
            let left = getBinaryLeft(expr);
            let right = getBinaryRight(expr);
            if (getExpressionId(left) == ExpressionId.Const && (getConstValueI64Low(left) != 0 || getConstValueI64High(left) != 0)) {
              this.inheritNonnullIfTrue(right); // TRUE == right -> right must have been true
            } else if (getExpressionId(right) == ExpressionId.Const && (getConstValueI64Low(right) != 0 && getConstValueI64High(right) != 0)) {
              this.inheritNonnullIfTrue(left); // left == TRUE -> left must have been true
            }
            break;
          }
          case BinaryOp.NeI32: {
            let left = getBinaryLeft(expr);
            let right = getBinaryRight(expr);
            if (getExpressionId(left) == ExpressionId.Const && getConstValueI32(left) == 0) {
              this.inheritNonnullIfTrue(right); // FALSE != right -> right must have been true
            } else if (getExpressionId(right) == ExpressionId.Const && getConstValueI32(right) == 0) {
              this.inheritNonnullIfTrue(left); // left != FALSE -> left must have been true
            }
            break;
          }
          case BinaryOp.NeI64: {
            let left = getBinaryLeft(expr);
            let right = getBinaryRight(expr);
            if (getExpressionId(left) == ExpressionId.Const && getConstValueI64Low(left) == 0 && getConstValueI64High(left) == 0) {
              this.inheritNonnullIfTrue(right); // FALSE != right -> right must have been true
            } else if (getExpressionId(right) == ExpressionId.Const && getConstValueI64Low(right) == 0 && getConstValueI64High(right) == 0) {
              this.inheritNonnullIfTrue(left); // left != FALSE -> left must have been true
            }
            break;
          }
        }
        break;
      }
      case ExpressionId.Call: {
        let name = getCallTarget(expr);
        let program = this.parentFunction.program;
        switch (name) {
          case program.retainInstance.internalName: {
            this.inheritNonnullIfTrue(getCallOperand(expr, 0));
            break;
          }
        }
        break;
      }
    }
  }

  /** Updates local states to reflect that this branch is only taken when `expr` is false-ish. */
  inheritNonnullIfFalse(expr: ExpressionRef): void {
    // A: `expr` is false-ish -> Q: how did that happen?
    switch (getExpressionId(expr)) {
      case ExpressionId.Unary: {
        switch (getUnaryOp(expr)) {
          case UnaryOp.EqzI32:
          case UnaryOp.EqzI64: {
            this.inheritNonnullIfTrue(getUnaryValue(expr)); // !value -> value must have been true
            break;
          }
        }
        break;
      }
      case ExpressionId.If: {
        let ifTrue = getIfTrue(expr);
        if (getExpressionId(ifTrue) == ExpressionId.Const) {
          let ifFalse = getIfFalse(expr);
          if (!ifFalse) break;
          // Logical OR: (if (condition 1 ifFalse))
          // the only way this had become false is if condition and ifFalse are false
          if (
            (getExpressionType(ifTrue) == NativeType.I32 && getConstValueI32(ifTrue) != 0) ||
            (getExpressionType(ifTrue) == NativeType.I64 && (getConstValueI64Low(ifTrue) != 0 || getConstValueI64High(ifTrue) != 0))
          ) {
            this.inheritNonnullIfFalse(getIfCondition(expr));
            this.inheritNonnullIfFalse(getIfFalse(expr));
          }

        }
        break;
      }
      case ExpressionId.Binary: {
        switch (getBinaryOp(expr)) {
          // remember: we want to know how the _entire_ expression became FALSE (!)
          case BinaryOp.EqI32: {
            let left = getBinaryLeft(expr);
            let right = getBinaryRight(expr);
            if (getExpressionId(left) == ExpressionId.Const && getConstValueI32(left) == 0) {
              this.inheritNonnullIfTrue(right); // FALSE == right -> right must have been true
            } else if (getExpressionId(right) == ExpressionId.Const && getConstValueI32(right) == 0) {
              this.inheritNonnullIfTrue(left); // left == FALSE -> left must have been true
            }
            break;
          }
          case BinaryOp.EqI64: {
            let left = getBinaryLeft(expr);
            let right = getBinaryRight(expr);
            if (getExpressionId(left) == ExpressionId.Const && getConstValueI64Low(left) == 0 && getConstValueI64High(left) == 0) {
              this.inheritNonnullIfTrue(right); // FALSE == right -> right must have been true
            } else if (getExpressionId(right) == ExpressionId.Const && getConstValueI64Low(right) == 0 && getConstValueI64High(right) == 0) {
              this.inheritNonnullIfTrue(left); // left == FALSE -> left must have been true
            }
            break;
          }
          case BinaryOp.NeI32: {
            let left = getBinaryLeft(expr);
            let right = getBinaryRight(expr);
            if (getExpressionId(left) == ExpressionId.Const && getConstValueI32(left) != 0) {
              this.inheritNonnullIfTrue(right); // TRUE != right -> right must have been true
            } else if (getExpressionId(right) == ExpressionId.Const && getConstValueI32(right) != 0) {
              this.inheritNonnullIfTrue(left); // left != TRUE -> left must have been true
            }
            break;
          }
          case BinaryOp.NeI64: {
            let left = getBinaryLeft(expr);
            let right = getBinaryRight(expr);
            if (getExpressionId(left) == ExpressionId.Const && (getConstValueI64Low(left) != 0 || getConstValueI64High(left) != 0)) {
              this.inheritNonnullIfTrue(right); // TRUE != right -> right must have been true for this to become false
            } else if (getExpressionId(right) == ExpressionId.Const && (getConstValueI64Low(right) != 0 || getConstValueI64High(right) != 0)) {
              this.inheritNonnullIfTrue(left); // left != TRUE -> left must have been true for this to become false
            }
            break;
          }
        }
        break;
      }
    }
  }

  /**
   * Tests if an expression can possibly overflow in the context of this flow. Assumes that the
   * expression might already have overflown and returns `false` only if the operation neglects
   * any possible combination of garbage bits being present.
   */
  canOverflow(expr: ExpressionRef, type: Type): bool {
    // TODO: the following catches most common and a few uncommon cases, but there are additional
    // opportunities here, obviously.
    assert(type != Type.void);

    // types other than i8, u8, i16, u16 and bool do not overflow
    if (!type.is(TypeFlags.SHORT | TypeFlags.INTEGER)) return false;

    var operand: ExpressionRef;
    switch (getExpressionId(expr)) {

      // overflows if the local isn't wrapped or the conversion does
      case ExpressionId.LocalGet: {
        let local = this.parentFunction.localsByIndex[getLocalGetIndex(expr)];
        return !this.isLocalFlag(local.index, LocalFlags.WRAPPED, true)
            || canConversionOverflow(local.type, type);
      }

      // overflows if the value does
      case ExpressionId.LocalSet: { // tee
        assert(isLocalTee(expr));
        return this.canOverflow(getLocalSetValue(expr), type);
      }

      // overflows if the conversion does (globals are wrapped on set)
      case ExpressionId.GlobalGet: {
        // TODO: this is inefficient because it has to read a string
        let global = assert(this.parentFunction.program.elementsByName.get(assert(getGlobalGetName(expr))));
        assert(global.kind == ElementKind.GLOBAL);
        return canConversionOverflow(assert((<Global>global).type), type);
      }

      case ExpressionId.Binary: {
        switch (getBinaryOp(expr)) {

          // comparisons do not overflow (result is 0 or 1)
          case BinaryOp.EqI32:
          case BinaryOp.EqI64:
          case BinaryOp.EqF32:
          case BinaryOp.EqF64:
          case BinaryOp.NeI32:
          case BinaryOp.NeI64:
          case BinaryOp.NeF32:
          case BinaryOp.NeF64:
          case BinaryOp.LtI32:
          case BinaryOp.LtU32:
          case BinaryOp.LtI64:
          case BinaryOp.LtU64:
          case BinaryOp.LtF32:
          case BinaryOp.LtF64:
          case BinaryOp.LeI32:
          case BinaryOp.LeU32:
          case BinaryOp.LeI64:
          case BinaryOp.LeU64:
          case BinaryOp.LeF32:
          case BinaryOp.LeF64:
          case BinaryOp.GtI32:
          case BinaryOp.GtU32:
          case BinaryOp.GtI64:
          case BinaryOp.GtU64:
          case BinaryOp.GtF32:
          case BinaryOp.GtF64:
          case BinaryOp.GeI32:
          case BinaryOp.GeU32:
          case BinaryOp.GeI64:
          case BinaryOp.GeU64:
          case BinaryOp.GeF32:
          case BinaryOp.GeF64: return false;

          // result won't overflow if one side is 0 or if one side is 1 and the other wrapped
          case BinaryOp.MulI32: {
            return !(
              (
                getExpressionId(operand = getBinaryLeft(expr)) == ExpressionId.Const &&
                (
                  getConstValueI32(operand) == 0 ||
                  (
                    getConstValueI32(operand) == 1 &&
                    !this.canOverflow(getBinaryRight(expr), type)
                  )
                )
              ) || (
                getExpressionId(operand = getBinaryRight(expr)) == ExpressionId.Const &&
                (
                  getConstValueI32(operand) == 0 ||
                  (
                    getConstValueI32(operand) == 1 &&
                    !this.canOverflow(getBinaryLeft(expr), type)
                  )
                )
              )
            );
          }

          // result won't overflow if one side is a constant less than this type's mask or one side
          // is wrapped
          case BinaryOp.AndI32: {
            // note that computeSmallIntegerMask returns the mask minus the MSB for signed types
            // because signed value garbage bits must be guaranteed to be equal to the MSB.
            return !(
              (
                (
                  getExpressionId(operand = getBinaryLeft(expr)) == ExpressionId.Const &&
                  getConstValueI32(operand) <= type.computeSmallIntegerMask(Type.i32)
                ) || !this.canOverflow(operand, type)
              ) || (
                (
                  getExpressionId(operand = getBinaryRight(expr)) == ExpressionId.Const &&
                  getConstValueI32(operand) <= type.computeSmallIntegerMask(Type.i32)
                ) || !this.canOverflow(operand, type)
              )
            );
          }

          // overflows if the shift doesn't clear potential garbage bits
          case BinaryOp.ShlI32: {
            let shift = 32 - type.size;
            return getExpressionId(operand = getBinaryRight(expr)) != ExpressionId.Const
                || getConstValueI32(operand) < shift;
          }

          // overflows if the value does and the shift doesn't clear potential garbage bits
          case BinaryOp.ShrI32: {
            let shift = 32 - type.size;
            return this.canOverflow(getBinaryLeft(expr), type) && (
              getExpressionId(operand = getBinaryRight(expr)) != ExpressionId.Const ||
              getConstValueI32(operand) < shift
            );
          }

          // overflows if the shift does not clear potential garbage bits. if an unsigned value is
          // wrapped, it can't overflow.
          case BinaryOp.ShrU32: {
            let shift = 32 - type.size;
            return type.is(TypeFlags.SIGNED)
              ? !(
                  getExpressionId(operand = getBinaryRight(expr)) == ExpressionId.Const &&
                  getConstValueI32(operand) > shift // must clear MSB
                )
              : this.canOverflow(getBinaryLeft(expr), type) && !(
                  getExpressionId(operand = getBinaryRight(expr)) == ExpressionId.Const &&
                  getConstValueI32(operand) >= shift // can leave MSB
                );
          }

          // overflows if any side does
          case BinaryOp.DivU32:
          case BinaryOp.RemI32:
          case BinaryOp.RemU32: {
            return this.canOverflow(getBinaryLeft(expr), type)
                || this.canOverflow(getBinaryRight(expr), type);
          }
        }
        break;
      }

      case ExpressionId.Unary: {
        switch (getUnaryOp(expr)) {

          // comparisons do not overflow (result is 0 or 1)
          case UnaryOp.EqzI32:
          case UnaryOp.EqzI64: return false;

          // overflow if the maximum result (32) cannot be represented in the target type
          case UnaryOp.ClzI32:
          case UnaryOp.CtzI32:
          case UnaryOp.PopcntI32: return type.size < 7;
        }
        break;
      }

      // overflows if the value cannot be represented in the target type
      case ExpressionId.Const: {
        let value: i32 = 0;
        switch (getExpressionType(expr)) {
          case NativeType.I32: { value = getConstValueI32(expr); break; }
          case NativeType.I64: { value = getConstValueI64Low(expr); break; } // discards upper bits
          case NativeType.F32: { value = i32(getConstValueF32(expr)); break; }
          case NativeType.F64: { value = i32(getConstValueF64(expr)); break; }
          default: assert(false);
        }
        switch (type.kind) {
          case TypeKind.I8: return value < i8.MIN_VALUE || value > i8.MAX_VALUE;
          case TypeKind.I16: return value < i16.MIN_VALUE || value > i16.MAX_VALUE;
          case TypeKind.U8: return value < 0 || value > u8.MAX_VALUE;
          case TypeKind.U16: return value < 0 || value > u16.MAX_VALUE;
          case TypeKind.BOOL: return (value & ~1) != 0;
        }
        break;
      }

      // overflows if the conversion does
      case ExpressionId.Load: {
        let fromType: Type;
        let signed = isLoadSigned(expr);
        switch (getLoadBytes(expr)) {
          case 1:  { fromType = signed ? Type.i8  : Type.u8;  break; }
          case 2:  { fromType = signed ? Type.i16 : Type.u16; break; }
          default: { fromType = signed ? Type.i32 : Type.u32; break; }
        }
        return canConversionOverflow(fromType, type);
      }

      // overflows if the result does, which is either
      // - the last expression of the block, by contract, if the block doesn't have a label
      // - the last expression or the value of an inner br if the block has a label (TODO)
      case ExpressionId.Block: {
        if (!getBlockName(expr)) {
          let size = assert(getBlockChildCount(expr));
          let last = getBlockChild(expr, size - 1);
          return this.canOverflow(last, type);
        }
        break;
      }

      // overflows if either side does
      case ExpressionId.If: {
        return this.canOverflow(getIfTrue(expr), type)
            || this.canOverflow(assert(getIfFalse(expr)), type);
      }

      // overflows if either side does
      case ExpressionId.Select: {
        return this.canOverflow(getSelectThen(expr), type)
            || this.canOverflow(getSelectElse(expr), type);
      }

      // overflows if the call does not return a wrapped value or the conversion does
      case ExpressionId.Call: {
        let program = this.parentFunction.program;
        let instancesByName = program.instancesByName;
        let instanceName = assert(getCallTarget(expr));
        if (instancesByName.has(instanceName)) {
          let instance = instancesByName.get(instanceName)!;
          assert(instance.kind == ElementKind.FUNCTION);
          let returnType = (<Function>instance).signature.returnType;
          return !(<Function>instance).flow.is(FlowFlags.RETURNS_WRAPPED)
              || canConversionOverflow(returnType, type);
        }
        return false; // assume no overflow for builtins
      }

      // doesn't technically overflow
      case ExpressionId.Unreachable: return false;
    }
    return true;
  }

  toString(): string {
    var levels = 0;
    var parent = this.parent;
    while (parent) {
      parent = parent.parent;
      ++levels;
    }
    return "Flow(" + this.actualFunction + ")[" + levels.toString() + "]";
  }
}

/** Tests if a conversion from one type to another can technically overflow. */
function canConversionOverflow(fromType: Type, toType: Type): bool {
  return !fromType.is(TypeFlags.INTEGER) // non-i32 locals or returns
      || fromType.size > toType.size
      || fromType.is(TypeFlags.SIGNED) != toType.is(TypeFlags.SIGNED);
}

/** Finds all indexes of locals used in the specified expression. */
export function findUsedLocals(expr: ExpressionRef, used: Set<i32> = new Set()): Set<i32> {
  traverse(expr, used, findUsedLocalsVisit);
  return used;
}

/** A visitor function for use with `traverse` that finds all indexes of used locals. */
function findUsedLocalsVisit(expr: ExpressionRef, used: Set<i32>): void {
  switch (getExpressionId(expr)) {
    case ExpressionId.LocalGet: {
      used.add(getLocalGetIndex(expr));
      break;
    }
    case ExpressionId.LocalSet: {
      used.add(getLocalSetIndex(expr));
      // fall-through for value
    }
    default: traverse(expr, used, findUsedLocalsVisit);
  }
}
