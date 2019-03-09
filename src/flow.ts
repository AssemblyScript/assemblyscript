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
  getGetLocalIndex,
  isTeeLocal,
  getSetLocalValue,
  getGetGlobalName,
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
  getCallTarget
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

import {
  bitsetIs,
  bitsetSet
} from "./util";

/** Control flow flags indicating specific conditions. */
export const enum FlowFlags {
  /** No specific conditions. */
  NONE = 0,

  // categorical

  /** This flow returns. */
  RETURNS = 1 << 0,
  /** This flow returns a wrapped value. */
  RETURNS_WRAPPED = 1 << 1,
  /** This flow throws. */
  THROWS = 1 << 2,
  /** This flow breaks. */
  BREAKS = 1 << 3,
  /** This flow continues. */
  CONTINUES = 1 << 4,
  /** This flow allocates. Constructors only. */
  ALLOCATES = 1 << 5,
  /** This flow calls super. Constructors only. */
  CALLS_SUPER = 1 << 6,

  // conditional

  /** This flow conditionally returns in a child flow. */
  CONDITIONALLY_RETURNS = 1 << 7,
  /** This flow conditionally throws in a child flow. */
  CONDITIONALLY_THROWS = 1 << 8,
  /** This flow conditionally breaks in a child flow. */
  CONDITIONALLY_BREAKS = 1 << 9,
  /** This flow conditionally continues in a child flow. */
  CONDITIONALLY_CONTINUES = 1 << 10,
  /** This flow conditionally allocates in a child flow. Constructors only. */
  CONDITIONALLY_ALLOCATES = 1 << 11,

  // special

  /** This is an inlining flow. */
  INLINE_CONTEXT = 1 << 12,
  /** This is a flow with explicitly disabled bounds checking. */
  UNCHECKED_CONTEXT = 1 << 13,

  // masks

  /** Any terminating flag. */
  ANY_TERMINATING = FlowFlags.RETURNS
                  | FlowFlags.THROWS
                  | FlowFlags.BREAKS
                  | FlowFlags.CONTINUES,

  /** Any categorical flag. */
  ANY_CATEGORICAL = FlowFlags.RETURNS
                  | FlowFlags.RETURNS_WRAPPED
                  | FlowFlags.THROWS
                  | FlowFlags.BREAKS
                  | FlowFlags.CONTINUES
                  | FlowFlags.ALLOCATES
                  | FlowFlags.CALLS_SUPER,

  /** Any conditional flag. */
  ANY_CONDITIONAL = FlowFlags.CONDITIONALLY_RETURNS
                  | FlowFlags.CONDITIONALLY_THROWS
                  | FlowFlags.CONDITIONALLY_BREAKS
                  | FlowFlags.CONDITIONALLY_CONTINUES
                  | FlowFlags.CONDITIONALLY_ALLOCATES
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
  /** Local variable wrap states for the first 64 locals. */
  wrappedLocals: I64;
  /** Local variable wrap states for locals with index >= 64. */
  wrappedLocalsExt: I64[] | null;
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
    flow.wrappedLocals = i64_new(0);
    flow.wrappedLocalsExt = null;
    flow.inlineFunction = null;
    flow.inlineReturnLabel = null;
    return flow;
  }

  /** Creates an inline flow within `currentFunction`. */
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
    branch.wrappedLocals = this.wrappedLocals;
    branch.wrappedLocalsExt = this.wrappedLocalsExt ? this.wrappedLocalsExt.slice() : null;
    branch.inlineFunction = this.inlineFunction;
    branch.inlineReturnLabel = this.inlineReturnLabel;
    return branch;
  }

  /** Gets a free temporary local of the specified type. */
  getTempLocal(type: Type, wrapped: bool = false): Local {
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
    if (temps && temps.length) {
      local = temps.pop();
      local.type = type;
      local.flags = CommonFlags.NONE;
    } else {
      local = parentFunction.addLocal(type);
    }
    if (type.is(TypeFlags.SHORT | TypeFlags.INTEGER)) this.setLocalWrapped(local.index, wrapped);
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
  getAndFreeTempLocal(type: Type, wrapped: bool): Local {
    var parentFunction = this.parentFunction;
    var temps: Local[];
    switch (type.toNativeType()) {
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
    var local: Local;
    if (temps.length) {
      local = temps[temps.length - 1];
      local.type = type;
    } else {
      local = parentFunction.addLocal(type);
      temps.push(local);
    }
    if (type.is(TypeFlags.SHORT | TypeFlags.INTEGER)) this.setLocalWrapped(local.index, wrapped);
    return local;
  }

  /** Adds a new scoped local of the specified name. */
  addScopedLocal(name: string, type: Type, wrapped: bool, reportNode: Node | null = null): Local {
    var scopedLocal = this.getTempLocal(type, false);
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
    scopedLocal.set(CommonFlags.SCOPED);
    this.scopedLocals.set(name, scopedLocal);
    if (type.is(TypeFlags.SHORT | TypeFlags.INTEGER)) {
      this.setLocalWrapped(scopedLocal.index, wrapped);
    }
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
    var scopedAlias = new Local(
      name,
      index,
      type,
      this.parentFunction
    );
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

  /** Tests if the value of the local at the specified index is considered wrapped. */
  isLocalWrapped(index: i32): bool {
    if (index < 0) return true; // inlined constant
    if (index < 64) return bitsetIs(this.wrappedLocals, index);
    var ext = this.wrappedLocalsExt;
    var i = ((index - 64) / 64) | 0;
    if (!(ext && i < ext.length)) return false;
    return bitsetIs(ext[i], index - (i + 1) * 64);
  }

  /** Sets if the value of the local at the specified index is considered wrapped. */
  setLocalWrapped(index: i32, wrapped: bool): void {
    if (index < 0) return; // inlined constant
    if (index < 64) {
      this.wrappedLocals = bitsetSet(this.wrappedLocals, index, wrapped);
      return;
    }
    var ext = this.wrappedLocalsExt;
    var i = ((index - 64) / 64) | 0;
    if (!ext) {
      this.wrappedLocalsExt = ext = new Array(i + 1);
      for (let j = 0; j <= i; ++j) ext[j] = i64_new(0);
    } else {
      while (ext.length <= i) ext.push(i64_new(0));
    }
    ext[i] = bitsetSet(ext[i], index - (i + 1) * 64, wrapped);
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
    this.wrappedLocals = other.wrappedLocals;
    this.wrappedLocalsExt = other.wrappedLocalsExt; // no need to slice because other flow is finished
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
  }

  /** Inherits mutual flags and local wrap states from the specified flows (e.g. then with else). */
  inheritMutual(left: Flow, right: Flow): void {
    // categorical flags set in both arms
    this.flags |= left.flags & right.flags & FlowFlags.ANY_CATEGORICAL;

    // conditional flags set in at least one arm
    this.flags |= left.flags & FlowFlags.ANY_CONDITIONAL;
    this.flags |= right.flags & FlowFlags.ANY_CONDITIONAL;

    // locals wrapped in both arms
    this.wrappedLocals = i64_and(left.wrappedLocals, right.wrappedLocals);
    var leftExt = left.wrappedLocalsExt;
    var rightExt = right.wrappedLocalsExt;
    if (leftExt != null && rightExt != null) {
      let thisExt = this.wrappedLocalsExt;
      let minLength = min(leftExt.length, rightExt.length);
      if (minLength) {
        if (!thisExt) thisExt = new Array(minLength);
        else while (thisExt.length < minLength) thisExt.push(i64_new(0));
        for (let i = 0; i < minLength; ++i) {
          thisExt[i] = i64_and(
            leftExt[i],
            rightExt[i]
          );
        }
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
      case ExpressionId.GetLocal: {
        let local = this.parentFunction.localsByIndex[getGetLocalIndex(expr)];
        return !this.isLocalWrapped(local.index)
            || canConversionOverflow(local.type, type);
      }

      // overflows if the value does
      case ExpressionId.SetLocal: { // tee
        assert(isTeeLocal(expr));
        return this.canOverflow(getSetLocalValue(expr), type);
      }

      // overflows if the conversion does (globals are wrapped on set)
      case ExpressionId.GetGlobal: {
        // TODO: this is inefficient because it has to read a string
        let global = assert(this.parentFunction.program.elementsByName.get(assert(getGetGlobalName(expr))));
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
        switch (getLoadBytes(expr)) {
          case 1:  { fromType = isLoadSigned(expr) ? Type.i8 : Type.u8; break; }
          case 2:  { fromType = isLoadSigned(expr) ? Type.i16 : Type.u16; break; }
          default: { fromType = isLoadSigned(expr) ? Type.i32 : Type.u32; break; }
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
        let instance = assert(program.instancesByName.get(assert(getCallTarget(expr))));
        assert(instance.kind == ElementKind.FUNCTION);
        let returnType = (<Function>instance).signature.returnType;
        return !(<Function>instance).flow.is(FlowFlags.RETURNS_WRAPPED)
            || canConversionOverflow(returnType, type);
      }

      // doesn't technically overflow
      case ExpressionId.Unreachable: return false;
    }
    return true;
  }
}

/** Tests if a conversion from one type to another can technically overflow. */
function canConversionOverflow(fromType: Type, toType: Type): bool {
  return !fromType.is(TypeFlags.INTEGER) // non-i32 locals or returns
      || fromType.size > toType.size
      || fromType.is(TypeFlags.SIGNED) != toType.is(TypeFlags.SIGNED);
}
