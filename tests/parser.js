import fs from "fs";
import path from "path";
import os from "os";
import { fileURLToPath } from "url";
import glob from "glob";
import { diff } from "../util/text.js";
import { stdoutColors } from "../util/terminal.js";
import * as optionsUtil from "../util/options.js";
import { Program, Options, ASTBuilder } from "../dist/assemblyscript.js";

const dirname = path.dirname(fileURLToPath(import.meta.url));

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
const args = opts.options;
const argv = opts.arguments;

if (args.help) {
  console.log([
    stdoutColors.white("SYNTAX"),
    "  " + stdoutColors.cyan("npm run test:parser --") + " [test1, test2 ...] [options]",
    "",
    stdoutColors.white("OPTIONS"),
    optionsUtil.help(config)
  ].join(os.EOL) + os.EOL);
  process.exit(0);
}

const basedir = path.join(dirname, "parser");

// Get a list of all tests
let tests = glob.sync("**/!(_*).ts", { cwd: basedir });

// Run specific tests only if arguments are provided
if (argv.length) {
  tests = tests.filter(filename => argv.indexOf(filename.replace(/\.ts$/, "")) >= 0);
  if (!tests.length) {
    console.error("No matching tests: " + argv.join(" "));
    process.exit(1);
  }
}

let failures = 0;

for (const filename of tests) {
  if (filename.charAt(0) == "_" || filename.endsWith(".fixture.ts")) continue;

  console.log(stdoutColors.white("Testing parser/" + filename));

  let failed = false;
  const program = new Program(new Options());
  const parser = program.parser;
  const sourceText = fs.readFileSync(basedir + "/" + filename, { encoding: "utf8" }).replace(/\r?\n/g, "\n");
  parser.parseFile(sourceText, filename, true);
  const serializedSourceText = ASTBuilder.build(program.sources[0]);
  const actual = serializedSourceText + parser.diagnostics.map(diagnostic => "// " + diagnostic +"\n").join("");
  const fixture = filename + ".fixture.ts";

  if (args.create) {
    fs.writeFileSync(basedir + "/" + fixture, actual, { encoding: "utf8" });
    console.log("Created\n");
  } else {
    const expected = fs.readFileSync(basedir + "/" + fixture, { encoding: "utf8" }).replace(/\r\n/g, "\n");
    const diffs = diff("parser/" + fixture, expected, actual);
    if (diffs !== null) {
      failed = true;
      console.log(diffs);
      console.log(stdoutColors.red("diff ERROR"));
    } else {
      console.log(stdoutColors.green("diff OK"));
    }
  }

  console.log();
  if (failed) ++failures;
}

if (failures) {
  process.exitCode = 1;
  console.log(stdoutColors.red("ERROR: ") + failures + " parser tests failed");
} else {
  console.log("[ " + stdoutColors.white("SUCCESS") + " ]");
}
