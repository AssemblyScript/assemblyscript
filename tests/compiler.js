const startTime = Date.now();
const fs  = require("fs");
const path = require("path");
const os = require("os");
const v8 = require("v8");
const glob = require("glob");
const colorsUtil = require("../cli/util/colors");
const optionsUtil = require("../cli/util/options");
const diff = require("./util/diff");
const asc = require("../cli/asc.js");
const { Rtrace } = require("../lib/rtrace/umd");
const cluster = require("cluster");
const coreCount = require("physical-cpu-count");

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
    colorsUtil.white("SYNTAX"),
    "  " + colorsUtil.cyan("npm run test:compiler --") + " [test1, test2 ...] [options]",
    "",
    colorsUtil.white("OPTIONS"),
    optionsUtil.help(config)
  ].join(os.EOL) + os.EOL);
  process.exit(0);
}

const features = process.env.ASC_FEATURES ? process.env.ASC_FEATURES.split(",") : [];
const featuresConfig = require("./features.json");

var failedTests = new Set();
var failedMessages = new Map();
var skippedTests = new Set();
var skippedMessages = new Map();

const basedir = path.join(__dirname, "compiler");

// Gets a list of all relevant tests
function getTests() {
  var tests =  glob.sync("**/!(_*).ts", { cwd: basedir }).map(name => name.replace(/\.ts$/, ""));
  if (argv.length) { // run matching tests only
    tests = tests.filter(filename => argv.indexOf(filename.replace(/\.ts$/, "")) >= 0);
    if (!tests.length) {
      console.log(colorsUtil.red("FAILURE: ") + colorsUtil.white("No matching tests: " + argv.join(" ") + "\n"));
      process.exit(1);
    }
  }
  return tests;
}

// Starts a new section within a test
function section(title) {
  var start = process.hrtime();
  console.log("- " + title);
  return {
    title,
    end: function(code) {
      const times = process.hrtime(start);
      const time = asc.formatTime(times[0] * 1e9 + times[1]);
      switch (code) {
        case SUCCESS: console.log("  " + colorsUtil.green ("SUCCESS") + " (" + time + ")\n"); break;
        default: console.log("  " + colorsUtil.red("FAILURE") + " (" + time + ")\n"); break;
        case SKIPPED: console.log("  " + colorsUtil.yellow("SKIPPED") + " (" + time + ")\n"); break;
      }
    }
  };
}
const SUCCESS = 0;
const FAILURE = 1;
const SKIPPED = 2;

// Runs a single test
function runTest(basename) {
  console.log(colorsUtil.white("# compiler/" + basename) + "\n");

  const configPath = path.join(basedir, basename + ".json");
  const config = fs.existsSync(configPath)
    ? require(configPath)
    : {};

  const stdout = asc.createMemoryStream();
  const stderr = asc.createMemoryStream(chunk => process.stderr.write(chunk.toString().replace(/^(?!$)/mg, "  ")));
  stderr.isTTY = true;

  var asc_flags = [];
  var asc_rtrace = !!config.asc_rtrace;
  var v8_flags = "";
  var v8_no_flags = "";
  var missing_features = [];
  if (config.features) {
    config.features.forEach(feature => {
      if (!features.includes(feature) && !features.includes("*")) {
        missing_features.push(feature);
        return;
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
      console.log("- " + colorsUtil.yellow("feature SKIPPED") + " (" + missing_features.join(", ") + ")\n");
      skippedTests.add(basename);
      skippedMessages.set(basename, "feature not enabled");
      if (cluster.isWorker) process.send({ cmd: "skipped", message: skippedMessages.get(basename) });
      return;
    }
  }
  if (config.asc_flags) {
    config.asc_flags.forEach(flag => {
      Array.prototype.push.apply(asc_flags, flag.split(" "));
    });
  }

  var failed = false;

  // Build untouched
  var cmd = [
    basename + ".ts",
    "--baseDir", basedir,
    "--debug",
    "--textFile" // -> stdout
  ];
  if (asc_flags)
    Array.prototype.push.apply(cmd, asc_flags);
  cmd.push("--binaryFile", basename + ".untouched.wasm");
  const compileUntouched = section("compile untouched");
  asc.main(cmd, {
    stdout: stdout,
    stderr: stderr
  }, err => {
    let expectStderr = config.stderr;
    if (err) {
      stderr.write("---\n");
      stderr.write(err.stack);
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
        failedTests.add(basename);
        failedMessages.set(basename, "stderr mismatch");
        compareStderr.end(FAILURE);
      } else {
        compareStderr.end(SUCCESS);
      }
      return 1;
    }

    const compareFixture = section("compare fixture");
    var actual = stdout.toString().replace(/\r\n/g, "\n");
    if (args.create) {
      fs.writeFileSync(path.join(basedir, basename + ".untouched.wat"), actual, { encoding: "utf8" });
      console.log("  " + colorsUtil.yellow("Created fixture"));
      compareFixture.end(SKIPPED);
    } else {
      let expected = fs.readFileSync(path.join(basedir, basename + ".untouched.wat"), { encoding: "utf8" }).replace(/\r\n/g, "\n");
      if (args.noDiff) {
        if (expected != actual) {
          failed = true;
          failedTests.add(basename);
          compareFixture.end(FAILURE);
        } else {
          compareFixture.end(SUCCESS);
        }
      } else {
        let diffs = diff(basename + ".untouched.wat", expected, actual);
        if (diffs !== null) {
          console.log(diffs);
          failed = true;
          failedTests.add(basename);
          compareFixture.end(FAILURE);
        } else {
          compareFixture.end(SUCCESS);
        }
      }
    }

    stdout.length = 0;
    stderr.length = 0;

    // Build optimized
    var cmd = [
      basename + ".ts",
      "--baseDir", basedir,
      "--binaryFile", // -> stdout
      "-O"
    ];
    if (asc_flags)
      Array.prototype.push.apply(cmd, asc_flags);
    if (args.create)
      cmd.push("--textFile", basename + ".optimized.wat");
    const compileOptimized = section("compile optimized");
    asc.main(cmd, {
      stdout: stdout,
      stderr: stderr
    }, err => {
      if (err) {
        stderr.write("---\n");
        stderr.write(err.stack);
        stderr.write("\n---\n");
        failed = true;
        failedMessages.set(basename, err.message);
        failedTests.add(basename);
        compileOptimized.end(FAILURE);
        return 1;
      } else {
        compileOptimized.end(SUCCESS);
      }
      let untouchedBuffer = fs.readFileSync(path.join(basedir, basename + ".untouched.wasm"));
      let optimizedBuffer = stdout.toBuffer();
      const gluePath = path.join(basedir, basename + ".js");
      var glue = {};
      if (fs.existsSync(gluePath)) glue = require(gluePath);

      const instantiateUntouched = section("instantiate untouched");
      if (!config.skipInstantiate) {
        if (!testInstantiate(basename, untouchedBuffer, glue, stderr)) {
          failed = true;
          failedTests.add(basename);
          instantiateUntouched.end(FAILURE);
        } else {
          instantiateUntouched.end(SUCCESS);
          const instantiateOptimized = section("instantiate optimized");
          if (!testInstantiate(basename, optimizedBuffer, glue, stderr)) {
            failed = true;
            failedTests.add(basename);
            instantiateOptimized.end(FAILURE);
          } else {
            instantiateOptimized.end(SUCCESS);
          }
        }
      } else {
        instantiateUntouched.end(SKIPPED);
      }

      if (!asc_rtrace) return;

      stdout.length = 0;
      stderr.length = 0;

      // Build rtraced
      var cmd = [
        basename + ".ts",
        "--baseDir", basedir,
        "--binaryFile", // -> stdout
        "--debug",
        "--use", "ASC_RTRACE=1",
        "--explicitStart",
        // "--runPasses", "instrument-memory"
      ];
      if (asc_flags) {
        Array.prototype.push.apply(cmd, asc_flags);
      }
      const compileRtraced = section("compile rtraced");
      asc.main(cmd, {
        stdout: stdout,
        stderr: stderr
      }, err => {
        if (err) {
          stderr.write("---\n");
          stderr.write(err.stack);
          stderr.write("\n---\n");
          failed = true;
          failedMessages.set(basename, err.message);
          failedTests.add(basename);
          compileRtraced.end(FAILURE);
          return 1;
        } else {
          compileRtraced.end(SUCCESS);
        }
        let rtracedBuffer = stdout.toBuffer();
        const instantiateRtrace = section("instantiate rtrace");
        v8.setFlagsFromString("--experimental-wasm-bigint");
        if (!testInstantiate(basename, rtracedBuffer, glue, stderr)) {
          failed = true;
          failedTests.add(basename);
          instantiateRtrace.end(FAILURE);
        } else {
          instantiateRtrace.end(SUCCESS);
        }
        v8.setFlagsFromString("--no-experimental-wasm-bigint");
      });
    });
    if (failed) return 1;
  });
  if (v8_no_flags) v8.setFlagsFromString(v8_no_flags);
  if (!args.createBinary) fs.unlink(path.join(basedir, basename + ".untouched.wasm"), err => { /* nop */ });
  if (cluster.isWorker) process.send({ cmd: "done", failed: failed, message: failedMessages.get(basename) });
}

// Tests if instantiation of a module succeeds
function testInstantiate(basename, binaryBuffer, glue, stderr) {
  var failed = false;
  try {
    let memory = new WebAssembly.Memory({ initial: 10 });
    let exports = {};

    function getString(ptr) {
      const RUNTIME_HEADER_SIZE = 16;
      if (!ptr) return "null";
      var U32 = new Uint32Array(exports.memory ? exports.memory.buffer : memory.buffer);
      var U16 = new Uint16Array(exports.memory ? exports.memory.buffer : memory.buffer);
      var len16 = U32[(ptr - RUNTIME_HEADER_SIZE + 12) >>> 2] >>> 1;
      var ptr16 = ptr >>> 1;
      return String.fromCharCode.apply(String, U16.subarray(ptr16, ptr16 + len16));
    }

    let rtrace = new Rtrace({
      onerror(err, info) {
        console.log("  ERROR: " + err.stack);
        failed = true;
        failedMessages.set(basename, err.message);
      },
      oninfo(msg, info) {
        if (!args.rtraceVerbose) return;
        console.log("  " + msg);
      },
      getMemory() {
        return instance.exports.memory;
      }
    });

    var imports = {
      env: Object.assign({
        memory,
        abort: function(msg, file, line, column) {
          console.log(colorsUtil.red("  abort: " + getString(msg) + " in " + getString(file) + "(" + line + ":" + column + ")"));
        },
        trace: function(msg, n) {
          console.log("  trace: " + getString(msg) + (n ? " " : "") + Array.prototype.slice.call(arguments, 2, 2 + n).join(", "));
        },
        seed: function() {
          return 0xA5534817; // make tests deterministic
        }
      }, rtrace.env),
      Math,
      Date,
      Reflect,
      rtrace
    };
    if (glue.preInstantiate) {
      console.log("  [call preInstantiate]");
      glue.preInstantiate(imports, exports);
    }
    var instance = new WebAssembly.Instance(new WebAssembly.Module(binaryBuffer), imports);
    Object.setPrototypeOf(exports, instance.exports);
    if (glue.postInstantiate) {
      console.log("  [call postInstantiate]");
      glue.postInstantiate(instance);
    }
    if (exports._start) {
      console.log("  [call start]");
      exports._start();
    }
    if (glue.postStart) {
      console.log("  [call postStart]");
      glue.postStart(instance);
    }
    let leakCount = rtrace.check();
    if (leakCount) {
      let msg = "memory leak detected: " + leakCount + " leaking";
      failed = true;
      failedMessages.set(basename, msg);
      console.log("  " + msg);
    }
    if (!failed) {
      if (rtrace.active) {
        console.log("  " +
          rtrace.allocCount + " allocs, " +
          rtrace.resizeCount + " resizes, " +
          rtrace.moveCount + " moves, " +
          rtrace.freeCount + " frees, " +
          rtrace.incrementCount + " increments, " +
          rtrace.decrementCount + " decrements"
        );
      }
      return true;
    }
  } catch (e) {
    stderr.write("---\n");
    stderr.write(e.stack);
    stderr.write("\n---\n");
    failed = true;
    failedMessages.set(basename, e.message);
  }
  return false;
}

// Evaluates the overall test result
function evaluateResult() {
  if (skippedTests.size) {
    console.log(colorsUtil.yellow("WARNING: ") + colorsUtil.white(skippedTests.size + " compiler tests have been skipped:\n"));
    skippedTests.forEach(name => {
      var message = skippedMessages.has(name) ? colorsUtil.gray("[" + skippedMessages.get(name) + "]") : "";
      console.log("  " + name + " " + message);
    });
    console.log();
  }
  if (failedTests.size) {
    process.exitCode = 1;
    console.log(colorsUtil.red("FAILURE: ") + colorsUtil.white(failedTests.size + " compiler tests had failures:\n"));
    failedTests.forEach(name => {
      var message = failedMessages.has(name) ? colorsUtil.gray("[" + failedMessages.get(name) + "]") : "";
      console.log("  " + name + " " + message);
    });
    console.log();
  }
  console.log("Time: " + (Date.now() - startTime) + " ms\n");
  if (!process.exitCode) {
    console.log("[ " + colorsUtil.white("SUCCESS") + " ]");
  }
}

asc.ready.then(() => {

  // Run tests in parallel if requested
  if (args.parallel && coreCount > 1) {
    if (cluster.isWorker) {
      colorsUtil.supported = true;
      process.on("message", msg => {
        if (msg.cmd != "run") throw Error("invalid command: " + msg.cmd);
        try {
          runTest(msg.test);
        } catch (e) {
          process.send({ cmd: "done", failed: true, message: e.message });
        }
      });
      process.send({ cmd: "ready" });
    } else {
      const tests = getTests();
      // const sizes = new Map();
      // tests.forEach(name => sizes.set(name, fs.statSync(path.join(basedir, name + ".ts")).size));
      // tests.sort((a, b) => sizes.get(b) - sizes.get(a));
      const workers = [];
      const current = [];
      const outputs = [];
      let numWorkers = Math.min(coreCount - 1, tests.length);
      console.log("Spawning " + numWorkers + " workers ...");
      cluster.settings.silent = true;
      let index = 0;
      for (let i = 0; i < numWorkers; ++i) {
        let worker = cluster.fork();
        workers[i] = worker;
        current[i] = null;
        outputs[i] = [];
        worker.process.stdout.on("data", buf => outputs[i].push(buf));
        worker.process.stderr.on("data", buf => outputs[i].push(buf));
        worker.on("message", msg => {
          if (msg.cmd == "done") {
            process.stdout.write(Buffer.concat(outputs[i]).toString());
            if (msg.failed) failedTests.add(current[i]);
            if (msg.message) failedMessages.set(current[i], msg.message);
          } else if (msg.cmd == "skipped") {
            process.stdout.write(Buffer.concat(outputs[i]).toString());
            skippedTests.add(current[i]);
            if (msg.message) skippedMessages.set(current[i], msg.message);
          } else if (msg.cmd != "ready") {
            throw Error("invalid command: " + msg.cmd);
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
          if (workers[i]) throw Error("worker#" + i + " died unexpectedly");
          if (!--numWorkers) evaluateResult();
        });
      }
    }

  // Otherwise run tests sequentially
  } else {
    getTests().forEach(runTest);
    evaluateResult();
  }
});
