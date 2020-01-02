// can use anyref as a parameter or return type

export declare function external(a: anyref): anyref;

export function internal(a: anyref): anyref {
  const b = external(a);
  let c = external(b);
  var d = external(c);
  return d;
}

// can use reflection to work with anyref values

import * as Reflect from "bindings/Reflect";

declare const someObject: anyref;
declare const someKey: anyref;

assert(Reflect.has(someObject, someKey));

// can call JS bindings with anyref values

import * as console from "bindings/console";

console.log(someObject);
console.log(someKey);
console.log(Reflect.get(someObject, someKey));

// can represent and recognize 'null'

var nullGlobal: anyref;
assert(!nullGlobal);
nullGlobal = null;
assert(!nullGlobal);
var nullGlobalInit: anyref = null;
assert(!nullGlobalInit);
{
  let nullLocal: anyref;
  assert(!nullLocal);
  nullLocal = null;
  assert(!nullLocal);
  let nullLocalInit: anyref = null;
  assert(!nullLocalInit);
}

// can represent function references

function someFunc(): void {}
var funcGlobal: anyref = someFunc;
{
  let funcLocal: anyref = someFunc;
}
