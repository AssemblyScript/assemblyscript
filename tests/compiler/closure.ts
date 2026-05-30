// Test 1: Basic closure capturing parameter - read
function testCaptureParam(x: i32): () => i32 {
  return (): i32 => x;
}
let fn1 = testCaptureParam(42);
assert(fn1() == 42);

// Test 2: Basic closure capturing var - read
function testCaptureVar(): () => i32 {
  var x = 100;
  return (): i32 => x;
}
let fn2 = testCaptureVar();
assert(fn2() == 100);

// Test 3: Basic closure capturing let - read
function testCaptureLet(): () => i32 {
  let x = 200;
  return (): i32 => x;
}
let fn3 = testCaptureLet();
assert(fn3() == 200);

// Test 4: Closure with write - mutation affects outer scope
function testClosureWrite(): i32 {
  let counter = 0;
  let increment = (): void => { counter = counter + 1; };
  let getCounter = (): i32 => counter;
  increment();
  increment();
  increment();
  return getCounter();
}
assert(testClosureWrite() == 3);

// Test 5: Multiple captures
function testMultipleCaptures(a: i32, b: i32): () => i32 {
  let c = 10;
  return (): i32 => a + b + c;
}
let fn5 = testMultipleCaptures(1, 2);
assert(fn5() == 13);

// Test 6: Two closures sharing same environment - verify reference semantics
function testSharedEnvironment(): i32 {
  let value = 0;
  let setter = (x: i32): void => { value = x; };
  let getter = (): i32 => value;

  setter(50);
  return getter();
}
assert(testSharedEnvironment() == 50);

// ============================================================================
// Tests for closure capture from various control flow constructs
// ============================================================================

// Test 7: Capture from while loop
function testCaptureInWhile(): i32 {
  let sum = 0;
  let i = 0;
  while (i < 3) {
    let adder = (): void => { sum = sum + i; };
    adder();
    i++;
  }
  return sum;  // 0 + 1 + 2 = 3
}
assert(testCaptureInWhile() == 3);

// Test 8: Capture from do-while loop
function testCaptureInDoWhile(): i32 {
  let product = 1;
  let i = 1;
  do {
    let multiplier = (): void => { product = product * i; };
    multiplier();
    i++;
  } while (i <= 4);
  return product;  // 1 * 1 * 2 * 3 * 4 = 24
}
assert(testCaptureInDoWhile() == 24);

// Test 9: Capture from for loop
function testCaptureInFor(): i32 {
  let result = 0;
  for (let i = 1; i <= 5; i++) {
    let addI = (): void => { result = result + i; };
    addI();
  }
  return result;  // 1 + 2 + 3 + 4 + 5 = 15
}
assert(testCaptureInFor() == 15);

// Test 10: Capture from switch statement
function testCaptureInSwitch(x: i32): i32 {
  let captured = 0;
  switch (x) {
    case 1: {
      let setCaptured = (): void => { captured = 10; };
      setCaptured();
      break;
    }
    case 2: {
      let setCaptured = (): void => { captured = 20; };
      setCaptured();
      break;
    }
    default: {
      let setCaptured = (): void => { captured = 99; };
      setCaptured();
      break;
    }
  }
  return captured;
}
assert(testCaptureInSwitch(1) == 10);
assert(testCaptureInSwitch(2) == 20);
assert(testCaptureInSwitch(3) == 99);

// Test 11: Capture from array literal
function testCaptureInArrayLiteral(): i32 {
  let x = 5;
  let y = 10;
  let fns = [
    (): i32 => x,
    (): i32 => y,
    (): i32 => x + y
  ];
  return fns[0]() + fns[1]() + fns[2]();  // 5 + 10 + 15 = 30
}
assert(testCaptureInArrayLiteral() == 30);

// Test 12: Closure returning closure (nested capture)
function testNestedClosureCapture(): i32 {
  let outer = 100;
  let makeAdder = (): (y: i32) => i32 => {
    return (y: i32): i32 => outer + y;
  };
  let adder = makeAdder();
  return adder(23);  // 100 + 23 = 123
}
assert(testNestedClosureCapture() == 123);

// Test 13: Multiple closures in array capturing same variable
function testMultipleClosuresInArray(): i32 {
  let shared = 0;
  let incrementers: Array<() => void> = [];

  for (let i = 0; i < 3; i++) {
    incrementers.push((): void => { shared = shared + 1; });
  }

  for (let i = 0; i < incrementers.length; i++) {
    incrementers[i]();
  }

  return shared;  // Should be 3
}
assert(testMultipleClosuresInArray() == 3);

// Test 14: Closure with ternary expression using captured variable
function testCaptureInTernary(): i32 {
  let flag = true;
  let a = 10;
  let b = 20;
  let chooser = (): i32 => flag ? a : b;

  assert(chooser() == 10);
  flag = false;
  return chooser();  // Should be 20 now
}
assert(testCaptureInTernary() == 20);

// Test 15: Closure capturing from condition expression
function testCaptureFromCondition(): i32 {
  let threshold = 50;
  let value = 75;
  let isAboveThreshold = (): bool => value > threshold;

  assert(isAboveThreshold() == true);
  value = 25;
  return isAboveThreshold() ? 1 : 0;  // Should be 0
}
assert(testCaptureFromCondition() == 0);

// Test 16: Deeply nested loops with closure
function testDeepLoopCapture(): i32 {
  let total = 0;
  for (let i = 0; i < 2; i++) {
    for (let j = 0; j < 2; j++) {
      let addBoth = (): void => { total = total + i + j; };
      addBoth();
    }
  }
  // i=0,j=0: +0, i=0,j=1: +1, i=1,j=0: +1, i=1,j=1: +2 = 4
  return total;
}
assert(testDeepLoopCapture() == 4);

// Test 17: Closure capturing counter pattern
function makeCounter(): () => i32 {
  let count = 0;
  return (): i32 => {
    count = count + 1;
    return count;
  };
}
let counter1 = makeCounter();
let counter2 = makeCounter();
assert(counter1() == 1);
assert(counter1() == 2);
assert(counter2() == 1);  // Independent counter
assert(counter1() == 3);
assert(counter2() == 2);

// Test 18: Closure with parameter default value capturing outer variable
function testDefaultParamCapture(): i32 {
  let defaultVal = 42;
  let fn = (x: i32 = defaultVal): i32 => x;
  return fn();
}
assert(testDefaultParamCapture() == 42);

// Test 19: Closure with parameter default value using another param
function testDefaultParamWithOtherParam(): i32 {
  let multiplier = 3;
  let fn = (a: i32, b: i32 = a * multiplier): i32 => b;
  return fn(10);  // b defaults to 10 * 3 = 30
}
assert(testDefaultParamWithOtherParam() == 30);
