import * as fs from "fs";
import * as path from "path";
import * as minimist from "minimist";
import "../src/glue/js";
import * as as from "../src";

var conf: { [key: string]: { desc: string, type: string, aliases: string[], default: any } } = require("./asc.json");
var opts: minimist.Opts = {};

Object.keys(conf).forEach(key => {
  var opt = conf[key];
  if (opt.aliases)
    (opts.alias || (opts.alias = {}))[key] = opt.aliases;
  if (opt.default !== undefined)
    (opts.default || (opts.default = {}))[key] = opt.default;
  if (opt.type === "string")
    (<string[]>(opts.string || (opts.string = []))).push(key);
  else if (opt.type === "boolean")
    (<string[]>(opts.boolean || (opts.boolean = []))).push(key);
});

const args = minimist(process.argv.slice(2), opts);
const version = <string>require("../package.json")["version"];

if (args["version"]) {
  console.log([
    "Version " + version
  ].join("\n"));
  process.exit(0);
}

if (args["help"] || args._.length < 1) {
  let options: string[] = [];
  Object.keys(conf).forEach(name => {
    const option = conf[name];
    let text = "";
    if (option.aliases) {
      option.aliases.forEach((alias, i) => {
        if (i > 0)
          text += ", ";
        text += "-" + alias;
      });
      text += ", ";
    }
    text += "--" + name;
    while (text.length < 20)
      text += " ";
    options.push(text + option.desc);
  });
  console.log([
    "Version " + version,
    "Syntax:   asc [options] [file ...]",
    "",
    "Examples: asc hello.ts",
    "",
    "Options:"
  ].concat(options).join("\n"));
  process.exit(args["help"] ? 0 : 1);
}

const entryPath = args._[0];
const entryText = fs.readFileSync(entryPath, { encoding: "utf8" });

const parser = as.parseFile(entryText, entryPath);

let nextPath: string | null;
let nextText: string;

while ((nextPath = parser.nextFile()) != null) {
  try {
    nextText = fs.readFileSync(path.join(path.dirname(entryPath), nextPath + ".ts"), { encoding: "utf8" });
  } catch (e) {
    nextText = fs.readFileSync(path.join(path.dirname(entryPath), nextPath, "index.ts"), { encoding: "utf8" });
  }
  as.parseFile(nextText, nextPath, parser);
}

let diagnostic: as.DiagnosticMessage | null;
let hasErrors: boolean = false;

while ((diagnostic = as.nextDiagnostic(parser)) != null) {
  console.error(as.formatDiagnostic(diagnostic, process.stderr.isTTY, true));
  if (as.isError(diagnostic))
    hasErrors = true;
}

if (hasErrors)
  process.exit(1);

const module = as.compile(parser);

hasErrors = false;
while ((diagnostic = as.nextDiagnostic(parser)) != null) {
  console.error(as.formatDiagnostic(diagnostic, process.stderr.isTTY, true));
  if (as.isError(diagnostic))
    hasErrors = true;
}

if (hasErrors) {
  module.dispose();
  process.exit(1);
}

if (args["validate"])
  if (!module.validate()) {
    module.dispose();
    process.exit(1);
  }

if (args["optimize"])
  module.optimize();

let hasOutput = false;

if (args["outFile"]) {
  fs.writeFileSync(args["outFile"], module.toBinary());
  hasOutput = true;
}
if (args["textFile"]) {
  fs.writeFileSync(args["textFile"], module.toText(), { encoding: "utf8" });
  hasOutput = true;
}
if (!hasOutput)
  module.print();

module.dispose();
