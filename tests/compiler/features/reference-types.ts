// can use anyref as a parameter or return type

export declare function external(a: externref): externref;
export declare function somethingReal(): externref;
export declare function somethingNull(): externref;

export function internal(a: externref): externref {
  const b = external(a);
  let c = external(b);
  var d = external(c);
  return d;
}

// Truthiness conversion
if (!somethingReal()) {
  assert(false);
}
if (!somethingNull()) {
  // nop
} else {
  assert(false);
}
if (somethingReal()) {
  // nop
} else {
  assert(false);
}
if (somethingNull()) {
  assert(false);
}

// Explicit null checks (don’t work yet)
/*
if(somethingReal() != null) {
  // nop
} else {
  assert(false);
}
if(somethingReal() == null) {
  assert(false);
}
if(somethingNull() == null) {
  // nop
} else {
  assert(false);
}
if(somethingNull() != null) {
  assert(false);
}
*/

// can represent and recognize 'null'

var funcGlobal: funcref;
assert(!funcGlobal);
funcGlobal = null;
assert(!funcGlobal);
var funcGlobalInit: funcref = null;
assert(!funcGlobalInit);

var anyGlobal: externref;
assert(!anyGlobal);
anyGlobal = null;
assert(!anyGlobal);
var anyGlobalInit: externref = null;
assert(!anyGlobalInit);

function testLocal<T>(): void {
  let local: T = null;
  assert(!local);
  local = null;
  assert(!local);
  let localInit: T = null;
  assert(!localInit);
}
testLocal<funcref>();
testLocal<externref>();

// funcref can represent function references

function someFunc(): void {}
funcGlobal = someFunc;
assert(funcGlobal);
var otherFuncGlobal: funcref = someFunc;
assert(otherFuncGlobal);
{
  let funcLocal: funcref = someFunc;
  assert(funcLocal);
}

// constant globals

export const a: externref = null;
export const b: funcref = null;

// non-null assertions
export const nonNullFunc = otherFuncGlobal!;
export const nonNullReal = somethingReal()!;
