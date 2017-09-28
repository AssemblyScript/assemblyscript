import * as fs from "fs";
import * as diff from "diff";
import * as chalk from "chalk";

import "../../src/glue/js";
import { NodeKind, ExpressionStatement } from "../../src/ast";
import { Parser } from "../../src/parser";

const files = fs.readdirSync(__dirname + "/fixtures");
files.forEach(filename => {
  if (filename.charAt(0) == "_")  return;
  const isTree = filename.indexOf(".tree.") >= 0;
  const parser = new Parser();
  const text = fs.readFileSync(__dirname + "/fixtures/" + filename, { encoding: "utf8" }).replace(/\r?\n/g, "\n").replace(/^\/\/.*\r?\n/mg, "");
  parser.parseFile(text, filename, true);
  var sb: string[] = [];
  if (isTree) {
    const statements = parser.program.sources[0].statements;
    statements.forEach(stmt => {
      if (stmt.kind != NodeKind.EXPRESSION) return;
      (<ExpressionStatement>stmt).expression.serializeAsTree(sb, 0);
      sb.push(";\n");
    });
  } else
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
