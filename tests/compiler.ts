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

// TODO: implement properly in module.ts
import * as binaryen from "binaryen";
Module.prototype.toText = function(): string {
  let old: any = (<any>binaryen)["print"];
  let ret: string = "";
  (<any>binaryen)["print"] = function(x: string): void { ret += x + "\n" };
  _BinaryenModulePrint(this.ref);
  (<any>binaryen)["print"] = old;
  return ret;
}

const isCreate = process.argv[2] === "--create";
const filter = process.argv.length > 2 && !isCreate ? "*" + process.argv[2] + "*.ts" : "*.ts";

glob.sync(filter, { cwd: __dirname + "/compiler" }).forEach(filename => {
  if (filename.charAt(0) == "_" || filename.endsWith(".fixture.ts"))
    return;

  console.log("Testing compiler/" + filename);

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
  const fixture = path.basename(filename, ".ts") + ".wast";

  if (module.validate())
    console.log("Validates");

  if (isCreate) {
    fs.writeFileSync(__dirname + "/compiler/" + fixture, actual, { encoding: "utf8" });
    console.log("Created");
  } else {
    const expected = fs.readFileSync(__dirname + "/compiler/" + fixture, { encoding: "utf8" });
    const diffs = diff("compiler/" + fixture, expected, actual);
    if (diffs !== null) {
      process.exitCode = 1;
      console.log(diffs);
    } else {
      console.log("No changes");
    }
  }

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