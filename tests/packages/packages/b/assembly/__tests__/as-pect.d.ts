/**
 * This function creates a test group in the test loader.
 *
 * @param {string} description  - This is the name of the test group.
 * @param {() => void} callback - A function that contains all of the closures for this test group.
 *
 * @example
 * describe("my test suite", (): void => {
 *   // put your tests here
 * });
 */
declare function describe(description: string, callback: () => void): void;

/**
 * This function creates a test inside the given test group. It must be placed inside a describe
 * block.
 *
 * @param {string} description - This is the name of the test, and should describe a behavior.
 * @param {() => void} callback - A function that contains a set of expectations for this test.
 *
 * @example
 * describe("the meaning of life", (): void => {
 *   it("should be 42", (): void => {
 *     // put your expectations here
 *     expect<i32>(29 + 13).toBe(42);
 *   });
 * });
 */
declare function it(description: string, callback: () => void): void;

/**
 * A test that does not run, and is longhand equivalent to using todo function without a
 * callback. This test does not get run and is reported like a todo.
 *
 * @param {string} description - This is the name of the test, and should describe a behavior.
 * @param {() => void} callback - A function that contains a set of expectations for this test.
 */
declare function xit(description: string, callback: () => void): void;

/**
 * A test that does not run, and is longhand equivalent to using todo function without a
 * callback. This test does not get run and is reported like a todo.
 *
 * @param {string} description - This is the name of the test, and should describe a behavior.
 * @param {() => void} callback - A function that contains a set of expectations for this test.
 */
declare function xtest(description: string, callback: () => void): void;

/**
 * This function creates a test inside the given test group. It must be placed inside a describe
 * block.
 *
 * @param {string} description - This is the name of the test, and should describe a behavior.
 * @param {() => void} callback - A function that contains a set of expectations for this test.
 *
 * @example
 * describe("the meaning of life", (): void => {
 *   test("the value should be 42", (): void => {
 *     // put your expectations here
 *     expect<i32>(29 + 13).toBe(42);
 *   });
 * });
 */
declare function test(description: string, callback: () => void): void;

/**
 * This function creates a test that is expected to fail. This is useful to verify if a given
 * behavior is expected to throw.
 *
 * @param {string} description - This is the name of the test, and should describe a behavior.
 * @param {() => void} callback - A function that contains a set of expectations for this test.
 * @param {string?} message - A message that describes why the test should fail.
 * @example
 * describe("the meaning of life", (): void => {
  *   throws("the value should be 42", (): void => {
  *     // put your expectations here
  *     expect<i32>(29 + 13).toBe(42);
  *   });
  * });
  */
 declare function throws(description: string, callback: () => void, message?: string): void;


/**
 * This function creates a test that is expected to fail. This is useful to verify if a given
 * behavior is expected to throw.
 *
 * @param {string} description - This is the name of the test, and should describe a behavior.
 * @param {() => void} callback - A function that contains a set of expectations for this test.
 * @param {string?} message - A message that describes why the test should fail.
 * @example
 * describe("the meaning of life", (): void => {
  *   itThrows("when the value should be 42", (): void => {
  *     // put your expectations here
  *     expect<i32>(29 + 13).not.toBe(42);
  *   }, "The value is actually 42.");
  * });
  */
 declare function itThrows(description: string, callback: () => void, message?: string): void;

/**
 * This function creates a callback that is called before each individual test is run in this test
 * group.
 *
 * @param {function} callback - The function to be run before each test in the current test group.
 *
 * @example
 * // create a global
 * var cat: Cat = new Cat();
 *
 * describe("cats", (): void => {
 *   beforeEach((): void => {
 *     cat.meow(1); // meow once per test
 *   });
 * });
 */
declare function beforeEach(callback: () => void): void;

/**
 * This function creates a callback that is called before the whole test group is run, and only
 * once.
 *
 * @param {function} callback - The function to be run before each test in the current test group.
 *
 * @example
 * // create a global
 * var dog: Dog = null;
 * describe("dogs", (): void => {
 *   beforeAll((): void => {
 *     dog = new Dog(); // create a single dog once before the tests start
 *   });
 * });
 */
declare function beforeAll(callback: () => void): void;

/**
 * This function creates a callback that is called after each individual test is run in this test
 * group.
 *
 * @param {function} callback - The function to be run after each test in the current test group.
 *
 * @example
 * // create a global
 * var cat: Cat = new Cat();
 *
 * describe("cats", (): void => {
 *   afterEach((): void => {
 *     cat.sleep(12); // cats sleep a lot
 *   });
 * });
 */
declare function afterEach(callback: () => void): void;

/**
 * This function creates a callback that is called after the whole test group is run, and only
 * once.
 *
 * @param {function} callback - The function to be run after each test in the current test group.
 *
 * @example
 * // create a global
 * var dog: Dog = null;
 * describe("dogs", (): void => {
 *   afterAll((): void => {
 *     memory.free(changetype<usize>(dog)); // free some memory
 *   });
 * });
 */
declare function afterAll(callback: () => void): void;

/**
 * Describes a value and returns an expectation to test the value.
 *
 * @type {T} - The test's type
 * @param {T} actual - The value being tested.
 *
 * @example
 * expect<i32>(42).not.toBe(-1, "42 should not be -1");
 * expect<i32>(19 + 23).toBe(42, "19 + 23 should equal 42");
 */
declare function expect<T>(actual: T | null): Expectation<T>;

/**
 * Describes a function and returns an expectation to test the function.
 *
 * @param {() => void} callback - The callback being tested.
 *
 * @example
 * expectFn((): void => unreachable()).toThrow("unreachables do not throw");
 * expectFn((): void => {
 *   cat.meow();
 * }).not.toThrow("Uhoh, cats can't meow!");;
 */
declare function expectFn(cb: () => void): Expectation<() => void>;

/**
 * Describes a test that needs to be written.
 *
 * @param {string} description - The description of the test that needs to be written.
 */
declare function todo(description: string): void;

/**
 * Logs a single value to the logger, and is stringified. It works for references, values, and
 * strings.
 *
 * @type {T} - The type to be logged.
 * @param {T | null} value - The value to be logged.
 * @example
 * log<string>("This is a logged value.");
 * log<i32>(42);
 * log<Vec3>(new Vec(1, 2, 3));
 * log<Vec3>(null);
 */
declare function log<T>(value: T | null): void;

/**
* An expectation for a value.
*/
declare class Expectation<T> {

  /**
   * Create a new expectation.
   *
   * @param {T | null} actual - The actual value of the expectation.
   */
  constructor(actual: T | null);

  /**
   * This expectation performs a strict equality on value types and reference types.
   *
   * @param {T | null} expected - The value to be compared.
   * @param {string} message - The optional message that describes the expectation.
   *
   * @example
   * expect<i32>(42).not.toBe(-1, "42 should not be -1");
   * expect<i32>(19 + 23).toBe(42, "19 + 23 should equal 42");
   */
  toBe(expected: T | null, message?: string): void;

  /**
   * This expectation performs a strict equality on value types and performs a memcompare on
   * reference types. If the reference type `T` has reference types as properties, the comparison does
   * not perform property traversal. It will only compare the pointer values in the memory block, and
   * only compare `offsetof<T>()` bytes, regardless of the allocated block size.
   *
   * @param {T | null} expected - The value to be compared.
   * @param {string} message - The optional message that describes the expectation.
   *
   * @example
   * expect<Vec3>(new Vec3(1, 2, 3)).toStrictEqual(new Vec(1, 2, 3), "Vectors of the same shape should be equal");
   */
  toStrictEqual(expected: T | null, message?: string): void;

  /**
   * This expectation performs a strict memory block equality based on the allocated block sizes.
   *
   * @param {T | null} expected - The value to be compared.
   * @param {string} message - The optional message that describes the expectation.
   *
   * @example
   * expect<Vec3>(new Vec3(1, 2, 3)).toBlockEqual(new Vec(1, 2, 3), "Vectors of the same shape should be equal");
   */
  toBlockEqual(expected: T | null, message?: string): void;

  /**
   * If the value is callable, it calls the function, and fails the expectation if it throws, or hits
   * an unreachable().
   *
   * @param {string} message - The optional message that describes the expectation.
   *
   * @example
   * expectFn((): void => unreachable()).toThrow("unreachable() should throw.");
   * expectFn((): void => {
   *   cat.sleep(100); // cats can sleep quite a lot
   * }).not.toThrow("cats should sleep, not throw");
   */
  toThrow(message?: string): void;

  /**
   * This expecation asserts that the value is truthy, like in javascript. If the value is a string,
   * then strings of length 0 are not truthy.
   *
   * @param {string} message - The optional message that describes the expectation.
   *
   * @example
   * expect<bool>(true).toBeTruthy("true is truthy.");
   * expect<i32>(1).toBeTruthy("numeric values that are not 0 are truthy.");
   * expect<Vec3>(new Vec3(1, 2, 3)).toBeTruthy("reference types that aren't null are truthy.");
   * expect<bool>(false).not.toBeTruthy("false is not truthy.");
   * expect<i32>(0).not.toBeTruthy("0 is not truthy.");
   * expect<Vec3>(null).not.toBeTruthy("null is not truthy.");
   */
  toBeTruthy(message?: string): void;

  /**
   * This expectation tests the value to see if it is null. If the value is a value type, it is
   * never null. If the value is a reference type, it performs a strict null comparison.
   *
   * @param {string} message - The optional message that describes the expectation.
   *
   * @example
   * expect<i32>(0).not.toBeNull("numbers are never null");
   * expect<Vec3>(null).toBeNull("null reference types are null.");
   */
  toBeNull(message?: string): void;

  /**
   * This expecation assert that the value is falsy, like in javascript. If the value is a string,
   * then strings of length 0 are falsy.
   *
   * @param {string} message - The optional message that describes the expectation.
   *
   * @example
   * expect<bool>(false).toBeFalsy("false is falsy.");
   * expect<i32>(0).toBeFalsy("0 is falsy.");
   * expect<Vec3>(null).toBeFalsy("null is falsy.");
   * expect<bool>(true).not.toBeFalsy("true is not falsy.");
   * expect<i32>(1).not.toBeFalsy("numeric values that are not 0 are not falsy.");
   * expect<Vec3>(new Vec3(1, 2, 3)).not.toBeFalsy("reference types that aren't null are not falsy.");
   */
  toBeFalsy(message?: string): void;

  /**
   * This expectation asserts that the value is greater than the expected value. Since operators can
   * be overloaded in assemblyscript, it's possible for this to work on reference types.
   *
   * @param {T | null} expected - The expected value that the actual value should be greater than.
   * @param {string} message - The optional message that describes this expectation.
   *
   * @example
   * expect<i32>(10).toBeGreaterThan(4);
   * expect<i32>(12).not.toBeGreaterThan(42);
   */
  toBeGreaterThan(expected: T | null, message?: string): void;

  /**
   * This expectation asserts that the value is less than the expected value. Since operators can
   * be overloaded in assemblyscript, it's possible for this to work on reference types.
   *
   * @param {T | null} value - The expected value that the actual value should be less than.
   * @param {string} message - The optional message that describes this expectation.
   *
   * @example
   * expect<i32>(10).not.toBeLessThan(4);
   * expect<i32>(12).toBeLessThan(42);
   */
  toBeLessThan(expected: T | null, message?: string): void;

  /**
   * This expectation asserts that the value is greater than or equal to the expected value. Since
   * operators can be overloaded in assemblyscript, it's possible for this to work on reference
   * types.
   *
   * @param {T | null} value - The expected value that the actual value should be greater than or
   * equal to.
   * @param {string} message - The optional message that describes this expectation.
   *
   * @example
   * expect<i32>(42).toBeGreaterThanOrEqualTo(42);
   * expect<i32>(10).toBeGreaterThanOrEqualTo(4);
   * expect<i32>(12).not.toBeGreaterThanOrEqualTo(42);
   */
  toBeGreaterThanOrEqualTo(expected: T | null, message?: string): void;

  /**
   * This expectation asserts that the value is less than or equal to the expected value. Since
   * operators can be overloaded in assemblyscript, it's possible for this to work on reference
   * types.
   *
   * @param {T | null} value - The expected value that the actual value should be less than or equal
   * to.
   * @param {string} message - The optional message that describes this expectation.
   *
   * @example
   * expect<i32>(42).toBeLessThanOrEqualTo(42);
   * expect<i32>(10).not.toBeLessThanOrEqualTo(4);
   * expect<i32>(12).toBeLessThanOrEqualTo(42);
   */
  toBeLessThanOrEqualTo(expected: T | null, message?: string): void;

  /**
   * This expectation asserts that the value is close to another value. Both numbers must be finite,
   * and T must extend f64 or f32.
   *
   * @param {T extends f64 | f32} value - The expected value to be close to.
   * @param {i32} decimalPlaces - The number of decimal places used to calculate epsilon. Default is
   * 2.
   * @param {string} message - The optional message that describes this expectation.
   */
  toBeCloseTo(expected: T, decimalPlaces?: number, message?: string): void;

  /**
   * This function asserts the float type value is NaN.
   *
   * @param {string} message - The optional message the describes this expectation.
   * @example
   * expect<f64>(NaN).toBeNaN();
   * expect<f32>(42).not.toBeNaN();
   */
  toBeNaN(message?: string): void;

  /**
   * This function asserts a float is finite.
   *
   * @param {string} message - The optional message the describes this expectation.
   * @example
   * expect<f32>(42).toBeFinite();
   * expect<f64>(Infinity).not.toBeFinite();
   */
  toBeFinite(message?: string): void;

  /**
   * This method asserts the item has the expected length.
   *
   * @param {i32} expected - The expected length.
   * @param {string} message - The optional message the describes this expectation.
   */
  toHaveLength(expected: i32, message?: string): void;

  /**
   * This method asserts that a given T that extends Array<U> has a value/reference included.
   *
   * @param {i32} expected - The expected item to be included in the Array.
   * @param {string} message - The optional message the describes this expectation.
   */
  toInclude<U>(expected: U, message?: string): void;


  /**
   * This method asserts that a given T that extends Array<U> has a value/reference included and
   * compared via memory.compare().
   *
   * @param {i32} expected - The expected item to be included in the Array.
   * @param {string} message - The optional message the describes this expectation.
   */
  toIncludeEqual<U>(expected: U, message?: string): void;

  /**
   * This computed property is chainable, and negates the existing expectation. It returns itself.
   *
   * @param {U} expected - The expected item.
   * @param {string} message - The optional message the describes this expectation.
   * @type {Expectation<T>}
   */
  not: Expectation<T>;

  /**
   * The actual value of the expectation.
   */
  actual: T | null;
  private _not: boolean;
}

/**
 * This is called to stop the debugger.  e.g. `node --inspect-brk asp`.
 */
declare function debug(): void;

/**
 * This function call enables performance statistics gathering for the following test.
 *
 * @param {bool} enabled - The bool to indicate if performance statistics should be gathered.
 */
declare function performanceEnabled(enabled: bool): void;

/**
 * This function call sets the maximum number of samples to complete the following test.
 *
 * @param {f64} count - The maximum number of samples required.
 */
declare function maxSamples(count: f64): void;

/**
 * This function call sets the number of decimal places to round to for the following test.
 *
 * @param {i32} deicmalPlaces - The number of decimal places to round to
 */
declare function roundDecimalPlaces(count: i32): void;

/**
 * This function call will set the maximum amount of time that should pass before it can stop
 * gathering samples for the following test.
 *
 * @param {f64} time - The ammount of time in milliseconds.
 */
declare function maxTestRunTime(time: f64): void;

/**
 * This function call enables gathering the average/mean run time of each sample for the following
 * test.
 *
 * @param {bool} enabled - The bool to indicate if the average/mean should be gathered.
 */
declare function reportAverage(enabled: bool): void;

/**
 * This function call enables gathering the median run time of each sample for the following test.
 *
 * @param {bool} enabled - The bool to indicate if the median should be gathered.
 */
declare function reportMedian(value: bool): void;

/**
 * This function call enables gathering the standard deviation of the run times of the samples
 * collected for the following test.
 *
 * @param {bool} enabled - The bool to indicate if the standard deviation should be gathered.
 */
declare function reportStdDev(value: bool): void;

/**
 * This function call enables gathering the largest run time of the samples collected for the
 * following test.
 *
 * @param {bool} enabled - The bool to indicate if the max should be gathered.
 */
declare function reportMax(value: bool): void;

/**
 * This function call enables gathering the smallest run time of the samples collected for the
 * following test.
 *
 * @param {bool} enabled - The bool to indicate if the min should be gathered.
 */
declare function reportMin(value: bool): void;

/**
 * This function call enables gathering the varaince of the samples collected for the following test.
 *
 * @param {bool} enabled - The bool to indicate if the variance should be calculated.
 */
declare function reportVariance(value: bool): void;

/**
 * This static class contains a few conveince methods for developers to test the current number of
 * blocks allocated on the heap.
 */
declare class RTrace {
  /**
   * This bool indicates if `RTrace` should call into JavaScript to obtain reference counts.
   */
  public static enabled: bool;

  /**
   * This method returns the current number of active references on the heap.
   */
  public static count(): i32;

  /**
   * This method starts a new refcounting group, and causes the next call to `RTrace.end(label)` to
   * return a delta in reference counts on the heap.
   *
   * @param {i32} label - The numeric label for this refcounting group.
   */
  public static start(label: i32): void;

  /**
   * This method returns a delta of how many new (positive) or collected (negative) are on the heap.
   *
   * @param {i32} label - The numeric label for this refcounting group.
   */
  public static end(label: i32): i32;

  /**
   * This method returns the number of increments that have occurred over the course of a test
   * file.
   */
  public static increments(): i32;

  /**
   * This method returns the number of decrements that have occurred over the course of a test
   * file.
   */
  public static decrements(): i32;

  /**
   * This method returns the number of increments that have occurred over the course of a test
   * group.
   */
  public static groupIncrements(): i32;

  /**
   * This method returns the number of decrements that have occurred over the course of a test
   * group.
   */
  public static groupDecrements(): i32;

  /**
   * This method returns the number of increments that have occurred over the course of a test
   * group.
   */
  public static testIncrements(): i32;

  /**
   * This method returns the number of decrements that have occurred over the course of a test
   * group.
   */
  public static testDecrements(): i32;

  /**
   * This method returns the number of allocations that have occurred over the course of a test
   * file.
   */
  public static allocations(): i32;

  /**
   * This method returns the number of frees that have occurred over the course of a test
   * file.
   */
  public static frees(): i32;

  /**
   * This method returns the number of allocations that have occurred over the course of a test
   * group.
   */
  public static groupAllocations(): i32;

  /**
   * This method returns the number of frees that have occurred over the course of a test
   * group.
   */
  public static groupFrees(): i32;

  /**
   * This method returns the number of allocations that have occurred over the course of a test
   * group.
   */
  public static testAllocations(): i32;

  /**
   * This method returns the number of frees that have occurred over the course of a test
   * group.
   */
  public static testFrees(): i32;

  /**
   * This method triggers a garbage collection.
   */
  public static collect(): void;
}