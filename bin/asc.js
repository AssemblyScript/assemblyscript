const fs = require("fs");
const path = require("path");
const os = require("os");

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

function main(argv, options, callback) {
  if (typeof options === "function") {
    callback = options;
    options = {};
  } else if (!options)
    options = {};

  const stdout = options.stdout || process.stdout;
  const stderr = options.stderr || process.stderr;

  // Record compilation times
  var stats = createStats();

  const args = parseArguments(argv);
  const indent = 24;

  // Use default callback is none is provided
  if (!callback) callback = function defaultCallback(err) {
    var code = 0;
    if (err) {
      stderr.write(err + os.EOL);
      code = 1;
    } else if (args.measure)
      printStats(stats, stderr);
    return code;
  };

  // Just print the version if requested
  if (args.version) {
    stdout.write("Version " + VERSION + os.EOL);
    return callback(null);
  }

  // Print the help message if requested or no source files are provided
  if (args.help || args._.length < 1) {
    const opts = [];
    Object.keys(OPTIONS).forEach(name => {
      var option = OPTIONS[name];
      var text = " ";
      text += "--" + name;
      if (option.aliases && option.aliases[0].length === 1)
        text += ", -" + option.aliases[0];
      while (text.length < indent)
        text += " ";
      if (Array.isArray(option.desc)) {
        opts.push(text + option.desc[0] + option.desc.slice(1).map(line => {
          for (var i = 0; i < indent; ++i)
            line = " " + line;
          return os.EOL + line;
        }).join(""));
      } else
        opts.push(text + option.desc);
    });

    (args.help ? stdout : stderr).write([
      "Version " + VERSION,
      "Syntax:   asc [entryFile ...] [options]",
      "",
      "Examples: asc hello.ts",
      "          asc hello.ts -b hello.wasm -t hello.wast",
      "          asc hello1.ts hello2.ts -b -O > hello.wasm",
      "",
      "Options:"
    ].concat(opts).join(os.EOL) + os.EOL);
    return callback(null);
  }

  // Set up base directory
  const baseDir = args.baseDir != null ? path.resolve(args.baseDir) : process.cwd();

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

  // Include entry files
  for (let i = 0, k = args._.length; i < k; ++i) {
    const filename = args._[i];

    let entryPath = filename.replace(/\\/g, "/").replace(/(\.ts|\/)$/, "");
    let entryText;

    // Try entryPath.ts, then entryPath/index.ts
    try {
      stats.readTime += measure(() => {
        entryText = fs.readFileSync(path.join(baseDir, entryPath) + ".ts", { encoding: "utf8" });
        entryPath += ".ts";
      });
      ++stats.readCount;
    } catch (e) {
      try {
        stats.readTime += measure(() => {
          entryText = fs.readFileSync(path.join(baseDir, entryPath, "index.ts"), { encoding: "utf8" });
          entryPath += "/index.ts";
        });
        ++stats.readCount;
        entryPath = entryPath + "/index";
      } catch (e) {
        return callback(Error("Entry file '" + entryPath + ".ts' not found."));
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
            nextText = fs.readFileSync(path.join(baseDir, nextFile + ".ts"), { encoding: "utf8" });
            nextFile = nextFile + ".ts";
            found = true;
          } catch (e) {}
        });
        ++stats.readCount;
        if (!found) {
          stats.readTime += measure(() => {
            try {
              nextText = fs.readFileSync(path.join(baseDir, nextFile, "index.ts"), { encoding: "utf8" });
              nextFile = nextFile + "/index.ts";
              found = true;
            } catch (e) {}
          });
          ++stats.readCount;
        }
        if (!found) {
          for (let i = 0; i < libDirs.length; ++i) {
            stats.readTime += measure(() => {
              try {
                nextText = fs.readFileSync(path.join(libDirs[i], nextFile + ".ts"), { encoding: "utf8" });
                nextFile = LIBRARY_PREFIX + nextFile + ".ts";
                found = true;
              } catch (e) {}
            });
            ++stats.readCount;
            if (found)
              break;
          }
        }
      }
      if (!found)
        return callback(Error("Import file '" + nextFile + ".ts' not found."));
      stats.parseTime += measure(() => {
        assemblyscript.parseFile(nextText, nextFile, parser);
      });
    }
    if (checkDiagnostics(parser, stderr))
      return callback(Error("Parse error"));
  }

  // Include library components
  for (let i = 0, k = libDirs.length; i < k; ++i) {
    let libDir = libDirs[i];
    let notReadTime = 0;
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
  }

  // Begin compilation
  const compilerOptions = assemblyscript.createOptions();
  assemblyscript.setTarget(compilerOptions, 0);
  assemblyscript.setNoTreeShaking(compilerOptions, !!args.noTreeShaking);
  assemblyscript.setNoAssert(compilerOptions, !!args.noAssert);
  assemblyscript.setNoMemory(compilerOptions, !!args.noMemory);
  assemblyscript.setSourceMap(compilerOptions, args.sourceMap != null);

  var module;
  stats.compileTime += measure(() => {
    module = assemblyscript.compile(parser, compilerOptions);
  });
  if (checkDiagnostics(parser, stderr)) {
    if (module) module.dispose();
    return callback(Error("Compile error"));
  }

  // Validate the module if requested
  if (args.validate) {
    stats.validateTime += measure(() => {
      if (!module.validate()) {
        module.dispose();
        return callback(Error("Validate error"));
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
    return callback(Error("Unsupported trap mode"));
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
    let hasStdout = false;

    if (args.outFile != null) {
      if (/\.wast$/.test(args.outFile) && args.textFile == null)
        args.textFile = args.outFile;
      else if (/\.js$/.test(args.outFile) && args.asmjsFile == null)
        args.asmjsFile = args.outFile;
      else if (args.binaryFile == null)
        args.binaryFile = args.outFile;
    }

    // Write binary
    if (args.binaryFile != null) {
      let sourceMapURL = args.sourceMap != null
        ? args.sourceMap.length
          ? args.sourceMap
          : path.basename(args.binaryFile) + ".map"
        : null;

      let binary;
      stats.writeTime += measure(() => binary = module.toBinary(sourceMapURL));

      if (args.binaryFile.length) {
        stats.writeTime += measure(() => fs.writeFileSync(path.join(baseDir, args.binaryFile), binary.output));
        ++stats.writeCount;
      } else {
        stats.writeTime += measure(() => stdout.write(Buffer.from(binary.output)));
        ++stats.writeCount;
        hasStdout = true;
      }

      // Post-process source map
      if (binary.sourceMap != null) {
        if (args.binaryFile.length) {
          let sourceMap = JSON.parse(binary.sourceMap);
          sourceMap.sourceRoot = SOURCEMAP_ROOT;
          sourceMap.sources.forEach((name, index) => {
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
                  text = fs.readFileSync(path.join(baseDir, name), { encoding: "utf8" });
                  found = true;
                } catch (e) {}
              });
              ++stats.readCount;
            }
            if (!found)
              return callback(Error("Source file '" + name + "' not found."));
            (sourceMap.sourceContents || (sourceMap.sourceContents = []))[index] = text;
          });
          stats.writeTime += measure(() => fs.writeFileSync(path.join(baseDir, path.dirname(args.binaryFile), path.basename(sourceMapURL)), JSON.stringify(sourceMap), { encoding: "utf8" }));
          ++stats.writeCount;
        } else {
          stderr.write("Cannot write source map because binary already uses stdout." + os.EOL);
        }
      }
    }

    // Write text
    if (args.textFile != null) {
      if (args.textFile.length) {
        stats.writeTime += measure(() => fs.writeFileSync(path.join(baseDir, args.textFile), module.toText(), { encoding: "utf8" }));
        ++stats.writeCount;
      } else if (!hasStdout) {
        stats.writeTime += measure(() => stdout.write(module.toText()));
        ++stats.writeCount;
        hasStdout = true;
      }
    }

    // Write asm.js
    if (args.asmjsFile != null && args.asmjsFile.length) {
      if (args.asmjsFile.length) {
        stats.writeTime += measure(() => fs.writeFileSync(path.join(baseDir, args.asmjsFile), module.toAsmjs(), { encoding: "utf8" }));
        ++stats.writeCount;
      } else if (!hasStdout) {
        stats.writeTime += measure(() => stdout.write(Buffer.from(module.toBinary().output)));
        ++stats.writeCount;
        hasStdout = true;
      }
    }
  }

  module.dispose();
  return callback(null);
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

function checkDiagnostics(parser, stderr) {
  var diagnostic;
  var hasErrors = false;
  while ((diagnostic = assemblyscript.nextDiagnostic(parser)) != null) {
    stderr.write(assemblyscript.formatDiagnostic(diagnostic, stderr.isTTY, true) + os.EOL + os.EOL);
    if (assemblyscript.isError(diagnostic)) hasErrors = true;
  }
  return hasErrors;
}

exports.checkDiagnostics = checkDiagnostics;

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

exports.createStats = createStats;

function measure(fn) {
  const start = process.hrtime();
  fn();
  const times = process.hrtime(start);
  return times[0] * 1e9 + times[1];
}

exports.measure = measure;

function printStats(stats, output) {
  (output || process.stdout).write([
    "I/O Read  : " + (stats.readTime     ? (stats.readTime     / 1e6).toFixed(3) + " ms (" + stats.readCount + " files)" : "N/A"),
    "I/O Write : " + (stats.writeTime    ? (stats.writeTime    / 1e6).toFixed(3) + " ms (" + stats.writeCount + " files)" : "N/A"),
    "Parse     : " + (stats.parseTime    ? (stats.parseTime    / 1e6).toFixed(3) + " ms" : "N/A"),
    "Compile   : " + (stats.compileTime  ? (stats.compileTime  / 1e6).toFixed(3) + " ms" : "N/A"),
    "Validate  : " + (stats.validateTime ? (stats.validateTime / 1e6).toFixed(3) + " ms" : "N/A"),
    "Optimize  : " + (stats.optimizeTime ? (stats.optimizeTime / 1e6).toFixed(3) + " ms" : "N/A")
  ].join(os.EOL) + os.EOL);
}

exports.printStats = printStats;
