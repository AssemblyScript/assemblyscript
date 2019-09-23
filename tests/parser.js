const fs = require("fs");
const path = require("path");
const os = require("os");
const glob = require("glob");
const colorsUtil = require("../cli/util/colors");
const optionsUtil = require("../cli/util/options");
const diff = require("./util/diff");

require("ts-node").register({ project: path.join(__dirname, "..", "src", "tsconfig.json") });
require("../src/glue/js");

const Parser = require("../src/parser").Parser;
const ASTBuilder = require("../src/extra/ast").ASTBuilder;
const basedir = path.join(__dirname, "parser");
const tests = glob.sync("**/!(_*).ts", { cwd: basedir }); // Get a list of all tests

if (require.main === module) {
  const config = {
    "create": {
      "description": [
        "Recreates the fixture for the specified test(s)",
        "or all the fixtures if no specific test is given."
      ],
      "type": "b"
    },
    "help": {
      "description": "Prints this message and exits.",
      "type": "b",
      "alias": "h"
    }
  };
  const opts = optionsUtil.parse(process.argv.slice(2), config);
  const cliArgs = opts.options;
  const argv = opts.arguments;

  if (cliArgs.help) {
    console.log([
      colorsUtil.white("SYNTAX"),
      "  " + colorsUtil.cyan("npm run test:parser --") + " [test1, test2 ...] [options]",
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

  tests.forEach(filename => {
    const result = performTest({ basedir, arg: filename, cliArgs });
    console.log("RESULT", result);
    if (result.failed) {
      results.failedTests.add(filename);
      if (results.failedMessage) {
        results.failedMessages.set(filname, results.message);
      }
    }
  });

  const results = {
    failedTests: new Set(),
    failedMessages: new Map(),
    skippedTests: new Set(),
    skippedMessages: new Map()
  }

  postTest(results);

}

function performTest(passedArgs) {

  const { basedir, arg, cliArgs } = passedArgs;
  const filename = arg;

  const args = cliArgs || {};

  const result = {
    failed: false,
    failedMessage: undefined,
    skipped: false
  }

  if (filename.charAt(0) == "_" || filename.endsWith(".fixture.ts")) {
    result.skipped = true;
    return Promise.resolve(result);
  };

  console.log(colorsUtil.white("Testing parser/" + filename));

  var parser = new Parser();
  var sourceText = fs.readFileSync(basedir + "/" + filename, { encoding: "utf8" }).replace(/\r?\n/g, "\n");
  parser.parseFile(sourceText, filename, true);
  var serializedSourceText = ASTBuilder.build(parser.program.sources[0]);
  var actual = serializedSourceText + parser.diagnostics.map(diagnostic => "// " + diagnostic +"\n").join("");
  var fixture = filename + ".fixture.ts";

  if (args.create) {
    fs.writeFileSync(basedir + "/" + fixture, actual, { encoding: "utf8" });
    console.log("Created\n");
  } else {
    var expected = fs.readFileSync(basedir + "/" + fixture, { encoding: "utf8" }).replace(/\r\n/g, "\n");
    var diffs = diff("parser/" + fixture, expected, actual);
    if (diffs !== null) {
      result.failed = true;
      console.log(colorsUtil.red("diff ERROR"));
    } else {
      console.log(colorsUtil.green("diff OK"));
    }
  }

  console.log();
  return Promise.resolve(result);
}

function postTest(results) {
  if (results.failedTests && results.failedTests.size) {
    process.exitCode = 1;
    console.log(colorsUtil.red("ERROR: ") + results.failedTests.size + " parser tests failed");
  } else {
    console.log("[ " + colorsUtil.white("SUCCESS") + " ]");
  }
}

module.exports = {
  suiteName: "parser",
  workers: 1,
  tests,
  postTest,
  performTest
}