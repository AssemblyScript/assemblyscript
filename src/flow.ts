/**
 * @fileoverview A concurrent code flow analyzer.
 *
 * Flows keep track of compilation state and can be queried for various
 * conditions, like whether the current branch always terminates, whether
 * a local is known to be non-null or whether an expression has possibly
 * overflown its value range.
 *
 * To accomplish this, compilation of each function begins with a clean
 * flow populated with initial local states etc. While compilation
 * progresses, statements and expressions update flow state while control
 * constructs fork, potentially add scoped locals and later merge these
 * forked branches as necessary.
 *
 * @license Apache-2.0
 */

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
  Field,
  Class,
  TypedElement
} from "./program";

import {
  TypeRef,
  ExpressionId,
  ExpressionRef,
  BinaryOp,
  UnaryOp,

  getExpressionId,
  getLocalGetIndex,
  isLocalTee,
  getLocalSetValue,
  getGlobalGetName,
  getBinaryOp,
  getBinaryLeft,
  getConstValueI32,
  getBinaryRight,
  getUnaryOp,
  getExpressionType,
  getConstValueI64Low,
  getConstValueF32,
  getConstValueF64,
  getLoadBytes,
  isLoadSigned,
  getBlockName,
  getBlockChildCount,
  getBlockChildAt,
  getIfTrue,
  getIfFalse,
  getSelectThen,
  getSelectElse,
  getCallTarget,
  getLocalSetIndex,
  getIfCondition,
  getUnaryValue,
  getCallOperandAt,
  getCallOperandCount,
  isConstZero,
  isConstNonZero
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
  BitSet,
  cloneMap
} from "./util";

import {
  BuiltinNames
} from "./builtins";

/** Control flow flags indicating specific conditions. */
export const enum FlowFlags {
  /** No specific conditions. */
  None = 0,

  // categorical

  /** This flow always returns. */
  Returns = 1 << 0,
  /** This flow always returns a wrapped value. */
  ReturnsWrapped = 1 << 1,
  /** This flow always returns a non-null value. */
  ReturnsNonNull = 1 << 2,
  /** This flow always throws. */
  Throws = 1 << 3,
  /** This flow always breaks. */
  Breaks = 1 << 4,
  /** This flow always continues. */
  Continues = 1 << 5,
  /** This flow always accesses `this`. Constructors only. */
  AccessesThis = 1 << 6,
  /** This flow always calls `super`. Constructors only. */
  CallsSuper = 1 << 7,
  /** This flow always terminates (returns, throws or continues). */
  Terminates = 1 << 8, // Note that this doesn't cover BREAKS, which is separate

  // conditional

  /** This flow conditionally returns in a child flow. */
  ConditionallyReturns = 1 << 9,
  /** This flow conditionally throws in a child flow. */
  ConditionallyThrows = 1 << 10,
  /** This flow conditionally breaks in a child flow. */
  ConditionallyBreaks = 1 << 11,
  /** This flow conditionally continues in a child flow. */
  ConditionallyContinues = 1 << 12,
  /** This flow conditionally accesses `this` in a child flow. Constructors only. */
  ConditionallyAccessesThis = 1 << 13,
  /** This flow may return a non-this value. Constructors only. */
  MayReturnNonThis = 1 << 14,

  // other

  /** This is a flow with explicitly disabled bounds checking. */
  UncheckedContext = 1 << 15,
  /** This is a flow compiling a constructor parameter. */
  CtorParamContext = 1 << 16,

  // masks

  /** Any categorical flag. */
  AnyCategorical = FlowFlags.Returns
                 | FlowFlags.ReturnsWrapped
                 | FlowFlags.ReturnsNonNull
                 | FlowFlags.Throws
                 | FlowFlags.Breaks
                 | FlowFlags.Continues
                 | FlowFlags.AccessesThis
                 | FlowFlags.CallsSuper
                 | FlowFlags.Terminates,

  /** Any conditional flag. */
  AnyConditional = FlowFlags.ConditionallyReturns
                 | FlowFlags.ConditionallyThrows
                 | FlowFlags.ConditionallyBreaks
                 | FlowFlags.ConditionallyContinues
                 | FlowFlags.ConditionallyAccessesThis
}

/** Flags indicating the current state of a local. */
export const enum LocalFlags {
  /** No specific conditions. */
  None = 0,

  /** Local is constant. */
  Constant = 1 << 0,
  /** Local is properly wrapped. Relevant for small integers. */
  Wrapped = 1 << 1,
  /** Local is non-null. */
  NonNull = 1 << 2,
  /** Local is initialized. */
  Initialized = 1 << 3
}

/** Flags indicating the current state of a field. */
export const enum FieldFlags {
  None = 0,
  Initialized = 1 << 0
}

/** Condition kinds. */
export const enum ConditionKind {
  /** Outcome of the condition is unknown */
  Unknown,
  /** Condition is always true. */
  True,
  /** Condition is always false. */
  False
}

/** A control flow evaluator. */
export class Flow {

  /** Creates the parent flow of the specified function. */
  static createParent(parentFunction: Function): Flow {
    var flow = new Flow(parentFunction);
    if (parentFunction.is(CommonFlags.Constructor)) {
      flow.initThisFieldFlags();
    }
    return flow;
  }

  /** Creates an inline flow within `parentFunction`. */
  static createInline(parentFunction: Function, inlineFunction: Function): Flow {
    var flow = new Flow(parentFunction);
    flow.inlineFunction = inlineFunction;
    flow.inlineReturnLabel = `${inlineFunction.internalName}|inlined.${(inlineFunction.nextInlineId++)}`;
    if (inlineFunction.is(CommonFlags.Constructor)) {
      flow.initThisFieldFlags();
    }
    return flow;
  }

  private constructor(
    /** Function this flow belongs to. */
    public parentFunction: Function
  ) {
    /* nop */
  }

  /** Parent flow. */
  parent: Flow | null = null;
  /** Outer flow. Only relevant for first-class functions. */
  outer: Flow | null = null;
  /** Flow flags indicating specific conditions. */
  flags: FlowFlags = FlowFlags.None;
  /** The label we break to when encountering a continue statement. */
  continueLabel: string | null = null;
  /** The label we break to when encountering a break statement. */
  breakLabel: string | null = null;
  /** Scoped local variables. */
  scopedLocals: Map<string,Local> | null = null;
  /** Local flags. */
  localFlags: LocalFlags[] = [];
  /** Field flags on `this`. Constructors only. */
  thisFieldFlags: Map<Field,FieldFlags> | null = null;
  /** Function being inlined, when inlining. */
  inlineFunction: Function | null = null;
  /** The label we break to when encountering a return statement, when inlining. */
  inlineReturnLabel: string | null = null;

  /** Tests if this is an inline flow. */
  get isInline(): bool {
    return this.inlineFunction != null;
  }

  /** Gets the actual function being compiled, The inlined function when inlining, otherwise the parent function. */
  get actualFunction(): Function {
    var inlineFunction = this.inlineFunction;
    if (inlineFunction) return inlineFunction;
    return this.parentFunction;
  }

  /** Gets the current return type. */
  get returnType(): Type {
    return this.actualFunction.signature.returnType;
  }

  /** Gets the current contextual type arguments. */
  get contextualTypeArguments(): Map<string,Type> | null {
    return this.actualFunction.contextualTypeArguments;
  }

  /** Tests if this flow has the specified flag or flags. */
  is(flag: FlowFlags): bool { return (this.flags & flag) == flag; }
  /** Tests if this flow has one of the specified flags. */
  isAny(flag: FlowFlags): bool { return (this.flags & flag) != 0; }
  /** Sets the specified flag or flags. */
  set(flag: FlowFlags): void { this.flags |= flag; }
  /** Unsets the specified flag or flags. */
  unset(flag: FlowFlags): void { this.flags &= ~flag; }

  deriveConditionalFlags(): FlowFlags {
    let condiFlags = this.flags & FlowFlags.AnyConditional;
    if (this.is(FlowFlags.Returns)) {
      condiFlags |= FlowFlags.ConditionallyReturns;
    }
    if (this.is(FlowFlags.Throws)) {
      condiFlags |= FlowFlags.ConditionallyThrows;
    }
    if (this.is(FlowFlags.Breaks)) {
      condiFlags |= FlowFlags.ConditionallyBreaks;
    }
    if (this.is(FlowFlags.Continues)) {
      condiFlags |= FlowFlags.ConditionallyContinues;
    }
    if (this.is(FlowFlags.AccessesThis)) {
      condiFlags |= FlowFlags.ConditionallyAccessesThis;
    }
    return condiFlags;
  }

  /** Forks this flow to a child flow. */
  fork(resetBreakContext: bool = false): Flow {
    var branch = new Flow(this.parentFunction);
    branch.parent = this;
    branch.outer = this.outer;
    if (resetBreakContext) {
      branch.flags = this.flags & ~(
        FlowFlags.Breaks |
        FlowFlags.ConditionallyBreaks |
        FlowFlags.Continues |
        FlowFlags.ConditionallyContinues
      );
    } else {
      branch.flags = this.flags;
      branch.continueLabel = this.continueLabel;
      branch.breakLabel = this.breakLabel;
    }
    branch.localFlags = this.localFlags.slice();
    if (this.actualFunction.is(CommonFlags.Constructor)) {
      let thisFieldFlags = assert(this.thisFieldFlags);
      branch.thisFieldFlags = cloneMap(thisFieldFlags);
    } else {
      assert(!this.thisFieldFlags);
    }
    branch.inlineFunction = this.inlineFunction;
    branch.inlineReturnLabel = this.inlineReturnLabel;
    return branch;
  }

  /** Gets a free temporary local of the specified type. */
  getTempLocal(type: Type, except: BitSet | null = null): Local {
    var parentFunction = this.parentFunction;
    var temps: Local[] | null;
    switch (<u32>type.toRef()) {
      case <u32>TypeRef.I32: { temps = parentFunction.tempI32s; break; }
      case <u32>TypeRef.I64: { temps = parentFunction.tempI64s; break; }
      case <u32>TypeRef.F32: { temps = parentFunction.tempF32s; break; }
      case <u32>TypeRef.F64: { temps = parentFunction.tempF64s; break; }
      case <u32>TypeRef.V128: { temps = parentFunction.tempV128s; break; }
      case <u32>TypeRef.Funcref: { temps = parentFunction.tempFuncrefs; break; }
      case <u32>TypeRef.Externref: { temps = parentFunction.tempExternrefs; break; }
      case <u32>TypeRef.Anyref: { temps = parentFunction.tempAnyrefs; break; }
      case <u32>TypeRef.Eqref: { temps = parentFunction.tempEqrefs; break; }
      case <u32>TypeRef.I31ref: { temps = parentFunction.tempI31refs; break; }
      case <u32>TypeRef.Dataref: { temps = parentFunction.tempDatarefs; break; }
      default: throw new Error("concrete type expected");
    }
    var local: Local;
    if (except) {
      if (temps && temps.length > 0) {
        for (let i = 0, k = temps.length; i < k; ++i) {
          if (!except.has(temps[i].index)) {
            local = temps[i];
            let k = temps.length - 1;
            while (i < k) unchecked(temps[i] = temps[i++ + 1]);
            temps.length = k;
            local.type = type;
            local.flags = CommonFlags.None;
            this.unsetLocalFlag(local.index, ~0);
            return local;
          }
        }
      }
      local = parentFunction.addLocal(type);
    } else {
      if (temps && temps.length > 0) {
        local = assert(temps.pop());
        local.type = type;
        local.flags = CommonFlags.None;
      } else {
        local = parentFunction.addLocal(type);
      }
    }
    this.unsetLocalFlag(local.index, ~0);
    return local;
  }

  /** Frees the temporary local for reuse. */
  freeTempLocal(local: Local): void {
    if (local.is(CommonFlags.Inlined)) return;
    assert(local.index >= 0);
    var parentFunction = this.parentFunction;
    var temps: Local[];
    assert(local.type != null); // internal error
    local.resetTemporaryName();
    switch (<u32>local.type.toRef()) {
      case <u32>TypeRef.I32: {
        let tempI32s = parentFunction.tempI32s;
        if (tempI32s) temps = tempI32s;
        else parentFunction.tempI32s = temps = [];
        break;
      }
      case <u32>TypeRef.I64: {
        let tempI64s = parentFunction.tempI64s;
        if (tempI64s) temps = tempI64s;
        else parentFunction.tempI64s = temps = [];
        break;
      }
      case <u32>TypeRef.F32: {
        let tempF32s = parentFunction.tempF32s;
        if (tempF32s) temps = tempF32s;
        else parentFunction.tempF32s = temps = [];
        break;
      }
      case <u32>TypeRef.F64: {
        let tempF64s = parentFunction.tempF64s;
        if (tempF64s) temps = tempF64s;
        else parentFunction.tempF64s = temps = [];
        break;
      }
      case <u32>TypeRef.V128: {
        let tempV128s = parentFunction.tempV128s;
        if (tempV128s) temps = tempV128s;
        else parentFunction.tempV128s = temps = [];
        break;
      }
      case <u32>TypeRef.Funcref: {
        let tempFuncrefs = parentFunction.tempFuncrefs;
        if (tempFuncrefs) temps = tempFuncrefs;
        else parentFunction.tempFuncrefs = temps = [];
        break;
      }
      case <u32>TypeRef.Externref: {
        let tempExternrefs = parentFunction.tempExternrefs;
        if (tempExternrefs) temps = tempExternrefs;
        else parentFunction.tempExternrefs = temps = [];
        break;
      }
      case <u32>TypeRef.Anyref: {
        let tempAnyrefs = parentFunction.tempAnyrefs;
        if (tempAnyrefs) temps = tempAnyrefs;
        else parentFunction.tempAnyrefs = temps = [];
        break;
      }
      case <u32>TypeRef.Eqref: {
        let tempEqrefs = parentFunction.tempEqrefs;
        if (tempEqrefs) temps = tempEqrefs;
        else parentFunction.tempEqrefs = temps = [];
        break;
      }
      case <u32>TypeRef.I31ref: {
        let tempI31refs = parentFunction.tempI31refs;
        if (tempI31refs) temps = tempI31refs;
        else parentFunction.tempI31refs = temps = [];
        break;
      }
      case <u32>TypeRef.Dataref: {
        let tempDatarefs = parentFunction.tempDatarefs;
        if (tempDatarefs) temps = tempDatarefs;
        else parentFunction.tempDatarefs = temps = [];
        break;
      }
      default: throw new Error("concrete type expected");
    }
    temps.push(local);
  }

  /** Gets the scoped local of the specified name. */
  getScopedLocal(name: string): Local | null {
    var scopedLocals = this.scopedLocals;
    if (scopedLocals && scopedLocals.has(name)) return assert(scopedLocals.get(name));
    return null;
  }

  /** Adds a new scoped local of the specified name. */
  addScopedLocal(name: string, type: Type, except: BitSet | null = null): Local {
    var scopedLocal = this.getTempLocal(type, except);
    scopedLocal.setTemporaryName(name);
    var scopedLocals = this.scopedLocals;
    if (!scopedLocals) this.scopedLocals = scopedLocals = new Map();
    else assert(!scopedLocals.has(name));
    scopedLocal.set(CommonFlags.Scoped);
    scopedLocals.set(name, scopedLocal);
    return scopedLocal;
  }

  /** Adds a new scoped dummy local of the specified name. */
  addScopedDummyLocal(name: string, type: Type, declarationNode: Node): Local {
    var scopedDummy = new Local(name, -1, type, this.parentFunction);
    var scopedLocals = this.scopedLocals;
    if (!scopedLocals) this.scopedLocals = scopedLocals = new Map();
    else if (scopedLocals.has(name)) {
      this.parentFunction.program.error(
        DiagnosticCode.Cannot_redeclare_block_scoped_variable_0,
        declarationNode.range, name
      );
    }
    scopedDummy.set(CommonFlags.Scoped);
    scopedLocals.set(name, scopedDummy);
    return scopedDummy;
  }

  /** Adds a new scoped alias for the specified local. For example `super` aliased to the `this` local. */
  addScopedAlias(name: string, type: Type, index: i32, reportNode: Node | null = null): Local {
    var scopedLocals = this.scopedLocals;
    if (!scopedLocals) {
      this.scopedLocals = scopedLocals = new Map();
    } else if (scopedLocals.has(name)) {
      let existingLocal = assert(scopedLocals.get(name));
      if (reportNode) {
        if (!existingLocal.declaration.range.source.isNative) {
          this.parentFunction.program.errorRelated(
            DiagnosticCode.Duplicate_identifier_0,
            reportNode.range,
            existingLocal.declaration.name.range,
            name
          );
        } else {
          this.parentFunction.program.error(
            DiagnosticCode.Duplicate_identifier_0,
            reportNode.range, name
          );
        }
      }
      return existingLocal;
    }
    assert(index < this.parentFunction.localsByIndex.length);
    var scopedAlias = new Local(name, index, type, this.parentFunction);
    // not flagged as SCOPED as it must not be free'd when the flow is finalized
    scopedLocals.set(name, scopedAlias);
    return scopedAlias;
  }

  /** Tests if this flow has any scoped locals that must be free'd. */
  get hasScopedLocals(): bool {
    var scopedLocals = this.scopedLocals;
    if (scopedLocals) {
      // TODO: for (let local of scopedLocals.values()) {
      for (let _values = Map_values(scopedLocals), i = 0, k = _values.length; i < k; ++i) {
        let local = unchecked(_values[i]);
        if (local.is(CommonFlags.Scoped)) { // otherwise an alias
          return true;
        }
      }
    }
    return false;
  }

  /** Frees a single scoped local by its name. */
  freeScopedDummyLocal(name: string): void {
    var scopedLocals = assert(this.scopedLocals);
    assert(scopedLocals.has(name));
    let local = assert(scopedLocals.get(name));
    assert(local.index == -1);
    scopedLocals.delete(name);
  }

  /** Frees this flow's scoped variables and returns its parent flow. */
  freeScopedLocals(): void {
    var scopedLocals = this.scopedLocals;
    if (scopedLocals) {
      // TODO: for (let local of scopedLocals.values()) {
      for (let _values = Map_values(scopedLocals), i = 0, k = _values.length; i < k; ++i) {
        let local = unchecked(_values[i]);
        if (local.is(CommonFlags.Scoped)) { // otherwise an alias
          this.freeTempLocal(local);
        }
      }
      this.scopedLocals = null;
    }
  }

  /** Looks up the local of the specified name in the current scope. */
  lookupLocal(name: string): Local | null {
    var current: Flow | null = this;
    do {
      let scope = current.scopedLocals;
      if (scope && scope.has(name)) return assert(scope.get(name));
      current = current.parent;
    } while (current);
    var localsByName = this.parentFunction.localsByName;
    if (localsByName.has(name)) return assert(localsByName.get(name));
    return null;
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
    return index < localFlags.length && (unchecked(localFlags[index]) & flag) == flag;
  }

  /** Tests if the local at the specified index has any of the specified flags. */
  isAnyLocalFlag(index: i32, flag: LocalFlags, defaultIfInlined: bool = true): bool {
    if (index < 0) return defaultIfInlined;
    var localFlags = this.localFlags;
    return index < localFlags.length && (unchecked(localFlags[index]) & flag) != 0;
  }

  /** Sets the specified flag or flags on the local at the specified index. */
  setLocalFlag(index: i32, flag: LocalFlags): void {
    if (index < 0) return;
    var localFlags = this.localFlags;
    var flags = index < localFlags.length ? unchecked(localFlags[index]) : 0;
    localFlags[index] = flags | flag;
  }

  /** Unsets the specified flag or flags on the local at the specified index. */
  unsetLocalFlag(index: i32, flag: LocalFlags): void {
    if (index < 0) return;
    var localFlags = this.localFlags;
    var flags = index < localFlags.length ? unchecked(localFlags[index]) : 0;
    localFlags[index] = flags & ~flag;
  }

  /** Initializes `this` field flags. */
  initThisFieldFlags(): void {
    var actualFunction = this.actualFunction;
    assert(actualFunction.is(CommonFlags.Constructor));
    var actualParent = actualFunction.parent;
    assert(actualParent.kind == ElementKind.Class);
    var actualClass = <Class>actualParent;
    this.thisFieldFlags = new Map();
    var members = actualClass.members;
    if (members) {
      for (let _values = Map_values(members), i = 0, k = _values.length; i < k; ++i) {
        let member = _values[i];
        if (member.kind == ElementKind.Field) {
          let field = <Field>member;
          if (
            // guaranteed by super
            field.parent != actualClass ||
            // has field initializer
            field.initializerNode ||
            // is initialized as a ctor parameter
            field.prototype.parameterIndex != -1 ||
            // is safe to initialize with zero
            field.type.isAny(TypeFlags.Value | TypeFlags.Nullable)
          ) {
            this.setThisFieldFlag(field, FieldFlags.Initialized);
          }
        }
      }
    }
  }

  /** Tests if the specified `this` field has the specified flag or flags. */
  isThisFieldFlag(field: Field, flag: FieldFlags): bool {
    var fieldFlags = this.thisFieldFlags;
    if (fieldFlags != null && fieldFlags.has(field)) {
      return (changetype<FieldFlags>(fieldFlags.get(field)) & flag) == flag;
    }
    return false;
  }

  /** Sets the specified flag or flags on the given `this` field. */
  setThisFieldFlag(field: Field, flag: FieldFlags): void {
    var fieldFlags = this.thisFieldFlags;
    if (fieldFlags) {
      assert(this.actualFunction.is(CommonFlags.Constructor));
      if (fieldFlags.has(field)) {
        let flags = changetype<FieldFlags>(fieldFlags.get(field));
        fieldFlags.set(field, flags | flag);
      } else {
        fieldFlags.set(field, flag);
      }
    } else {
      assert(!this.actualFunction.is(CommonFlags.Constructor));
    }
  }

  /** Pushes a new break label to the stack, for example when entering a loop that one can `break` from. */
  pushBreakLabel(): string {
    var parentFunction = this.parentFunction;
    var id = parentFunction.nextBreakId++;
    var stack = parentFunction.breakStack;
    if (!stack) parentFunction.breakStack = [ id ];
    else stack.push(id);
    var label = id.toString();
    parentFunction.breakLabel = label;
    return label;
  }

  /** Pops the most recent break label from the stack. */
  popBreakLabel(): void {
    var parentFunction = this.parentFunction;
    var stack = assert(parentFunction.breakStack);
    var length = assert(stack.length);
    stack.pop();
    if (length > 1) {
      parentFunction.breakLabel = stack[length - 2].toString();
    } else {
      parentFunction.breakLabel = null;
      parentFunction.breakStack = null;
    }
  }

  /** Inherits flags of another flow into this one, i.e. a finished inner block. */
  inherit(other: Flow): void {
    assert(other.parentFunction == this.parentFunction);
    assert(other.parent == this); // currently the case, but might change
    var otherFlags = other.flags;

    // respective inner flags are irrelevant if contexts differ
    if (this.breakLabel != other.breakLabel) {
      if (otherFlags & (FlowFlags.Breaks | FlowFlags.ConditionallyBreaks)) {
        otherFlags &= ~FlowFlags.Terminates;
      }
      otherFlags &= ~(FlowFlags.Breaks | FlowFlags.ConditionallyBreaks);
    }
    if (this.continueLabel != other.continueLabel) {
      otherFlags &= ~(FlowFlags.Continues | FlowFlags.ConditionallyContinues);
    }

    this.flags = this.flags | otherFlags; // what happens before is still true
    this.localFlags = other.localFlags;
    this.thisFieldFlags = other.thisFieldFlags;
  }

  /** Inherits flags of a conditional branch joining again with this one, i.e. then without else. */
  inheritBranch(other: Flow, conditionKind: ConditionKind = ConditionKind.Unknown): void {
    assert(other.parentFunction == this.parentFunction);
    switch (conditionKind) {
      case ConditionKind.True: this.inherit(other); // always executes
      case ConditionKind.False: return;             // never executes
    }

    // Note that flags in `this` flow have already happened. For instance,
    // a return cannot be undone no matter what'd happen in subsequent branches,
    // but an allocation, which doesn't terminate, can become conditional. Not
    // all flags have a corresponding conditional flag that's tracked.

    var thisFlags = this.flags;
    var otherFlags = other.flags;
    var newFlags = FlowFlags.None;

    if (thisFlags & FlowFlags.Returns) { // nothing can change that
      newFlags |= FlowFlags.Returns;
    } else if (otherFlags & FlowFlags.Returns) {
      newFlags |= FlowFlags.ConditionallyReturns;
    } else {
      newFlags |= (thisFlags | otherFlags) & FlowFlags.ConditionallyReturns;
    }

    // must be the case in both
    newFlags |= thisFlags & otherFlags & FlowFlags.ReturnsWrapped;
    newFlags |= thisFlags & otherFlags & FlowFlags.ReturnsNonNull;

    if (thisFlags & FlowFlags.Throws) { // nothing can change that
      newFlags |= FlowFlags.Throws;
    } else if (otherFlags & FlowFlags.Throws) {
      newFlags |= FlowFlags.ConditionallyThrows;
    } else {
      newFlags |= (thisFlags | otherFlags) & FlowFlags.ConditionallyThrows;
    }

    if (thisFlags & FlowFlags.Breaks) { // nothing can change that
      newFlags |= FlowFlags.Breaks;
    } else if (other.breakLabel == this.breakLabel) {
      if (otherFlags & FlowFlags.Breaks) {
        newFlags |= FlowFlags.ConditionallyBreaks;
      } else {
        newFlags |= (thisFlags | otherFlags) & FlowFlags.ConditionallyBreaks;
      }
    } else {
      newFlags |= thisFlags & FlowFlags.ConditionallyBreaks;
    }

    if (thisFlags & FlowFlags.Continues) { // nothing can change that
      newFlags |= FlowFlags.Continues;
    } else if (other.continueLabel == this.continueLabel) {
      if (otherFlags & FlowFlags.Continues) {
        newFlags |= FlowFlags.ConditionallyContinues;
      } else {
        newFlags |= (thisFlags | otherFlags) & FlowFlags.ConditionallyContinues;
      }
    } else {
      newFlags |= thisFlags & FlowFlags.ConditionallyContinues;
    }

    if (thisFlags & FlowFlags.AccessesThis) { // can become conditional
      if (otherFlags & FlowFlags.AccessesThis) {
        newFlags |= FlowFlags.AccessesThis;
      } else {
        newFlags |= FlowFlags.ConditionallyAccessesThis;
      }
    } else if (otherFlags & FlowFlags.AccessesThis) {
      newFlags |= FlowFlags.ConditionallyAccessesThis;
    }

    // may be the case in any
    newFlags |= (thisFlags | otherFlags) & FlowFlags.MayReturnNonThis;

    // must be the case in both
    newFlags |= thisFlags & otherFlags & FlowFlags.CallsSuper;

    if (thisFlags & FlowFlags.Terminates) { // nothing can change that
      newFlags |= FlowFlags.Terminates;
    }

    this.flags = newFlags | (thisFlags & (FlowFlags.UncheckedContext | FlowFlags.CtorParamContext));

    // local flags
    var thisLocalFlags = this.localFlags;
    var numThisLocalFlags = thisLocalFlags.length;
    var otherLocalFlags = other.localFlags;
    var numOtherLocalFlags = otherLocalFlags.length;
    var maxLocalFlags = max(numThisLocalFlags, numOtherLocalFlags);
    for (let i = 0; i < maxLocalFlags; ++i) {
      let thisFlags = i < numThisLocalFlags ? thisLocalFlags[i] : 0;
      let otherFlags = i < numOtherLocalFlags ? otherLocalFlags[i] : 0;
      thisLocalFlags[i] = thisFlags & otherFlags & (
        LocalFlags.Constant  |
        LocalFlags.Wrapped   |
        LocalFlags.NonNull   |
        LocalFlags.Initialized
      );
    }

    // field flags do not matter here since there's only INITIALIZED, which can
    // only be set if it has been observed prior to entering the branch.
  }

  /** Inherits mutual flags of two alternate branches becoming this one, i.e. then with else. */
  inheritMutual(left: Flow, right: Flow): void {
    assert(left.parentFunction == right.parentFunction);
    assert(left.parentFunction == this.parentFunction);
    // This differs from the previous method in that no flags are guaranteed
    // to happen unless it is the case in both flows.

    var leftFlags = left.flags;
    var rightFlags = right.flags;
    var newFlags = FlowFlags.None;

    if (leftFlags & FlowFlags.Returns) {
      if (rightFlags & FlowFlags.Returns) {
        newFlags |= FlowFlags.Returns;
      } else {
        newFlags |= FlowFlags.ConditionallyReturns;
      }
    } else if (rightFlags & FlowFlags.Returns) {
      newFlags |= FlowFlags.ConditionallyReturns;
    } else {
      newFlags |= (leftFlags | rightFlags) & FlowFlags.ConditionallyReturns;
    }

    if ((leftFlags & FlowFlags.ReturnsWrapped) && (rightFlags & FlowFlags.ReturnsWrapped)) {
      newFlags |= FlowFlags.ReturnsWrapped;
    }

    if ((leftFlags & FlowFlags.ReturnsNonNull) && (rightFlags & FlowFlags.ReturnsNonNull)) {
      newFlags |= FlowFlags.ReturnsNonNull;
    }

    if (leftFlags & FlowFlags.Throws) {
      if (rightFlags & FlowFlags.Throws) {
        newFlags |= FlowFlags.Throws;
      } else {
        newFlags |= FlowFlags.ConditionallyThrows;
      }
    } else if (rightFlags & FlowFlags.Throws) {
      newFlags |= FlowFlags.ConditionallyThrows;
    } else {
      newFlags |= (leftFlags | rightFlags) & FlowFlags.ConditionallyThrows;
    }

    if (leftFlags & FlowFlags.Breaks) {
      if (rightFlags & FlowFlags.Breaks) {
        newFlags |= FlowFlags.Breaks;
      } else {
        newFlags |= FlowFlags.ConditionallyBreaks;
      }
    } else if (rightFlags & FlowFlags.Breaks) {
      newFlags |= FlowFlags.ConditionallyBreaks;
    } else {
      newFlags |= (leftFlags | rightFlags) & FlowFlags.ConditionallyBreaks;
    }

    if (leftFlags & FlowFlags.Continues) {
      if (rightFlags & FlowFlags.Continues) {
        newFlags |= FlowFlags.Continues;
      } else {
        newFlags |= FlowFlags.ConditionallyContinues;
      }
    } else if (rightFlags & FlowFlags.Continues) {
      newFlags |= FlowFlags.ConditionallyContinues;
    } else {
      newFlags |= (leftFlags | rightFlags) & FlowFlags.ConditionallyContinues;
    }

    if (leftFlags & FlowFlags.AccessesThis) {
      if (rightFlags & FlowFlags.AccessesThis) {
        newFlags |= FlowFlags.AccessesThis;
      } else {
        newFlags |= FlowFlags.ConditionallyAccessesThis;
      }
    } else if (rightFlags & FlowFlags.AccessesThis) {
      newFlags |= FlowFlags.ConditionallyAccessesThis;
    } else {
      newFlags |= (leftFlags | rightFlags) & FlowFlags.ConditionallyAccessesThis;
    }

    newFlags |= (leftFlags | rightFlags) & FlowFlags.MayReturnNonThis;

    if ((leftFlags & FlowFlags.CallsSuper) && (rightFlags & FlowFlags.CallsSuper)) {
      newFlags |= FlowFlags.CallsSuper;
    }

    if ((leftFlags & FlowFlags.Terminates) && (rightFlags & FlowFlags.Terminates)) {
      newFlags |= FlowFlags.Terminates;
    }

    this.flags = newFlags | (this.flags & (FlowFlags.UncheckedContext | FlowFlags.CtorParamContext));

    // local flags
    var thisLocalFlags = this.localFlags;
    if (leftFlags & FlowFlags.Terminates) {
      if (!(rightFlags & FlowFlags.Terminates)) {
        let rightLocalFlags = right.localFlags;
        for (let i = 0, k = rightLocalFlags.length; i < k; ++i) {
          thisLocalFlags[i] = rightLocalFlags[i];
        }
      }
    } else if (rightFlags & FlowFlags.Terminates) {
      let leftLocalFlags = left.localFlags;
      for (let i = 0, k = leftLocalFlags.length; i < k; ++i) {
        thisLocalFlags[i] = leftLocalFlags[i];
      }
    } else {
      let leftLocalFlags = left.localFlags;
      let numLeftLocalFlags = leftLocalFlags.length;
      let rightLocalFlags = right.localFlags;
      let numRightLocalFlags = rightLocalFlags.length;
      let maxLocalFlags = max(numLeftLocalFlags, numRightLocalFlags);
      for (let i = 0; i < maxLocalFlags; ++i) {
        let leftFlags = i < numLeftLocalFlags ? leftLocalFlags[i] : 0;
        let rightFlags = i < numRightLocalFlags ? rightLocalFlags[i] : 0;
        thisLocalFlags[i] = leftFlags & rightFlags & (
          LocalFlags.Constant  |
          LocalFlags.Wrapped   |
          LocalFlags.NonNull   |
          LocalFlags.Initialized
        );
      }
    }

    // field flags (currently only INITIALIZED, so can simplify)
    var leftFieldFlags = left.thisFieldFlags;
    if (leftFieldFlags) {
      let newFieldFlags = new Map<Field,FieldFlags>();
      let rightFieldFlags = assert(right.thisFieldFlags);
      for (let _keys = Map_keys(leftFieldFlags), i = 0, k = _keys.length; i < k; ++i) {
        let key = _keys[i];
        let leftFlags = changetype<FieldFlags>(leftFieldFlags.get(key));
        if (
          (leftFlags & FieldFlags.Initialized) != 0 && rightFieldFlags.has(key) &&
          (changetype<FieldFlags>(rightFieldFlags.get(key)) & FieldFlags.Initialized)
        ) {
          newFieldFlags.set(key, FieldFlags.Initialized);
        }
      }
      this.thisFieldFlags = newFieldFlags;
    } else {
      assert(!right.thisFieldFlags);
    }
  }

  /** Tests if the specified flows have differing local states. */
  static hasIncompatibleLocalStates(before: Flow, after: Flow): bool {
    var numThisLocalFlags = before.localFlags.length;
    var numOtherLocalFlags = after.localFlags.length;
    var parentFunction = before.parentFunction;
    assert(parentFunction == after.parentFunction);
    var localsByIndex = parentFunction.localsByIndex;
    assert(localsByIndex == after.parentFunction.localsByIndex);
    for (let i = 0, k = min<i32>(numThisLocalFlags, numOtherLocalFlags); i < k; ++i) {
      let local = localsByIndex[i];
      let type = local.type;
      if (type.isShortIntegerValue) {
        if (before.isLocalFlag(i, LocalFlags.Wrapped) && !after.isLocalFlag(i, LocalFlags.Wrapped)) {
          return true;
        }
      }
      if (type.isNullableReference) {
        if (before.isLocalFlag(i, LocalFlags.NonNull) && !after.isLocalFlag(i, LocalFlags.NonNull)) {
          return true;
        }
      }
    }
    return false;
  }

  /** Unifies local flags between this and the other flow. */
  unifyLocalFlags(other: Flow): void {
    var numThisLocalFlags = this.localFlags.length;
    var numOtherLocalFlags = other.localFlags.length;
    for (let i = 0, k = min<i32>(numThisLocalFlags, numOtherLocalFlags); i < k; ++i) {
      if (this.isLocalFlag(i, LocalFlags.Wrapped) != other.isLocalFlag(i, LocalFlags.Wrapped)) {
        this.unsetLocalFlag(i, LocalFlags.Wrapped); // assume not wrapped
      }
      if (this.isLocalFlag(i, LocalFlags.NonNull) != other.isLocalFlag(i, LocalFlags.NonNull)) {
        this.unsetLocalFlag(i, LocalFlags.NonNull); // assume possibly null
      }
    }
  }

  /** Checks if an expression of the specified type is known to be non-null, even if the type might be nullable. */
  isNonnull(expr: ExpressionRef, type: Type): bool {
    if (!type.isNullableReference) return true;
    // below, only teeLocal/getLocal are relevant because these are the only expressions that
    // depend on a dynamic nullable state (flag = LocalFlags.NonNull), while everything else
    // has already been handled by the nullable type check above.
    switch (getExpressionId(expr)) {
      case ExpressionId.LocalSet: {
        if (!isLocalTee(expr)) break;
        let local = this.parentFunction.localsByIndex[getLocalSetIndex(expr)];
        return !local.type.isNullableReference || this.isLocalFlag(local.index, LocalFlags.NonNull, false);
      }
      case ExpressionId.LocalGet: {
        let local = this.parentFunction.localsByIndex[getLocalGetIndex(expr)];
        return !local.type.isNullableReference || this.isLocalFlag(local.index, LocalFlags.NonNull, false);
      }
    }
    return false;
  }

  /** Updates local states to reflect that this branch is only taken when `expr` is true-ish. */
  inheritNonnullIfTrue(
    /** Expression being true. */
    expr: ExpressionRef,
    /** If specified, only set the flag if also nonnull in this flow. */
    iff: Flow | null = null
  ): void {
    // A: `expr` is true-ish -> Q: how did that happen?

    // The iff argument is useful in situations like
    //
    //  if (!ref) {
    //    ref = new Ref();
    //  }
    //  // inheritNonnullIfFalse(`!ref`, thenFlow) -> ref != null
    //

    switch (getExpressionId(expr)) {
      case ExpressionId.LocalSet: {
        if (!isLocalTee(expr)) break;
        let local = this.parentFunction.localsByIndex[getLocalSetIndex(expr)];
        if (!iff || iff.isLocalFlag(local.index, LocalFlags.NonNull)) {
          this.setLocalFlag(local.index, LocalFlags.NonNull);
        }
        this.inheritNonnullIfTrue(getLocalSetValue(expr), iff); // must have been true-ish as well
        break;
      }
      case ExpressionId.LocalGet: {
        let local = this.parentFunction.localsByIndex[getLocalGetIndex(expr)];
        if (!iff || iff.isLocalFlag(local.index, LocalFlags.NonNull)) {
          this.setLocalFlag(local.index, LocalFlags.NonNull);
        }
        break;
      }
      case ExpressionId.If: {
        let ifFalse = getIfFalse(expr);
        if (ifFalse && isConstZero(ifFalse)) {
          // Logical AND: (if (condition ifTrue 0))
          // the only way this had become true is if condition and ifTrue are true
          this.inheritNonnullIfTrue(getIfCondition(expr), iff);
          this.inheritNonnullIfTrue(getIfTrue(expr), iff);
        }
        break;
      }
      case ExpressionId.Unary: {
        switch (getUnaryOp(expr)) {
          case UnaryOp.EqzI32:
          case UnaryOp.EqzI64: {
            this.inheritNonnullIfFalse(getUnaryValue(expr), iff); // !value -> value must have been false
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
              this.inheritNonnullIfTrue(right, iff); // TRUE == right -> right must have been true
            } else if (isConstNonZero(right)) {
              this.inheritNonnullIfTrue(left, iff); // left == TRUE -> left must have been true
            }
            break;
          }
          case BinaryOp.NeI32:
          case BinaryOp.NeI64: {
            let left = getBinaryLeft(expr);
            let right = getBinaryRight(expr);
            if (isConstZero(left)) {
              this.inheritNonnullIfTrue(right, iff); // FALSE != right -> right must have been true
            } else if (isConstZero(right)) {
              this.inheritNonnullIfTrue(left, iff); // left != FALSE -> left must have been true
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
            this.inheritNonnullIfTrue(right, iff); // TRUE == right -> right must have been true
          } else if (isConstNonZero(right)) {
            this.inheritNonnullIfTrue(left, iff); // left == TRUE -> left must have been true
          }
        } else if (name == BuiltinNames.String_ne) {
          assert(getCallOperandCount(expr) == 2);
          let left = getCallOperandAt(expr, 0);
          let right = getCallOperandAt(expr, 1);
          if (isConstZero(left)) {
            this.inheritNonnullIfTrue(right, iff); // FALSE != right -> right must have been true
          } else if (isConstZero(right)) {
            this.inheritNonnullIfTrue(left, iff); // left != FALSE -> left must have been true
          }
        } else if (name == BuiltinNames.String_not) {
          assert(getCallOperandCount(expr) == 1);
          this.inheritNonnullIfFalse(getCallOperandAt(expr, 0), iff); // !value -> value must have been false
        } else if (name == BuiltinNames.tostack) {
          assert(getCallOperandCount(expr) == 1);
          this.inheritNonnullIfTrue(getCallOperandAt(expr, 0), iff);
        }
        break;
      }
    }
  }

  /** Updates local states to reflect that this branch is only taken when `expr` is false-ish. */
  inheritNonnullIfFalse(
    /** Expression being false. */
    expr: ExpressionRef,
    /** If specified, only set the flag if also nonnull in this flow. */
    iff: Flow | null = null
  ): void {
    // A: `expr` is false-ish -> Q: how did that happen?
    switch (getExpressionId(expr)) {
      case ExpressionId.Unary: {
        switch (getUnaryOp(expr)) {
          case UnaryOp.EqzI32:
          case UnaryOp.EqzI64: {
            this.inheritNonnullIfTrue(getUnaryValue(expr), iff); // !value -> value must have been true
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
          this.inheritNonnullIfFalse(getIfCondition(expr), iff);
          this.inheritNonnullIfFalse(getIfFalse(expr), iff);
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
              this.inheritNonnullIfTrue(right, iff); // !(FALSE == right) -> right must have been true
            } else if (isConstZero(right)) {
              this.inheritNonnullIfTrue(left, iff); // !(left == FALSE) -> left must have been true
            }
            break;
          }
          case BinaryOp.NeI32:
          case BinaryOp.NeI64: {
            let left = getBinaryLeft(expr);
            let right = getBinaryRight(expr);
            if (isConstNonZero(left)) {
              this.inheritNonnullIfTrue(right, iff); // !(TRUE != right) -> right must have been true
            } else if (isConstNonZero(right)) {
              this.inheritNonnullIfTrue(left, iff); // !(left != TRUE) -> left must have been true
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
            this.inheritNonnullIfTrue(right, iff); // !(FALSE == right) -> right must have been true
          } else if (isConstZero(right)) {
            this.inheritNonnullIfTrue(left, iff); // !(left == FALSE) -> left must have been true
          }
        } else if (name == BuiltinNames.String_ne) {
          assert(getCallOperandCount(expr) == 2);
          let left = getCallOperandAt(expr, 0);
          let right = getCallOperandAt(expr, 1);
          if (isConstNonZero(left)) {
            this.inheritNonnullIfTrue(right, iff); // !(TRUE != right) -> right must have been true
          } else if (isConstNonZero(right)) {
            this.inheritNonnullIfTrue(left, iff); // !(left != TRUE) -> left must have been true
          }
        } else if (name == BuiltinNames.String_not) {
          assert(getCallOperandCount(expr) == 1);
          this.inheritNonnullIfTrue(getCallOperandAt(expr, 0), iff); // !(!value) -> value must have been true
        } else if (name == BuiltinNames.tostack) {
          assert(getCallOperandCount(expr) == 1);
          this.inheritNonnullIfFalse(getCallOperandAt(expr, 0), iff);
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

    // types other than i8, u8, i16, u16 and bool do not overflow
    if (!type.isShortIntegerValue) return false;

    var operand: ExpressionRef;
    switch (getExpressionId(expr)) {

      // overflows if the local isn't wrapped or the conversion does
      case ExpressionId.LocalGet: {
        let local = this.parentFunction.localsByIndex[getLocalGetIndex(expr)];
        return !this.isLocalFlag(local.index, LocalFlags.Wrapped, true)
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
        assert(global.kind == ElementKind.Global || global.kind == ElementKind.EnumValue);
        return canConversionOverflow((<TypedElement>global).type, type);
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
            return type.isSignedIntegerValue
              ? !(
                  getExpressionId(operand = getBinaryRight(expr)) == ExpressionId.Const &&
                  getConstValueI32(operand) > shift // must clear MSB
                )
              : this.canOverflow(getBinaryLeft(expr), type) &&
                !(
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

          // sign extensions overflow if result can have high garbage bits in the target type
          case UnaryOp.Extend8I32: return type.size < (type.isUnsignedIntegerValue ? 32 : 8);
          case UnaryOp.Extend8I64: return type.size < (type.isUnsignedIntegerValue ? 64 : 8);
          case UnaryOp.Extend16I32: return type.size < (type.isUnsignedIntegerValue ? 32 : 16);
          case UnaryOp.Extend16I64: return type.size < (type.isUnsignedIntegerValue ? 64 : 16);
          case UnaryOp.Extend32I64: return type.size < (type.isUnsignedIntegerValue ? 64 : 32);
        }
        break;
      }

      // overflows if the value cannot be represented in the target type
      case ExpressionId.Const: {
        let value: i32 = 0;
        switch (<u32>getExpressionType(expr)) {
          case <u32>TypeRef.I32: { value = getConstValueI32(expr); break; }
          case <u32>TypeRef.I64: { value = getConstValueI64Low(expr); break; } // discards upper bits
          case <u32>TypeRef.F32: { value = i32(getConstValueF32(expr)); break; }
          case <u32>TypeRef.F64: { value = i32(getConstValueF64(expr)); break; }
          case <u32>TypeRef.V128: return false;
          default: assert(false);
        }
        switch (type.kind) {
          case TypeKind.Bool: return (value & ~1) != 0;
          case TypeKind.I8:   return value < <i32>i8.MIN_VALUE  || value > <i32>i8.MAX_VALUE;
          case TypeKind.I16:  return value < <i32>i16.MIN_VALUE || value > <i32>i16.MAX_VALUE;
          case TypeKind.U8:   return value < 0 || value > <i32>u8.MAX_VALUE;
          case TypeKind.U16:  return value < 0 || value > <i32>u16.MAX_VALUE;
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
          let last = getBlockChildAt(expr, size - 1);
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
          let instance = assert(instancesByName.get(instanceName));
          assert(instance.kind == ElementKind.Function);
          let functionInstance = <Function>instance;
          let returnType = functionInstance.signature.returnType;
          return !functionInstance.flow.is(FlowFlags.ReturnsWrapped)
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
    var sb = new Array<string>();
    if (this.is(FlowFlags.Returns)) sb.push("RETURNS");
    if (this.is(FlowFlags.ReturnsWrapped)) sb.push("RETURNS_WRAPPED");
    if (this.is(FlowFlags.ReturnsNonNull)) sb.push("RETURNS_NONNULL");
    if (this.is(FlowFlags.Throws)) sb.push("THROWS");
    if (this.is(FlowFlags.Breaks)) sb.push("BREAKS");
    if (this.is(FlowFlags.Continues)) sb.push("CONTINUES");
    if (this.is(FlowFlags.AccessesThis)) sb.push("ACCESSES_THIS");
    if (this.is(FlowFlags.CallsSuper)) sb.push("CALLS_SUPER");
    if (this.is(FlowFlags.Terminates)) sb.push("TERMINATES");
    if (this.is(FlowFlags.ConditionallyReturns)) sb.push("CONDITIONALLY_RETURNS");
    if (this.is(FlowFlags.ConditionallyThrows)) sb.push("CONDITIONALLY_THROWS");
    if (this.is(FlowFlags.ConditionallyBreaks)) sb.push("CONDITIONALLY_BREAKS");
    if (this.is(FlowFlags.ConditionallyContinues)) sb.push("CONDITIONALLY_CONTINUES");
    if (this.is(FlowFlags.ConditionallyAccessesThis)) sb.push("CONDITIONALLY_ACCESSES_THIS");
    if (this.is(FlowFlags.MayReturnNonThis)) sb.push("MAY_RETURN_NONTHIS");
    return `Flow(${this.actualFunction})[${levels}] ${sb.join(" ")}`;
  }
}

/** Tests if a conversion from one type to another can technically overflow. */
function canConversionOverflow(fromType: Type, toType: Type): bool {
  return toType.isShortIntegerValue && (
    !fromType.isIntegerValue ||                                    // i.e. float to small int
    fromType.size > toType.size ||                                 // larger int to small int
    fromType.isSignedIntegerValue != toType.isSignedIntegerValue   // signedness mismatch
  );
}

export { findUsedLocals } from "./passes/findusedlocals";
