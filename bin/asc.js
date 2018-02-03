const fs = require("fs");
const path = require("path");

// Use distribution files if present, otherwise run the sources directly
var assemblyscript;
var isDev = true;
try {
  assemblyscript = require("../dist/assemblyscript.js");
  isDev = false;
  try { require("source-map-support").install(); } catch (e) {} // optional
} catch (e) {
  require("ts-node").register({ project: require("path").join(__dirname, "..", "src") });
  require("../src/glue/js");
  assemblyscript = require("../src");
}

// Common constants
const VERSION = require("../package.json").version + (isDev ? "-dev" : "");
const OPTIONS = require("./asc.json");
const SOURCEMAP_ROOT = "assemblyscript:///";
const LIBRARY_PREFIX = assemblyscript.LIBRARY_PREFIX;
const DEFAULT_OPTIMIZE_LEVEL = 2;
const DEFAULT_SHRINK_LEVEL = 1;

exports.VERSION = VERSION;

function main(argv, callback) {
  const args = parseArguments(argv);
  const indent = 24;

  // Just print the version if requested
  if (args.version) {
    console.log("Version " + VERSION);
    if (callback) return callback(null);
    process.exit(0);
  }

  // Print the help message if requested or no source files are provided
  if (args.help || args._.length < 1) {
    const options = [];
    Object.keys(OPTIONS).forEach(name => {
      var option = OPTIONS[name];
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

    (args.help ? console.log : console.error)([
      "Version " + VERSION,
      "Syntax:   asc [entryFile ...] [options]",
      "",
      "Examples: asc hello.ts",
      "          asc hello.ts -b hello.wasm -t hello.wast",
      "          asc hello1.ts hello2.ts -b -O > hello.wasm",
      "",
      "Options:"
    ].concat(options).join("\n"));
    if (callback) return callback(args.help ? null : Error("usage"));
    process.exit(args.help ? 0 : 1);
  }

  // Record compilation times
  var stats = createStats();

  // Include standard library if --noLib isn't set
  const libDirs = args.noLib ? [] : [ path.join(__dirname, "..", "std", "assembly") ];

  // Include custom library components (with or without stdlib)
  if (args.lib) {
    if (Array.isArray(args.lib))
      Array.prototype.push.apply(libDirs, args.lib.map(dir));
    else
      libDirs.push(args.lib);
  }

  // Begin parsing
  var parser = null;

  // Include library components
  libDirs.forEach(libDir => {
    var notReadTime = 0;
    stats.readTime += measure(() => {
      require("glob").sync("*.ts", { cwd: libDir }).forEach(file => {
        var nextText = fs.readFileSync(path.join(libDir, file), { encoding: "utf8" });
        ++stats.readCount;
        var time = measure(() => {
          parser = assemblyscript.parseFile(nextText, LIBRARY_PREFIX + file, parser, false);
        });
        stats.parseTime += time;
        notReadTime += time;
      });
    }) - notReadTime;
  });

  // Include entry files
  for (let i = 0, k = args._.length; i < k; ++i) {
    const filename = args._[i];

    let entryPath = filename.replace(/\\/g, "/").replace(/(\.ts|\/)$/, "");
    let entryText;

    // Try entryPath.ts, then entryPath/index.ts
    try {
      stats.readTime += measure(() => {
        entryText = fs.readFileSync(entryPath + ".ts", { encoding: "utf8" });
        entryPath += ".ts";
      });
      ++stats.readCount;
    } catch (e) {
      try {
        stats.readTime += measure(() => {
          entryText = fs.readFileSync(entryPath + "/index.ts", { encoding: "utf8" });
          entryPath += "/index.ts";
        });
        ++stats.readCount;
        entryPath = entryPath + "/index";
      } catch (e) {
        console.error("File '" + entryPath + ".ts' not found.");
        if (callback) return callback(Error("file not found"));
        process.exit(1);
      }
    }

    stats.parseTime += measure(() => {
      parser = assemblyscript.parseFile(entryText, entryPath, parser, true);
    });

    let nextFile;
    let nextText;

    while ((nextFile = parser.nextFile()) != null) {
      let found = false;

      // Load library file if explicitly requested
      if (nextFile.startsWith(LIBRARY_PREFIX)) {
        for (let i = 0; i < libDirs.length; ++i) {
          stats.readTime += measure(() => {
            try {
              nextText = fs.readFileSync(path.join(libDirs[i], nextFile.substring(4) + ".ts"), { encoding: "utf8" });
              nextFile = nextFile + ".ts";
              found = true;
            } catch (e) {}
          });
          ++stats.readCount;
          if (found)
            break;
        }

      // Otherwise try nextFile.ts, nextFile/index.ts, (lib)/nextFile.ts
      } else {
        stats.readTime += measure(() => {
          try {
            nextText = fs.readFileSync(nextFile + ".ts", { encoding: "utf8" });
            nextFile = nextFile + ".ts";
            found = true;
          } catch (e) {}
        });
        ++stats.readCount;
        if (!found) {
          stats.readTime += measure(() => {
            try {
              nextText = fs.readFileSync(nextFile + "/index.ts", { encoding: "utf8" });
              nextFile = nextFile + "/index.ts";
              found = true;
            } catch (e) {}
          });
          ++stats.readCount;
        }
      }
      if (!found) {
        console.error("Imported file '" + nextFile + ".ts' not found.");
        process.exit(1);
      }
      stats.parseTime += measure(() => {
        assemblyscript.parseFile(nextText, nextFile, parser);
      });
    }
    if (checkDiagnostics(parser)) {
      if (callback) return callback(Error("compilation error"));
      process.exit(1);
    }
  }

  // Begin compilation
  const options = assemblyscript.createOptions();
  assemblyscript.setTarget(options, 0);
  assemblyscript.setNoTreeShaking(options, args.noTreeShaking);
  assemblyscript.setNoAssert(options, args.noAssert);
  assemblyscript.setNoMemory(options, args.noMemory);
  assemblyscript.setSourceMap(options, args.sourceMap != null);

  var module;
  stats.compileTime += measure(() => {
    module = assemblyscript.compile(parser, options);
  });
  if (checkDiagnostics(parser)) {
    if (module) module.dispose();
    if (callback) return callback(Error("errored"));
    process.exit(1);
  }

  // Validate the module if requested
  if (args.validate) {
    stats.validateTime += measure(() => {
      if (!module.validate()) {
        module.dispose();
        if (callback) return callback(Error("validation failed"));
        console.error("Validation failed");
        process.exit(1);
      }
    });
  }

  // Set Binaryen-specific options
  if (args.trapMode === "clamp") {
    stats.optimizeTime += measure(() => module.runPasses([ "trap-mode-clamp" ]));
  } else if (args.trapMode === "js") {
    stats.optimizeTime += measure(() => module.runPasses([ "trap-mode-js" ]));
  } else if (args.trapMode !== "allow") {
    module.dispose();
    console.error("Unsupported trap mode");
    if (callback) return callback(Error("unsupported trap mode"));
    process.exit(1);
  }

  var optimizeLevel = -1;
  var shrinkLevel = 0;
  var debugInfo = !args.noDebug;

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
      optimizeLevel = DEFAULT_OPTIMIZE_LEVEL;
      shrinkLevel = DEFAULT_SHRINK_LEVEL;
    } else
      optimizeLevel = 0;
  }
  if (args["s"])
    shrinkLevel = 1;
  else if (args["z"])
    shrinkLevel = 2;

  if (typeof args.optimizeLevel === "number")
    optimizeLevel = args.optimizeLevel;
  if (typeof args.shrinkLevel === "number")
    shrinkLevel = args.shrinkLevel;
  else if (args.shrinkLevel === "s")
    shrinkLevel = 1;
  else if (args.shrinkLevel === "z")
    shrinkLevel = 2;

  module.setOptimizeLevel(optimizeLevel);
  module.setShrinkLevel(shrinkLevel);
  module.setDebugInfo(debugInfo);

  var runPasses = [];
  if (args.runPasses) {
    if (typeof args.runPasses === "string")
      args.runPasses = args.runPasses.split(",");
    if (args.runPasses.length)
      args.runPasses.forEach(pass => {
        if (runPasses.indexOf(pass) < 0)
          runPasses.push(pass);
      });
  }

  // Optimize the module if requested
  if (optimizeLevel >= 0)
    stats.optimizeTime += measure(() => module.optimize());

  // Run additional passes if requested
  if (runPasses.length)
    stats.optimizeTime += measure(() => module.runPasses(runPasses.map(pass => pass.trim())));

  // Prepare output
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
      var sourceMapURL = args.sourceMap != null
        ? args.sourceMap.length
          ? args.sourceMap
          : path.basename(args.binaryFile) + ".map"
        : null;
      var binary;
      stats.writeTime += measure(() => {
        // FIXME: 'not a valid URL' in FF (wants http(s)://.../url)
        binary = module.toBinary(sourceMapURL);
        fs.writeFileSync(args.binaryFile, binary.output);
      });
      ++stats.writeCount;
      if (binary.sourceMap != null) {
        postProcessSourceMap(binary.sourceMap, sourceMapURL, libDirs, stats).then(sourceMap => {
          stats.writeTime += measure(() => {
            fs.writeFileSync(path.join(path.dirname(args.binaryFile), path.basename(sourceMapURL)), sourceMap, { encoding: "utf8" });
          }, err => {
                throw err;
          });
          ++stats.writeCount;
        }).catch(err => {
          // FIXME: as this is asynchronous, we cannot properly terminate main
          console.error(err);
        });
      }
      hasOutput = true;
    }

    if (args.textFile != null && args.textFile.length) {
      stats.writeTime += measure(() => fs.writeFileSync(args.textFile, module.toText(), { encoding: "utf8" }));
      ++stats.writeCount;
      hasOutput = true;
    }

    if (args.asmjsFile != null && args.asmjsFile.length) {
      stats.writeTime += measure(() => fs.writeFileSync(args.asmjsFile, module.toAsmjs(), { encoding: "utf8" }));
      ++stats.writeCount;
      hasOutput = true;
    }

    if (!hasOutput) {
      if (args.binaryFile === "") {
        stats.writeTime += measure(() => process.stdout.write(Buffer.from(module.toBinary().output)));
        ++stats.writeCount;
      } else if (args.asmjsFile === "") {
        stats.writeTime += measure(() => module.printAsmjs());
        ++stats.writeCount;
      } else {
        stats.writeTime += measure(() => module.print());
        ++stats.writeCount;
      }
    }
  }

  module.dispose();

  if (args.measure) process.on("beforeExit", () => console.error([
    "I/O Read  : " + (stats.readTime     ? (stats.readTime     / 1e6).toFixed(3) + " ms (" + stats.readCount + " files)" : "N/A"),
    "I/O Write : " + (stats.writeTime    ? (stats.writeTime    / 1e6).toFixed(3) + " ms (" + stats.writeCount + " files)" : "N/A"),
    "Parse     : " + (stats.parseTime    ? (stats.parseTime    / 1e6).toFixed(3) + " ms" : "N/A"),
    "Compile   : " + (stats.compileTime  ? (stats.compileTime  / 1e6).toFixed(3) + " ms" : "N/A"),
    "Validate  : " + (stats.validateTime ? (stats.validateTime / 1e6).toFixed(3) + " ms" : "N/A"),
    "Optimize  : " + (stats.optimizeTime ? (stats.optimizeTime / 1e6).toFixed(3) + " ms" : "N/A")
  ].join("\n")));
}

exports.main = main;

function parseArguments(argv) {
  const opts = {};
  Object.keys(OPTIONS).forEach(key => {
    const opt = OPTIONS[key];
    if (opt.aliases)
      (opts.alias || (opts.alias = {}))[key] = opt.aliases;
    if (opt.default !== undefined)
      (opts.default || (opts.default = {}))[key] = opt.default;
    if (opt.type === "string")
      (opts.string || (opts.string = [])).push(key);
    else if (opt.type === "boolean")
      (opts.boolean || (opts.boolean = [])).push(key);
  });
  return require("minimist")(argv, opts);
}

exports.parseArguments = parseArguments;

function checkDiagnostics(parser) {
  var diagnostic;
  var hasErrors = false;
  while ((diagnostic = assemblyscript.nextDiagnostic(parser)) != null) {
    console.error(assemblyscript.formatDiagnostic(diagnostic, process.stderr.isTTY, true));
    if (assemblyscript.isError(diagnostic)) hasErrors = true;
  }
  return hasErrors;
}

exports.checkDiagnostics = checkDiagnostics;

function postProcessSourceMap(sourceMap, sourceMapURL, libDirs, stats) {
  const { SourceMapConsumer, SourceMapGenerator } = require("source-map");
  const json = JSON.parse(sourceMap);
  json.sourceRoot = SOURCEMAP_ROOT;
  return SourceMapConsumer.with(json, undefined, consumer => {
    const generator = SourceMapGenerator.fromSourceMap(consumer);
    json.sources.forEach(name => {
      var text, found = false;
      if (name.startsWith(LIBRARY_PREFIX)) {
        for (var i = 0, k = libDirs.length; i < k; ++i) {
          stats.readTime += measure(() => {
            try {
              text = fs.readFileSync(path.join(libDirs[i], name.substring(LIBRARY_PREFIX.length)), { encoding: "utf8" });
              found = true;
            } catch (e) {}
          });
          ++stats.readCount;
        }
      } else {
        stats.readTime += measure(() => {
          try {
            text = fs.readFileSync(name, { encoding: "utf8" });
            found = true;
          } catch (e) {}
        });
        ++stats.readCount;
      }
      if (found)
        generator.setSourceContent(name, text);
      else
        console.error("No source content found for file '" + name + "'.");
    });
    return Promise.resolve(generator.toString());
  });
}

exports.processSourceMap = postProcessSourceMap;

function createStats() {
  return {
    readTime: 0,
    readCount: 0,
    writeTime: 0,
    writeCount: 0,
    parseTime: 0,
    compileTime: 0,
    validateTime: 0,
    optimizeTime: 0
  };
}

function measure(fn) {
  const start = process.hrtime();
  fn();
  const times = process.hrtime(start);
  return times[0] * 1e9 + times[1];
}
