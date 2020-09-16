// can use externref as a parameter or return type

export declare function external(a: externref): externref;

export function internal(a: externref): externref {
  const b = external(a);
  let c = external(b);
  var d = external(c);
  return d;
}

// can use reflection to work with externref values

import * as Reflect from "bindings/Reflect";

declare const someObject: externref;
declare const someKey: externref;

assert(Reflect.has(someObject, someKey));

// can call JS bindings with externref values

import * as console from "bindings/console";

console.log(someObject);
console.log(someKey);
console.log(Reflect.get(someObject, someKey));

// can represent and recognize 'null'

var funcGlobal: funcref;
assert(!funcGlobal);
funcGlobal = null;
assert(!funcGlobal);
var funcGlobalInit: funcref = null;
assert(!funcGlobalInit);

var externGlobal: externref;
assert(!externGlobal);
externGlobal = null;
assert(!externGlobal);
var externGlobalInit: externref = null;
assert(!externGlobalInit);

var exnGlobal: exnref;
assert(!exnGlobal);
exnGlobal = null;
assert(!exnGlobal);
var exnGlobalInit: exnref = null;
assert(!exnGlobalInit);

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
testLocal<externref>();
testLocal<exnref>();
testLocal<anyref>();

// funcref can represent function references

function someFunc(): void {}
funcGlobal = someFunc;
assert(funcGlobalInit);
var otherFuncGlobal: funcref = someFunc;
assert(otherFuncGlobal);
{
  let funcLocal: funcref = someFunc;
  assert(funcLocal);
}

// can assign any reference type to anyref

anyGlobal = funcGlobal;
anyGlobal = externGlobal;
anyGlobal = exnGlobal;

// TODO: Not implemented: ref.cast
// exnGlobal = <exnref>anyGlobal;
