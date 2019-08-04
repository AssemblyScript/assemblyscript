module.exports = {
  /**
   * A set of globs passed to the glob package that qualify typescript files for testing.
   */
  include: ["assembly/__tests__/**/*.spec.ts"],
  /**
   * A set of globs passed to the glob package that quality files to be added to each test.
   */
  add: ["assembly/__tests__/**/*.include.ts"],
  /**
   * All the compiler flags needed for this test suite. Make sure that a binary file is output.
   */
  flags: {
    /** To output a wat file, uncomment the following line. */
    "--textFile": ["output.wat"],
    /** A runtime must be provided here. */
    "--runtime": ["stub"], // Acceptable values are: full, half, stub (arena), and none
    "--runPasses": ["asyncify,dce"]
  },
  /**
   * A set of regexp that will disclude source files from testing.
   */
  disclude: [/node_modules/],
  /**
   * Add your required AssemblyScript imports here.
   */
  imports: {},
  /**
   * All performance statistics reporting can be configured here.
   */
  performance: {
    /** Enable performance statistics gathering for every test. */
    enabled: false,
    /** Set the maximum number of samples to run for every test. */
    maxSamples: 10000,
    /** Set the maximum test run time in milliseconds for every test. */
    maxTestRunTime: 5000,
    /** Report the median time in the default reporter for every test. */
    reportMedian: true,
    /** Report the average time in milliseconds for every test. */
    reportAverage: true,
    /** Report the standard deviation for every test. */
    reportStandardDeviation: false,
    /** Report the maximum run time in milliseconds for every test. */
    reportMax: false,
    /** Report the minimum run time in milliseconds for every test. */
    reportMin: false,
  },
  /**
   * Add a custom reporter here if you want one. The following example is in typescript.
   *
   * @example
   * import { TestReporter, TestGroup, TestResult, TestContext } from "as-pect";
   *
   * export class CustomReporter extends TestReporter {
   *   // implement each abstract method here
   *   public abstract onStart(suite: TestContext): void;
   *   public abstract onGroupStart(group: TestGroup): void;
   *   public abstract onGroupFinish(group: TestGroup): void;
   *   public abstract onTestStart(group: TestGroup, result: TestResult): void;
   *   public abstract onTestFinish(group: TestGroup, result: TestResult): void;
   *   public abstract onFinish(suite: TestContext): void;
   * }
   */
  // reporter: new CustomReporter(),
  /**
   * Specify if the binary wasm file should be written to the file system.
   */
  outputBinary: false,
};
