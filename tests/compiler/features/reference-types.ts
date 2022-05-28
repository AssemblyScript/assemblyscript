// can use externref as a parameter or return type

export declare function external(a: anyref): anyref;
export declare function somethingReal(): anyref;
export declare function somethingNull(): anyref;

export function internal(a: anyref): anyref {
  const b = external(a);
  let c = external(b);
  var d = external(c);
  return d;
}

// Truthiness conversion
if(!somethingReal()) {
  assert(false);
}
if(!somethingNull()) {
  // nop
} else {
  assert(false);
}
if(somethingReal()) {
  // nop
} else {
  assert(false);
}
if(somethingNull()) {
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

var anyGlobal: anyref;
assert(!anyGlobal);
anyGlobal = null;
assert(!anyGlobal);
var anyGlobalInit: anyref = null;
assert(!anyGlobalInit);

function testLocal<T>(): void {
  let local: T;
  assert(!local);
  local = null;
  assert(!local);
  let localInit: T = null;
  assert(!localInit);
}
testLocal<funcref>();
testLocal<anyref>();

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

export const a: anyref = null;
export const b: funcref = null;
