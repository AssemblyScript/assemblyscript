import fs from "fs";
import path from "path";
import os from "os";
import v8 from "v8";
import cluster from "cluster";
import { createRequire } from "module";
import { fileURLToPath } from "url";
import { WASI } from "wasi";
import glob from "glob";
import { stdout as colors } from "../util/colors.js";
import * as optionsUtil from "../util/options.js";
import { coreCount, threadCount } from "../util/cpu.js";
import diff from "../util/diff.js";
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

if (args.help) {
  console.log([
    colors.white("SYNTAX"),
    "  " + colors.cyan("npm run test:compiler --") + " [test1, test2 ...] [options]",
    "",
    colors.white("OPTIONS"),
    optionsUtil.help(config)
  ].join(os.EOL) + os.EOL);
  process.exit(0);
}

const features = process.env.ASC_FEATURES ? process.env.ASC_FEATURES.split(",") : [];
const featuresConfig = require("./features.json");
const basedir = path.join(dirname, "compiler");

// Gets a list of all relevant tests
function getTests() {
  var tests = glob.sync("**/!(_*).ts", { cwd: basedir }).map(name => name.replace(/\.ts$/, ""));
  if (argv.length) { // run matching tests only
    tests = tests.filter(filename => argv.indexOf(filename.replace(/\.ts$/, "")) >= 0);
    if (!tests.length) {
      console.log(colors.red("FAILURE: ") + colors.white("No matching tests: " + argv.join(" ") + "\n"));
      process.exit(1);
    }
  }
  return tests;
}

// Starts a new section within a test
function section(title) {
  const start = process.hrtime();
  console.log("- " + title);
  return {
    title,
    end(code) {
      const hrtime = process.hrtime(start);
      const time = asc.formatTime(hrtime[0] * 1e9 + hrtime[1]);
      switch (code) {
        case SUCCESS: console.log("  " + colors.green("SUCCESS") + " (" + time + ")\n"); break;
        default: console.log("  " + colors.red("FAILURE") + " (" + time + ")\n"); break;
        case SKIPPED: console.log("  " + colors.yellow("SKIPPED") + " (" + time + ")\n"); break;
      }
    }
  };
}
const SUCCESS = 0;
const FAILURE = 1;
const SKIPPED = 2;

// Runs a single test
async function runTest(basename) {
  console.log(colors.white("# compiler/" + basename) + "\n");

  const configPath = path.join(basedir, basename + ".json");
  const config = fs.existsSync(configPath) ? require(configPath) : {};
  const stdout = asc.createMemoryStream();
  const stderr = asc.createMemoryStream(chunk => process.stderr.write(chunk.toString().replace(/^(?!$)/mg, "  ")));
  stderr.isTTY = true;
  var asc_flags = [];
  var asc_rtrace = !!config.asc_rtrace;
  var v8_flags = "";
  var v8_no_flags = "";
  var missing_features = [];

  // Makes sure to reset the environment after
  function prepareResult(code, message = null) {
    if (v8_no_flags) v8.setFlagsFromString(v8_no_flags);
    if (!args.createBinary) fs.unlink(path.join(basedir, basename + ".untouched.wasm"), err => { /* nop */ });
    return { code, message };
  }

  if (config.features) {
    config.features.forEach(feature => {
      if (!features.includes(feature) && !features.includes("*")) {
        missing_features.push(feature);
        return; // from forEach
      }
      var featureConfig = featuresConfig[feature];
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
        v8.setFlagsFromString(v8_flags);
      }
    });
    if (missing_features.length) {
      console.log("- " + colors.yellow("feature SKIPPED") + " (" + missing_features.join(", ") + ")\n");
      return prepareResult(SKIPPED, "feature not enabled: " + missing_features.join(", "));
    }
  }
  if (config.asc_flags) {
    config.asc_flags.forEach(flag => { asc_flags.push(...flag.split(" ")); });
  }

  // Build untouched
  {
    const cmd = [
      basename + ".ts",
      "--baseDir", basedir,
      "--debug",
      "--textFile" // -> stdout
    ];
    if (asc_flags) cmd.push(...asc_flags);
    cmd.push("--binaryFile", basename + ".untouched.wasm");
    const compileUntouched = section("compile untouched");
    const { error } = await asc.main(cmd, { stdout, stderr });

    let expectStderr = config.stderr;
    if (error) {
      stderr.write("---\n");
      stderr.write(error.stack);
      stderr.write("\n---\n");
      if (expectStderr) {
        compileUntouched.end(SKIPPED);
      } else {
        compileUntouched.end(FAILURE);
      }
    } else {
      compileUntouched.end(SUCCESS);
    }

    // check expected stderr patterns in order
    if (expectStderr) {
      const compareStderr = section("compare stderr");
      const stderrString = stderr.toString();
      if (typeof expectStderr === "string") expectStderr = [ expectStderr ];
      let lastIndex = 0;
      let failed = false;
      expectStderr.forEach((substr, i) => {
        var index = stderrString.indexOf(substr, lastIndex);
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

    const compareFixture = section("compare fixture");
    const actual = stdout.toString().replace(/\r\n/g, "\n");
    if (args.create) {
      fs.writeFileSync(path.join(basedir, basename + ".untouched.wat"), actual, { encoding: "utf8" });
      console.log("  " + colors.yellow("Created fixture"));
      compareFixture.end(SKIPPED);
    } else {
      const expected = fs.readFileSync(path.join(basedir, basename + ".untouched.wat"), { encoding: "utf8" }).replace(/\r\n/g, "\n");
      if (args.noDiff) {
        if (expected != actual) {
          compareFixture.end(FAILURE);
          return prepareResult(FAILURE, "fixture mismatch");
        }
      } else {
        let diffs = diff(basename + ".untouched.wat", expected, actual);
        if (diffs !== null) {
          console.log(diffs);
          compareFixture.end(FAILURE);
          return prepareResult(FAILURE, "fixture mismatch");
        }
      }
      compareFixture.end(SUCCESS);
    }
  }

  stdout.length = 0;
  stderr.length = 0;

  const gluePath = path.join(basedir, basename + ".js");
  const glue = fs.existsSync(gluePath) ? require(gluePath) : {};

  // Build optimized
  {
    const cmd = [
      basename + ".ts",
      "--baseDir", basedir,
      "--binaryFile", // -> stdout
      "-O"
    ];
    if (asc_flags) cmd.push(...asc_flags);
    if (args.create) cmd.push("--textFile", basename + ".optimized.wat");
    const compileOptimized = section("compile optimized");
    const { error } = await asc.main(cmd, { stdout: stdout, stderr: stderr });

    if (error) {
      stderr.write("---\n");
      stderr.write(error.stack);
      stderr.write("\n---\n");
      compileOptimized.end(FAILURE);
      return prepareResult(FAILURE, error.message);
    }
    compileOptimized.end(SUCCESS);

    const untouchedBuffer = fs.readFileSync(path.join(basedir, basename + ".untouched.wasm"));
    const optimizedBuffer = stdout.toBuffer();
    const instantiateUntouched = section("instantiate untouched");
    if (config.skipInstantiate) {
      instantiateUntouched.end(SKIPPED);
    } else {

      if (!await testInstantiate(untouchedBuffer, glue, stderr, config.asc_wasi)) {
        instantiateUntouched.end(FAILURE);
        return prepareResult(FAILURE, "instantiate error (untouched)");
      }
      instantiateUntouched.end(SUCCESS);
      const instantiateOptimized = section("instantiate optimized");
      if (!await testInstantiate(optimizedBuffer, glue, stderr, config.asc_wasi)) {
        instantiateOptimized.end(FAILURE);
        return prepareResult(FAILURE, "instantiate error (optimized)");
      }
      instantiateOptimized.end(SUCCESS);
    }
  }

  stdout.length = 0;
  stderr.length = 0;

  // Build rtraced
  if (asc_rtrace) {
    const cmd = [
      basename + ".ts",
      "--baseDir", basedir,
      "--binaryFile", // -> stdout
      "--debug",
      "--use", "ASC_RTRACE=1",
      "--explicitStart",
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
    if (!await testInstantiate(rtracedBuffer, glue, stderr, config.asc_wasi)) {
      instantiateRtrace.end(FAILURE);
      return prepareResult(FAILURE, "rtrace error");
    }
    instantiateRtrace.end(SUCCESS);
  }

  return prepareResult(SUCCESS);
}

// Tests if instantiation of a module succeeds
async function testInstantiate(binaryBuffer, glue, stderr, wasiOptions) {
  var failed = false;
  try {
    const memory = new WebAssembly.Memory({ initial: 10 });
    const exports = {};

    function getString(ptr) {
      const RUNTIME_HEADER_SIZE = 16;
      if (!ptr) return "null";
      var U32 = new Uint32Array(exports.memory ? exports.memory.buffer : memory.buffer);
      var U16 = new Uint16Array(exports.memory ? exports.memory.buffer : memory.buffer);
      var len16 = U32[(ptr - RUNTIME_HEADER_SIZE + 12) >>> 2] >>> 1;
      var ptr16 = ptr >>> 1;
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

    const imports = rtrace.install({
      env: {
        memory,
        abort: function(msg, file, line, column) {
          console.log(colors.red("  abort: " + getString(msg) + " in " + getString(file) + "(" + line + ":" + column + ")"));
        },
        trace: function(msg, n) {
          console.log("  trace: " + getString(msg) + (n ? " " : "") + Array.prototype.slice.call(arguments, 2, 2 + n).join(", "));
        },
        seed: function() {
          return 0xA5534817; // make tests deterministic
        },
        visit: function() {
          // override in tests
        }
      },
      Math,
      Date,
      Reflect
    });

    if (glue.preInstantiate) {
      console.log("  [call preInstantiate]");
      glue.preInstantiate(imports, exports);
    }
    const wasi = wasiOptions ? new WASI(wasiOptions) : null;
    if (wasi) imports.wasi_snapshot_preview1 = wasi.wasiImport;
    const { instance } = await WebAssembly.instantiate(binaryBuffer, imports);
    Object.setPrototypeOf(exports, instance.exports);
    if (glue.postInstantiate) {
      console.log("  [call postInstantiate]");
      glue.postInstantiate(instance);
    }
    if (wasi) {
      console.log("  [wasi start]");
      const code = wasi.start(instance);
      console.log("  [wasi exit] code=" + code);
    } else if (exports._start) {
      console.log("  [call start]");
      exports._start();
    }
    if (glue.postStart) {
      console.log("  [call postStart]");
      glue.postStart(instance);
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
    console.log(colors.yellow("WARNING: ") + colors.white(skippedTests.size + " compiler tests have been skipped:\n"));
    for (let [name, message] of skippedTests) {
      console.log("  " + name + " " + colors.gray("[" + (message || "???") + "]"));
    }
    console.log();
  }
  if (failedTests.size) {
    process.exitCode = 1;
    console.log(colors.red("FAILURE: ") + colors.white(failedTests.size + " compiler tests had failures:\n"));
    for (let [name, message] of failedTests) {
      console.log("  " + name + " " + colors.gray("[" + (message || "???") + "]"));
    }
    console.log();
  }
  console.log(`Time: ${(Date.now() - startTime)} ms\n`);
  if (!process.exitCode) {
    console.log("[ " + colors.white("SUCCESS") + " ]");
  }
}

// Run tests in parallel if requested
if (args.parallel && coreCount > 2) {
  if (cluster.isWorker) {
    colors.enabled = true;
    process.on("message", msg => {
      if (msg.cmd != "run") throw Error("invalid command: " + JSON.stringify(msg));
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
        worker.send({ cmd: "run", test: current[i] });
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
