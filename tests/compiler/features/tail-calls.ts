function inc(x: i32): i32 {
  return x + 1;
}

function noop(): void {}

export function direct(x: i32): i32 {
  return inc(x);
}

export function directVoid(): void {
  return noop();
}

function invoke(fn: (x: i32) => i32, x: i32): i32 {
  return fn(x);
}

export function indirect(x: i32): i32 {
  return invoke(inc, x);
}

export function converted(x: i32): i64 {
  return inc(x);
}

function widenInvoke(fn: (x: i32) => i32, x: i32): i64 {
  return fn(x);
}

export function convertedIndirect(x: i32): i64 {
  return widenInvoke(inc, x);
}

class Box {}

function maybeBox(x: i32): Box | null {
  return x ? new Box() : null;
}

function maybeInvoke(fn: (x: i32) => Box | null, x: i32): Box | null {
  return fn(x);
}

export function nullable(x: i32): Box | null {
  return maybeBox(x);
}

export function nullableIndirect(x: i32): Box | null {
  return maybeInvoke(maybeBox, x);
}

// These recursions also verify tail positions in both arms of control flow.
export function recursive(n: i32): i32 {
  if (n == 0) return 42;
  return recursive(n - 1);
}

export function mutualA(n: i32): i32 {
  if (n == 0) return 42;
  return mutualB(n - 1);
}

function mutualB(n: i32): i32 {
  if (n == 0) return 42;
  return mutualA(n - 1);
}

export function ternary(n: i32): i32 {
  return n == 0 ? 42 : ternary(n - 1);
}

export function temporary(n: i32): i32 {
  if (n == 0) return 42;
  const result = temporary(n - 1);
  return result;
}

let effects: i32 = 0;

export function comma(n: i32): i32 {
  if (n == 0) return effects;
  return (effects++, comma(n - 1));
}

export function switchCall(n: i32): i32 {
  switch (n) {
    case 0: return inc(n);
    case 1: return inc(n + 1);
    default: return inc(n + 2);
  }
}

export function bothCalls(n: i32): i32 {
  return n ? inc(n) : inc(0);
}

export function nestedArguments(n: i32): i32 {
  return inc(inc(n));
}

export function branches(n: i32): i32 {
  if (n) {
    return inc(n);
  } else {
    return inc(0);
  }
}

export function recursiveIndirect(fn: (n: i32) => i32, n: i32): i32 {
  return fn(n);
}

let indirectFunction: (n: i32) => i32 = inc;

function indirectStep(n: i32): i32 {
  if (n == 0) return 42;
  n -= 1;
  return indirectFunction(n);
}

export function deepIndirect(n: i32): i32 {
  indirectFunction = indirectStep;
  return recursiveIndirect(indirectStep, n);
}

export function temporaryIndirect(fn: (n: i32) => i32, n: i32): i32 {
  const result = fn(n);
  return result;
}

export function callTemporaryIndirect(n: i32): i32 {
  return temporaryIndirect(inc, n);
}

// Callee evaluation, argument evaluation, and the varargs stub must keep order.
let order: i32 = 0;
function choose(): (n: i32) => i32 {
  order = order * 10 + 1;
  return inc;
}
function argument(): i32 {
  order = order * 10 + 2;
  return 40;
}
export function indirectOrder(): i32 {
  order = 0;
  return choose()(argument());
}
export function getOrder(): i32 { return order; }

function optional(x: i32, y: i32 = 7): i32 { return x + y; }
export function optionalDirect(x: i32): i32 { return optional(x); }
export function optionalIndirect(x: i32): i32 {
  const fn: (x: i32, y?: i32) => i32 = optional;
  return fn(x);
}

@inline
function inlined(x: i32): i32 { return inc(x); }
export function inlineCaller(x: i32): i32 { return inlined(x) + 1; }

// Conversions, checks, and work following a call must not be bypassed.
function wide(): i32 { return 511; }
export function narrowed(): u8 { return <u8>wide(); }
function small(x: i32): u8 { return <u8>x; }
export function wrapped(x: i32): u8 { return small(x); }
export function discarded(x: i32): void { return inc(x); }
export function afterCall(x: i32): i32 {
  const result = inc(x);
  effects++;
  return result;
}
export function nonTail(n: i32): i32 {
  if (n == 0) return 0;
  return nonTail(n - 1) + 1;
}
export function nonNull(x: i32): Box { return maybeBox(x)!; }

export function voidCall(): void { return noop(); }
export function voidImplicit(): void { noop(); }

class Value {
  value: i32 = 42;
}
function readValue(value: Value): i32 {
  __collect();
  return value.value;
}
export function managed(): i32 {
  const value = new Value();
  return readValue(value);
}
export function stackPointer(): usize { return __stack_pointer; }

// An expression-bodied arrow uses an implicit return.
const arrow: (x: i32) => i32 = (x: i32): i32 => inc(x);
export function callArrow(x: i32): i32 { return arrow(x); }

class Base {
  value(x: i32): i32 { return inc(x); }
}
class Derived extends Base {
  value(x: i32): i32 { return inc(x + 1); }
}
function dispatch(value: Base, x: i32): i32 { return value.value(x); }
export function virtual(x: i32): i32 { return dispatch(new Derived(), x); }

let indirectIndex: u32 = 0;
function rawStep(n: i32): i32 {
  if (n == 0) return 42;
  return call_indirect<i32>(indirectIndex, n - 1);
}
export function deepRaw(n: i32): i32 {
  indirectIndex = rawStep.index;
  return rawStep(n);
}

@external("env", "tailHost")
declare function host(x: i32): i32;
export function imported(x: i32): i32 { return host(x); }
