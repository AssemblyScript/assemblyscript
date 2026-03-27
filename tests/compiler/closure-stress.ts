// =============================================================================
// CLOSURE STRESS TEST
// =============================================================================

// =============================================================================
// SECTION 1: Basic Capture Patterns
// =============================================================================

// Test 1.1: Capture single i32 parameter
function captureI32Param(x: i32): () => i32 {
  return (): i32 => x;
}
assert(captureI32Param(42)() == 42);
assert(captureI32Param(-1)() == -1);
assert(captureI32Param(0x7FFFFFFF)() == 0x7FFFFFFF);

// Test 1.2: Capture single i64 parameter
function captureI64Param(x: i64): () => i64 {
  return (): i64 => x;
}
assert(captureI64Param(42)() == 42);
assert(captureI64Param(0x7FFFFFFFFFFFFFFF)() == 0x7FFFFFFFFFFFFFFF);

// Test 1.3: Capture single f32 parameter
function captureF32Param(x: f32): () => f32 {
  return (): f32 => x;
}
assert(captureF32Param(3.14)() == <f32>3.14);
assert(captureF32Param(0.0)() == <f32>0.0);

// Test 1.4: Capture single f64 parameter
function captureF64Param(x: f64): () => f64 {
  return (): f64 => x;
}
assert(captureF64Param(3.141592653589793)() == 3.141592653589793);
assert(captureF64Param(Infinity)() == Infinity);

// Test 1.5: Capture boolean
function captureBool(x: bool): () => bool {
  return (): bool => x;
}
assert(captureBool(true)() == true);
assert(captureBool(false)() == false);

// =============================================================================
// SECTION 2: Multiple Captures with Different Types
// =============================================================================

// Test 2.1: Capture multiple i32s
function captureMultipleI32(a: i32, b: i32, c: i32): () => i32 {
  return (): i32 => a + b + c;
}
assert(captureMultipleI32(1, 2, 3)() == 6);
assert(captureMultipleI32(100, 200, 300)() == 600);

// Test 2.2: Capture mixed types (i32, i64, f32, f64)
function captureMixedTypes(a: i32, b: i64, c: f32, d: f64): () => f64 {
  return (): f64 => <f64>a + <f64>b + <f64>c + d;
}
assert(captureMixedTypes(1, 2, 3.0, 4.0)() == 10.0);

// Test 2.3: Capture 8 parameters (stress test alignment)
function capture8Params(
  a: i32, b: i32, c: i32, d: i32,
  e: i32, f: i32, g: i32, h: i32
): () => i32 {
  return (): i32 => a + b + c + d + e + f + g + h;
}
assert(capture8Params(1, 2, 3, 4, 5, 6, 7, 8)() == 36);

// Test 2.4: Capture parameters and locals mixed
function captureParamsAndLocals(a: i32, b: i32): () => i32 {
  let c: i32 = 100;
  let d: i32 = 200;
  return (): i32 => a + b + c + d;
}
assert(captureParamsAndLocals(1, 2)() == 303);

// =============================================================================
// SECTION 3: Mutable Captures (Reference Semantics)
// =============================================================================

// Test 3.1: Simple counter
function makeCounter(): () => i32 {
  let count: i32 = 0;
  return (): i32 => {
    count = count + 1;
    return count;
  };
}
let counter1 = makeCounter();
assert(counter1() == 1);
assert(counter1() == 2);
assert(counter1() == 3);
let counter2 = makeCounter(); // New counter should start at 0
assert(counter2() == 1);
assert(counter1() == 4); // Original counter continues

// Test 3.2: Bidirectional mutation
function testBidirectionalMutation(): i32 {
  let value: i32 = 0;
  let setter = (x: i32): void => { value = x; };
  let getter = (): i32 => value;

  setter(10);
  assert(getter() == 10);
  setter(20);
  assert(getter() == 20);

  return getter();
}
assert(testBidirectionalMutation() == 20);

// Test 3.3: Multiple closures mutating same variable
function testSharedMutation(): i32 {
  let value: i32 = 0;
  let inc = (): void => { value = value + 1; };
  let dec = (): void => { value = value - 1; };
  let get = (): i32 => value;

  inc(); inc(); inc(); // value = 3
  dec(); // value = 2
  inc(); inc(); // value = 4

  return get();
}
assert(testSharedMutation() == 4);

// Test 3.4: Mutation affects outer scope
function testOuterScopeMutation(): i32 {
  let value: i32 = 5;
  let double = (): void => { value = value * 2; };
  let get = (): i32 => value;

  double(); // value = 10
  assert(get() == 10);
  double(); // value = 20
  assert(get() == 20);

  return get();
}
assert(testOuterScopeMutation() == 20);

// =============================================================================
// SECTION 4: Simple Currying (single level capture only)
// =============================================================================

// Test 4.1: Simple currying pattern
function curriedAdd(a: i32): (b: i32) => i32 {
  return (b: i32): i32 => a + b;
}
let addTo10 = curriedAdd(10);
assert(addTo10(5) == 15);
assert(addTo10(20) == 30);

// Test 4.2: Another currying example
function makeGreaterThan(threshold: i32): (x: i32) => bool {
  return (x: i32): bool => x > threshold;
}
let greaterThan5 = makeGreaterThan(5);
assert(greaterThan5(10) == true);
assert(greaterThan5(3) == false);

// =============================================================================
// SECTION 5: Closures with Complex Control Flow
// =============================================================================

// Test 5.1: Simple array of closures
function simpleClosureArray(): i32 {
  let fns = new Array<() => i32>(3);

  let v0: i32 = 10;
  fns[0] = (): i32 => v0;

  let v1: i32 = 20;
  fns[1] = (): i32 => v1;

  let v2: i32 = 30;
  fns[2] = (): i32 => v2;

  return fns[0]() + fns[1]() + fns[2]();
}
assert(simpleClosureArray() == 60);

// Test 5.2: Closure in conditional
function closureInConditional(useFirst: bool): i32 {
  let a: i32 = 10;
  let b: i32 = 20;

  let getter: () => i32;
  if (useFirst) {
    getter = (): i32 => a;
  } else {
    getter = (): i32 => b;
  }

  return getter();
}
assert(closureInConditional(true) == 10);
assert(closureInConditional(false) == 20);

// Test 5.3: Closure escaping try block (simulated)
function closureEscapingBlock(): i32 {
  let value: i32 = 0;
  let captured: () => i32;

  {
    let inner: i32 = 42;
    captured = (): i32 => inner;
    value = captured();
  }

  // Inner scope ended but closure still works
  return captured();
}
assert(closureEscapingBlock() == 42);

// =============================================================================
// SECTION 6: Closures with Objects and Arrays
// =============================================================================

// Test 6.1: Capture array reference
function captureArray(): i32 {
  let arr = new Array<i32>(3);
  arr[0] = 1;
  arr[1] = 2;
  arr[2] = 3;

  let sum = (): i32 => arr[0] + arr[1] + arr[2];

  return sum();
}
assert(captureArray() == 6);

// Test 6.2: Mutate captured array
function mutateCapturedArray(): i32 {
  let arr = new Array<i32>(3);
  arr[0] = 1;
  arr[1] = 2;
  arr[2] = 3;

  let doubleAll = (): void => {
    arr[0] = arr[0] * 2;
    arr[1] = arr[1] * 2;
    arr[2] = arr[2] * 2;
  };

  let sum = (): i32 => arr[0] + arr[1] + arr[2];

  assert(sum() == 6);
  doubleAll();
  assert(sum() == 12);
  doubleAll();

  return sum();
}
assert(mutateCapturedArray() == 24);

// Test 6.3: Capture class instance
class Counter {
  value: i32 = 0;

  increment(): void {
    this.value++;
  }
}

function captureClassInstance(): i32 {
  let c = new Counter();

  let inc = (): void => { c.value = c.value + 1; };
  let get = (): i32 => c.value;

  inc();
  inc();
  inc();

  return get();
}
assert(captureClassInstance() == 3);

// =============================================================================
// SECTION 7: Higher-Order Functions with Closures
// =============================================================================

// Test 7.1: Map-like operation
function mapArray(arr: Array<i32>, fn: (x: i32) => i32): Array<i32> {
  let result = new Array<i32>(arr.length);
  for (let i: i32 = 0; i < arr.length; i++) {
    result[i] = fn(arr[i]);
  }
  return result;
}

function testMapWithClosure(): i32 {
  let multiplier: i32 = 10;
  let arr = new Array<i32>(3);
  arr[0] = 1;
  arr[1] = 2;
  arr[2] = 3;

  let result = mapArray(arr, (x: i32): i32 => x * multiplier);

  return result[0] + result[1] + result[2]; // 10 + 20 + 30
}
assert(testMapWithClosure() == 60);

// Test 7.2: Filter-like operation
function filterArray(arr: Array<i32>, pred: (x: i32) => bool): Array<i32> {
  let result = new Array<i32>(0);
  for (let i: i32 = 0; i < arr.length; i++) {
    if (pred(arr[i])) {
      result.push(arr[i]);
    }
  }
  return result;
}

function testFilterWithClosure(): i32 {
  let threshold: i32 = 5;
  let arr = new Array<i32>(10);
  for (let i: i32 = 0; i < 10; i++) {
    arr[i] = i;
  }

  let result = filterArray(arr, (x: i32): bool => x >= threshold);

  return result.length; // 5, 6, 7, 8, 9 = 5 elements
}
assert(testFilterWithClosure() == 5);

// Test 7.3: Reduce-like operation
function reduceArray(arr: Array<i32>, fn: (acc: i32, x: i32) => i32, initial: i32): i32 {
  let acc = initial;
  for (let i: i32 = 0; i < arr.length; i++) {
    acc = fn(acc, arr[i]);
  }
  return acc;
}

function testReduceWithClosure(): i32 {
  let bonus: i32 = 100;
  let arr = new Array<i32>(5);
  arr[0] = 1;
  arr[1] = 2;
  arr[2] = 3;
  arr[3] = 4;
  arr[4] = 5;

  // Sum all elements and add bonus at the end
  let result = reduceArray(arr, (acc: i32, x: i32): i32 => acc + x, 0);

  let addBonus = (): i32 => result + bonus;

  return addBonus(); // 15 + 100
}
assert(testReduceWithClosure() == 115);

// =============================================================================
// SECTION 8: Closure Factory Patterns
// =============================================================================

// Test 8.1: Adder factory
function makeAdder(amount: i32): (x: i32) => i32 {
  return (x: i32): i32 => x + amount;
}
let add5 = makeAdder(5);
let add10 = makeAdder(10);
assert(add5(3) == 8);
assert(add10(3) == 13);
assert(add5(add10(0)) == 15);

// Test 8.2: Multiplier factory
function makeMultiplier(factor: i32): (x: i32) => i32 {
  return (x: i32): i32 => x * factor;
}
let double = makeMultiplier(2);
let triple = makeMultiplier(3);
assert(double(5) == 10);
assert(triple(5) == 15);
assert(double(triple(4)) == 24);

// Test 8.3: Compose functions
function compose(f: (x: i32) => i32, g: (x: i32) => i32): (x: i32) => i32 {
  return (x: i32): i32 => f(g(x));
}
let addThenDouble = compose(double, add5);
assert(addThenDouble(3) == 16); // (3 + 5) * 2 = 16

// Test 8.4: Memoization pattern
function memoize(fn: (x: i32) => i32): (x: i32) => i32 {
  let cache = new Map<i32, i32>();
  return (x: i32): i32 => {
    if (cache.has(x)) {
      return cache.get(x);
    }
    let result = fn(x);
    cache.set(x, result);
    return result;
  };
}

let callCount: i32 = 0;
function expensiveComputation(x: i32): i32 {
  callCount++;
  return x * x;
}

function testMemoization(): i32 {
  callCount = 0;
  let memoized = memoize(expensiveComputation);

  assert(memoized(5) == 25);
  assert(callCount == 1);
  assert(memoized(5) == 25); // Should use cache
  assert(callCount == 1);
  assert(memoized(3) == 9);
  assert(callCount == 2);
  assert(memoized(5) == 25); // Still cached
  assert(callCount == 2);

  return callCount;
}
assert(testMemoization() == 2);

// =============================================================================
// SECTION 9: Edge Cases and Corner Cases
// =============================================================================

// Test 9.1: Empty closure (captures nothing)
function emptyClosure(): () => i32 {
  return (): i32 => 42;
}
assert(emptyClosure()() == 42);

// Test 9.2: Capture only, no parameters
function captureOnlyNoParams(): i32 {
  let x: i32 = 10;
  let y: i32 = 20;
  let fn = (): i32 => x + y;
  return fn();
}
assert(captureOnlyNoParams() == 30);

// Test 9.3: Closure that ignores captured value
function ignoreCapture(): i32 {
  let unused: i32 = 999;
  let fn = (): i32 => 42;
  return fn();
}
assert(ignoreCapture() == 42);

// Test 9.4: Multiple returns of same closure type
function multipleClosureReturns(which: i32): () => i32 {
  let a: i32 = 10;
  let b: i32 = 20;
  let c: i32 = 30;

  if (which == 0) {
    return (): i32 => a;
  } else if (which == 1) {
    return (): i32 => b;
  } else {
    return (): i32 => c;
  }
}
assert(multipleClosureReturns(0)() == 10);
assert(multipleClosureReturns(1)() == 20);
assert(multipleClosureReturns(2)() == 30);

// Test 9.5: Recursive closure pattern (using wrapper)
function makeFactorial(): (n: i32) => i32 {
  // Use a simple iterative approach since recursive closures are complex
  return (n: i32): i32 => {
    let result: i32 = 1;
    for (let i: i32 = 2; i <= n; i++) {
      result = result * i;
    }
    return result;
  };
}
let fact = makeFactorial();
assert(fact(5) == 120);
assert(fact(6) == 720);

// Test 9.6: Closure with i8/u8/i16/u16 captures
function captureSmallTypes(): i32 {
  let a: i8 = 10;
  let b: u8 = 20;
  let c: i16 = 30;
  let d: u16 = 40;

  let fn = (): i32 => <i32>a + <i32>b + <i32>c + <i32>d;
  return fn();
}
assert(captureSmallTypes() == 100);

// =============================================================================
// SECTION 10: Stress Tests
// =============================================================================

// Test 10.1: Many closures sharing same environment
function manyClosuresSameEnv(): i32 {
  let value: i32 = 0;

  let inc1 = (): void => { value += 1; };
  let inc2 = (): void => { value += 2; };
  let inc3 = (): void => { value += 3; };
  let inc4 = (): void => { value += 4; };
  let inc5 = (): void => { value += 5; };
  let get = (): i32 => value;

  inc1(); inc2(); inc3(); inc4(); inc5();

  return get(); // 1 + 2 + 3 + 4 + 5 = 15
}
assert(manyClosuresSameEnv() == 15);

// Test 10.2: Large number of captures
function manyCaptures(): i32 {
  let a: i32 = 1, b: i32 = 2, c: i32 = 3, d: i32 = 4;
  let e: i32 = 5, f: i32 = 6, g: i32 = 7, h: i32 = 8;
  let i: i32 = 9, j: i32 = 10, k: i32 = 11, l: i32 = 12;

  let fn = (): i32 => a + b + c + d + e + f + g + h + i + j + k + l;

  return fn(); // 78
}
assert(manyCaptures() == 78);

// Test 10.3: Simple IIFE (Immediately Invoked Function Expression)
function simpleIIFE(): i32 {
  let v1: i32 = 1;
  let result = ((): i32 => {
    return v1 + 9;
  })();
  return result;
}
assert(simpleIIFE() == 10);

// Test 10.4: Closure array manipulation
// Note: Loop closures need a helper function to capture by value because
// AssemblyScript closures share their environment (reference semantics).
function captureLoopValue(val: i32): () => i32 {
  return (): i32 => val;
}

function closureArrayOps(): i32 {
  let closures = new Array<() => i32>(10);

  for (let i: i32 = 0; i < 10; i++) {
    let captured = i * 10;
    // Use helper function to capture the current value of 'captured'
    closures[i] = captureLoopValue(captured);
  }

  let sum: i32 = 0;
  for (let i: i32 = 0; i < 10; i++) {
    sum += closures[i]();
  }

  return sum; // 0 + 10 + 20 + ... + 90 = 450
}
assert(closureArrayOps() == 450);

// Test 10.5: Interleaved closure creation and execution
function interleavedClosures(): i32 {
  let total: i32 = 0;
  let get = (): i32 => total;

  let add1 = (): void => { total += 1; };
  add1();

  let add10 = (): void => { total += 10; };
  add1();
  add10();

  let add100 = (): void => { total += 100; };
  add1();
  add10();
  add100();

  return get(); // 1 + 1 + 10 + 1 + 10 + 100 = 123
}
assert(interleavedClosures() == 123);

// =============================================================================
// SECTION 11: Closure with String captures
// =============================================================================

// Test 11.1: Capture string
function captureString(): string {
  let s: string = "Hello";
  let fn = (): string => s;
  return fn();
}
assert(captureString() == "Hello");

// Test 11.2: Mutate captured string reference
function mutateStringRef(): string {
  let s: string = "A";
  let append = (suffix: string): void => { s = s + suffix; };
  let get = (): string => s;

  append("B");
  append("C");
  append("D");

  return get();
}
assert(mutateStringRef() == "ABCD");

// =============================================================================
// SECTION 12: Tests from Issue #798 Discussion
// =============================================================================

// Test 12.1: Nested closures (outer -> inner -> innerInner) from @dcodeIO's example
// This tests the parent environment chain - innerInner captures x from grandparent scope
function testNestedClosureFunctions(): i32 {
  let x: i32 = 0;

  let inner = (): i32 => {
    x += 1;
    let innerInner = (): i32 => {
      x += 1;  // Capture from grandparent scope!
      return x;
    };
    innerInner();
    return x;
  };

  return inner(); // x should be 2 (incremented twice)
}
assert(testNestedClosureFunctions() == 2);

// Test 12.2: Range callback pattern from @MaxGraey's original example
// Tests passing closures to higher-order functions with captures
function range(a: i32, b: i32, fn: (n: i32) => void): void {
  for (let i = a; i < b; i++) {
    fn(i);
  }
}

function testRangeWithClosure(): i32 {
  let sum: i32 = 0;
  let n: i32 = 10;

  range(0, n, (i: i32): void => {
    sum += i; // captures sum
  });

  return sum; // 0+1+2+3+4+5+6+7+8+9 = 45
}
assert(testRangeWithClosure() == 45);

// Test 12.3: Return closure pattern from @jtenner's question
// function add(a, b) { return () => a + b; }
function add(a: i32, b: i32): () => i32 {
  return (): i32 => a + b;
}
let addResult = add(3, 4);
assert(addResult() == 7);

// Test 12.4: Two closures different views of same variable from @jtenner's example
// let a = 1; let b = () => a; let c = () => a += 1;
function testTwoClosuresSameVar(): i32 {
  let a: i32 = 1;
  let b = (): i32 => a;
  let c = (): i32 => {
    a += 1;
    return a;
  };

  let br = b(); // 1
  assert(br == 1);
  let cr = c(); // 2
  assert(cr == 2);
  assert(a == 2);

  return a;
}
assert(testTwoClosuresSameVar() == 2);

// Test 12.5: Deeply nested closure chain
// Tests multiple levels of environment parent pointers
function testDeeplyNestedClosures(): i32 {
  let level1: i32 = 1;

  let fn1 = (): i32 => {
    let level2: i32 = 10;

    let fn2 = (): i32 => {
      let level3: i32 = 100;

      let fn3 = (): i32 => {
        return level1 + level2 + level3; // captures from 3 levels up!
      };

      return fn3();
    };

    return fn2();
  };

  return fn1(); // 1 + 10 + 100 = 111
}
assert(testDeeplyNestedClosures() == 111);

// Test 12.6: Closure escapes outer function and is called later
// Tests that environment stays alive after outer function returns
function makeAdderPair(initial: i32): (() => i32)[] {
  let value = initial;
  let arr = new Array<() => i32>(2);

  arr[0] = (): i32 => {
    value += 1;
    return value;
  };

  arr[1] = (): i32 => value;

  return arr;
}

function testClosureEscapesFunction(): i32 {
  let pair = makeAdderPair(10);
  let increment = pair[0];
  let getValue = pair[1];

  assert(getValue() == 10);
  increment(); // 11
  increment(); // 12
  assert(getValue() == 12);

  // Create another independent pair
  let pair2 = makeAdderPair(100);
  let increment2 = pair2[0];
  let getValue2 = pair2[1];

  increment2(); // 101
  assert(getValue2() == 101);
  assert(getValue() == 12); // Original pair unchanged

  return getValue() + getValue2(); // 12 + 101 = 113
}
assert(testClosureEscapesFunction() == 113);

// =============================================================================
// Final assertion to confirm all tests passed
// =============================================================================
assert(true); // If we reach here, all tests passed!
