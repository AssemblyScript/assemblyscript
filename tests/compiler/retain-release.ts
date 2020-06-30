class Ref {}

// FIXME: Comments are outdated due to various optimizations the compiler performs now.
// Instead, the tests that make sense should be moved to rc/XY

var REF = new Ref();

export function returnRef(): Ref {

  // Returning a reference must retain it because it could otherwise drop to
  // RC=0 before reaching the caller, for example if it was stored in a local
  // with RC=1 when this local becomes released at the end of the function. See
  // scope tests below.

  return /* __retain( */ REF /* ) */;
}

export function receiveRef(): void {

  // Receiving a reference from a call must keep track of it in a temporary
  // AUTORELEASE local because it has been pre-retained by the callee. This is
  // required because the reference could be immediately dropped and the caller
  // would otherwise not be able to release it properly.

  !/* (TEMP = */ returnRef() /* ) */;
  // __release(TEMP)
}

export function receiveRefDrop(): void {

  // A straight forward optimization here is to detect immediate drops and skip
  // the temp local.

  /* __release( */ returnRef() /* ) */;
}

export function receiveRefRetain(): void {

  // TODO: Another possible optimization is to detect that the target will
  // retain on its own, skip the temp local and mark the target as AUTORELEASE,
  // instead of doing:

  var a = /* __retain(TEMP = */ returnRef() /* ) */;
  // __release(TEMP);
  // __release(a);
}

export function takeRef(ref: Ref): void {

  // Taking a reference as an argument must retain it while the body is
  // executing because reassigning the argument could otherwise drop to RC=0,
  // prematurely releasing the reference even though the caller still needs it.
  // This is the same as if the caller would retain it pre-call and release it
  // post-call, but from a code size perspective it makes more sense to make the
  // callee handle this instead of embedding runtime calls into every single
  // call. Downside is that the caller has more knowledge about the actual
  // arguments, like if these must actually be retained, while the upside is
  // that each function "just works" standalone.

  // __retain(ref)
  // __release(ref)
}

export function provideRef(): void {

  // Providing a reference therefore doesn't do any retains or releases but
  // assumes that the callee will do this for us. The alternative of embedding
  // runtime calls into the call is discussed above, and also a valid strategy
  // for different reasons. It is likely that there are smart optimizations of
  // this case.

  takeRef(REF);
}

export function takeReturnRef(ref: Ref): Ref {

  // Returning a reference provided as an argument must do all of the above but
  // can eliminate one set of retain/release by simply not releasing the
  // reference at the end of the function and skipping the retain on return.

  // __retain(ref)
  return ref;

  // What would otherwise be
  // /* (T = __retain( */ ref /* )), __release(ref), T */;
}

export function provideReceiveRef(): void {

  // Combined case of providing and receiving a reference, with no additional
  // logic compared to the base cases above.

  !/* TEMP = */ takeReturnRef(REF);
  // __release(TEMP)
}

export function newRef(): void {

  // Allocating a reference must keep track of the allocation in a temporary
  // AUTORELEASE local because the allocation could be dropped immediately.
  // Similar to the receiveRef case, one possibile optimization here is to
  // detect immediate drops.

  /* TEMP = */ new Ref();
  // __release(TEMP)
}

var glo: Ref;

export function assignGlobal(): void {

  // Assigning a reference to a global first retains it before releasing the
  // previously stored reference.

  glo = /* __retainRelease( */ REF /* , glo) */;
}

class Target { fld: Ref | null; }

var TARGET = new Target();

export function assignField(): void {

  // Similar to the assignGlobal case, assigning a reference to a field first
  // retains it before releasing the previously stored reference.

  TARGET.fld = /* __retainRelease( */ REF /* , fld) */;
}

export function scopeBlock(): void {

  // A scoped local must retain ownership of its reference for the same reasons
  // as in the takeRef case, because reassigning it could otherwise drop to RC=0
  // in a situation where the local holds a reference with RC=1, prematurely
  // releasing it even if the original reference is still in use.

  {
    let $0 = /* __retain( */ REF /* } */;
    // __release($0)
  }
}

export function scopeBlockToUninitialized(): void {

  // Top-level variables that have not yet been initialized do not have to
  // release `null` unless actually assigned a reference. Hence, such a var
  // doesn't have the AUTORELEASE property initially, but immediately takes it
  // as soon as it is assigned.

  var $0: Ref; // uninitialized, so no AUTORELEASE yet
  {
    let $1 = /* __retain( */ REF /* } */;
    $0 = /* __retain( */ $1 /* ) */;
    // __release($1)
  }
  // __release($0)
}

export function scopeBlockToInitialized(): void {

  // Top-level variables that have been initialized must retain and release
  // their reference normally like in the takeRef and scopeBlock cases, for the
  // same reason of not prematurely dropping to RC=0 even though the original
  // reference is still in use.

  var $0: Ref = /* __retain( */ REF /* ) */;
  {
    let $1 = /* __retain( */ REF /* } */;
    $0 = /* __retainRelease( */ $1 /* , $0) */;
    // __release($1)
  }
  // __release($0)
}

export function scopeBlockToConditional(cond: bool): void {

  // Top-level variables that are uninitialized, but may become initialized
  // conditionally, must even release `null` in the other case because the
  // compiler doesn't know the outcome of the condition statically.

  var $0: Ref;
  if (cond) {
    $0 = /* __retain( */ REF /* ) */; // now AUTORELEASE
  }
  {
    let $1 = /* __retain( */ REF /* } */;
    $0 = /* __retainRelease( */ $1 /* , $0) */;
    // __release($1)
  }
  // __release($0)
}

export function scopeTopLevelUninitialized(): void {

  // Isolated case of an uninitialized top-level variable that is never
  // initialized, and is thus never releasing `null`.

  var $0: Ref;
}

export function scopeTopLevelInitialized(): void {

  // Isolated case of an initialized top-level variable that is never
  // reassigned. One possible optimization here is to detect this case and
  // eliminate the local with its retain/release altogether. Alternatively, a
  // warning could be omitted to inform the user that this var is unnecessary,
  // which I'd prefer because it hints the user at a portion of code that might
  // contain other errors.

  var $0: Ref = /* __retain( */ REF /* ) */;
  // __release($0)
}

export function scopeTopLevelConditional(cond: bool): void {

  // Isolated case of an uninitialized top-level variable that is conditionally
  // assigned to, so that even `null` must be released at the end of the
  // function because the compiler doesn't know the outcome of the condition
  // statically.

  var $0: Ref;
  if (cond) {
    $0 = /* __retain( */ REF /* ) */; // now AUTORELEASE
  }
  // __release($0)
}

export function scopeIf(cond: bool): void {

  // Validates that `if` scopes behave like blocks.

  if (cond) {
    let $0: Ref = /* __retain( */ REF /* ) */;
    // __release($0)
  }
}

export function scopeIfElse(cond: bool): void {

  // Validates that `else` scopes behave like blocks.

  if (cond) {
    let $0: Ref = /* __retain( */ REF /* ) */;
    // __release($0)
  } else {
    let $0: Ref = /* __retain( */ REF /* ) */;
    // __release($0)
  }
}

export function scopeWhile(cond: bool): void {

  // Validates that `while` scopes behave like blocks.

  while (cond) {
    let $0: Ref = /* __retain( */ REF /* ) */;
    // __release($0)
  }
}

export function scopeDo(cond: bool): void {

  // Validates that `do` scopes behave like blocks.

  do {
    let $0: Ref = /* __retain( */ REF /* ) */;
    // __release($0)
  } while (cond);
}

export function scopeFor(cond: bool): void {

  // Validates that `for` scopes behave like blocks.

  for (; cond; ) {
    let $0: Ref = /* __retain( */ REF /* ) */;
    // __release($0)
  }
}

export function scopeForComplex(cond: bool): void {

  // Validates that complex `for` scopes behave properly

  for (let i = 0; cond; ++i) {
    let $0: Ref = /* __retain( */ REF /* ) */;
    for (let j = 0; cond; ++j) {
      let $1: Ref = /* __retain( */ REF /* ) */;
      if (cond) {
        let $2: Ref = /* __retain( */ REF /* ) */;
        // __release($2)
        // __release($1)
        continue;
      }
      // __release($1)
    }
    // __release($0)
  }
}

export function scopeBreak(cond: bool): void {

  // Validates that `break` statements terminate flows so that no further
  // releases are performed afterwards.

  while (cond) {
    let $0: Ref = /* __retain( */ REF /* ) */;
    // __release($0)
    break;
  }
}

export function scopeBreakNested(cond: bool): void {

  // Validates that nested `break` statements terminate flows so that no
  // further releases are performed afterwards.

  while (cond) {
    let $0: Ref = /* __retain( */ REF /* ) */;
    while (cond) {
      let $1: Ref = /* __retain( */ REF /* ) */;
      // __release($1)
      // __release($0)
      break;
    }
    // __release($0)
  }
}

export function scopeContinue(cond: bool): void {

  // Validates that `continue` statements terminate flows so that no further
  // releases are performed afterwards.

  while (cond) {
    let $0: Ref = /* __retain( */ REF /* ) */;
    // __release($0)
    continue;
  }
}

export function scopeContinueNested(cond: bool): void {

  // Validates that nested `continue` statements terminate flows so that no
  // further releases are performed afterwards.

  while (cond) {
    let $0: Ref = /* __retain( */ REF /* ) */;
    while (cond) {
      let $1: Ref = /* __retain( */ REF /* ) */;
      // __release($1)
      // __release($0)
      continue;
    }
    // __release($0)
  }
}

export function scopeThrow(cond: bool): void {

  // Validates that `throw` statements terminate flows so that no further
  // releases are performed afterwards.

  while (cond) {
    let $0: Ref = /* __retain( */ REF /* ) */;
    // __release($0)
    throw new Error("error");
  }
}

export function scopeUnreachable(cond: bool): void {

  // Unreachable instructions are different in the sense that these are unsafe
  // compiler intrinsics that guarantee to have no unexpected side-effects,
  // hence don't terminate flows and result in an unreachable release after the
  // instruction (i.e. after the program has crashed).

  while (cond) {
    let $0: Ref = /* __retain( */ REF /* ) */;
    // __release($0)
    unreachable();
  }
}

// @ts-ignore: decorator
@inline
function scopeInline(): void {

  // Inlined function bodies should behave like normal scopes.

  var $0 = /* __retain( */ REF /* ) */;
  // __release($0)
}

export function callInline(): void {

  // Hosts scopeInline with no own logic.

  scopeInline();
}

// @ts-ignore: decorator
@inline
function takeRefInline(ref: Ref): void {

  // The takeRef case but inline. Should retain and release while alive.

  // __retain(ref)
  // __release(reF)
}

export function provideRefInline(): void {

  // The provideRef case but inline. Should do nothing to the arguments while
  // hosting the inlined retain and release.

  takeRefInline(REF);
}

// @ts-ignore: decorator
@inline
function returnRefInline(): Ref {

  // The returnRef case but inline.

  return /* __retain( */ REF /* ) */;
}

export function receiveRefInline(): void {

  // The receiveRef case but inline.

  !/* TEMP = */ returnRefInline();
  // __release(TEMP)
}

export function receiveRefInlineDrop(): void {

  // The receiveRefDrop case but inline.

  /* __release( */ returnRefInline() /* ) */;

  // TODO: Since we have access to both the block and the surrounding code here,
  // if we can prove that the last statement of the block does a retain, we can
  // eliminate it together with the receiver's release. Opt pass maybe?
}

export function provideRefIndirect(fn: (ref: Ref) => void): void {

  // An indirect call should behave just like a direct call, that is not insert
  // anything when providing a reference.

  fn(REF);
}

export function receiveRefIndirect(fn: () => Ref): void {

  // An indirect call should behave just like a direct call, that is taking care
  // of release when receiving a reference.

  !/* TEMP = */ fn();
  // __release(TEMP)
}

export function receiveRefIndirectDrop(fn: () => Ref): void {

  // An indirect call should behave just like a direct call, that is taking care
  // of release when receiving a reference.

  /* __release( */ fn() /* ) */;
}

// TODO: Optimize more immediate drops on alloc/call, like overloads, getters
// and immediately assigning to a storage target.
