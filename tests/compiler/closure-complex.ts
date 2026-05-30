class Counter {
  private count: i32 = 0;

  increment(): i32 {
    this.count++;
    return this.count;
  }

  getCount(): i32 {
    return this.count;
  }
}

class Calculator {
  result: i32 = 0;

  add(x: i32): Calculator {
    this.result += x;
    return this;
  }

  multiply(x: i32): Calculator {
    this.result *= x;
    return this;
  }

  getResult(): i32 {
    return this.result;
  }
}

// ============================================================================
// Test 1: Nested arrow functions with class instance capture
// ============================================================================
function testNestedArrowsWithClassCapture(): i32 {
  let counter = new Counter();
  let multiplier = 2;

  let innerIncrement = (): i32 => {
    let result = counter.increment();
    return result * multiplier;
  };

  let innerProcess = (): i32 => {
    let sum = 0;
    for (let i = 0; i < 3; i++) {
      sum += innerIncrement();
    }
    return sum;
  };

  return innerProcess(); // (1*2) + (2*2) + (3*2) = 12
}
assert(testNestedArrowsWithClassCapture() == 12);

// ============================================================================
// Test 2: Arrow closure capturing class instance
// ============================================================================
function testArrowClosureWithClass(): i32 {
  let calc = new Calculator();
  calc.result = 10;

  let addToCalc = (x: i32): void => {
    calc.add(x);
  };

  addToCalc(5);
  addToCalc(10);
  addToCalc(15);

  return calc.getResult(); // 10 + 5 + 10 + 15 = 40
}
assert(testArrowClosureWithClass() == 40);

// ============================================================================
// Test 3: Factory function returning closures that use class methods
// ============================================================================
function createCounterOperations(counter: Counter): Array<() => i32> {
  let operations: Array<() => i32> = [];
  operations.push((): i32 => counter.increment());
  operations.push((): i32 => counter.getCount());
  return operations;
}

function testFactoryWithClassMethods(): i32 {
  let counter = new Counter();
  let ops = createCounterOperations(counter);

  ops[0](); // increment -> 1
  ops[0](); // increment -> 2
  ops[0](); // increment -> 3
  return ops[1](); // getCount -> 3
}
assert(testFactoryWithClassMethods() == 3);

// ============================================================================
// Test 4: Deeply nested arrow functions creating classes
// ============================================================================
function testDeeplyNestedClassCreation(): i32 {
  let outerValue = 100;

  let level1 = (): i32 => {
    let level1Value = 10;

    let level2 = (): i32 => {
      let level2Value = 1;

      let level3 = (): Calculator => {
        let calc = new Calculator();
        calc.result = outerValue + level1Value + level2Value;
        return calc;
      };

      let calculator = level3();
      return calculator.multiply(2).getResult();
    };

    return level2();
  };

  return level1(); // (100 + 10 + 1) * 2 = 222
}
assert(testDeeplyNestedClassCreation() == 222);

// ============================================================================
// Test 5: Class with method returning closure
// ============================================================================
class ClosureFactory {
  private baseValue: i32;

  constructor(baseValue: i32) {
    this.baseValue = baseValue;
  }

  createAdder(amount: i32): () => i32 {
    let base = this.baseValue;
    let counter = 0;
    return (): i32 => {
      counter++;
      return base + amount + counter;
    };
  }
}

function testClassReturningClosures(): i32 {
  let factory = new ClosureFactory(100);
  let adder = factory.createAdder(10);

  let sum = 0;
  sum += adder(); // 100 + 10 + 1 = 111
  sum += adder(); // 100 + 10 + 2 = 112

  return sum; // 111 + 112 = 223
}
assert(testClassReturningClosures() == 223);

// ============================================================================
// Test 6: Closure capturing 'this' in class methods
// ============================================================================
class SelfReferencing {
  value: i32;
  callbacks: Array<() => i32> = [];

  constructor(value: i32) {
    this.value = value;
  }

  addCallback(): void {
    let self = this;
    this.callbacks.push((): i32 => {
      return self.value * 2;
    });
  }

  executeCallbacks(): i32 {
    let sum = 0;
    for (let i = 0; i < this.callbacks.length; i++) {
      sum += this.callbacks[i]();
    }
    return sum;
  }

  setValue(newValue: i32): void {
    this.value = newValue;
  }
}

function testThisCaptureInClosures(): i32 {
  let obj = new SelfReferencing(10);

  obj.addCallback();
  obj.addCallback();
  obj.setValue(20);
  obj.addCallback();

  // value is now 20, each callback returns 40
  return obj.executeCallbacks(); // 40 + 40 + 40 = 120
}
assert(testThisCaptureInClosures() == 120);

// ============================================================================
// Test 7: Multiple closures sharing same variables
// ============================================================================
function testMultipleClosuresSharing(): i32 {
  let shared = 0;
  let counter = new Counter();

  let incrementShared = (): void => { shared += counter.increment(); };
  let getShared = (): i32 => shared;

  incrementShared(); // shared = 0 + 1 = 1
  incrementShared(); // shared = 1 + 2 = 3
  incrementShared(); // shared = 3 + 3 = 6

  return getShared(); // 6
}
assert(testMultipleClosuresSharing() == 6);

// ============================================================================
// Test 8: Nested arrow functions
// ============================================================================
function testNestedArrowFunctions(): i32 {
  let base = 10;

  let outer = (x: i32): (() => i32) => {
    let captured = x + base;
    return (): i32 => captured * 2;
  };

  let fn1 = outer(5);  // captured = 15, returns () => 30
  let fn2 = outer(10); // captured = 20, returns () => 40

  return fn1() + fn2(); // 30 + 40 = 70
}
assert(testNestedArrowFunctions() == 70);

// ============================================================================
// Test 9: Complex pipeline with closures and classes
// ============================================================================
function testComplexPipeline(): i32 {
  let counter = new Counter();
  let data: Array<i32> = [1, 2, 3, 4, 5];
  let multiplier = 2;

  let result = 0;
  for (let i = 0; i < data.length; i++) {
    let value = data[i];
    let process = (): i32 => {
      counter.increment();
      return value * multiplier;
    };
    result += process();
  }

  return result + counter.getCount(); // (2+4+6+8+10) + 5 = 30 + 5 = 35
}
assert(testComplexPipeline() == 35);

// ============================================================================
// Test 10: Curried function with class
// ============================================================================
function testCurriedWithClass(): i32 {
  let calc = new Calculator();

  let addTo = (c: Calculator): (x: i32) => Calculator => {
    return (x: i32): Calculator => {
      c.add(x);
      return c;
    };
  };

  let adder = addTo(calc);
  adder(10);
  adder(20);
  adder(30);

  return calc.getResult(); // 10 + 20 + 30 = 60
}
assert(testCurriedWithClass() == 60);
