import "allocator/arena";

var sym1 = Symbol("123");
var sym2 = Symbol("123");

assert(sym1 !== sym2);

var sym3 = Symbol.for("123");
var sym4 = Symbol.for("123");

assert(sym3 === sym4);

var key1 = Symbol.keyFor(sym1);
var key2 = Symbol.keyFor(sym2);

assert(key1 === null);
assert(key2 === null);

var key3 = Symbol.keyFor(sym3);
var key4 = Symbol.keyFor(sym4);

assert(key3 == "123");
assert(key3 == key4);

assert(Symbol().toString() == "Symbol()");
assert(sym3.toString() == "Symbol(123)");

var hasInstance = Symbol.hasInstance;
var isConcatSpreadable = Symbol.isConcatSpreadable;
assert(hasInstance.toString() == "Symbol(hasInstance)");
assert(isConcatSpreadable.toString() == "Symbol(isConcatSpreadable)");

Symbol.hasInstance;
Symbol.isConcatSpreadable;
// ...
