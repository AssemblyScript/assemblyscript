import * as fs from "fs";
import * as diff from "diff";
import * as chalk from "chalk";
import * as glob from "glob";

import "../../src/glue/js";
import { NodeKind, ExpressionStatement } from "../../src/ast";
import { Parser } from "../../src/parser";

const filter = process.argv.length > 2 ? "*" + process.argv[2] + "*.ts" : "**.ts";

const files = glob.sync(filter, { cwd: __dirname + "/fixtures" });
files.forEach(filename => {
  if (filename.charAt(0) == "_")  return;
  const isTree = filename.indexOf(".tree.") >= 0;
  const parser = new Parser();
  const text = fs.readFileSync(__dirname + "/fixtures/" + filename, { encoding: "utf8" }).replace(/\r?\n/g, "\n").replace(/^\/\/.*\r?\n/mg, "");
  parser.parseFile(text, filename, true);
  var sb: string[] = [];
  parser.program.sources[0].serialize(sb);
  const actual = sb.join("");
  const expected = isTree ? text : text.replace(/^\s+/mg, "");
  const diffs = diff.diffLines(expected, actual);
  let changed = false;
  diffs.forEach(part => {
    if (part.added || part.removed)
      changed = true;
  });
  if (changed) { // print it
    console.log("Differences in " + filename + ":");
    diffs.forEach(part => {
      if (part.added || part.removed)
        changed = true;
      process.stderr.write((part.added ? chalk.green : part.removed ? chalk.red : chalk.grey)(part.value));
    });
  } else {
    console.log("No differences in " + filename + ".");
  }
  // parser.program.initialize();
  // console.log(parser.program.names);
});
