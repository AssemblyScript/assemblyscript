const startTime = Date.now();
const fs  = require("fs");
const path = require("path");
const os = require("os");
const v8 = require("v8");
const glob = require("glob");
const colorsUtil = require("../cli/util/colors");
const optionsUtil = require("../cli/util/options");
const diff = require("./util/diff");
const rtrace = require("../lib/rtrace");
const featuresConfig = require("./features.json");
const features = process.env.ASC_FEATURES ? process.env.ASC_FEATURES.split(",") : [];
const asc = require("../cli/asc.js");

// Get a list of all tests
const basedir = path.join(__dirname, "compiler");
const tests = glob.sync("**/!(_*).ts", { cwd: basedir });

if (require.main === module) {

  // console.log(" IS CALLED DIRECT ");
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
    "help": {
      "description": "Prints this message and exits.",
      "type": "b",
      "alias": "h"
    }
  };
  const opts = optionsUtil.parse(process.argv.slice(2),config);
  const cliArgs = opts.options;
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
  
  // Run specific tests only if arguments are provided
  if (argv.length) {
    tests = tests.filter(filename => argv.indexOf(filename.replace(/\.ts$/, "")) >= 0);
    if (!tests.length) {
      console.error("No matching tests: " + argv.join(" "));
      process.exit(1);
    }
  }

  const results = {
    failedTests: new Set(),
    failedMessages: new Map(),
    skippedTests: new Set(),
    skippedMessages: new Map()
  }

  tests.forEach(filename => {
    const result = performTest({ basedir, arg: filename, cliArgs });

    if (result.failed) {
      results.failedTests.add(filename);
      if (results.failedMessage) {
        results.failedMessages.set(filname, results.message);
      }
    }
    if (result.skipped) {
      results.skippedTests.add(filename);
      if (results.skippedMessage) {
        results.skippedMessages.set(filname, results.message);
      }
    }
  });

  postTest(results);
}

function performTest(passedArgs) {

  const { basedir, arg, cliArgs } = passedArgs;
  const filename = arg;

  const result = {
    failed: false,
    skipped: false,
    skippedMessage: undefined,
    failedMessage: undefined
  }

  const args = cliArgs || {};

  // console.log(colorsUtil.white("Testing compiler/" + filename) + "\n");

  const configPath = path.join(basedir, basename + ".json");
  const config = fs.existsSync(configPath)
    ? require(configPath)
    : {};

  const stdout = asc.createMemoryStream();
  const stderr = asc.createMemoryStream(chunk => process.stderr.write(chunk.toString().replace(/^(?!$)/mg, "  ")));
  stderr.isTTY = true;

  var asc_flags = [];
  var v8_flags = "";
  var v8_no_flags = "";
  var missing_features = [];
  if (config.features) {
    config.features.forEach(feature => {
      if (!features.includes(feature)) missing_features.push(feature);
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
      // console.log("- " + colorsUtil.yellow("feature SKIPPED") + " (" + missing_features.join(", ") + ")\n");
      result.skipped = true;
      result.skippedMessage = "feature not enabled";
      return Promise.resolve(result);
    }
  }
  if (config.asc_flags) {
    config.asc_flags.forEach(flag => {
      Array.prototype.push.apply(asc_flags, flag.split(" "));
    });
  }

  var failed = false;

  // Build unoptimized
  var cmd = [
    basename + ".ts",
    "--baseDir", basedir,
    "--validate",
    "--measure",
    "--debug",
    "--textFile" // -> stdout
  ];
  if (asc_flags)
    Array.prototype.push.apply(cmd, asc_flags);
  cmd.push("--binaryFile", basename + ".untouched.wasm");
  asc.main(cmd, {
    stdout: stdout,
    stderr: stderr
  }, err => {
    // console.log();

    // check expected stderr patterns in order
    let expectStderr = config.stderr;
    if (expectStderr) {
      const stderrString = stderr.toString();
      if (typeof expectStderr === "string") expectStderr = [ expectStderr ];
      let lastIndex = 0;
      let failed = false;
      expectStderr.forEach((substr, i) => {
        var index = stderrString.indexOf(substr, lastIndex);
        if (index < 0) {
          // console.log("Missing pattern #" + (i + 1) + " '" + substr + "' in stderr at " + lastIndex + "+.");
          result.failed = true;
          failed = true;
        } else {
          lastIndex = index + substr.length;
        }
      });
      if (failed) {
        result.failed = true;
        result.message = "stderr mismatch";
        // console.log("\n- " + colorsUtil.red("stderr MISMATCH") + "\n");
      } else {
        // console.log("- " + colorsUtil.green("stderr MATCH") + "\n");
      }
      return Promise.resolve(result);
    }

    if (err)
      stderr.write(err + os.EOL);
    var actual = stdout.toString().replace(/\r\n/g, "\n");
    if (args.create) {
      fs.writeFileSync(path.join(basedir, basename + ".untouched.wat"), actual, { encoding: "utf8" });
      // console.log("- " + colorsUtil.yellow("Created fixture"));
    } else {
      let expected = fs.readFileSync(path.join(basedir, basename + ".untouched.wat"), { encoding: "utf8" }).replace(/\r\n/g, "\n");
      if (args.noDiff) {
        if (expected != actual) {
          // console.log("- " + colorsUtil.red("compare ERROR"));
          failed = true;
          result.failed = true;
        } else {
          // console.log("- " + colorsUtil.green("compare OK"));
        }
      } else {
        let diffs = diff(basename + ".untouched.wat", expected, actual);
        if (diffs !== null) {
          // console.log(diffs);
          // console.log("- " + colorsUtil.red("diff ERROR"));
          failed = true;
          result.failed = true;
        } else {
          // console.log("- " + colorsUtil.green("diff OK"));
        }
      }
    }
    // console.log();

    stdout.length = 0;
    stderr.length = 0;

    // Build optimized
    var cmd = [
      basename + ".ts",
      "--baseDir", basedir,
      "--validate",
      "--measure",
      "--binaryFile", // -> stdout
      "-O"
    ];
    if (asc_flags)
      Array.prototype.push.apply(cmd, asc_flags);
    if (args.create)
      cmd.push("--textFile", basename + ".optimized.wat");
    asc.main(cmd, {
      stdout: stdout,
      stderr: stderr
    }, err => {
      // console.log();
      if (err) {
        stderr.write(err.stack + os.EOL);
        failed = true;
        result.failed = true;
        result.message = err.message;
        return Promise.resolve(result);
      }
      let untouchedBuffer = fs.readFileSync(path.join(basedir, basename + ".untouched.wasm"));
      let optimizedBuffer = stdout.toBuffer();
      const gluePath = path.join(basedir, basename + ".js");
      var glue = {};
      if (fs.existsSync(gluePath)) glue = require(gluePath);

      if (!testInstantiate(basename, untouchedBuffer, "untouched", glue, args, result)) {
        failed = true;
        result.failed = true;
      } else {
        // console.log();
        if (!testInstantiate(basename, optimizedBuffer, "optimized", glue, args, result)) {
          failed = true;
          result.failed = true;
        }
      }
      // console.log();
    });
    if (failed) return Promise.resolve(result);
  });
  if (v8_no_flags) v8.setFlagsFromString(v8_no_flags);
  if (!args.createBinary) fs.unlink(path.join(basedir, basename + ".untouched.wasm"), err => {});

  return Promise.resolve(result);
}

function testInstantiate(basename, binaryBuffer, name, glue, args, result) {
 
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

    function onerror(e) {
      // console.log("  ERROR: " + e);
      result.failed = true;
      result.failedMessages.set(basename, e.message);
    }

    function oninfo(i) {
      // console.log("  " + i);
    }

    let rtr = rtrace(onerror, args.rtraceVerbose ? oninfo : null);

    let runTime = asc.measure(() => {
      var imports = {
        rtrace: rtr,
        env: {
          memory,
          abort: function(msg, file, line, column) {
            // console.log(colorsUtil.red("  abort: " + getString(msg) + " at " + getString(file) + ":" + line + ":" + column));
          },
          trace: function(msg, n) {
            // console.log("  trace: " + getString(msg) + (n ? " " : "") + Array.prototype.slice.call(arguments, 2, 2 + n).join(", "));
          }
        },
        Math,
        Date,
        Reflect
      };
      if (glue.preInstantiate) {
        // console.log(colorsUtil.white("  [preInstantiate]"));
        glue.preInstantiate(imports, exports);
      }
      var instance = new WebAssembly.Instance(new WebAssembly.Module(binaryBuffer), imports);
      Object.setPrototypeOf(exports, instance.exports);
      if (exports.__start) {
        // console.log(colorsUtil.white("  [start]"));
        exports.__start();
      }
      if (glue.postInstantiate) {
        // console.log(colorsUtil.white("  [postInstantiate]"));
        glue.postInstantiate(instance);
      }
    });
    let leakCount = rtr.check();
    if (leakCount) {
      let msg = "memory leak detected: " + leakCount + " leaking";
      // console.log("- " + colorsUtil.red("rtrace " + name + " ERROR: ") + msg);
      result.failed = true;
      result.failedMessages = msg;
    }
    if (!result.failed) {
      // console.log("- " + colorsUtil.green("instantiate " + name + " OK") + " (" + asc.formatTime(runTime) + ")");
      if (rtr.active) {
        // console.log("  " +
        //   rtr.allocCount + " allocs, " +
        //   rtr.freeCount + " frees, " +
        //   rtr.incrementCount + " increments, " +
        //   rtr.decrementCount + " decrements"
        // );
      }
      // console.log("");
      for (let key in exports) {
        // console.log("  [" + (typeof exports[key]).substring(0, 3) + "] " + key + " = " + exports[key]);
      }
      return true;
    }
  } catch (e) {
    // console.log("- " + colorsUtil.red("instantiate " + name + " ERROR: ") + e.stack);
    result.failed = true;
    result.failedMessages = e.message;
  }
  return result.failed;
}

function postTest(results) {

  if (results.skippedTests && results.skippedTests.size) {
    // console.log(colorsUtil.yellow("WARNING: ") + colorsUtil.white(results.skippedTests.size + " compiler tests have been skipped:\n"));
    results.skippedTests.forEach(name => {
      var message = results.skippedMessages.has(name) ? colorsUtil.gray("[" + results.skippedMessages.get(name) + "]") : "";
      // console.log("  " + name + " " + message);
    });
    // console.log();
  }
  if (results.failedTests && results.failedTests.size) {
    process.exitCode = 1;
    // console.log(colorsUtil.red("ERROR: ") + colorsUtil.white(results.failedTests.size + " compiler tests had failures:\n"));
    results.failedTests.forEach(name => {
      var message = failedMessages.has(name) ? colorsUtil.gray("[" + results.failedMessages.get(name) + "]") : "";
      // console.log("  " + name + " " + message);
    });
    // console.log();
  }
  if (!process.exitCode) {
    // console.log("[ " + colorsUtil.white("OK") + " ]");
  }

}

module.exports = {
  suiteName: "compiler",
  workers: 3,
  tests,
  postTest,
  performTest
}
