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
    "Syntax:   asc [entryFile ...] [options]",
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

var readTime = 0;
var readCount = 0;
var writeTime = 0;
var parseTime = 0;
var compileTime = 0;
var validateTime = 0;
var optimizeTime = 0;

function measure(fn) {
  var start = process.hrtime();
  fn();
  var times = process.hrtime(start);
  return times[0] * 1e9 + times[1];
}

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

// Include standard library if --noLib isn't set
var libDirs = args.noLib ? [] : [ path.join(__dirname, "..", "std", "assembly") ];

// Include custom library components (with or without stdlib)
if (args.lib) {
  if (Array.isArray(args.lib))
    Array.prototype.push.apply(libDirs, args.lib.map(dir));
  else
    libDirs.push(args.lib);
}

libDirs.forEach(libDir => {
  var notIoTime = 0;
  readTime += measure(() => {
    glob.sync("*.ts", { cwd: libDir }).forEach(file => {
      var nextText = fs.readFileSync(path.join(libDir, file), { encoding: "utf8" });
      ++readCount;
      var time = measure(() => {
        parser = assemblyscript.parseFile(nextText, "std:" + file, parser, false);
      });
      parseTime += time;
      notIoTime += time;
    });
  }) - notIoTime;
});

// Include entry files
args._.forEach(filename => {
  var entryPath = filename.replace(/\\/g, "/").replace(/(\.ts|\/)$/, "");
  var entryDir  = path.dirname(entryPath);
  var entryText;

  try {
    readTime += measure(() => {
      entryText = fs.readFileSync(entryPath + ".ts", { encoding: "utf8" });
    });
    ++readCount;
  } catch (e) {
    try {
      readTime += measure(() => {
        entryText = fs.readFileSync(entryPath + "/index.ts", { encoding: "utf8" });
      });
      ++readCount;
      entryPath = entryPath + "/index";
    } catch (e) {
      console.error("File '" + entryPath + ".ts' not found.");
      process.exit(1);
    }
  }

  var nextPath;
  var nextText;

  // Load entry text
  parseTime += measure(() => {
    parser = assemblyscript.parseFile(entryText, entryPath, parser, true);
  });

  while ((nextPath = parser.nextFile()) != null) {
    var found = false;
    if (nextPath.startsWith("std:")) {
      for (var i = 0; i < libDirs.length; ++i) {
        readTime += measure(() => {
          try {
            nextText = fs.readFileSync(libDirs[i] + "/" + nextPath.substring(4) + ".ts", { encoding: "utf8" });
            found = true;
          } catch (e) {}
        });
        ++readCount;
        if (found)
          break;
      }
    } else {
      readTime += measure(() => {
        try {
          nextText = fs.readFileSync(nextPath + "/index.ts", { encoding: "utf8" });
          found = true;
        } catch (e) {}
      });
      ++readCount;
      if (!found) {
        readTime += measure(() => {
          try {
            nextText = fs.readFileSync(nextPath + ".ts", { encoding: "utf8" });
            found = true;
          } catch (e) {}
        });
        ++readCount;
      }
    }
    if (!found) {
      console.error("Imported file '" + nextPath + ".ts' not found.");
      process.exit(1);
    }
    parseTime += measure(() => {
      assemblyscript.parseFile(nextText, nextPath, parser);
    });
  }
  checkDiagnostics(parser);
});

var options = assemblyscript.createOptions();
assemblyscript.setTarget(options, 0);
assemblyscript.setNoTreeShaking(options, args.noTreeShaking);
assemblyscript.setNoAssert(options, args.noAssert);
assemblyscript.setNoMemory(options, args.noMemory);

var module;
compileTime += measure(() => {
  module = assemblyscript.compile(parser, options);
});
checkDiagnostics(parser);

if (args.validate)
  validateTime += measure(() => {
    if (!module.validate()) {
      module.dispose();
      process.exit(1);
    }
  });

if (args.trapMode === "clamp")
  optimizeTime += measure(() => {
    module.runPasses([ "trap-mode-clamp" ]);
  });
else if (args.trapMode === "js")
  optimizeTime += measure(() => {
    module.runPasses([ "trap-mode-js" ]);
  });
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
  optimizeTime += measure(() => {
    module.optimize();
  });
if (runPasses.length)
  optimizeTime += measure(() => {
    module.runPasses(runPasses.map(pass => pass.trim()));
  });

if (!args.noEmit) {
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
    writeTime += measure(() => {
      fs.writeFileSync(args.binaryFile, module.toBinary());
    });
    hasOutput = true;
  }
  if (args.textFile != null && args.textFile.length) {
    writeTime += measure(() => {
      fs.writeFileSync(args.textFile, module.toText(), { encoding: "utf8" });
    });
    hasOutput = true;
  }
  if (args.asmjsFile != null && args.asmjsFile.length) {
    writeTime += measure(() => {
      fs.writeFileSync(args.asmjsFile, module.toAsmjs(), { encoding: "utf8" });
    });
    hasOutput = true;
  }
  if (!hasOutput) {
    if (args.binaryFile === "")
      writeTime += measure(() => {
        process.stdout.write(Buffer.from(module.toBinary()));
      });
    else if (args.asmjsFile === "")
      writeTime += measure(() => {
        module.printAsmjs();
      });
    else
      writeTime += measure(() => {
        module.print();
      });
  }
}

module.dispose();

if (args.measure)
  console.error([
    "I/O Read  : " + (readTime     ? (readTime     / 1e6).toFixed(3) + " ms (" + readCount + " files)" : "N/A"),
    "I/O Write : " + (writeTime    ? (writeTime    / 1e6).toFixed(3) + " ms" : "N/A"),
    "Parse     : " + (parseTime    ? (parseTime    / 1e6).toFixed(3) + " ms" : "N/A"),
    "Compile   : " + (compileTime  ? (compileTime  / 1e6).toFixed(3) + " ms" : "N/A"),
    "Validate  : " + (validateTime ? (validateTime / 1e6).toFixed(3) + " ms" : "N/A"),
    "Optimize  : " + (optimizeTime ? (optimizeTime / 1e6).toFixed(3) + " ms" : "N/A")
  ].join("\n"));
