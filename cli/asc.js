/**
 * Compiler frontend for node.js
 *
 * Uses the low-level API exported from src/index.ts so it works with the compiler compiled to
 * JavaScript as well as the compiler compiled to WebAssembly (eventually). Runs the sources
 * directly through ts-node if distribution files are not present (indicated by a `-dev` version).
 *
 * Can also be packaged as a bundle suitable for in-browser use with the standard library injected
 * in the build step. See dist/asc.js for the bundle and webpack.config.js for building details.
 *
 * @module cli/asc
 */

// Use "." instead of "/" as cwd in browsers
if (process.browser) process.cwd = function() { return "."; };

const fs = require("fs");
const path = require("path");
const utf8 = require("@protobufjs/utf8");
const colorsUtil = require("./util/colors");
const optionsUtil = require("./util/options");
const mkdirp = require("./util/mkdirp");
const EOL = process.platform === "win32" ? "\r\n" : "\n";

// Emscripten adds an `uncaughtException` listener to Binaryen that results in an additional
// useless code fragment on top of an actual error. suppress this:
if (process.removeAllListeners) process.removeAllListeners("uncaughtException");

// Use distribution files if present, otherwise run the sources directly
var assemblyscript, isDev = false;
(() => {
  try { // `asc` on the command line
    assemblyscript = require("../dist/assemblyscript.js");
  } catch (e) {
    try { // `asc` on the command line without dist files
      require("ts-node").register({ project: path.join(__dirname, "..", "src", "tsconfig.json") });
      require("../src/glue/js");
      assemblyscript = require("../src");
      isDev = true;
    } catch (e_ts) {
      try { // `require("dist/asc.js")` in explicit browser tests
        assemblyscript = eval("require('./assemblyscript')");
      } catch (e) {
        // combine both errors that lead us here
        e.stack = e_ts.stack + "\n---\n" + e.stack;
        throw e;
      }
    }
  }
})();

/** Whether this is a webpack bundle or not. */
exports.isBundle = typeof BUNDLE_VERSION === "string";

/** Whether asc runs the sources directly or not. */
exports.isDev = isDev;

/** AssemblyScript version. */
exports.version = exports.isBundle ? BUNDLE_VERSION : require("../package.json").version;

/** Available CLI options. */
exports.options = require("./asc.json");

/** Common root used in source maps. */
exports.sourceMapRoot = "assemblyscript:///";

/** Prefix used for library files. */
exports.libraryPrefix = assemblyscript.LIBRARY_PREFIX;

/** Default Binaryen optimization level. */
exports.defaultOptimizeLevel = 2;

/** Default Binaryen shrink level. */
exports.defaultShrinkLevel = 1;

/** Bundled library files. */
exports.libraryFiles = exports.isBundle ? BUNDLE_LIBRARY : (() => { // set up if not a bundle
  const libDir = path.join(__dirname, "..", "std", "assembly");
  const libFiles = require("glob").sync("**/!(*.d).ts", { cwd: libDir });
  const bundled = {};
  libFiles.forEach(file => bundled[file.replace(/\.ts$/, "")] = fs.readFileSync(path.join(libDir, file), "utf8" ));
  return bundled;
})();

/** Bundled definition files. */
exports.definitionFiles = exports.isBundle ? BUNDLE_DEFINITIONS : (() => { // set up if not a bundle
  const stdDir = path.join(__dirname, "..", "std");
  return {
    "assembly": fs.readFileSync(path.join(stdDir, "assembly", "index.d.ts"), "utf8"),
    "portable": fs.readFileSync(path.join(stdDir, "portable", "index.d.ts"), "utf8")
  };
})();

/** Convenience function that parses and compiles source strings directly. */
exports.compileString = (sources, options) => {
  if (typeof sources === "string") sources = { "input.ts": sources };
  const output = Object.create({
    stdout: createMemoryStream(),
    stderr: createMemoryStream()
  });
  var argv = [
    "--binaryFile", "binary",
    "--textFile", "text",
  ];
  Object.keys(options || {}).forEach(key => {
    var val = options[key];
    if (Array.isArray(val)) val.forEach(val => argv.push("--" + key, String(val)));
    else argv.push("--" + key, String(val));
  });
  exports.main(argv.concat(Object.keys(sources)), {
    stdout: output.stdout,
    stderr: output.stderr,
    readFile: name => sources.hasOwnProperty(name) ? sources[name] : null,
    writeFile: (name, contents) => output[name] = contents,
    listFiles: () => []
  });
  return output;
}

/** Runs the command line utility using the specified arguments array. */
exports.main = function main(argv, options, callback) {
  if (typeof options === "function") {
    callback = options;
    options = {};
  } else if (!options) {
    options = {};
  }

  const stdout = options.stdout || process.stdout;
  const stderr = options.stderr || process.stderr;
  const readFile = options.readFile || readFileNode;
  const writeFile = options.writeFile || writeFileNode;
  const listFiles = options.listFiles || listFilesNode;
  const stats = options.stats || createStats();

  // Output must be specified if not present in the environment
  if (!stdout) throw Error("'options.stdout' must be specified");
  if (!stderr) throw Error("'options.stderr' must be specified");

  const opts = optionsUtil.parse(argv, exports.options);
  const args = opts.options;
  argv = opts.arguments;
  if (args.noColors) {
    colorsUtil.stdout.supported =
    colorsUtil.stderr.supported = false;
  } else {
    colorsUtil.stdout = colorsUtil.from(stdout);
    colorsUtil.stderr = colorsUtil.from(stderr);
  }

  // Check for unknown arguments
  if (opts.unknown.length) {
    opts.unknown.forEach(arg => {
      stderr.write(colorsUtil.stderr.yellow("WARN: ") + "Unknown option '" + arg + "'" + EOL);
    });
  }

  // Check for trailing arguments
  if (opts.trailing.length) {
    stderr.write(colorsUtil.stderr.yellow("WARN: ") + "Unsupported trailing arguments: " + opts.trailing.join(" ") + EOL);
  }

  // Use default callback if none is provided
  if (!callback) callback = function defaultCallback(err) {
    var code = 0;
    if (err) {
      stderr.write(colorsUtil.stderr.red("ERROR: ") + err.stack.replace(/^ERROR: /i, "") + EOL);
      code = 1;
    }
    return code;
  };

  // Just print the version if requested
  if (args.version) {
    stdout.write("Version " + exports.version + (isDev ? "-dev" : "") + EOL);
    return callback(null);
  }
  // Print the help message if requested or no source files are provided
  if (args.help || !argv.length) {
    var out = args.help ? stdout : stderr;
    var color = args.help ? colorsUtil.stdout : colorsUtil.stderr;
    out.write([
      color.white("SYNTAX"),
      "  " + color.cyan("asc") + " [entryFile ...] [options]",
      "",
      color.white("EXAMPLES"),
      "  " + color.cyan("asc") + " hello.ts",
      "  " + color.cyan("asc") + " hello.ts -b hello.wasm -t hello.wat",
      "  " + color.cyan("asc") + " hello1.ts hello2.ts -b -O > hello.wasm",
      "",
      color.white("OPTIONS"),
    ].concat(
      optionsUtil.help(exports.options, 24, EOL)
    ).join(EOL) + EOL);
    return callback(null);
  }

  // I/O must be specified if not present in the environment
  if (!fs.readFileSync) {
    if (readFile === readFileNode) throw Error("'options.readFile' must be specified");
    if (writeFile === writeFileNode) throw Error("'options.writeFile' must be specified");
    if (listFiles === listFilesNode) throw Error("'options.listFiles' must be specified");
  }

  // Set up base directory
  const baseDir = args.baseDir ? path.resolve(args.baseDir) : ".";

  // Set up transforms
  const transforms = [];
  if (args.transform) {
    args.transform.forEach(transform =>
      transforms.push(
        require(
          path.isAbsolute(transform = transform.trim())
            ? transform
            : path.join(process.cwd(), transform)
        )
      )
    );
  }
  function applyTransform(name, ...args) {
    transforms.forEach(transform => {
      if (typeof transform[name] === "function") transform[name](...args);
    });
  }

  // Begin parsing
  var parser = null;

  // Include library files
  if (!args.noLib) {
    Object.keys(exports.libraryFiles).forEach(libPath => {
      if (libPath.indexOf("/") >= 0) return; // in sub-directory: imported on demand
      stats.parseCount++;
      stats.parseTime += measure(() => {
        parser = assemblyscript.parseFile(
          exports.libraryFiles[libPath],
          exports.libraryPrefix + libPath + ".ts",
          false,
          parser
        );
      });
    });
  } else { // always include builtins
    stats.parseCount++;
    stats.parseTime += measure(() => {
      parser = assemblyscript.parseFile(
        exports.libraryFiles["builtins"],
        exports.libraryPrefix + "builtins.ts",
        false,
        parser
      );
    });
  }
  const customLibDirs = [];
  if (args.lib) {
    let lib = args.lib;
    if (typeof lib === "string") lib = lib.split(",");
    Array.prototype.push.apply(customLibDirs, lib.map(lib => lib.trim()));
    for (let i = 0, k = customLibDirs.length; i < k; ++i) { // custom
      let libDir = customLibDirs[i];
      let libFiles;
      if (libDir.endsWith(".ts")) {
        libFiles = [ path.basename(libDir) ];
        libDir = path.dirname(libDir);
      } else {
        libFiles = listFiles(libDir);
      }
      for (let j = 0, l = libFiles.length; j < l; ++j) {
        let libPath = libFiles[j];
        let libText = readFile(libPath, libDir);
        if (libText === null) return callback(Error("Library file '" + libPath + "' not found."));
        stats.parseCount++;
        stats.parseTime += measure(() => {
          parser = assemblyscript.parseFile(
            libText,
            exports.libraryPrefix + libPath,
            false,
            parser
          );
        });
      }
    }
  }

  // Parses the backlog of imported files after including entry files
  function parseBacklog() {
    var sourcePath, sourceText;
    while ((sourcePath = parser.nextFile()) != null) {

      // Load library file if explicitly requested
      if (sourcePath.startsWith(exports.libraryPrefix)) {
        const plainName = sourcePath.substring(exports.libraryPrefix.length);
        const indexName = sourcePath.substring(exports.libraryPrefix.length) + "/index";
        if (exports.libraryFiles.hasOwnProperty(plainName)) {
          sourceText = exports.libraryFiles[plainName];
          sourcePath = exports.libraryPrefix + plainName + ".ts";
        } else if (exports.libraryFiles.hasOwnProperty(indexName)) {
          sourceText = exports.libraryFiles[indexName];
          sourcePath = exports.libraryPrefix + indexName + ".ts";
        } else {
          for (let i = 0, k = customLibDirs.length; i < k; ++i) {
            sourceText = readFile(plainName + ".ts", customLibDirs[i]);
            if (sourceText !== null) {
              sourcePath = exports.libraryPrefix + plainName + ".ts";
              break;
            } else {
              sourceText = readFile(indexName + ".ts", customLibDirs[i]);
              if (sourceText !== null) {
                sourcePath = exports.libraryPrefix + indexName + ".ts";
                break;
              }
            }
          }
        }

      // Otherwise try nextFile.ts, nextFile/index.ts, ~lib/nextFile.ts, ~lib/nextFile/index.ts
      } else {
        const plainName = sourcePath;
        const indexName = sourcePath + "/index";
        sourceText = readFile(plainName + ".ts", baseDir);
        if (sourceText !== null) {
          sourcePath = plainName + ".ts";
        } else {
          sourceText = readFile(indexName + ".ts", baseDir);
          if (sourceText !== null) {
            sourcePath = indexName + ".ts";
          } else if (!plainName.startsWith(".")) {
            if (exports.libraryFiles.hasOwnProperty(plainName)) {
              sourceText = exports.libraryFiles[plainName];
              sourcePath = exports.libraryPrefix + plainName + ".ts";
            } else if (exports.libraryFiles.hasOwnProperty(indexName)) {
              sourceText = exports.libraryFiles[indexName];
              sourcePath = exports.libraryPrefix + indexName + ".ts";
            } else {
              for (let i = 0, k = customLibDirs.length; i < k; ++i) {
                const dir = customLibDirs[i];
                sourceText = readFile(plainName + ".ts", customLibDirs[i]);
                if (sourceText !== null) {
                  sourcePath = exports.libraryPrefix + plainName + ".ts";
                  break;
                } else {
                  sourceText = readFile(indexName + ".ts", customLibDirs[i]);
                  if (sourceText !== null) {
                    sourcePath = exports.libraryPrefix + indexName + ".ts";
                    break;
                  }
                }
              }
            }
          }
        }
      }
      if (sourceText == null) {
        return callback(Error("Import file '" + sourcePath + ".ts' not found."));
      }
      stats.parseCount++;
      stats.parseTime += measure(() => {
        assemblyscript.parseFile(sourceText, sourcePath, false, parser);
      });
    }
    if (checkDiagnostics(parser, stderr)) {
      return callback(Error("Parse error"));
    }
  }

  // Include entry files
  for (let i = 0, k = argv.length; i < k; ++i) {
    const filename = argv[i];

    let sourcePath = String(filename).replace(/\\/g, "/").replace(/(\.ts|\/)$/, "");

    // Try entryPath.ts, then entryPath/index.ts
    let sourceText = readFile(sourcePath + ".ts", baseDir);
    if (sourceText === null) {
      sourceText = readFile(sourcePath + "/index.ts", baseDir);
      if (sourceText === null) {
        return callback(Error("Entry file '" + sourcePath + ".ts' not found."));
      } else {
        sourcePath += "/index.ts";
      }
    } else {
      sourcePath += ".ts";
    }

    stats.parseCount++;
    stats.parseTime += measure(() => {
      parser = assemblyscript.parseFile(sourceText, sourcePath, true, parser);
    });
    let code = parseBacklog();
    if (code) return code;
  }

  applyTransform("afterParse", parser);
  {
    let code = parseBacklog();
    if (code) return code;
  }

  // Finish parsing
  const program = assemblyscript.finishParsing(parser);

  // Set up optimization levels
  var optimizeLevel = 0;
  var shrinkLevel = 0;
  if (args.optimize) {
    optimizeLevel = exports.defaultOptimizeLevel;
    shrinkLevel = exports.defaultShrinkLevel;
  }
  if (typeof args.optimizeLevel === "number") {
    optimizeLevel = args.optimizeLevel;
  }
  if (typeof args.shrinkLevel === "number") {
    shrinkLevel = args.shrinkLevel;
  }
  optimizeLevel = Math.min(Math.max(optimizeLevel, 0), 3);
  shrinkLevel = Math.min(Math.max(shrinkLevel, 0), 2);

  // Begin compilation
  const compilerOptions = assemblyscript.createOptions();
  assemblyscript.setTarget(compilerOptions, 0);
  assemblyscript.setNoAssert(compilerOptions, args.noAssert);
  assemblyscript.setImportMemory(compilerOptions, args.importMemory);
  assemblyscript.setSharedMemory(compilerOptions, args.sharedMemory);
  assemblyscript.setImportTable(compilerOptions, args.importTable);
  assemblyscript.setMemoryBase(compilerOptions, args.memoryBase >>> 0);
  assemblyscript.setSourceMap(compilerOptions, args.sourceMap != null);
  assemblyscript.setOptimizeLevelHints(compilerOptions, optimizeLevel, shrinkLevel);

  if (!args.noLib) {
    // Initialize default aliases
    assemblyscript.setGlobalAlias(compilerOptions, "Math", "NativeMath");
    assemblyscript.setGlobalAlias(compilerOptions, "Mathf", "NativeMathf");
    assemblyscript.setGlobalAlias(compilerOptions, "abort", "~lib/env/abort");
    assemblyscript.setGlobalAlias(compilerOptions, "trace", "~lib/env/trace");
  }

  // Add or override aliases if specified
  if (args.use) {
    let aliases = args.use;
    for (let i = 0, k = aliases.length; i < k; ++i) {
      let part = aliases[i];
      let p = part.indexOf("=");
      if (p < 0) return callback(Error("Global alias '" + part + "' is invalid."));
      let name = part.substring(0, p).trim();
      let alias = part.substring(p + 1).trim();
      if (!name.length) return callback(Error("Global alias '" + part + "' is invalid."));
      assemblyscript.setGlobalAlias(compilerOptions, name, alias);
    }
  }

  // Enable additional features if specified
  var features = args.enable;
  if (features != null) {
    if (typeof features === "string") features = features.split(",");
    for (let i = 0, k = features.length; i < k; ++i) {
      let name = features[i].trim();
      let flag = assemblyscript["FEATURE_" + name.replace(/\-/g, "_").toUpperCase()];
      if (!flag) return callback(Error("Feature '" + name + "' is unknown."));
      assemblyscript.enableFeature(compilerOptions, flag);
    }
  }

  var module;
  stats.compileCount++;
  (() => {
    try {
      stats.compileTime += measure(() => {
        module = assemblyscript.compileProgram(program, compilerOptions);
      });
    } catch (e) {
      return callback(e);
    }
  })();
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
    stats.optimizeTime += measure(() => {
      module.runPasses([ "trap-mode-clamp" ]);
    });
  } else if (args.trapMode === "js") {
    stats.optimizeCount++;
    stats.optimizeTime += measure(() => {
      module.runPasses([ "trap-mode-js" ]);
    });
  } else if (args.trapMode !== "allow") {
    module.dispose();
    return callback(Error("Unsupported trap mode"));
  }

  // Implicitly run costly non-LLVM optimizations on -O3 or -Oz
  // see: https://github.com/WebAssembly/binaryen/pull/1596
  if (optimizeLevel >= 3 || shrinkLevel >= 2) optimizeLevel = 4;

  module.setOptimizeLevel(optimizeLevel);
  module.setShrinkLevel(shrinkLevel);
  module.setDebugInfo(args.debug);

  var runPasses = [];
  if (args.runPasses) {
    if (typeof args.runPasses === "string") {
      args.runPasses = args.runPasses.split(",");
    }
    if (args.runPasses.length) {
      args.runPasses.forEach(pass => {
        if (runPasses.indexOf(pass) < 0)
          runPasses.push(pass);
      });
    }
  }

  // Optimize the module if requested
  if (optimizeLevel > 0 || shrinkLevel > 0) {
    stats.optimizeCount++;
    stats.optimizeTime += measure(() => {
      module.optimize();
    });
  }

  // Run additional passes if requested
  if (runPasses.length) {
    stats.optimizeCount++;
    stats.optimizeTime += measure(() => {
      module.runPasses(runPasses.map(pass => pass.trim()));
    });
  }

  // Prepare output
  if (!args.noEmit) {
    let hasStdout = false;
    let hasOutput = false;

    if (args.outFile != null) {
      if (/\.was?t$/.test(args.outFile) && args.textFile == null) {
        args.textFile = args.outFile;
      } else if (/\.js$/.test(args.outFile) && args.asmjsFile == null) {
        args.asmjsFile = args.outFile;
      } else if (args.binaryFile == null) {
        args.binaryFile = args.outFile;
      }
    }

    // Write binary
    if (args.binaryFile != null) {
      let sourceMapURL = args.sourceMap != null
        ? args.sourceMap.length
          ? args.sourceMap
          : path.basename(args.binaryFile) + ".map"
        : null;

      let wasm;
      stats.emitCount++;
      stats.emitTime += measure(() => {
        wasm = module.toBinary(sourceMapURL)
      });

      if (args.binaryFile.length) {
        writeFile(args.binaryFile, wasm.output, baseDir);
      } else {
        writeStdout(wasm.output);
        hasStdout = true;
      }
      hasOutput = true;

      // Post-process source map
      if (wasm.sourceMap != null) {
        if (args.binaryFile.length) {
          let sourceMap = JSON.parse(wasm.sourceMap);
          sourceMap.sourceRoot = exports.sourceMapRoot;
          sourceMap.sources.forEach((name, index) => {
            let text = null;
            if (name.startsWith(exports.libraryPrefix)) {
              let stdName = name.substring(exports.libraryPrefix.length).replace(/\.ts$/, "");
              if (exports.libraryFiles.hasOwnProperty(stdName)) {
                text = exports.libraryFiles[stdName];
              } else {
                for (let i = 0, k = customLibDirs.length; i < k; ++i) {
                  text = readFile(name.substring(exports.libraryPrefix.length), customLibDirs[i]);
                  if (text !== null) break;
                }
              }
            } else {
              text = readFile(name, baseDir);
            }
            if (text === null) {
              return callback(Error("Source file '" + name + "' not found."));
            }
            if (!sourceMap.sourceContents) sourceMap.sourceContents = [];
            sourceMap.sourceContents[index] = text;
          });
          writeFile(path.join(
            path.dirname(args.binaryFile),
            path.basename(sourceMapURL)
          ).replace(/^\.\//, ""), JSON.stringify(sourceMap), baseDir);
        } else {
          stderr.write("Skipped source map (stdout already occupied)" + EOL);
        }
      }
    }

    // Write asm.js
    if (args.asmjsFile != null) {
      let asm;
      if (args.asmjsFile.length) {
        stats.emitCount++;
        stats.emitTime += measure(() => {
          asm = module.toAsmjs();
        });
        writeFile(args.asmjsFile, asm, baseDir);
      } else if (!hasStdout) {
        stats.emitCount++;
        stats.emitTime += measure(() => {
          asm = module.toAsmjs();
        });
        writeStdout(asm);
        hasStdout = true;
      }
      hasOutput = true;
    }

    // Write WebIDL
    if (args.idlFile != null) {
      let idl;
      if (args.idlFile.length) {
        stats.emitCount++;
        stats.emitTime += measure(() => {
          idl = assemblyscript.buildIDL(program);
        });
        writeFile(args.idlFile, idl, baseDir);
      } else if (!hasStdout) {
        stats.emitCount++;
        stats.emitTime += measure(() => {
          idl = assemblyscript.buildIDL(program);
        });
        writeStdout(idl);
        hasStdout = true;
      }
      hasOutput = true;
    }

    // Write TypeScript definition
    if (args.tsdFile != null) {
      let tsd;
      if (args.tsdFile.length) {
        stats.emitCount++;
        stats.emitTime += measure(() => {
          tsd = assemblyscript.buildTSD(program);
        });
        writeFile(args.tsdFile, tsd, baseDir);
      } else if (!hasStdout) {
        stats.emitCount++;
        stats.emitTime += measure(() => {
          tsd = assemblyscript.buildTSD(program);
        });
        writeStdout(tsd);
        hasStdout = true;
      }
      hasOutput = true;
    }

    // Write text (must be last)
    if (args.textFile != null || !hasOutput) {
      let wat;
      if (args.textFile && args.textFile.length) {
        stats.emitCount++;
        stats.emitTime += measure(() => {
          wat = module.toText();
        });
        writeFile(args.textFile, wat, baseDir);
      } else if (!hasStdout) {
        stats.emitCount++;
        stats.emitTime += measure(() => {
          wat = module.toText()
        });
        writeStdout(wat);
      }
    }
  }

  module.dispose();
  if (args.measure) {
    printStats(stats, stderr);
  }
  return callback(null);

  function readFileNode(filename, baseDir) {
    try {
      let text;
      stats.readCount++;
      stats.readTime += measure(() => {
        text = fs.readFileSync(path.join(baseDir, filename), { encoding: "utf8" });
      });
      return text;
    } catch (e) {
      return null;
    }
  }

  function writeFileNode(filename, contents, baseDir) {
    try {
      stats.writeCount++;
      stats.writeTime += measure(() => {
        mkdirp(path.join(baseDir, path.dirname(filename)));
        if (typeof contents === "string") {
          fs.writeFileSync(path.join(baseDir, filename), contents, { encoding: "utf8" } );
        } else {
          fs.writeFileSync(path.join(baseDir, filename), contents);
        }
      });
      return true;
    } catch (e) {
      return false;
    }
  }

  function listFilesNode(dirname, baseDir) {
    var files;
    try {
      stats.readTime += measure(() => {
        files = fs.readdirSync(path.join(baseDir, dirname)).filter(file => /^(?!.*\.d\.ts$).*\.ts$/.test(file));
      });
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
    stats.writeTime += measure(() => {
      if (typeof contents === "string") {
        stdout.write(contents, { encoding: "utf8" });
      } else {
        stdout.write(contents);
      }
    });
  }
}

/** Checks diagnostics emitted so far for errors. */
function checkDiagnostics(emitter, stderr) {
  var diagnostic;
  var hasErrors = false;
  while ((diagnostic = assemblyscript.nextDiagnostic(emitter)) != null) {
    if (stderr) {
      stderr.write(
        assemblyscript.formatDiagnostic(diagnostic, stderr.isTTY, true) +
        EOL + EOL
      );
    }
    if (assemblyscript.isError(diagnostic)) hasErrors = true;
  }
  return hasErrors;
}

exports.checkDiagnostics = checkDiagnostics;

/** Creates an empty set of stats. */
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

if (!process.hrtime) process.hrtime = require("browser-process-hrtime");

/** Measures the execution time of the specified function.  */
function measure(fn) {
  const start = process.hrtime();
  fn();
  const times = process.hrtime(start);
  return times[0] * 1e9 + times[1];
}

exports.measure = measure;

/** Formats a high resolution time to a human readable string. */
function formatTime(time) {
  return time ? (time / 1e6).toFixed(3) + " ms" : "N/A";
}

exports.formatTime = formatTime;

/** Formats and prints out the contents of a set of stats. */
function printStats(stats, output) {
  function format(time, count) {
    return formatTime(time);
  }
  (output || process.stdout).write([
    "I/O Read  : " + format(stats.readTime, stats.readCount),
    "I/O Write : " + format(stats.writeTime, stats.writeCount),
    "Parse     : " + format(stats.parseTime, stats.parseCount),
    "Compile   : " + format(stats.compileTime, stats.compileCount),
    "Emit      : " + format(stats.emitTime, stats.emitCount),
    "Validate  : " + format(stats.validateTime, stats.validateCount),
    "Optimize  : " + format(stats.optimizeTime, stats.optimizeCount)
  ].join(EOL) + EOL);
}

exports.printStats = printStats;

var allocBuffer = typeof global !== "undefined" && global.Buffer
  ? global.Buffer.allocUnsafe || function(len) { return new global.Buffer(len); }
  : function(len) { return new Uint8Array(len) };

/** Creates a memory stream that can be used in place of stdout/stderr. */
function createMemoryStream(fn) {
  var stream = [];
  stream.write = function(chunk) {
    if (fn) fn(chunk);
    if (typeof chunk === "string") {
      let buffer = allocBuffer(utf8.length(chunk));
      utf8.write(chunk, buffer, 0);
      chunk = buffer;
    }
    this.push(chunk);
  };
  stream.reset = function() {
    stream.length = 0;
  };
  stream.toBuffer = function() {
    var offset = 0, i = 0, k = this.length;
    while (i < k) offset += this[i++].length;
    var buffer = allocBuffer(offset);
    offset = i = 0;
    while (i < k) {
      buffer.set(this[i], offset);
      offset += this[i].length;
      ++i;
    }
    return buffer;
  };
  stream.toString = function() {
    var buffer = this.toBuffer();
    return utf8.read(buffer, 0, buffer.length);
  };
  return stream;
}

exports.createMemoryStream = createMemoryStream;

/** Compatible TypeScript compiler options for syntax highlighting etc. */
exports.tscOptions = {
  alwaysStrict: true,
  noImplicitAny: true,
  noImplicitReturns: true,
  noImplicitThis: true,
  noEmitOnError: true,
  strictNullChecks: true,
  experimentalDecorators: true,
  target: "esnext",
  module: "commonjs",
  noLib: true,
  types: [],
  allowJs: false
};
