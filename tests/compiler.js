const fs  = require("fs");
const path = require("path");
const os = require("os");
const chalk = require("chalk");
const glob = require("glob");
const minimist = require("minimist");

const diff = require("./util/diff");
const asc = require("../bin/asc.js");

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
var failures = 0;

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

// TODO: asc's callback is synchronous here. This might change.
tests.forEach(filename => {
  console.log(chalk.whiteBright("Testing compiler/" + filename) + "\n");

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
    "--sourceMap",
    "--measure",
    "--textFile" // -> stdout
  ], {
    stdout: stdout,
    stderr: stderr
  }, err => {
    console.log();
    if (err)
      stderr.write(err + os.EOL);
    var actual = stdout.toString().replace(/\r\n/g, "\n");
    if (args.create) {
      fs.writeFileSync(path.join(basedir, basename + ".wat"), actual, { encoding: "utf8" });
      console.log("- " + chalk.yellow("Created fixture"));
    } else {
      let expected = fs.readFileSync(path.join(basedir, basename + ".wat"), { encoding: "utf8" }).replace(/\r\n/g, "\n");
      let diffs = diff(basename + ".wat", expected, actual);
      if (diffs !== null) {
        console.log(diffs);
        console.log("- " + chalk.red("diff ERROR"));
        failed = true;
      } else
        console.log("- " + chalk.green("diff OK"));
    }
    console.log();

    stdout.length = 0;
    stderr.length = 0;

    // Build optimized
    var cmd = [
      filename,
      "--baseDir", basedir,
      "--validate",
      "--optimize",
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
        let exports = new WebAssembly.Instance(new WebAssembly.Module(stdout.toBuffer()), {
          env: {
            abort: function(msg, file, line, column) {
              // TODO
            },
            externalFunction: function() { },
            externalConstant: 1
          },
          my: {
            externalFunction: function() { },
            externalConstant: 2
          }
        });
        console.log("- " + chalk.green("instantiate OK"));
      } catch (e) {
        console.log("- " + chalk.red("instantiate ERROR: ") + e);
        failed = true;
      }

      if (failed) ++failures;
      else ++successes;
      console.log();
    });
  });
});

if (failures) {
  process.exitCode = 1;
  console.log(chalk.red("ERROR: ") + failures + " compiler tests failed");
} else
  console.log("[ " + chalk.whiteBright("SUCCESS") + " ]");
