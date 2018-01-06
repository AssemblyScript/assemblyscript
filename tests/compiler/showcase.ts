// This test case compiles to WebAssembly today, highlights some of the features that have been
// implemented already and gives a quick outlook on the road ahead.

// Global variables can be constant
const aConstantGlobal: i32 = 42;

// Constant globals can be exported to JS from the entry file
export const anExportedConstantGlobal: f32 = 42.0;

// Global variables can be mutable
var aMutableGlobal: i32 = 42;

// Variables can infer their type
var anInferredI32 = 42;          // infers i32 by default
var anInferredI64 = 0x100000000; // infers i64 because the value doesn't fit in 32 bits
var anInferredF64 = 42.0;        // infers f64 because it is notated as a float
var anInferredF32 = <f32>42.0;   // infers f32 by evaluating its initializer

// Unary expressions just work
import "./unary";

// Binary expressions just work
import "./binary";

// Logical expressions just work
import "./logical";

// Several WebAssembly and some common JavaScript built-ins are supported and compile to opcodes directly
import "./builtins";

// Speaking of imports: Exports and re-exports are supported as well
export { aConstantGlobal };
export { anExportedConstantGlobal as anAliasedConstantGlobal } from "./showcase";

// Elements can be arranged in namespaces
namespace ANamespace {
  export var aNamespacedGlobal: i32 = 42;
  export function aNamespacedFunction(a: i32): i32 { return a; } // functions just work
}

// The compiler supports built-in assertions (--noAssert disables them globally)
assert(ANamespace.aNamespacedFunction(ANamespace.aNamespacedGlobal) == 42);

// Enums become constant globals and thus can be exported from the entry file
export enum AnEnum {
  ONE = 1,                    // values can use explicit initializers
  TWO,                        // or assume the previous value + 1
                              // or be omitted
  FOUR = AnEnum.TWO + 2,      // or reference other values (and remain constant through precomputation)
  FIVE,                       // and continue from there
  FORTYTWO = aMutableGlobal,  // or reference mutable values but then can't be exported
  FORTYTHREE                  // and even continue from there without being exported (tsc doesn't allow this)
}
assert(AnEnum.ONE == 1);
assert(AnEnum.TWO == 2);
assert(AnEnum.FOUR == 4);
assert(AnEnum.FIVE == 5);
assert(AnEnum.FORTYTWO == 42);
assert(AnEnum.FORTYTHREE == 43);

// In fact, there are a couple of things asc just waves through where tsc refuses to
1, 2, 3;                      // for example not-so-useful comma expressions
function addGeneric<T>(left: T, right: T): T {
  return left + right;        // or maybe-useful generic math
}

// Speaking of generics: While there is no type inference yet, it just works
addGeneric<i32>(1, 2);        // compiles and calls the i32 version
addGeneric<f32>(1, 2);        // compiles and calls the f32 version
clz<i64>(0x8000);             // most built-ins are generic as well

// Type aliases work but must be declared in the global scope for now
type double = f64;
addGeneric<double>(1, 2);     // compiles and calls the f64 version

// Speaking of lazy compilation: Stuff that's not used is considered dead code and not compiled by default
function anUnusedFunction(): void { }

// That is, unless exported from the entry file, so it is considered reachable
export function anExportedFunction(): void { }

// Or, of course, `--noTreeShaking` is specified

// As you see, while classes, strings and arrays are still in the works, pretty much everything can
// be implemented already. Here are a few more sophisitcated examples of code that'll most likely
// make it into the standard library eventually:
import "./memcpy";            // until replaced by the proposed `move_memory` intrinsic (sic.)
import "./fmod";              // for floating point modulus support, e.g., `1.5 % 1.0`

// Speaking of classes: Some preliminary work has already been done, so while we can't properly
// instantiate them yet, we can point them at some raw memory
class AClass {
  static aStaticField: AClass | null = null;
  aField: i32;
}
class ADerivedClass extends AClass {
  anotherField: f32;
  get aWildAccessorAppears(): f32 { return this.anotherField; }
  set aWildAccessorAppears(val: f32) { this.anotherField = val; }
}
var aClassInstance = changetype<ADerivedClass>(<usize>8);
aClassInstance.aField = 42;
aClassInstance.anotherField = 9000;
assert(load<i32>(8) == 42);
assert(load<f32>(12) == 9000);

aClassInstance.aWildAccessorAppears = 123;
assert(aClassInstance.aWildAccessorAppears == 123);

AClass.aStaticField = aClassInstance;
assert(ADerivedClass.aStaticField == aClassInstance);

// yet that's pretty much a work in progress, until...

// Speaking of the standard library:

// Ultimately, a memory manager should still be present regardless of the GC spec because making
// everything a GC-managed object impacts performance where GC isn't necessary. TLSF appears to
// be a viable candidate because it's relatively fast and small and an ARC-variant seems like a
// good internal alternative to a general-purpose GC if we can figure out reference cycles.

// With GC (and earlier: host-bindings) it will technically be possible to declare classes whose
// instances can cross the JS/WASM boundary natively, but then aren't stored in linear memory.

// Have a nice day!

// P.S: Interested in compilers? Nothing cooler to do with your spare time? Say hi!
