import * as fs from "fs";
import * as chalk from "chalk";
import * as glob from "glob";

import "../src/glue/js";
import { Parser } from "../src/parser";
import { diff } from "./util/diff";

const isCreate = process.argv[2] === "--create";
const filter = process.argv.length > 2 && !isCreate ? "*" + process.argv[2] + "*.ts" : "**.ts";

glob.sync(filter, { cwd: __dirname + "/parser" }).forEach(filename => {
  if (filename.charAt(0) == "_" || filename.endsWith(".fixture.ts"))
    return;

  console.log(chalk.default.whiteBright("Testing parser/" + filename));

  const parser = new Parser();
  const sourceText = fs.readFileSync(__dirname + "/parser/" + filename, { encoding: "utf8" }).replace(/\r?\n/g, "\n").replace(/^\/\/.*\r?\n/mg, "");
  parser.parseFile(sourceText, filename, true);

  var sb: string[] = [];
  parser.program.sources[0].serialize(sb);
  const actual = sb.join("");
  const fixture = filename + ".fixture.ts";

  if (isCreate) {
    fs.writeFileSync(__dirname + "/parser/" + fixture, actual, { encoding: "utf8" });
    console.log("Created\n");
  } else {
    const expected = fs.readFileSync(__dirname + "/parser/" + fixture, { encoding: "utf8" });
    const diffs = diff("parser/" + fixture, expected, actual);
    if (diffs !== null) {
      process.exitCode = 1;
      console.log(diffs);
      console.log(chalk.default.red("diff ERROR"));
    } else {
      console.log(chalk.default.green("diff OK"));
    }
  }

  console.log();
});
