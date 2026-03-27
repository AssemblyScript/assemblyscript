// Basic throw
function testThrow(): void {
  throw new Error("test");
}

// Try-catch basic
function testTryCatch(): i32 {
  try {
    throw new Error("oops");
  } catch (e) {
    return 1;
  }
  return 0;
}
assert(testTryCatch() == 1);

// Catch variable access
function testCatchVar(): string {
  try {
    throw new Error("msg");
  } catch (e) {
    return (e as Error).message;
  }
  return "";
}
assert(testCatchVar() == "msg");

// No exception thrown
function testNoThrow(): i32 {
  try {
    return 1;
  } catch (e) {
    return 2;
  }
}
assert(testNoThrow() == 1);

// Finally basic
let finallyRan = false;
function testFinally(): void {
  try {
    // normal completion
  } finally {
    finallyRan = true;
  }
}
testFinally();
assert(finallyRan);

// Nested try-catch
function testNested(): i32 {
  try {
    try {
      throw new Error("inner");
    } catch (e) {
      throw new Error("outer");
    }
  } catch (e) {
    return 42;
  }
  return 0;
}
assert(testNested() == 42);

// Try-catch-finally with return in catch - finally must run before return
let returnInCatchFinallyRan = false;
function testReturnInCatchFinally(): i32 {
  try {
    throw new Error("error");
  } catch (e) {
    return 10;  // Return in catch - finally must run first!
  } finally {
    returnInCatchFinallyRan = true;
  }
}
assert(testReturnInCatchFinally() == 10);
assert(returnInCatchFinallyRan);

// Try-catch-finally (without return in catch)
let tryCatchFinallyRan = false;
let tryCatchFinallyResult = 0;
function testTryCatchFinally(): void {
  try {
    throw new Error("error");
  } catch (e) {
    tryCatchFinallyResult = 10;
  } finally {
    tryCatchFinallyRan = true;
  }
}
testTryCatchFinally();
assert(tryCatchFinallyResult == 10);
assert(tryCatchFinallyRan);

// Finally with exception propagation
let finallyWithExceptionRan = false;
function innerThrow(): void {
  try {
    throw new Error("will propagate");
  } finally {
    finallyWithExceptionRan = true;
  }
}
function testFinallyWithException(): i32 {
  try {
    innerThrow();
  } catch (e) {
    return finallyWithExceptionRan ? 1 : 0;
  }
  return 0;
}
assert(testFinallyWithException() == 1);

// Try-finally with normal completion (no exception)
let finallyNormalRan = false;
function testFinallyNormalCompletion(): i32 {
  try {
    // no exception
  } finally {
    finallyNormalRan = true;
  }
  return finallyNormalRan ? 1 : 0;
}
assert(testFinallyNormalCompletion() == 1);

// ============================================================================
// Complex tests with classes
// ============================================================================

// Custom error class extending Error
class CustomError extends Error {
  constructor(message: string, public code: i32) {
    super(message);
  }
}

// Test throwing custom error
function testCustomError(): i32 {
  try {
    throw new CustomError("custom", 42);
  } catch (e) {
    // e is Error type, but carries CustomError data
    return 1;
  }
  return 0;
}
assert(testCustomError() == 1);

// Resource management class
class Resource {
  static instances: i32 = 0;
  static disposed: i32 = 0;

  id: i32;

  constructor() {
    this.id = ++Resource.instances;
  }

  dispose(): void {
    Resource.disposed++;
  }

  doWork(): void {
    // Might throw
  }

  doWorkThatThrows(): void {
    throw new Error("work failed");
  }
}

// Test resource cleanup in finally
function testResourceCleanup(): i32 {
  let r = new Resource();
  let result: i32 = 0;
  try {
    r.doWork();
    result = 1;
  } finally {
    r.dispose();
  }
  return result;
}
assert(testResourceCleanup() == 1);
assert(Resource.disposed == 1);

// Test resource cleanup when exception thrown
function testResourceCleanupWithException(): i32 {
  Resource.disposed = 0;  // Reset
  let r = new Resource();
  try {
    try {
      r.doWorkThatThrows();
    } finally {
      r.dispose();
    }
  } catch (e) {
    return Resource.disposed;  // Should be 1 - disposed even though exception
  }
  return 0;
}
assert(testResourceCleanupWithException() == 1);

// Class with method that uses try-catch
class Calculator {
  value: i32 = 0;

  divide(a: i32, b: i32): i32 {
    try {
      if (b == 0) {
        throw new Error("division by zero");
      }
      return a / b;
    } catch (e) {
      this.value = -1;  // Mark error state
      return 0;
    }
  }

  safeDivide(a: i32, b: i32): i32 {
    try {
      if (b == 0) {
        throw new Error("division by zero");
      }
      this.value = a / b;
      return this.value;
    } catch (e) {
      return -1;
    } finally {
      // Always runs - could log or cleanup
    }
  }
}

let calc = new Calculator();
assert(calc.divide(10, 2) == 5);
assert(calc.divide(10, 0) == 0);
assert(calc.value == -1);

calc.value = 0;
assert(calc.safeDivide(20, 4) == 5);
assert(calc.safeDivide(20, 0) == -1);

// Nested class exception handling
class Outer {
  inner: Inner;

  constructor() {
    this.inner = new Inner();
  }

  process(): i32 {
    try {
      return this.inner.riskyOperation();
    } catch (e) {
      return -1;
    }
  }
}

class Inner {
  riskyOperation(): i32 {
    try {
      throw new Error("inner error");
    } catch (e) {
      throw new Error("wrapped error");
    }
    return 0;
  }
}

let outer = new Outer();
assert(outer.process() == -1);

// Array operations with exceptions
function testArrayWithExceptions(): i32 {
  let arr = new Array<i32>(3);
  arr[0] = 1;
  arr[1] = 2;
  arr[2] = 3;

  let sum: i32 = 0;
  try {
    for (let i = 0; i < arr.length; i++) {
      sum += arr[i];
      if (sum > 5) {
        throw new Error("sum exceeded");
      }
    }
  } catch (e) {
    return sum;  // Should be 6 (1+2+3)
  }
  return 0;
}
assert(testArrayWithExceptions() == 6);

// Multiple catch scenarios with rethrow
let rethrowFinallyRan = false;
function innerRethrow(): void {
  try {
    throw new Error("original");
  } catch (e) {
    rethrowFinallyRan = false;
    throw new Error("rethrown: " + (e as Error).message);
  } finally {
    rethrowFinallyRan = true;
  }
}

function testRethrowWithFinally(): i32 {
  rethrowFinallyRan = false;
  try {
    innerRethrow();
  } catch (e) {
    // Check that finally ran even during rethrow
    return rethrowFinallyRan ? 1 : 0;
  }
  return 0;
}
assert(testRethrowWithFinally() == 1);

// State machine with exceptions
class StateMachine {
  state: i32 = 0;
  errorState: bool = false;

  transition(newState: i32): void {
    try {
      if (newState < 0) {
        throw new Error("invalid state");
      }
      this.state = newState;
    } catch (e) {
      this.errorState = true;
      this.state = -1;
    }
  }

  reset(): void {
    try {
      this.state = 0;
      this.errorState = false;
    } finally {
      // Cleanup any resources
    }
  }
}

let sm = new StateMachine();
sm.transition(1);
assert(sm.state == 1);
assert(sm.errorState == false);

sm.transition(-5);
assert(sm.state == -1);
assert(sm.errorState == true);

sm.reset();
assert(sm.state == 0);
assert(sm.errorState == false);

// Deeply nested try-catch-finally
let deepNestingOrder: string = "";

function testDeepNesting(): i32 {
  deepNestingOrder = "";
  try {
    deepNestingOrder += "t1,";
    try {
      deepNestingOrder += "t2,";
      try {
        deepNestingOrder += "t3,";
        throw new Error("deep");
      } catch (e) {
        deepNestingOrder += "c3,";
        throw new Error("rethrow");
      } finally {
        deepNestingOrder += "f3,";
      }
    } catch (e) {
      deepNestingOrder += "c2,";
    } finally {
      deepNestingOrder += "f2,";
    }
  } catch (e) {
    deepNestingOrder += "c1,";
  } finally {
    deepNestingOrder += "f1,";
  }
  return 1;
}
assert(testDeepNesting() == 1);
assert(deepNestingOrder == "t1,t2,t3,c3,f3,c2,f2,f1,");

// Counter class (alternative to closure)
class Counter {
  count: i32 = 0;

  increment(): i32 {
    try {
      this.count++;
      if (this.count > 3) {
        throw new Error("max reached");
      }
      return this.count;
    } catch (e) {
      return -1;
    }
  }
}

let counter = new Counter();
assert(counter.increment() == 1);
assert(counter.increment() == 2);
assert(counter.increment() == 3);
assert(counter.increment() == -1);  // 4th call throws and catches

// Return value from try block (not catch)
function testReturnFromTry(): i32 {
  try {
    return 42;
  } catch (e) {
    return -1;
  } finally {
    // This runs before the return from try
  }
}
assert(testReturnFromTry() == 42);

// Multiple returns with finally
let multiReturnFinallyCount = 0;
function testMultipleReturnsWithFinally(x: i32): i32 {
  try {
    if (x < 0) {
      return -1;
    }
    if (x == 0) {
      throw new Error("zero");
    }
    if (x > 100) {
      return 100;
    }
    return x;
  } catch (e) {
    return 0;
  } finally {
    multiReturnFinallyCount++;
  }
}

multiReturnFinallyCount = 0;
assert(testMultipleReturnsWithFinally(-5) == -1);
assert(multiReturnFinallyCount == 1);

assert(testMultipleReturnsWithFinally(0) == 0);
assert(multiReturnFinallyCount == 2);

assert(testMultipleReturnsWithFinally(50) == 50);
assert(multiReturnFinallyCount == 3);

assert(testMultipleReturnsWithFinally(200) == 100);
assert(multiReturnFinallyCount == 4);

// Return in finally overrides return in try
function testReturnInFinally(): i32 {
  try {
    return 1;  // This return is overridden
  } finally {
    // eslint-disable-next-line no-unsafe-finally
    return 2;  // This return wins
  }
}
assert(testReturnInFinally() == 2);

// Return in finally overrides return in catch
function testReturnInFinallyOverridesCatch(): i32 {
  try {
    throw new Error("test");
  } catch (e) {
    return 1;  // This return is overridden
  } finally {
    // eslint-disable-next-line no-unsafe-finally
    return 2;  // This return wins
  }
}
assert(testReturnInFinallyOverridesCatch() == 2);

// Return in finally suppresses exception
let finallyReturnSuppressedExceptionRan = false;
function testReturnInFinallySuppressesException(): i32 {
  try {
    throw new Error("should be suppressed");
  } finally {
    finallyReturnSuppressedExceptionRan = true;
    // eslint-disable-next-line no-unsafe-finally
    return 42;  // This suppresses the exception
  }
}
assert(testReturnInFinallySuppressesException() == 42);
assert(finallyReturnSuppressedExceptionRan);

// ============================================================
// Tests for catching abort() and runtime errors
// ============================================================

// Test catching abort()
function testCatchAbort(): bool {
  let caught = false;
  try {
    abort("this should be catchable");
  } catch (e) {
    caught = true;
    // Verify we got an Error with the abort message
    assert(e.message.includes("this should be catchable"));
  }
  return caught;
}
assert(testCatchAbort());

// Test catching runtime errors from __new (allocation too large)
function testCatchRuntimeError(): bool {
  let caught = false;
  try {
    // Try to allocate an impossibly large object
    // This should trigger an allocation error in the runtime
    __new(usize.MAX_VALUE, idof<ArrayBuffer>());
  } catch (e) {
    caught = true;
    // Should have caught an allocation error
    assert(e.message.length > 0);
  }
  return caught;
}
assert(testCatchRuntimeError());

// Test that abort in a function can be caught by the caller
function functionThatAborts(): void {
  abort("abort from function");
}

function testCatchAbortFromFunction(): bool {
  let caught = false;
  try {
    functionThatAborts();
  } catch (e) {
    caught = true;
    assert(e.message.includes("abort from function"));
  }
  return caught;
}
assert(testCatchAbortFromFunction());

// Test catch variable is properly typed as Error
function testCatchVariableType(): bool {
  try {
    throw new Error("type test");
  } catch (e) {
    // e should be typed as Error, so we can access message directly
    let msg: string = e.message;
    return msg == "type test";
  }
  return false;
}
assert(testCatchVariableType());

// Test catching custom Error subclass (use existing CustomError class)
function testCatchCustomError2(): bool {
  try {
    throw new CustomError("custom error 2", 99);
  } catch (e) {
    // e is typed as Error, need to cast to access code
    let custom = e as CustomError;
    return custom.message == "custom error 2" && custom.code == 99;
  }
  return false;
}
assert(testCatchCustomError2());
