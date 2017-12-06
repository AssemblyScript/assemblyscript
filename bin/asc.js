var fs = require("fs");
var path = require("path");
var minimist = require("minimist");

var assemblyscript;
var isDev = true;
try {
  assemblyscript = require("../dist/assemblyscript.js");
  require("source-map-support").install();
  isDev = false;
} catch (e) {
  require("ts-node").register({ project: require("path").join(__dirname, "..", "src") });
  require("../src/glue/js");
  assemblyscript = require("../src");
}

var conf = require("./asc.json");
var opts = {};

Object.keys(conf).forEach(key => {
  var opt = conf[key];
  if (opt.aliases)
    (opts.alias || (opts.alias = {}))[key] = opt.aliases;
  if (opt.default !== undefined)
    (opts.default || (opts.default = {}))[key] = opt.default;
  if (opt.type === "string")
    (opts.string || (opts.string = [])).push(key);
  else if (opt.type === "boolean")
    (opts.boolean || (opts.boolean = [])).push(key);
});

var args = minimist(process.argv.slice(2), opts);
var version = require("../package.json").version;
if (isDev) version += "-dev";

if (args.version) {
  console.log([
    "Version " + version
  ].join("\n"));
  process.exit(0);
}

if (args.help || args._.length < 1) {
  var options = [];
  Object.keys(conf).forEach(name => {
    var option = conf[name];
    var text = " ";
    if (option.aliases)
      text += "-" + option.aliases[0] + ", ";
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
  process.exit(args.help ? 0 : 1);
}

var entryPath = args._[0].replace(/\\/g, "/").replace(/(\.ts|\/)$/, "");
var entryDir  = path.dirname(entryPath);
var entryText;
try {
  entryText = fs.readFileSync(entryPath + ".ts", { encoding: "utf8" });
} catch (e) {
  try {
    entryText = fs.readFileSync(entryPath + "/index.ts", { encoding: "utf8" });
    entryPath = entryPath + "/index";
  } catch (e) {
    console.error("File '" + entryPath + ".ts' not found.");
    process.exit(1);
  }
}

var parser = assemblyscript.parseFile(entryText, entryPath);

var nextPath;
var nextText;

while ((nextPath = parser.nextFile()) != null) {
  try {
    nextText = fs.readFileSync(nextPath + ".ts", { encoding: "utf8" });
  } catch (e) {
    try {
      nextText = fs.readFileSync(nextPath + "/index.ts", { encoding: "utf8" });
      nextPath = nextPath + "/index";
    } catch (e) {
      console.error("Imported file '" + nextPath + ".ts' not found.");
      process.exit(1);
    }
  }
  assemblyscript.parseFile(nextText, nextPath, parser);
}

var diagnostic;
var hasErrors = false;

while ((diagnostic = assemblyscript.nextDiagnostic(parser)) != null) {
  console.error(assemblyscript.formatDiagnostic(diagnostic, process.stderr.isTTY, true));
  if (assemblyscript.isError(diagnostic))
    hasErrors = true;
}

if (hasErrors)
  process.exit(1);

var module = assemblyscript.compile(parser);

hasErrors = false;
while ((diagnostic = assemblyscript.nextDiagnostic(parser)) != null) {
  console.error(assemblyscript.formatDiagnostic(diagnostic, process.stderr.isTTY, true));
  if (assemblyscript.isError(diagnostic))
    hasErrors = true;
}

if (hasErrors) {
  module.dispose();
  process.exit(1);
}

if (args.validate)
  if (!module.validate()) {
    module.dispose();
    process.exit(1);
  }

if (args.optimize)
  module.optimize();

var hasOutput = false;

if (args.outFile != null) {
  fs.writeFileSync(args.outFile, module.toBinary());
  hasOutput = true;
}
if (args.textFile != null) {
  fs.writeFileSync(args.textFile, module.toText(), { encoding: "utf8" });
  hasOutput = true;
}
if (!hasOutput)
  module.print();

module.dispose();
