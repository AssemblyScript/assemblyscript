const fs  = require("fs");
const path = require("path");
const os = require("os");
const v8 = require("v8");
const glob = require("glob");
const colorsUtil = require("../cli/util/colors");
const optionsUtil = require("../cli/util/options");
const diff = require("./util/diff");
const asc = require("../cli/asc.js");
const rtrace = require("../lib/rtrace");

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

// Get a list of all tests
var tests = glob.sync("**/!(_*).ts", { cwd: basedir });

// Run specific tests only if arguments are provided
if (argv.length) {
  tests = tests.filter(filename => argv.indexOf(filename.replace(/\.ts$/, "")) >= 0);
  if (!tests.length) {
    console.error("No matching tests: " + argv.join(" "));
    process.exit(1);
  }
}

// TODO: asc's callback is synchronous here. This might change.
tests.forEach(filename => {
  console.log(colorsUtil.white("Testing compiler/" + filename) + "\n");

  const basename = filename.replace(/\.ts$/, "");
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
      console.log("- " + colorsUtil.yellow("feature SKIPPED") + " (" + missing_features.join(", ") + ")\n");
      skippedTests.add(basename);
      skippedMessages.set(basename, "feature not enabled");
      return;
    }
  }
  if (config.asc_flags) {
    config.asc_flags.forEach(flag => {
      Array.prototype.push.apply(asc_flags, flag.split(" "));
    });
  }

  var failed = false;

  // TODO: also save stdout/stderr and diff it (-> expected failures)

  // Build unoptimized
  var cmd = [
    filename,
    "--baseDir", basedir,
    "--validate",
    "--measure",
    "--debug",
    "--textFile" // -> stdout
  ];
  if (asc_flags)
    Array.prototype.push.apply(cmd, asc_flags);
  if (args.createBinary)
    cmd.push("--binaryFile", basename + ".untouched.wasm");
  else
    cmd.push("--binaryFile", "temp.wasm");
  asc.main(cmd, {
    stdout: stdout,
    stderr: stderr
  }, err => {
    console.log();

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
          console.log("Missing pattern #" + (i + 1) + " '" + substr + "' in stderr at " + lastIndex + "+.");
          failedTests.add(basename);
          failed = true;
        } else {
          lastIndex = index + substr.length;
        }
      });
      if (failed) {
        failedTests.add(basename);
        failedMessages.set(basename, "stderr mismatch");
        console.log("\n- " + colorsUtil.red("stderr MISMATCH") + "\n");
      } else {
        console.log("- " + colorsUtil.green("stderr MATCH") + "\n");
      }
      return;
    }

    if (err)
      stderr.write(err + os.EOL);
    var actual = stdout.toString().replace(/\r\n/g, "\n");
    if (args.create) {
      fs.writeFileSync(path.join(basedir, basename + ".untouched.wat"), actual, { encoding: "utf8" });
      console.log("- " + colorsUtil.yellow("Created fixture"));
    } else {
      let expected = fs.readFileSync(path.join(basedir, basename + ".untouched.wat"), { encoding: "utf8" }).replace(/\r\n/g, "\n");
      if (args.noDiff) {
        if (expected != actual) {
          console.log("- " + colorsUtil.red("compare ERROR"));
          failed = true;
          failedTests.add(basename);
        } else {
          console.log("- " + colorsUtil.green("compare OK"));
        }
      } else {
        let diffs = diff(basename + ".untouched.wat", expected, actual);
        if (diffs !== null) {
          console.log(diffs);
          console.log("- " + colorsUtil.red("diff ERROR"));
          failed = true;
          failedTests.add(basename);
        } else {
          console.log("- " + colorsUtil.green("diff OK"));
        }
      }
    }
    console.log();

    stdout.length = 0;
    stderr.length = 0;

    // Build optimized
    var cmd = [
      filename,
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
      console.log();
      if (err) {
        stderr.write(err.stack + os.EOL);
        failed = true;
        failedMessages.set(basename, err.message);
        failedTests.add(basename);
        return 1;
      }
      let untouchedBuffer = fs.readFileSync(path.join(basedir, "temp.wasm"));
      let optimizedBuffer = stdout.toBuffer();
      if (!testInstantiate(basename, untouchedBuffer, "untouched")) {
        failed = true;
        failedTests.add(basename);
      } else {
        console.log();
        if (!testInstantiate(basename, optimizedBuffer, "optimized")) {
          failed = true;
          failedTests.add(basename);
        }
      }
      console.log();
    });
    if (failed) return 1;
  });
  if (v8_no_flags) v8.setFlagsFromString(v8_no_flags);
});

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
  console.log(colorsUtil.red("ERROR: ") + colorsUtil.white(failedTests.size + " compiler tests had failures:\n"));
  failedTests.forEach(name => {
    var message = failedMessages.has(name) ? colorsUtil.gray("[" + failedMessages.get(name) + "]") : "";
    console.log("  " + name + " " + message);
  });
  console.log();
}
if (!process.exitCode) {
  console.log("[ " + colorsUtil.white("OK") + " ]");
}

function testInstantiate(basename, binaryBuffer, name) {
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

    function onerror(e) {
      console.log("  ERROR: " + e);
      failed = true;
      failedMessages.set(basename, e.message);
    }

    function oninfo(i) {
      console.log("  " + i);
    }

    let rtr = rtrace(onerror, args.rtraceVerbose ? oninfo : null);

    let runTime = asc.measure(() => {
      exports = new WebAssembly.Instance(new WebAssembly.Module(binaryBuffer), {
        rtrace: rtr,
        env: {
          memory,
          abort: function(msg, file, line, column) {
            console.log(colorsUtil.red("  abort: " + getString(msg) + " at " + getString(file) + ":" + line + ":" + column));
          },
          trace: function(msg, n) {
            console.log("  trace: " + getString(msg) + (n ? " " : "") + Array.prototype.slice.call(arguments, 2, 2 + n).join(", "));
          },
          externalFunction: function() { },
          externalConstant: 1
        },

        // bindings
        Math,
        Date,

        // tests/math
        math: {
          mod: function(a, b) { return a % b; }
        },

        // tests/declare
        declare: {
          externalFunction: function() { },
          externalConstant: 1,
          "my.externalFunction": function() { },
          "my.externalConstant": 2
        },

        // tests/external
        external: {
          foo: function() {},
          "foo.bar": function() {},
          bar: function() {}
        },
        foo: {
          baz: function() {},
          "var": 3
        }
      }).exports;
      if (exports.__start) {
        console.log(colorsUtil.white("  [start]"));
        exports.__start();
      }
    });
    let leakCount = rtr.check();
    if (leakCount) {
      let msg = "memory leak detected: " + leakCount + " leaking";
      console.log("- " + colorsUtil.red("rtrace " + name + " ERROR: ") + msg);
      failed = true;
      failedMessages.set(basename, msg);
    }
    if (!failed) {
      console.log("- " + colorsUtil.green("instantiate " + name + " OK") + " (" + asc.formatTime(runTime) + ")");
      if (rtr.active) {
        console.log("  " +
          rtr.allocCount + " allocs, " +
          rtr.freeCount + " frees, " +
          rtr.incrementCount + " increments, " +
          rtr.decrementCount + " decrements"
        );
      }
      console.log("\n  " + Object.keys(exports).map(key => {
        return "[" + (typeof exports[key]).substring(0, 3) + "] " + key + " = " + exports[key]
      }).join("\n  "));
      return true;
    }
  } catch (e) {
    console.log("- " + colorsUtil.red("instantiate " + name + " ERROR: ") + e.stack);
    failed = true;
    failedMessages.set(basename, e.message);
  }
  return false;
}
