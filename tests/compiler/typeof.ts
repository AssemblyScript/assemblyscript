assert(typeof 1 === "number"); // static string === static string precomputes

// non-precomputed

class SomeClass {
  static someStaticMethod(): void {}
  someInstanceMethod(): void {}
}
enum SomeEnum {}
namespace SomeNamespace { const a: i32 = 1; }
function SomeFunction(): void {}

assert(typeof SomeClass == "object"); // ClassPrototype
assert(typeof SomeEnum == "object"); // Enum
assert(typeof SomeNamespace == "object"); // Namespace (TS complains if empty)
assert(typeof SomeFunction == "function"); // FunctionPrototype
assert(typeof SomeClass.someStaticMethod == "function");

assert(typeof true == "boolean");
assert(typeof null == "object");
assert(typeof 1 == "number");
assert(typeof 1.0 == "number");
assert(typeof <i64>1 == "number");
assert(typeof "1" == "string");

var b = true;
assert(typeof b == "boolean");
var i = 1;
assert(typeof i == "number");
var f = <f32>1.0;
assert(typeof f == "number");
var I = <i64>1;
assert(typeof I == "number");
var F = 1.0;
assert(typeof F == "number");
var s = "1";
assert(typeof s == "string");
var fn = (): void => {};
assert(typeof fn == "function");
var c = new SomeClass();
assert(typeof c == "object");
assert(typeof c.someInstanceMethod == "function");

// would normally error but doesn't with typeof:

assert(typeof d == "undefined");
assert(typeof c.ba == "undefined");
assert(typeof c[0] == "undefined");
