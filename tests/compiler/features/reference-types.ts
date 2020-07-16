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

// TODO: can represent and recognize 'null' for both externref and funcref
/* var nullGlobal: externref;
assert(!nullGlobal);
nullGlobal = null;
assert(!nullGlobal);
var nullGlobalInit: externref = null;
assert(!nullGlobalInit);
{
  let nullLocal: externref;
  assert(!nullLocal);
  nullLocal = null;
  assert(!nullLocal);
  let nullLocalInit: externref = null;
  assert(!nullLocalInit);
}

// funcref can represent function references

function someFunc(): void {}
var funcGlobal: externref = someFunc;
{
  let funcLocal: externref = someFunc;
}
*/