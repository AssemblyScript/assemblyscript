const fs  = require("fs");
const path = require("path");
const os = require("os");
const colors = require("../cli/util/colors");
const glob = require("glob");
const minimist = require("minimist");

const diff = require("./util/diff");
const asc = require("../cli/asc.js");

const args = minimist(process.argv.slice(2), {
  boolean: [ "create", "help" ],
  alias: { h: "help" }
});

if (args.help) {
  console.log([
    "Usage: npm run test:compiler -- [test1, test2 ...] [--create]",
    "",
    "Runs all tests if no tests have been specified.",
    "Recreates affected fixtures if --create is specified."
  ].join(os.EOL) + os.EOL);
  process.exit(0);
}

var successes = 0;
var failedTests = [];

const basedir = path.join(__dirname, "compiler");

// Get a list of all tests
var tests = glob.sync("**/!(_)*.ts", { cwd: basedir });

// Run specific tests only if arguments are provided
if (args._.length) {
  tests = tests.filter(filename => args._.indexOf(filename.replace(/\.ts$/, "")) >= 0);
  if (!tests.length) {
    console.error("No matching tests: " + args._.join(" "));
    process.exit(1);
  }
}

const EXPECT_ERROR_PREFIX = '// Expect error:';

// Returns an array of error strings to expect, or null if compilation should succeed.
function getExpectedErrors(filePath) {
  const lines = fs.readFileSync(filePath).toString().split('\n');
  const expectErrorLines = lines.filter(line => line.startsWith(EXPECT_ERROR_PREFIX));
  if (expectErrorLines.length === 0) {
    return null;
  }
  return expectErrorLines.map(line => line.slice(EXPECT_ERROR_PREFIX.length).trim());
}

// TODO: asc's callback is synchronous here. This might change.
tests.forEach(filename => {
  console.log(colors.white("Testing compiler/" + filename) + "\n");

  const expectedErrors = getExpectedErrors(path.join(basedir, filename));
  const basename = filename.replace(/\.ts$/, "");

  const stdout = asc.createMemoryStream();
  const stderr = asc.createMemoryStream(chunk => process.stderr.write(chunk.toString().replace(/^(?!$)/mg, "  ")));
  stderr.isTTY = true;

  var failed = false;

  // TODO: also save stdout/stderr and diff it (-> expected failures)

  // Build unoptimized
  asc.main( [
    filename,
    "--baseDir", basedir,
    "--validate",
    "--measure",
    "--textFile" // -> stdout
  ], {
    stdout: stdout,
    stderr: stderr
  }, err => {
    console.log();

    if (expectedErrors) {
      const stderrString = stderr.toString();
      for (const expectedError of expectedErrors) {
        if (!stderrString.includes(expectedError)) {
          console.log(`Expected error "${expectedError}" was not in the error output.`);
          console.log("- " + colors.red("error check ERROR"));
          failedTests.push(basename);
          console.log();
          return;
        }
      }
      console.log("- " + colors.green("error check OK"));
      ++successes;
      console.log();
      return;
    }

    if (err)
      stderr.write(err + os.EOL);
    var actual = stdout.toString().replace(/\r\n/g, "\n");
    if (args.create) {
      fs.writeFileSync(path.join(basedir, basename + ".untouched.wat"), actual, { encoding: "utf8" });
      console.log("- " + colors.yellow("Created fixture"));
    } else {
      let expected = fs.readFileSync(path.join(basedir, basename + ".untouched.wat"), { encoding: "utf8" }).replace(/\r\n/g, "\n");
      let diffs = diff(basename + ".untouched.wat", expected, actual);
      if (diffs !== null) {
        console.log(diffs);
        console.log("- " + colors.red("diff ERROR"));
        failed = true;
      } else
        console.log("- " + colors.green("diff OK"));
    }
    console.log();

    stdout.length = 0;
    stderr.length = 0;

    // Build optimized
    var cmd = [
      filename,
      "--baseDir", basedir,
      "--validate",
      "-O3",
      "--measure",
      "--binaryFile" // -> stdout
    ];
    if (args.create) cmd.push(
      "--textFile", basename + ".optimized.wat"
    );
    asc.main(cmd, {
      stdout: stdout,
      stderr: stderr
    }, err => {
      console.log();
      if (err)
        stderr.write(err.stack + os.EOL);

      // Instantiate
      try {
        let runTime = asc.measure(() => {
          let exports = new WebAssembly.Instance(new WebAssembly.Module(stdout.toBuffer()), {
            env: {
              abort: function(msg, file, line, column) {
                console.log("abort called at " + line + ":" + column);
              },
              externalFunction: function() { },
              externalConstant: 1,
              logi: function(i) { console.log("logi: " + i); },
              logf: function(f) { console.log("logf: " + f); }
            },
            my: {
              externalFunction: function() { },
              externalConstant: 2
            },
            JSOp: {
              mod: function(a, b) { return a % b; }
            },
            JSMath: Math
          });
        });
        console.log("- " + colors.green("instantiate OK") + " (" + asc.formatTime(runTime) + ")");
      } catch (e) {
        console.log("- " + colors.red("instantiate ERROR: ") + e);
        failed = true;
      }

      if (failed) failedTests.push(basename);
      else ++successes;
      console.log();
    });
  });
});

if (failedTests.length) {
  process.exitCode = 1;
  console.log(colors.red("ERROR: ") + failedTests.length + " compiler tests failed: " + failedTests.join(", "));
} else
  console.log("[ " + colors.white("SUCCESS") + " ]");
