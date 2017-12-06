/// <reference path="../src/glue/binaryen.d.ts" />

import * as fs from "fs";
import * as path from "path";
import * as chalk from "chalk";
import * as glob from "glob";

import "../src/glue/js";
import { Compiler } from "../src/compiler";
import { Module } from "../src/module";
import { Parser } from "../src/parser";
import { diff } from "./util/diff";

const isCreate = process.argv[2] === "--create";
const filter = process.argv.length > 2 && !isCreate ? "*" + process.argv[2] + "*.ts" : "*.ts";

glob.sync(filter, { cwd: __dirname + "/compiler" }).forEach(filename => {
  if (filename.charAt(0) == "_" || filename.endsWith(".fixture.ts"))
    return;

  console.log(chalk.default.whiteBright("Testing compiler/" + filename));

  const parser = new Parser();
  const sourceText = fs.readFileSync(__dirname + "/compiler/" + filename, { encoding: "utf8" });
  parser.parseFile(sourceText, filename, true);
  let nextFile;
  while ((nextFile = parser.nextFile()) !== null) {
    let nextSourceText: string;
    try {
      nextSourceText = fs.readFileSync(path.join(__dirname, "compiler", nextFile + ".ts"), { encoding: "utf8" });
    } catch (e) {
      nextSourceText = fs.readFileSync(path.join(__dirname, "compiler", nextFile, "index.ts"), { encoding: "utf8" });
    }
    parser.parseFile(nextSourceText, nextFile, false);
  }
  const program = parser.finish();
  const module = Compiler.compile(program);
  const actual = module.toText() + "(;\n[program.elements]\n  " + iterate(program.elements.keys()).join("\n  ") + "\n[program.exports]\n  " + iterate(program.exports.keys()).join("\n  ") + "\n;)\n";
  let actualOptimized: string | null = null;
  let actualInlined: string | null = null;
  const fixture = path.basename(filename, ".ts") + ".wast";

  if (module.validate()) {
    console.log(chalk.default.green("validate OK"));
    try {
      module.interpret();
      console.log(chalk.default.green("interpret OK"));
    } catch (e) {
      process.exitCode = 1;
      console.log(chalk.default.red("interpret ERROR"));
    }
    module.optimize();
    actualOptimized = module.toText();
    module.runPasses([ "inlining" ]);
    actualInlined = module.toText();
  } else {
    process.exitCode = 1;
    console.log(chalk.default.red("validate ERROR"));
  }

  if (isCreate) {
    fs.writeFileSync(__dirname + "/compiler/" + fixture, actual, { encoding: "utf8" });
    console.log("Created");
    if (actualOptimized != null) {
      fs.writeFileSync(__dirname + "/compiler/" + path.basename(filename, ".ts") + ".optimized.wast", actualOptimized, { encoding: "utf8" });
      console.log("Created optimized");
    }
    if (actualInlined != null) {
      if (actualInlined != actualOptimized) {
        fs.writeFileSync(__dirname + "/compiler/" + path.basename(filename, ".ts") + ".optimized-inlined.wast", actualInlined, { encoding: "utf8" });
        console.log("Created optimized & inlined");
      } else {
        try {
          fs.unlinkSync(__dirname + "/compiler/" + path.basename(filename, ".ts") + ".optimized-inlined.wast");
          console.log("Deleted optimized & inlined");
        } catch (e) {}
      }
    }
  } else {
    const expected = fs.readFileSync(__dirname + "/compiler/" + fixture, { encoding: "utf8" });
    const diffs = diff("compiler/" + fixture, expected, actual);
    if (diffs !== null) {
      process.exitCode = 1;
      console.log(diffs);
      console.log(chalk.default.red("diff ERROR"));
    } else {
      console.log(chalk.default.green("diff OK"));
    }
  }

  module.dispose();
  console.log();
});

function iterate<T>(it: IterableIterator<T>): T[] {
  let current: IteratorResult<T>;
  var arr: T[] = [];
  while ((current = it.next()) && !current.done) {
    arr.push(current.value);
  }
  return arr;
}