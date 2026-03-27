// =============================================================================
// CLOSURE CLASS TEST
// =============================================================================

// =============================================================================
// SECTION 1: Basic Method Closures Capturing "this" directly
// =============================================================================

class Counter {
  count: i32 = 0;

  increment(): void {
    this.count++;
  }

  getIncrementClosure(): () => void {
    return (): void => {
      this.count++;
    };
  }

  getCount(): i32 {
    return this.count;
  }

  getCountClosure(): () => i32 {
    return (): i32 => this.count;
  }
}

// Test 1.1: Basic this capture in closure
function testBasicThisCapture(): i32 {
  let c = new Counter();
  let inc = c.getIncrementClosure();
  let get = c.getCountClosure();

  inc();
  inc();
  inc();

  return get();
}
assert(testBasicThisCapture() == 3);

// Test 1.2: Multiple instances with their own closures
function testMultipleInstances(): i32 {
  let c1 = new Counter();
  let c2 = new Counter();

  let inc1 = c1.getIncrementClosure();
  let inc2 = c2.getIncrementClosure();
  let get1 = c1.getCountClosure();
  let get2 = c2.getCountClosure();

  inc1(); inc1(); inc1();  // c1.count = 3
  inc2(); inc2();          // c2.count = 2

  return get1() * 10 + get2(); // 30 + 2 = 32
}
assert(testMultipleInstances() == 32);

// =============================================================================
// SECTION 2: Complex State Management with Closures
// =============================================================================

class BankAccount {
  private balance: i32;
  private transactionCount: i32 = 0;

  constructor(initialBalance: i32) {
    this.balance = initialBalance;
  }

  getDepositClosure(): (amount: i32) => void {
    return (amount: i32): void => {
      this.balance += amount;
      this.transactionCount++;
    };
  }

  getWithdrawClosure(): (amount: i32) => bool {
    return (amount: i32): bool => {
      if (this.balance >= amount) {
        this.balance -= amount;
        this.transactionCount++;
        return true;
      }
      return false;
    };
  }

  getBalanceClosure(): () => i32 {
    return (): i32 => this.balance;
  }

  getTransactionCountClosure(): () => i32 {
    return (): i32 => this.transactionCount;
  }
}

// Test 2.1: Bank account operations
function testBankAccount(): i32 {
  let account = new BankAccount(100);

  let deposit = account.getDepositClosure();
  let withdraw = account.getWithdrawClosure();
  let getBalance = account.getBalanceClosure();
  let getTxCount = account.getTransactionCountClosure();

  deposit(50);        // balance = 150, txCount = 1
  assert(getBalance() == 150);

  assert(withdraw(30) == true);  // balance = 120, txCount = 2
  assert(getBalance() == 120);

  assert(withdraw(200) == false); // insufficient funds, txCount still 2
  assert(getBalance() == 120);
  assert(getTxCount() == 2);

  deposit(100);       // balance = 220, txCount = 3
  assert(withdraw(220) == true); // balance = 0, txCount = 4

  return getBalance() * 1000 + getTxCount(); // 0 * 1000 + 4 = 4
}
assert(testBankAccount() == 4);

// =============================================================================
// SECTION 3: Closure Capturing Both "this" and Local Variables
// =============================================================================

class Calculator {
  result: i32 = 0;

  getOperationClosure(operand: i32, operation: i32): () => i32 {
    // Captures both 'this' and parameters 'operand' and 'operation'
    return (): i32 => {
      if (operation == 0) {        // add
        this.result += operand;
      } else if (operation == 1) { // subtract
        this.result -= operand;
      } else if (operation == 2) { // multiply
        this.result *= operand;
      }
      return this.result;
    };
  }

  reset(): void {
    this.result = 0;
  }
}

// Test 3.1: Calculator with mixed captures
function testCalculatorClosures(): i32 {
  let calc = new Calculator();

  let addFive = calc.getOperationClosure(5, 0);
  let subtractTwo = calc.getOperationClosure(2, 1);
  let multiplyThree = calc.getOperationClosure(3, 2);

  addFive();          // result = 5
  addFive();          // result = 10
  subtractTwo();      // result = 8
  multiplyThree();    // result = 24

  return calc.result;
}
assert(testCalculatorClosures() == 24);

// =============================================================================
// SECTION 4: Nested Classes with Closures
// =============================================================================

class Inner {
  value: i32;

  constructor(v: i32) {
    this.value = v;
  }

  getValueClosure(): () => i32 {
    return (): i32 => this.value;
  }

  getSetterClosure(): (v: i32) => void {
    return (v: i32): void => {
      this.value = v;
    };
  }
}

class Outer {
  inner: Inner;
  multiplier: i32;

  constructor(innerValue: i32, mult: i32) {
    this.inner = new Inner(innerValue);
    this.multiplier = mult;
  }

  getComputeClosure(): () => i32 {
    // Captures this, which has access to inner
    return (): i32 => this.inner.value * this.multiplier;
  }

  getInnerSetterClosure(): (v: i32) => void {
    return (v: i32): void => {
      this.inner.value = v;
    };
  }
}

// Test 4.1: Nested object access through closures
function testNestedClosures(): i32 {
  let outer = new Outer(10, 3);
  let compute = outer.getComputeClosure();
  let setInner = outer.getInnerSetterClosure();

  assert(compute() == 30); // 10 * 3

  setInner(20);
  assert(compute() == 60); // 20 * 3

  return compute();
}
assert(testNestedClosures() == 60);

// =============================================================================
// SECTION 5: Closures with Inheritance
// =============================================================================

class Animal {
  name: string;
  age: i32;

  constructor(name: string, age: i32) {
    this.name = name;
    this.age = age;
  }

  getAgeClosure(): () => i32 {
    return (): i32 => this.age;
  }

  getAgeIncrementClosure(): () => void {
    return (): void => {
      this.age++;
    };
  }
}

class Dog extends Animal {
  breed: string;

  constructor(name: string, age: i32, breed: string) {
    super(name, age);
    this.breed = breed;
  }

  getBreedClosure(): () => string {
    return (): string => this.breed;
  }

  getFullInfoClosure(): () => string {
    return (): string => this.name + " (" + this.breed + ")";
  }
}

// Test 5.1: Inheritance with closures
function testInheritanceClosures(): i32 {
  let dog = new Dog("Rex", 3, "German Shepherd");

  let getAge = dog.getAgeClosure();
  let incAge = dog.getAgeIncrementClosure();
  let getBreed = dog.getBreedClosure();

  assert(getAge() == 3);
  assert(getBreed() == "German Shepherd");

  incAge();
  incAge();

  return getAge(); // 5
}
assert(testInheritanceClosures() == 5);

// =============================================================================
// SECTION 6: Factory Pattern with Closures
// =============================================================================

class EventEmitter {
  private listeners: Array<(data: i32) => void> = new Array<(data: i32) => void>();

  addListener(listener: (data: i32) => void): void {
    this.listeners.push(listener);
  }

  emit(data: i32): void {
    for (let i = 0; i < this.listeners.length; i++) {
      this.listeners[i](data);
    }
  }

  getListenerCount(): i32 {
    return this.listeners.length;
  }
}

class DataProcessor {
  processedCount: i32 = 0;
  lastValue: i32 = 0;
  sum: i32 = 0;

  getProcessorClosure(): (data: i32) => void {
    return (data: i32): void => {
      this.processedCount++;
      this.lastValue = data;
      this.sum += data;
    };
  }
}

// Test 6.1: Event emitter pattern with closures
function testEventEmitterPattern(): i32 {
  let emitter = new EventEmitter();
  let processor1 = new DataProcessor();
  let processor2 = new DataProcessor();

  emitter.addListener(processor1.getProcessorClosure());
  emitter.addListener(processor2.getProcessorClosure());

  emitter.emit(10);
  emitter.emit(20);
  emitter.emit(30);

  assert(processor1.processedCount == 3);
  assert(processor2.processedCount == 3);
  assert(processor1.sum == 60);
  assert(processor2.sum == 60);
  assert(processor1.lastValue == 30);
  assert(processor2.lastValue == 30);

  return processor1.sum + processor2.sum; // 120
}
assert(testEventEmitterPattern() == 120);

// =============================================================================
// SECTION 7: Builder Pattern with Closures
// =============================================================================

class QueryBuilder {
  private selectFields: string = "*";
  private tableName: string = "";
  private whereClause: string = "";

  getSelectClosure(): (fields: string) => void {
    return (fields: string): void => {
      this.selectFields = fields;
    };
  }

  getFromClosure(): (table: string) => void {
    return (table: string): void => {
      this.tableName = table;
    };
  }

  getWhereClosure(): (clause: string) => void {
    return (clause: string): void => {
      this.whereClause = clause;
    };
  }

  getBuildClosure(): () => string {
    return (): string => {
      let query = "SELECT " + this.selectFields + " FROM " + this.tableName;
      if (this.whereClause.length > 0) {
        query += " WHERE " + this.whereClause;
      }
      return query;
    };
  }
}

// Test 7.1: Builder pattern with closures
function testBuilderPattern(): bool {
  let builder = new QueryBuilder();

  let select = builder.getSelectClosure();
  let from = builder.getFromClosure();
  let where = builder.getWhereClosure();
  let build = builder.getBuildClosure();

  select("id, name");
  from("users");
  where("active = 1");

  let query = build();
  assert(query == "SELECT id, name FROM users WHERE active = 1");

  return true;
}
assert(testBuilderPattern() == true);

// =============================================================================
// SECTION 8: State Machine with Closures
// =============================================================================

class StateMachine {
  private state: i32 = 0; // 0=idle, 1=running, 2=paused, 3=stopped

  getStartClosure(): () => bool {
    return (): bool => {
      if (this.state == 0 || this.state == 2) {
        this.state = 1;
        return true;
      }
      return false;
    };
  }

  getPauseClosure(): () => bool {
    return (): bool => {
      if (this.state == 1) {
        this.state = 2;
        return true;
      }
      return false;
    };
  }

  getStopClosure(): () => bool {
    return (): bool => {
      if (this.state == 1 || this.state == 2) {
        this.state = 3;
        return true;
      }
      return false;
    };
  }

  getResetClosure(): () => void {
    return (): void => {
      this.state = 0;
    };
  }

  getStateClosure(): () => i32 {
    return (): i32 => this.state;
  }
}

// Test 8.1: State machine transitions
function testStateMachine(): i32 {
  let sm = new StateMachine();

  let start = sm.getStartClosure();
  let pause = sm.getPauseClosure();
  let stop = sm.getStopClosure();
  let reset = sm.getResetClosure();
  let getState = sm.getStateClosure();

  assert(getState() == 0); // idle

  assert(start() == true);
  assert(getState() == 1); // running

  assert(start() == false); // already running

  assert(pause() == true);
  assert(getState() == 2); // paused

  assert(start() == true); // can restart from paused
  assert(getState() == 1); // running again

  assert(stop() == true);
  assert(getState() == 3); // stopped

  assert(start() == false); // can't start from stopped

  reset();
  assert(getState() == 0); // back to idle

  return getState();
}
assert(testStateMachine() == 0);

// =============================================================================
// SECTION 9: Observable Pattern with Closures
// =============================================================================

class Observable {
  private value: i32;
  private observers: Array<(oldVal: i32, newVal: i32) => void> = new Array<(oldVal: i32, newVal: i32) => void>();

  constructor(initial: i32) {
    this.value = initial;
  }

  getSubscribeClosure(): (observer: (oldVal: i32, newVal: i32) => void) => void {
    return (observer: (oldVal: i32, newVal: i32) => void): void => {
      this.observers.push(observer);
    };
  }

  getSetClosure(): (newValue: i32) => void {
    return (newValue: i32): void => {
      let oldValue = this.value;
      this.value = newValue;
      for (let i = 0; i < this.observers.length; i++) {
        this.observers[i](oldValue, newValue);
      }
    };
  }

  getGetClosure(): () => i32 {
    return (): i32 => this.value;
  }
}

// Helper class for tracking observer state
class ObserverState {
  changeCount: i32 = 0;
  totalDiff: i32 = 0;

  getCountObserver(): (oldVal: i32, newVal: i32) => void {
    return (oldVal: i32, newVal: i32): void => {
      this.changeCount++;
    };
  }

  getDiffObserver(): (oldVal: i32, newVal: i32) => void {
    return (oldVal: i32, newVal: i32): void => {
      this.totalDiff += newVal - oldVal;
    };
  }
}

// Test 9.1: Observable with multiple observers
function testObservable(): i32 {
  let obs = new Observable(0);

  let subscribe = obs.getSubscribeClosure();
  let set = obs.getSetClosure();
  let get = obs.getGetClosure();

  let state = new ObserverState();

  subscribe(state.getCountObserver());
  subscribe(state.getDiffObserver());

  set(10);  // changeCount = 1, totalDiff = 10
  set(25);  // changeCount = 2, totalDiff = 25 (10 + 15)
  set(20);  // changeCount = 3, totalDiff = 20 (25 - 5)

  assert(get() == 20);
  assert(state.changeCount == 3);
  assert(state.totalDiff == 20);

  return get() + state.changeCount + state.totalDiff; // 20 + 3 + 20 = 43
}
assert(testObservable() == 43);

// =============================================================================
// SECTION 10: Complex Generic-like Patterns
// =============================================================================

class Box {
  value: i32;

  constructor(v: i32) {
    this.value = v;
  }

  getMapClosure(): (fn: (v: i32) => i32) => void {
    return (fn: (v: i32) => i32): void => {
      this.value = fn(this.value);
    };
  }

  getFlatMapClosure(): (fn: (v: i32) => Box) => Box {
    return (fn: (v: i32) => Box): Box => {
      return fn(this.value);
    };
  }

  getValueClosure(): () => i32 {
    return (): i32 => this.value;
  }
}

// Test 10.1: Functor-like map operation
function testBoxMap(): i32 {
  let box = new Box(5);
  let map = box.getMapClosure();
  let getValue = box.getValueClosure();

  map((v: i32): i32 => v * 2);   // 10
  map((v: i32): i32 => v + 3);   // 13
  map((v: i32): i32 => v * v);   // 169

  return getValue();
}
assert(testBoxMap() == 169);

// Test 10.2: FlatMap with closure
function testBoxFlatMap(): i32 {
  let box = new Box(5);
  let flatMap = box.getFlatMapClosure();

  let result = flatMap((v: i32): Box => new Box(v * 10));

  return result.value; // 50
}
assert(testBoxFlatMap() == 50);

// =============================================================================
// SECTION 11: Closure Chaining with This
// =============================================================================

class ChainableCounter {
  count: i32 = 0;

  // Returns a closure that returns this for chaining
  getAddClosure(amount: i32): () => ChainableCounter {
    return (): ChainableCounter => {
      this.count += amount;
      return this;
    };
  }

  getMultiplyClosure(factor: i32): () => ChainableCounter {
    return (): ChainableCounter => {
      this.count *= factor;
      return this;
    };
  }

  getResetClosure(): () => ChainableCounter {
    return (): ChainableCounter => {
      this.count = 0;
      return this;
    };
  }
}

// Test 11.1: Method chaining through closures
function testClosureChaining(): i32 {
  let counter = new ChainableCounter();

  let add5 = counter.getAddClosure(5);
  let add10 = counter.getAddClosure(10);
  let mult2 = counter.getMultiplyClosure(2);

  add5();   // count = 5
  add10();  // count = 15
  mult2();  // count = 30
  add5();   // count = 35

  return counter.count;
}
assert(testClosureChaining() == 35);

// =============================================================================
// SECTION 12: Callback-based Async-like Patterns
// =============================================================================

class Task {
  private completed: bool = false;
  private result: i32 = 0;
  private callbacks: Array<(result: i32) => void> = new Array<(result: i32) => void>();

  getThenClosure(): (callback: (result: i32) => void) => void {
    return (callback: (result: i32) => void): void => {
      if (this.completed) {
        callback(this.result);
      } else {
        this.callbacks.push(callback);
      }
    };
  }

  getCompleteClosure(): (result: i32) => void {
    return (result: i32): void => {
      this.completed = true;
      this.result = result;
      for (let i = 0; i < this.callbacks.length; i++) {
        this.callbacks[i](result);
      }
    };
  }

  isCompleted(): bool {
    return this.completed;
  }
}

// Test 12.1: Promise-like pattern
function testTaskCallbacks(): i32 {
  let task = new Task();
  let then = task.getThenClosure();
  let complete = task.getCompleteClosure();

  let receivedValue: i32 = 0;

  // Register callback before completion
  then((result: i32): void => {
    receivedValue = result * 2;
  });

  assert(receivedValue == 0); // Not called yet

  complete(21);

  assert(receivedValue == 42); // Callback was called
  assert(task.isCompleted() == true);

  return receivedValue;
}
assert(testTaskCallbacks() == 42);

// Test 12.2: Register callback after completion
function testTaskCallbackAfterComplete(): i32 {
  let task = new Task();
  let then = task.getThenClosure();
  let complete = task.getCompleteClosure();

  complete(50);

  let receivedValue: i32 = 0;
  then((result: i32): void => {
    receivedValue = result;
  });

  // Should be called immediately since task is already complete
  return receivedValue;
}
assert(testTaskCallbackAfterComplete() == 50);

// =============================================================================
// SECTION 13: Resource Management Pattern
// =============================================================================

class Resource {
  private acquired: bool = false;
  private useCount: i32 = 0;

  getAcquireClosure(): () => bool {
    return (): bool => {
      if (!this.acquired) {
        this.acquired = true;
        return true;
      }
      return false;
    };
  }

  getReleaseClosure(): () => bool {
    return (): bool => {
      if (this.acquired) {
        this.acquired = false;
        return true;
      }
      return false;
    };
  }

  getUseClosure(): (action: () => i32) => i32 {
    return (action: () => i32): i32 => {
      if (this.acquired) {
        this.useCount++;
        return action();
      }
      return -1; // Error: not acquired
    };
  }

  getUseCount(): i32 {
    return this.useCount;
  }
}

// Test 13.1: Resource acquire/use/release
function testResourceManagement(): i32 {
  let resource = new Resource();

  let acquire = resource.getAcquireClosure();
  let release = resource.getReleaseClosure();
  let use = resource.getUseClosure();

  // Can't use without acquiring
  assert(use((): i32 => 42) == -1);

  // Acquire
  assert(acquire() == true);
  assert(acquire() == false); // Already acquired

  // Use
  assert(use((): i32 => 10) == 10);
  assert(use((): i32 => 20) == 20);
  assert(use((): i32 => 30) == 30);

  assert(resource.getUseCount() == 3);

  // Release
  assert(release() == true);
  assert(release() == false); // Already released

  // Can't use after release
  assert(use((): i32 => 42) == -1);

  return resource.getUseCount();
}
assert(testResourceManagement() == 3);

// =============================================================================
// SECTION 14: Composite Pattern with Closures
// =============================================================================

class TreeNode {
  value: i32;
  children: Array<TreeNode> = new Array<TreeNode>();

  constructor(v: i32) {
    this.value = v;
  }

  addChild(child: TreeNode): void {
    this.children.push(child);
  }

  getSumClosure(): () => i32 {
    return (): i32 => {
      let sum = this.value;
      for (let i = 0; i < this.children.length; i++) {
        let childSum = this.children[i].getSumClosure();
        sum += childSum();
      }
      return sum;
    };
  }

  getDepthClosure(): () => i32 {
    return (): i32 => {
      if (this.children.length == 0) {
        return 1;
      }
      let maxChildDepth: i32 = 0;
      for (let i = 0; i < this.children.length; i++) {
        let childDepth = this.children[i].getDepthClosure();
        let d = childDepth();
        if (d > maxChildDepth) {
          maxChildDepth = d;
        }
      }
      return maxChildDepth + 1;
    };
  }
}

// Test 14.1: Tree traversal with closures
function testTreePattern(): i32 {
  //       1
  //      / \
  //     2   3
  //    / \   \
  //   4   5   6
  let root = new TreeNode(1);
  let n2 = new TreeNode(2);
  let n3 = new TreeNode(3);
  let n4 = new TreeNode(4);
  let n5 = new TreeNode(5);
  let n6 = new TreeNode(6);

  root.addChild(n2);
  root.addChild(n3);
  n2.addChild(n4);
  n2.addChild(n5);
  n3.addChild(n6);

  let getSum = root.getSumClosure();
  let getDepth = root.getDepthClosure();

  assert(getSum() == 21); // 1+2+3+4+5+6
  assert(getDepth() == 3);

  return getSum() * 100 + getDepth(); // 2103
}
assert(testTreePattern() == 2103);

// =============================================================================
// SECTION 15: Iterator Pattern with Closures
// =============================================================================

class Range {
  private current: i32;
  private endVal: i32;
  private step: i32;

  constructor(start: i32, endVal: i32, step: i32 = 1) {
    this.current = start;
    this.endVal = endVal;
    this.step = step;
  }

  getHasNextClosure(): () => bool {
    return (): bool => {
      if (this.step > 0) {
        return this.current < this.endVal;
      } else {
        return this.current > this.endVal;
      }
    };
  }

  getNextClosure(): () => i32 {
    return (): i32 => {
      let value = this.current;
      this.current += this.step;
      return value;
    };
  }

  getResetClosure(start: i32): () => void {
    return (): void => {
      this.current = start;
    };
  }
}

// Test 15.1: Forward iteration
function testRangeIterator(): i32 {
  let range = new Range(0, 5, 1);
  let hasNext = range.getHasNextClosure();
  let next = range.getNextClosure();

  let sum: i32 = 0;
  while (hasNext()) {
    sum += next();
  }

  return sum; // 0+1+2+3+4 = 10
}
assert(testRangeIterator() == 10);

// Test 15.2: Backward iteration with step
function testReverseRangeIterator(): i32 {
  let range = new Range(10, 0, -2);
  let hasNext = range.getHasNextClosure();
  let next = range.getNextClosure();

  let sum: i32 = 0;
  while (hasNext()) {
    sum += next();
  }

  return sum; // 10+8+6+4+2 = 30
}
assert(testReverseRangeIterator() == 30);

// =============================================================================
// Final assertion to confirm all tests passed
// =============================================================================
assert(true); // If we reach here, all tests passed!
