var fs = require("fs");
var path = require("path");
var minimist = require("minimist");
var glob = require("glob");

var assemblyscript;
var isDev = true;
try {
  assemblyscript = require("../dist/assemblyscript.js");
  try { require("source-map-support").install(); } catch (e) {} // optional
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
var indent = 24;
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
    text += "--" + name;
    if (option.aliases && option.aliases[0].length === 1)
      text += ", -" + option.aliases[0];
    while (text.length < indent)
      text += " ";
    if (Array.isArray(option.desc)) {
      options.push(text + option.desc[0] + option.desc.slice(1).map(line => {
        for (var i = 0; i < indent; ++i)
          line = " " + line;
        return "\n" + line;
      }).join(""));
    } else
      options.push(text + option.desc);
  });
  console.log([
    "Version " + version,
    "Syntax:   asc [options] [entryFile ...]",
    "",
    "Examples: asc hello.ts",
    "          asc hello.ts -b hello.wasm -t hello.wast",
    "          asc hello1.ts hello2.ts -b -O > hello.wasm",
    "",
    "Options:"
  ].concat(options).join("\n"));
  process.exit(args.help ? 0 : 1);
}

var parser = null;

function checkDiagnostics(parser) {
  var diagnostic;
  var hasErrors = false;

  while ((diagnostic = assemblyscript.nextDiagnostic(parser)) != null) {
    console.error(assemblyscript.formatDiagnostic(diagnostic, process.stderr.isTTY, true));
    if (assemblyscript.isError(diagnostic))
      hasErrors = true;
  }
  if (hasErrors)
    process.exit(1);
}

// Include standard library
if (!args.noLib) {
  var stdlibDir = path.join(__dirname, "..", "std", "assembly");
  glob.sync("*.ts", { cwd: stdlibDir }).forEach(file => {
    var nextText = fs.readFileSync(path.join(stdlibDir, file), { encoding: "utf8" });
    parser = assemblyscript.parseFile(nextText, "std:" + file, parser, false);
  });
}

// Include entry files
args._.forEach(filename => {
  var entryPath = filename.replace(/\\/g, "/").replace(/(\.ts|\/)$/, "");
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

  var nextPath;
  var nextText;

  // Load entry text
  parser = assemblyscript.parseFile(entryText, entryPath, parser, true);

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
  checkDiagnostics(parser);
});

var options = assemblyscript.createOptions();
assemblyscript.setTarget(options, 0);
assemblyscript.setNoTreeShaking(options, args.noTreeShaking);
assemblyscript.setNoAssert(options, args.noAssert);
assemblyscript.setNoMemory(options, args.noMemory);
// TODO: noDebug binaryen feature, removing names the debug section

var module = assemblyscript.compile(parser, options);
checkDiagnostics(parser);

if (args.validate)
  if (!module.validate()) {
    module.dispose();
    process.exit(1);
  }

if (args.trapMode === "clamp")
  module.runPasses([ "trap-mode-clamp" ]);
else if (args.trapMode === "js")
  module.runPasses([ "trap-mode-js" ]);
else if (args.trapMode !== "allow") {
  console.log("Unsupported trap mode: " + args.trapMode);
  process.exit(1);
}

var defaultOptimizeLevel = 2;
var defaultShrinkLevel = 1;

var optimizeLevel = -1;
var shrinkLevel = 0;
var debugInfo = !args.noDebug;
var runPasses = [];

if (args.optimize !== false) {
  if (typeof args.optimize === "number")
    optimizeLevel = args.optimize;
  else if (args["0"])
    optimizeLevel = 0;
  else if (args["1"])
    optimizeLevel = 1;
  else if (args["2"])
    optimizeLevel = 2;
  else if (args["3"])
    optimizeLevel = 3;
  else if (args.optimize === true) {
    optimizeLevel = defaultOptimizeLevel;
    shrinkLevel = defaultShrinkLevel;
  } else
    optimizeLevel = 0;
}
if (args["s"])
  shrinkLevel = 1;
else if (args["z"])
  shrinkLevel = 2;

// Check explicit levels
if (typeof args.optimizeLevel === "number")
  optimizeLevel = args.optimizeLevel;
if (typeof args.shrinkLevel === "number")
  shrinkLevel = args.shrinkLevel;

// Workaround for inlining not being performed (42.0.0)
// if ((optimizeLevel >= 2 || shrinkLevel >= 2) && !debugInfo)
//   runPasses = [ "inlining", "inlining-optimizing" ];

// Check additional passes
if (args.runPasses) {
  if (typeof args.runPasses === "string")
    args.runPasses = args.runPasses.split(",");
  if (args.runPasses.length)
    args.runPasses.forEach(pass => {
      if (runPasses.indexOf(pass) < 0)
        runPasses.push(pass);
    });
}

module.setOptimizeLevel(optimizeLevel);
module.setShrinkLevel(shrinkLevel);
module.setDebugInfo(debugInfo);

if (optimizeLevel >= 0)
  module.optimize();
if (runPasses.length)
  module.runPasses(runPasses.map(pass => pass.trim()));

var hasOutput = false;

if (args.outFile != null) {
  if (/\.wast$/.test(args.outFile) && args.textFile == null)
    args.textFile = args.outFile;
  else if (/\.js$/.test(args.outFile) && args.asmjsFile == null)
    args.asmjsFile = args.outFile;
  else if (args.binaryFile == null)
    args.binaryFile = args.outFile;
}
if (args.binaryFile != null && args.binaryFile.length) {
  fs.writeFileSync(args.binaryFile, module.toBinary());
  hasOutput = true;
}
if (args.textFile != null && args.textFile.length) {
  fs.writeFileSync(args.textFile, module.toText(), { encoding: "utf8" });
  hasOutput = true;
}
if (args.asmjsFile != null && args.asmjsFile.length) {
  fs.writeFileSync(args.asmjsFile, module.toAsmjs(), { encoding: "utf8" });
  hasOutput = true;
}
if (!hasOutput) {
  if (args.binaryFile === "")
    process.stdout.write(Buffer.from(module.toBinary()));
  else if (args.asmjsFile === "")
    module.printAsmjs();
  else
    module.print();
}

module.dispose();
