const path = require("path");
const fs = require("fs");
const os = require("os");

// Use distribution files if present, otherwise run the sources directly
var assemblyscript, isDev;
try {
  assemblyscript = require("../dist/assemblyscript.js");
  isDev = false;
  try { require("source-map-support").install(); } catch (e) {} // optional
} catch (e) {
  try {
    require("ts-node").register({ project: require("path").join(__dirname, "..", "src") });
    require("../src/glue/js");
    assemblyscript = require("../src");
    isDev = true;
  } catch (e) {
    assemblyscript = require("./assemblyscript"); // last resort: browser bundle under node
    isDev = false;
  }
}

// Common constants

const VERSION = typeof BUNDLE_VERSION === "string" ? BUNDLE_VERSION : require("../package.json").version + (isDev ? "-dev" : "");
const OPTIONS = require("./asc.json");
const SOURCEMAP_ROOT = "assemblyscript:///";
const LIBRARY_PREFIX = assemblyscript.LIBRARY_PREFIX;
const DEFAULT_OPTIMIZE_LEVEL = 2;
const DEFAULT_SHRINK_LEVEL = 1;
const LIBRARY = typeof BUNDLE_LIBRARY !== "undefined" ? BUNDLE_LIBRARY : {};

exports.VERSION = VERSION;

function main(argv, options, callback) {
  if (typeof options === "function") {
    callback = options;
    options = {};
  } else if (!options)
    options = {};

  const stdout = options.stdout || process.stdout;
  const stderr = options.stderr || process.stderr;
  const readFile = options.readFile || readFileNode;
  const writeFile = options.writeFile || writeFileNode;
  const listFiles = options.listFiles || listFilesNode;
  const stats = options.stats || createStats();

  // All of the above must be specified in browser environments
  if (!stdout) throw Error("'options.stdout' must be specified");
  if (!stderr) throw Error("'options.stderr' must be specified");
  if (!fs.readFileSync) {
    if (readFile === readFileNode) throw Error("'options.readFile' must be specified");
    if (writeFile === writeFileNode) throw Error("'options.writeFile' must be specified");
    if (listFiles === listFilesNode) throw Error("'options.listFiles' must be specified");
  }

  const args = parseArguments(argv);
  const indent = 24;

  // Use default callback if none is provided
  if (!callback) callback = function defaultCallback(err) {
    var code = 0;
    if (err) {
      stderr.write(err.stack + os.EOL);
      code = 1;
    }
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
          for (let i = 0; i < indent; ++i)
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
  const stdLibDir = path.join(__dirname, "..", "std", "assembly");
  const libDirs = args.noLib ? [] : [ stdLibDir ];

  // Include custom library components (with or without stdlib)
  if (args.lib) {
    if (typeof args.lib === "string")
      args.lib = args.lib.split(",");
    Array.prototype.push.apply(libDirs, args.lib.map(trim));
  }

  // Begin parsing
  var parser = null;

  // Include entry files
  for (let i = 0, k = args._.length; i < k; ++i) {
    const filename = args._[i];

    let sourcePath = filename.replace(/\\/g, "/").replace(/(\.ts|\/)$/, "");

    // Try entryPath.ts, then entryPath/index.ts
    let sourceText = readFile(path.join(baseDir, sourcePath) + ".ts");
    if (sourceText === null) {
      sourceText = readFile(path.join(baseDir, sourcePath, "index.ts"));
      if (sourceText === null)
        return callback(Error("Entry file '" + sourcePath + ".ts' not found."));
      else
        sourcePath += "/index.ts";
    } else
      sourcePath += ".ts";

    stats.parseCount++;
    stats.parseTime += measure(() => parser = assemblyscript.parseFile(sourceText, sourcePath, parser, true));

    while ((sourcePath = parser.nextFile()) != null) {
      let found = false;

      // Load library file if explicitly requested
      if (sourcePath.startsWith(LIBRARY_PREFIX)) {
        for (let i = 0, k = libDirs.length; i < k; ++i) {
          if (LIBRARY.hasOwnProperty(sourcePath))
            sourceText = LIBRARY[sourcePath];
          else {
            sourceText = readFile(path.join(libDirs[i], sourcePath.substring(LIBRARY_PREFIX.length) + ".ts"));
            if (sourceText !== null) {
              sourcePath += ".ts";
              break;
            }
          }
        }

      // Otherwise try nextFile.ts, nextFile/index.ts, (lib)/nextFile.ts
      } else {
        sourceText = readFile(path.join(baseDir, sourcePath + ".ts"));
        if (sourceText === null) {
          sourceText = readFile(path.join(baseDir, sourcePath, "index.ts"));
          if (sourceText === null) {
            for (let i = 0, k = libDirs.length; i < k; ++i) {
              if (LIBRARY.hasOwnProperty(LIBRARY_PREFIX + sourcePath))
                sourceText = LIBRARY[LIBRARY_PREFIX + sourcePath];
              else {
                sourceText = readFile(path.join(libDirs[i], sourcePath + ".ts"));
                if (sourceText !== null) {
                  sourcePath = LIBRARY_PREFIX + sourcePath + ".ts";
                  break;
                }
              }
            }
            if (sourceText === null)
              return callback(Error("Import file '" + sourcePath + ".ts' not found."));
          } else
            sourcePath += "/index.ts";
        } else
          sourcePath += ".ts";
      }
      stats.parseCount++;
      stats.parseTime += measure(() => assemblyscript.parseFile(sourceText, sourcePath, parser));
    }
    if (checkDiagnostics(parser, stderr))
      return callback(Error("Parse error"));
  }

  // Include (other) library components
  var hasBundledLibrary = false;
  if (!args.noLib)
    Object.keys(LIBRARY).forEach(libPath => {
      if (libPath.lastIndexOf("/") >= LIBRARY_PREFIX.length) return;
      stats.parseCount++;
      stats.parseTime += measure(() => { parser = assemblyscript.parseFile(LIBRARY[libPath], libPath + ".ts", parser, false); });
      hasBundledLibrary = true;
    });
  for (let i = 0, k = libDirs.length; i < k; ++i) {
    if (i === 0 && hasBundledLibrary) continue;
    let libDir = libDirs[i];
    let libFiles = listFiles(libDir);
    for (let j = 0, l = libFiles.length; j < l; ++j) {
      let libPath = libFiles[j];
      let libText = readFile(path.join(libDir, libPath));
      if (libText === null)
        return callback(Error("Library file '" + libPath + "' could not be read."));
      stats.parseCount++;
      stats.parseTime += measure(() => { parser = assemblyscript.parseFile(libText, LIBRARY_PREFIX + libPath, parser, false); });
    }
  }

  // Begin compilation
  const compilerOptions = assemblyscript.createOptions();
  assemblyscript.setTarget(compilerOptions, 0);
  assemblyscript.setNoTreeShaking(compilerOptions, !!args.noTreeShaking);
  assemblyscript.setNoAssert(compilerOptions, !!args.noAssert);
  assemblyscript.setNoMemory(compilerOptions, !!args.noMemory);
  assemblyscript.setSourceMap(compilerOptions, args.sourceMap != null);

  var module;
  stats.compileCount++;
  try {
    stats.compileTime += measure(() => module = assemblyscript.compile(parser, compilerOptions));
  } catch (e) {
    return callback(e);
  }
  if (checkDiagnostics(parser, stderr)) {
    if (module) module.dispose();
    return callback(Error("Compile error"));
  }

  // Validate the module if requested
  if (args.validate) {
    stats.validateCount++;
    stats.validateTime += measure(() => {
      if (!module.validate()) {
        module.dispose();
        return callback(Error("Validate error"));
      }
    });
  }

  // Set Binaryen-specific options
  if (args.trapMode === "clamp") {
    stats.optimizeCount++;
    stats.optimizeTime += measure(() => module.runPasses([ "trap-mode-clamp" ]));
  } else if (args.trapMode === "js") {
    stats.optimizeCount++;
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
  if (optimizeLevel >= 0) {
    stats.optimizeCount++;
    stats.optimizeTime += measure(() => module.optimize());
  }

  // Run additional passes if requested
  if (runPasses.length) {
    stats.optimizeCount++;
    stats.optimizeTime += measure(() => module.runPasses(runPasses.map(pass => pass.trim())));
  }

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
      stats.emitCount++;
      stats.emitTime += measure(() => binary = module.toBinary(sourceMapURL));

      if (args.binaryFile.length) {
        writeFile(path.join(baseDir, args.binaryFile), binary.output);
      } else {
        writeStdout(binary.output);
        hasStdout = true;
      }

      // Post-process source map
      if (binary.sourceMap != null) {
        if (args.binaryFile.length) {
          let sourceMap = JSON.parse(binary.sourceMap);
          sourceMap.sourceRoot = SOURCEMAP_ROOT;
          sourceMap.sources.forEach((name, index) => {
            let text = null;
            if (name.startsWith(LIBRARY_PREFIX)) {
              for (let i = 0, k = libDirs.length; i < k; ++i) {
                text = readFile(path.join(libDirs[i], name.substring(LIBRARY_PREFIX.length)));
                if (text !== null) break;
              }
            } else
              text = readFile(path.join(baseDir, name));
            if (text === null)
              return callback(Error("Source file '" + name + "' not found."));
            (sourceMap.sourceContents || (sourceMap.sourceContents = []))[index] = text;
          });
          writeFile(path.join(baseDir, path.dirname(args.binaryFile), path.basename(sourceMapURL)), JSON.stringify(sourceMap));
        } else {
          stderr.write("Cannot write source map because binary already occupies stdout." + os.EOL);
        }
      }
    }

    // Write text
    if (args.textFile != null || (args.binaryFile == null && args.asmjsFile == null)) {
      let text;
      if (args.textFile && args.textFile.length) {
        stats.emitCount++;
        stats.emitTime += measure(() => text = module.toText());
        writeFile(path.join(baseDir, args.textFile), text);
      } else if (!hasStdout) {
        stats.emitCount++;
        stats.emitTime += measure(() => text = module.toText());
        writeStdout(text);
        hasStdout = true;
      }
    }

    // Write asm.js
    if (args.asmjsFile != null && args.asmjsFile.length) {
      let asm;
      if (args.asmjsFile.length) {
        stats.emitCount++;
        stats.emitTime += measure(() => asm = module.toAsmjs());
        writeFile(path.join(baseDir, args.asmjsFile), asm);
      } else if (!hasStdout) {
        stats.emitCount++;
        stats.emitTime += measure(() => asm = module.toAsmjs());
        writeStdout(asm);
        hasStdout = true;
      }
    }
  }

  module.dispose();
  if (args.measure)
    printStats(stats, stderr);
  return callback(null);

  function readFileNode(filename) {
    try {
      var text;
      stats.readCount++;
      stats.readTime += measure(() => { text = fs.readFileSync(filename, { encoding: "utf8" }); });
      return text;
    } catch (e) {
      return null;
    }
  }

  function writeFileNode(filename, contents) {
    try {
      stats.writeCount++;
      stats.writeTime += measure(() => fs.writeFileSync(filename, contents, typeof contents === "string" ? { encoding: "utf8" } : undefined));
      return true;
    } catch (e) {
      return false;
    }
  }

  function listFilesNode(dirname) {
    var files;
    try {
      stats.readTime += measure(() => { files = require("glob").sync("*.ts", { cwd: dirname }) });
      return files;
    } catch (e) {
      return [];
    }
  }

  function writeStdout(contents) {
    if (!writeStdout.used) {
      stats.writeCount++;
      writeStdout.used = true;
    }
    stats.writeTime += measure(() => stdout.write(contents, typeof contents === "string" ? { encoding: "utf8" } : undefined));
  }
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
    parseCount: 0,
    compileTime: 0,
    compileCount: 0,
    emitTime: 0,
    emitCount: 0,
    validateTime: 0,
    validateCount: 0,
    optimizeTime: 0,
    optimizeCount: 0
  };
}

exports.createStats = createStats;

if (!process.hrtime)
  process.hrtime = require("browser-process-hrtime");

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
    "Parse     : " + (stats.parseTime    ? (stats.parseTime    / 1e6).toFixed(3) + " ms (" + stats.parseCount + " times)" : "N/A"),
    "Compile   : " + (stats.compileTime  ? (stats.compileTime  / 1e6).toFixed(3) + " ms (" + stats.compileCount + " times)" : "N/A"),
    "Emit      : " + (stats.emitTime     ? (stats.emitTime     / 1e6).toFixed(3) + " ms (" + stats.emitCount + " times)" : "N/A"),
    "Validate  : " + (stats.validateTime ? (stats.validateTime / 1e6).toFixed(3) + " ms (" + stats.validateCount + " times)" : "N/A"),
    "Optimize  : " + (stats.optimizeTime ? (stats.optimizeTime / 1e6).toFixed(3) + " ms (" + stats.optimizeCount + " times)" : "N/A")
  ].join(os.EOL) + os.EOL);
}

exports.printStats = printStats;

function createMemoryStream(fn) {
  var stream = [];
  stream.write = function(chunk) {
    if (typeof chunk === "string") {
      this.push(Buffer.from(chunk, "utf8"));
    } else {
      this.push(chunk);
    }
    if (fn) fn(chunk);
  };
  stream.toBuffer = function() {
    return Buffer.concat(this);
  };
  stream.toString = function() {
    return this.toBuffer().toString("utf8");
  };
  return stream;
}

exports.createMemoryStream = createMemoryStream;
