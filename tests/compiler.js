import fs from "fs";
import path from "path";
import os from "os";
import v8 from "v8";
import cluster from "cluster";
import { createRequire } from "module";
import { fileURLToPath, pathToFileURL } from "url";
import glob from "glob";
import { stderrColors, stdoutColors } from "../util/terminal.js";
import * as optionsUtil from "../util/options.js";
import { coreCount, threadCount } from "../util/cpu.js";
import { diff } from "../util/text.js";
import { Rtrace } from "../lib/rtrace/index.js";
import asc from "../dist/asc.js";

const dirname = path.dirname(fileURLToPath(import.meta.url));
const require = createRequire(import.meta.url);
const startTime = Date.now();

const config = {
  "create": {
    "description": [
      "Recreates the fixture for the specified test(s)",
      "or all the fixtures if no specific test is given."
    ],
    "type": "b"
  },
  "createBinary": {
    "description": [
      "Also creates the respective .wasm binaries."
    ],
    "type": "b"
  },
  "noDiff": {
    "description": [
      "Disables output of detailed fixture differences."
    ],
    "type": "b"
  },
  "noColors": {
    "description": [
      "Disables terminal colors."
    ],
    "type": "b"
  },
  "rtraceVerbose": {
    "description": [
      "Enables verbose rtrace output."
    ]
  },
  "parallel": {
    "description": [
      "Runs tests in parallel."
    ]
  },
  "help": {
    "description": "Prints this message and exits.",
    "type": "b",
    "alias": "h"
  }
};
const opts = optionsUtil.parse(process.argv.slice(2), config);
const args = opts.options;
const argv = opts.arguments;

stdoutColors.enabled = process.stdout.isTTY && !args.noColors;
stderrColors.enabled = process.stderr.isTTY && !args.noColors;

if (args.help) {
  console.log([
    stdoutColors.white("SYNTAX"),
    "  " + stdoutColors.cyan("npm run test:compiler --") + " [test1, test2 ...] [options]",
    "",
    stdoutColors.white("OPTIONS"),
    optionsUtil.help(config)
  ].join(os.EOL) + os.EOL);
  process.exit(0);
}

const features = process.env.ASC_FEATURES ? process.env.ASC_FEATURES.split(",") : [];
const featuresConfig = require("./features.json");
const basedir = path.join(dirname, "compiler");
process.chdir(basedir);

// Gets a list of all relevant tests
function getTests() {
  let tests = glob.sync("**/!(_*).ts")
    .map(name => name.replace(/\.ts$/, ""))
    .filter(name => !name.endsWith(".d") && !name.includes("node_modules"));
  if (argv.length) { // run matching tests only
    tests = tests.filter(filename => argv.indexOf(filename.replace(/\.ts$/, "")) >= 0);
    if (!tests.length) {
      console.log(stdoutColors.red("FAILURE: ") + stdoutColors.white("No matching tests: " + argv.join(" ") + "\n"));
      process.exit(1);
    }
  }
  return tests;
}

function measureStart() {
  return process.hrtime();
}

function measureEnd(start) {
  const hrtime = process.hrtime(start);
  return `${(hrtime[0] * 1e3 + hrtime[1] / 1e6).toFixed(3)} ms`;
}

// Starts a new section within a test
function section(title) {
  const start = measureStart();
  console.log("- " + title);
  return {
    title,
    end(code) {
      const time = measureEnd(start);
      switch (code) {
        case SUCCESS: console.log("  " + stdoutColors.green("SUCCESS") + " (" + time + ")\n"); break;
        default: console.log("  " + stdoutColors.red("FAILURE") + " (" + time + ")\n"); break;
        case SKIPPED: console.log("  " + stdoutColors.yellow("SKIPPED") + " (" + time + ")\n"); break;
      }
    }
  };
}
const SUCCESS = 0;
const FAILURE = 1;
const SKIPPED = 2;

// Runs a single test
async function runTest(basename) {
  console.log(stdoutColors.white("# compiler/" + basename) + "\n");

  const configPath = path.join(basedir, basename + ".json");
  const config = fs.existsSync(configPath) ? require(configPath) : {};
  const stdout = asc.createMemoryStream();
  const stderr = asc.createMemoryStream(chunk => process.stderr.write(chunk.toString().replace(/^(?!$)/mg, "  ")));
  stderr.isTTY = true;
  const dummy = new Map();
  const writeFile = Map.prototype.set.bind(dummy);
  let asc_flags = [];
  let asc_rtrace = !!config.asc_rtrace;
  let v8_flags = "";
  let v8_no_flags = "";
  let missing_features = [];

  // Makes sure to reset the environment after
  function prepareResult(code, message = null) {
    if (v8_no_flags) v8.setFlagsFromString(v8_no_flags);
    // Delete the .wasm files in case the subsequent run doesn't specify the
    // --createBinary flag, thereby preventing confusion. Also, the .debug.wasm
    // file is used by the bindings/esm test.
    if (!args.createBinary) {
      fs.unlink(basename + ".debug.wasm", err => { /* nop */ });
      fs.unlink(basename + ".release.wasm", err => { /* nop */ });
    }
    return { code, message };
  }

  function afterCompile(mode) {
    // The ESM bindings test requires the .wasm file to be present. The file is
    // promptly deleted after the test has completed, unless --createBinary is
    // specified.
    {
      const filename = `${basename}.${mode}.wasm`;
      fs.writeFileSync(filename, dummy.get(filename));
    }

    const compareFixture = section("compare fixture");
    const fixtureExtensions = ["wat", "js", "d.ts"];

    if (args.create) {
      for (const extension of fixtureExtensions) {
        const filename = `${basename}.${mode}.${extension}`;
        if (!dummy.has(filename)) {
          fs.unlink(filename, err => { /* nop */ });
          continue;
        }
        fs.writeFileSync(filename, dummy.get(filename));
        console.log("  " + stdoutColors.yellow(`Created fixture ${filename}`));
      }
      compareFixture.end(SKIPPED);
      return;
    }

    // Displaying the diffs in console for release fixtures isn't usually
    // meaningful, so release fixtures are compared as if --noDiff was passed.
    if (args.noDiff || mode === "release") {
      for (const extension of fixtureExtensions) {
        const filename = `${basename}.${mode}.${extension}`;
        const actual = (
          dummy.has(filename) &&
          dummy.get(filename).replace(/\r\n/g, "\n")
        );
        const expected = (
          fs.existsSync(filename) &&
          fs.readFileSync(filename, { encoding: "utf8" }).replace(/\r\n/g, "\n")
        );

        // If a fixture/generated file is missing, false will be compared to a
        // string. If both are missing, nothing happens below (as it should).
        if (actual !== expected) {
          compareFixture.end(FAILURE);
          return prepareResult(FAILURE, "fixture mismatch");
        }
      }
      compareFixture.end(SUCCESS);
      return;
    }

    let failed = false;

    for (const extension of fixtureExtensions) {
      const filename = `${basename}.${mode}.${extension}`;
      const actualExists = dummy.has(filename);
      const expectedExists = fs.existsSync(filename);

      if (!actualExists && !expectedExists) {
        // Neither exists, which is perfectly fine. Carry on.
        continue;
      } else if (actualExists != expectedExists) {
        const message = actualExists
          ? `Fixture ${filename} is missing!`
          : `File ${filename} was not generated!`;

        console.log("  " + stdoutColors.yellow(message));
        failed = true;
        continue;
      }

      const actual = dummy.has(filename) && dummy.get(filename).replace(/\r\n/g, "\n");
      const expected = (
        fs.existsSync(filename) &&
        fs.readFileSync(filename, { encoding: "utf8" }).replace(/\r\n/g, "\n")
      );

      const diffResult = diff(filename, expected, actual);
      if (diffResult !== null) {
        console.log(diffResult);
        failed = true;
      }
    }

    if (failed) {
      compareFixture.end(FAILURE);
      return prepareResult(FAILURE, "fixture mismatch");
    }
    compareFixture.end(SUCCESS);
  }  

  if (config.features) {
    config.features.forEach(feature => {
      if (!features.includes(feature) && !features.includes("*")) {
        missing_features.push(feature);
      }
      let featureConfig = featuresConfig[feature];
      if (featureConfig.asc_flags) {
        featureConfig.asc_flags.forEach(flag => {
          Array.prototype.push.apply(asc_flags, flag.split(" "));
        });
      }
      if (featureConfig.v8_flags) {
        featureConfig.v8_flags.forEach(flag => {
          if (v8_flags) v8_flags += " ";
          v8_flags += flag;
          if (v8_no_flags) v8_no_flags += " ";
          v8_no_flags += "--no-" + flag.substring(2);
        });
      }
    });
  }
  if (config.asc_flags) {
    config.asc_flags.forEach(flag => { asc_flags.push(...flag.split(" ")); });
  }

  // Build debug
  {
    const cmd = [
      basename + ".ts",
      "--debug",
      "--outFile", basename + ".debug.wasm",
      "--textFile", basename + ".debug.wat"
    ];
    if (asc_flags) cmd.push(...asc_flags);
    if (args.noColors) cmd.push("--noColors");
    const compileDebug = section("compile debug");
    const { error } = await asc.main(cmd, { stdout, stderr, writeFile });

    let expectStderr = config.stderr;
    if (error) {
      stderr.write("---\n");
      stderr.write(error.stack);
      stderr.write("\n---\n");
      if (expectStderr) {
        compileDebug.end(SKIPPED);
      } else {
        compileDebug.end(FAILURE);
      }
    } else {
      compileDebug.end(SUCCESS);
    }

    // check expected stderr patterns in order
    if (expectStderr) {
      const compareStderr = section("compare stderr");
      const stderrString = stderr.toString();
      if (typeof expectStderr === "string") expectStderr = [ expectStderr ];
      let lastIndex = 0;
      let failed = false;
      expectStderr.forEach((substr, i) => {
        let index = stderrString.indexOf(substr, lastIndex);
        if (index < 0) {
          console.log("  missing pattern #" + (i + 1) + " '" + substr + "' in stderr at " + lastIndex + "+.");
          failed = true;
        } else {
          lastIndex = index + substr.length;
        }
      });
      if (failed) {
        compareStderr.end(FAILURE);
        return prepareResult(FAILURE, "stderr mismatch");
      }
      compareStderr.end(SUCCESS);
      return prepareResult(SUCCESS);
    }

    const afterCompileResult = afterCompile("debug");
    if (afterCompileResult) return afterCompileResult;
  }

  stdout.length = 0;
  stderr.length = 0;

  const gluePath = basename + ".js";
  const glue = fs.existsSync(gluePath) ? await import(pathToFileURL(gluePath)) : {};

  // Build release
  {
    const cmd = [
      basename + ".ts",
      "--outFile", basename + ".release.wasm",
      "--textFile", basename + ".release.wat",
      "-O"
    ];
    if (asc_flags) cmd.push(...asc_flags);
    if (args.noColors) cmd.push("--noColors");
    const compileRelease = section("compile release");
    const { error } = await asc.main(cmd, { stdout, stderr, writeFile });

    if (error) {
      stderr.write("---\n");
      stderr.write(error.stack);
      stderr.write("\n---\n");
      compileRelease.end(FAILURE);
      return prepareResult(FAILURE, error.message);
    }
    compileRelease.end(SUCCESS);

    const afterCompileResult = afterCompile("release");
    if (afterCompileResult) return afterCompileResult;

    if (missing_features.length) {
      console.log("- " + stdoutColors.yellow("instantiate SKIPPED") + ": " + missing_features.join(", ") + " not enabled\n");
      return prepareResult(SKIPPED, "feature not enabled: " + missing_features.join(", "));
    } else if (v8_flags) {
      v8.setFlagsFromString(v8_flags);
    }

    const debugBuffer = dummy.get(basename + ".debug.wasm");
    const releaseBuffer = dummy.get(basename + ".release.wasm");
    const instantiateDebug = section("instantiate debug");
    if (config.skipInstantiate) {
      instantiateDebug.end(SKIPPED);
    } else {

      if (!await testInstantiate(debugBuffer, glue, stderr)) {
        instantiateDebug.end(FAILURE);
        return prepareResult(FAILURE, "instantiate error (debug)");
      }
      instantiateDebug.end(SUCCESS);
      const instantiateRelease = section("instantiate release");
      if (!await testInstantiate(releaseBuffer, glue, stderr)) {
        instantiateRelease.end(FAILURE);
        return prepareResult(FAILURE, "instantiate error (release)");
      }
      instantiateRelease.end(SUCCESS);
    }
  }

  stdout.length = 0;
  stderr.length = 0;

  // Build rtraced
  if (asc_rtrace) {
    const cmd = [
      basename + ".ts",
      "--outFile", // -> stdout
      "--debug",
      "--use", "ASC_RTRACE=1",
      "--exportStart", "_initialize",
      // "--runPasses", "instrument-memory"
    ];
    if (asc_flags) cmd.push(...asc_flags);
    const compileRtraced = section("compile rtraced");
    const { error } = await asc.main(cmd, { stdout, stderr });

    if (error) {
      stderr.write("---\n");
      stderr.write(error.stack);
      stderr.write("\n---\n");
      compileRtraced.end(FAILURE);
      return prepareResult(FAILURE, error.message);
    }
    compileRtraced.end(SUCCESS);

    const rtracedBuffer = stdout.toBuffer();
    const instantiateRtrace = section("instantiate rtrace");
    if (!await testInstantiate(rtracedBuffer, glue, stderr)) {
      instantiateRtrace.end(FAILURE);
      return prepareResult(FAILURE, "rtrace error");
    }
    instantiateRtrace.end(SUCCESS);
  }

  return prepareResult(SUCCESS);
}

// Tests if instantiation of a module succeeds
async function testInstantiate(binaryBuffer, glue, stderr) {
  let failed = false;
  try {
    const memory = new WebAssembly.Memory({ initial: 10 });
    const exports = {};

    function getString(ptr) {
      const RUNTIME_HEADER_SIZE = 16;
      if (!ptr) return "null";
      let U32 = new Uint32Array(exports.memory ? exports.memory.buffer : memory.buffer);
      let U16 = new Uint16Array(exports.memory ? exports.memory.buffer : memory.buffer);
      let len16 = U32[(ptr - RUNTIME_HEADER_SIZE + 12) >>> 2] >>> 1;
      let ptr16 = ptr >>> 1;
      return String.fromCharCode.apply(String, U16.subarray(ptr16, ptr16 + len16));
    }

    const rtrace = new Rtrace({
      onerror(err, info) {
        console.log(`  ERROR: ${err.stack}`);
        failed = true;
      },
      oninfo(msg, info) {
        if (!args.rtraceVerbose) return;
        console.log(`  ${msg}`);
      },
      getMemory() {
        return instance.exports.memory;
      }
    });

    function toEnv(name, ref) {
      let env = {};
      for (let key of Object.getOwnPropertyNames(ref)) env[`${name}.${key}`] = ref[key];
      let prototype = ref.prototype;
      if (prototype) {
        for (const key of Object.getOwnPropertyNames(prototype)) {
          const original = prototype[key];
          env[`${name}#${key}`] = (thisArg, ...args) => {
            return original.apply(thisArg, args);
          };
        }
      }
      return env;
    }

    const imports = rtrace.install({
      env: Object.assign({}, globalThis, {
        memory,
        abort: function(msg, file, line, column) {
          console.log(stdoutColors.red("  abort: " + getString(msg) + " in " + getString(file) + "(" + line + ":" + column + ")"));
        },
        trace: function(msg, n) {
          console.log("  trace: " + getString(msg) + (n ? " " : "") + Array.prototype.slice.call(arguments, 2, 2 + n).join(", "));
        },
        seed: function() {
          return 0xA5534817; // make tests deterministic
        },
        visit: function() {
          // override in tests
        },
        "Date.getTimezoneOffset"() {
          // @external.js in bindings tests
          return new Date().getTimezoneOffset();
        },
        ...toEnv("Date", Date),
        ...toEnv("Math", Math)
      })
    });

    if (glue.preInstantiate) {
      console.log("  [invoke glue.preInstantiate]");
      const start = measureStart();
      await glue.preInstantiate(imports, exports);
      console.log("  [return glue.preInstantiate] " + measureEnd(start));
    }
    const { instance } = await WebAssembly.instantiate(binaryBuffer, imports);
    Object.setPrototypeOf(exports, instance.exports);
    if (glue.postInstantiate) {
      console.log("  [invoke glue.postInstantiate]");
      const start = measureStart();
      await glue.postInstantiate(instance);
      console.log("  [return glue.postInstantiate] " + measureEnd(start));
    }
    if (exports._start) {
      console.log("  [invoke exports._start]");
      const start = measureStart();
      exports._start();
      console.log("  [return exports._start] " + measureEnd(start));
    } else if (exports._initialize) {
      console.log("  [invoke exports._initialize]");
      const start = measureStart();
      exports._initialize();
      console.log("  [return exports._initialize] " + measureEnd(start));
    }
    if (glue.postStart) {
      console.log("  [invoke glue.postStart]");
      const start = measureStart();
      glue.postStart(instance);
      console.log("  [return glue.postStart] " + measureEnd(start));
    }
    const leakCount = rtrace.check();
    if (leakCount) {
      failed = true;
      console.log(`  memory leak detected: ${leakCount} leaking`);
    }
    if (!failed) {
      if (rtrace.active) {
        console.log("  " +
          rtrace.allocCount + " allocs, " +
          rtrace.freeCount + " frees, " +
          rtrace.resizeCount + " resizes, " +
          rtrace.moveCount + " moves"
        );
      }
      return true;
    }
  } catch (err) {
    stderr.write("---\n");
    stderr.write(err.stack);
    stderr.write("\n---\n");
  }
  return false;
}

// Evaluates the overall test result
function evaluateResult(failedTests, skippedTests) {
  if (skippedTests.size) {
    console.log(stdoutColors.yellow("WARNING: ") + stdoutColors.white(skippedTests.size + " compiler tests have been skipped:\n"));
    for (let [name, message] of skippedTests) {
      console.log("  " + name + " " + stdoutColors.gray("[" + (message || "???") + "]"));
    }
    console.log();
  }
  if (failedTests.size) {
    process.exitCode = 1;
    console.log(stdoutColors.red("FAILURE: ") + stdoutColors.white(failedTests.size + " compiler tests had failures:\n"));
    for (let [name, message] of failedTests) {
      console.log("  " + name + " " + stdoutColors.gray("[" + (message || "???") + "]"));
    }
    console.log();
  }
  console.log(`Time: ${(Date.now() - startTime)} ms\n`);
  if (!process.exitCode) {
    console.log("[ " + stdoutColors.white("SUCCESS") + " ]");
  }
}

// Run tests in parallel if requested (except with coverage)
const isCoverage = process.env.NODE_V8_COVERAGE != null;
if (!isCoverage && args.parallel && coreCount > 2) {
  if (cluster.isWorker) {
    process.on("message", msg => {
      if (msg.cmd != "run") throw Error("invalid command: " + JSON.stringify(msg));
      stdoutColors.enabled = !msg.noColors;
      stderrColors.enabled = !msg.noColors;
      runTest(msg.test).then(({ code, message }) => {
        process.send({ code, message });
      }, err => {
        process.send({ code: FAILURE, message: err.message });
      });
    });
    process.send({ code: SUCCESS, message: null });
  } else {
    const tests = getTests();
    const failedTests = new Map();
    const skippedTests = new Map();
    const workers = [];
    const current = [];
    const outputs = [];
    let numWorkers = Math.min(coreCount - 1, tests.length);
    console.log(`Spawning ${numWorkers} workers (assuming ${coreCount} cores, ${threadCount} threads)...\n`);
    cluster.settings.silent = true;
    let index = 0;
    for (let i = 0; i < numWorkers; ++i) {
      let worker = cluster.fork();
      workers[i] = worker;
      current[i] = null;
      outputs[i] = [];
      worker.process.stdout.on("data", buf => { outputs[i].push(buf); });
      worker.process.stderr.on("data", buf => { outputs[i].push(buf); });
      worker.on("message", msg => {
        const { code, message } = msg;
        process.stdout.write(Buffer.concat(outputs[i]).toString());
        switch (code) {
          case SUCCESS: break;
          case FAILURE: failedTests.set(current[i], message); break;
          case SKIPPED: skippedTests.set(current[i], message); break;
          default: throw Error(`invalid code: ${code}`);
        }
        if (index >= tests.length) {
          workers[i] = null;
          worker.kill();
          return;
        }
        current[i] = tests[index++];
        outputs[i] = [];
        worker.send({ cmd: "run", test: current[i], noColors: !stdoutColors.enabled });
      });
      worker.on("disconnect", () => {
        if (workers[i]) throw Error(`worker#${i} died unexpectedly`);
        if (!--numWorkers) evaluateResult(failedTests, skippedTests);
      });
    }
  }

// Otherwise run tests sequentially
} else {
  let failedTests = new Map();
  let skippedTests = new Map();
  for (const test of getTests()) {
    const { code, message } = await runTest(test);
    switch (code) {
      case SUCCESS: break;
      case FAILURE: failedTests.set(test, message); break;
      case SKIPPED: skippedTests.set(test, message); break;
      default: new Error(`invalid code: ${code}`);
    }
  }
  evaluateResult(failedTests, skippedTests);
}
