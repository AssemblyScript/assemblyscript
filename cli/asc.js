"use strict";
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
const utf8 = require("./util/utf8");
const colorsUtil = require("./util/colors");
const optionsUtil = require("./util/options");
const mkdirp = require("./util/mkdirp");
const find = require("./util/find");
const EOL = process.platform === "win32" ? "\r\n" : "\n";
const SEP = process.platform === "win32" ? "\\" : "/";
const binaryen = global.Binaryen || (global.Binaryen = require("binaryen"));

// Proxy Binaryen's ready event
Object.defineProperty(exports, "ready", {
  get: function() { return binaryen.ready; }
});

// Emscripten adds an `uncaughtException` listener to Binaryen that results in an additional
// useless code fragment on top of an actual error. suppress this:
if (process.removeAllListeners) process.removeAllListeners("uncaughtException");

// Use distribution files if present, otherwise run the sources directly
var assemblyscript, isDev = false;
try { // `asc` on the command line
  assemblyscript = require("../dist/assemblyscript.js");
} catch (e) {
  try { // `asc` on the command line without dist files
    require("ts-node").register({
      project: path.join(__dirname, "..", "src", "tsconfig.json"),
      skipIgnore: true,
      compilerOptions: { target: "ES2016" }
    });
    require("../src/glue/js");
    assemblyscript = require("../src");
    isDev = true;
  } catch (e_ts) {
    try { // `require("dist/asc.js")` in explicit browser tests
      assemblyscript = eval("require('./assemblyscript')");
    } catch (e) {
      throw Error(e_ts.stack + "\n---\n" + e.stack);
    }
  }
}

/** Whether this is a webpack bundle or not. */
exports.isBundle = typeof BUNDLE_VERSION === "string";

/** Whether asc runs the sources directly or not. */
exports.isDev = isDev;

/** AssemblyScript version. */
exports.version = exports.isBundle ? BUNDLE_VERSION : require("../package.json").version;

/** Available CLI options. */
exports.options = require("./asc.json");

/** Prefix used for library files. */
exports.libraryPrefix = assemblyscript.LIBRARY_PREFIX;

/** Default Binaryen optimization level. */
exports.defaultOptimizeLevel = 3;

/** Default Binaryen shrink level. */
exports.defaultShrinkLevel = 1;

/** Bundled library files. */
exports.libraryFiles = exports.isBundle ? BUNDLE_LIBRARY : (() => { // set up if not a bundle
  const libDir = path.join(__dirname, "..", "std", "assembly");
  const bundled = {};
  find.files(libDir, find.TS_EXCEPT_DTS)
      .forEach(file => bundled[file.replace(/\.ts$/, "")] = fs.readFileSync(path.join(libDir, file), "utf8" ));
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
    var opt = exports.options[key];
    if (opt && opt.type === "b") {
      if (val) argv.push("--" + key);
    } else {
      if (Array.isArray(val)) val.forEach(val => argv.push("--" + key, String(val)));
      else argv.push("--" + key, String(val));
    }
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

  // Set up options
  const compilerOptions = assemblyscript.newOptions();
  assemblyscript.setTarget(compilerOptions, 0);
  assemblyscript.setNoAssert(compilerOptions, args.noAssert);
  assemblyscript.setImportMemory(compilerOptions, args.importMemory);
  assemblyscript.setSharedMemory(compilerOptions, args.sharedMemory);
  assemblyscript.setImportTable(compilerOptions, args.importTable);
  assemblyscript.setExportTable(compilerOptions, args.exportTable);
  assemblyscript.setExplicitStart(compilerOptions, args.explicitStart);
  assemblyscript.setMemoryBase(compilerOptions, args.memoryBase >>> 0);
  assemblyscript.setTableBase(compilerOptions, args.tableBase >>> 0);
  assemblyscript.setSourceMap(compilerOptions, args.sourceMap != null);
  assemblyscript.setNoUnsafe(compilerOptions, args.noUnsafe);
  assemblyscript.setPedantic(compilerOptions, args.pedantic);

  // Initialize default aliases
  assemblyscript.setGlobalAlias(compilerOptions, "Math", "NativeMath");
  assemblyscript.setGlobalAlias(compilerOptions, "Mathf", "NativeMathf");
  assemblyscript.setGlobalAlias(compilerOptions, "abort", "~lib/builtins/abort");
  assemblyscript.setGlobalAlias(compilerOptions, "trace", "~lib/builtins/trace");

  // Add or override aliases if specified
  if (args.use) {
    let aliases = args.use;
    for (let i = 0, k = aliases.length; i < k; ++i) {
      let part = aliases[i];
      let p = part.indexOf("=");
      if (p < 0) return callback(Error("Global alias '" + part + "' is invalid."));
      let alias = part.substring(0, p).trim();
      let name = part.substring(p + 1).trim();
      if (!alias.length) return callback(Error("Global alias '" + part + "' is invalid."));
      assemblyscript.setGlobalAlias(compilerOptions, alias, name);
    }
  }

  // Disable default features if specified
  var features;
  if ((features = args.disable) != null) {
    if (typeof features === "string") features = features.split(",");
    for (let i = 0, k = features.length; i < k; ++i) {
      let name = features[i].trim();
      let flag = assemblyscript["FEATURE_" + name.replace(/\-/g, "_").toUpperCase()];
      if (!flag) return callback(Error("Feature '" + name + "' is unknown."));
      assemblyscript.disableFeature(compilerOptions, flag);
    }
  }

  // Enable experimental features if specified
  if ((features = args.enable) != null) {
    if (typeof features === "string") features = features.split(",");
    for (let i = 0, k = features.length; i < k; ++i) {
      let name = features[i].trim();
      let flag = assemblyscript["FEATURE_" + name.replace(/\-/g, "_").toUpperCase()];
      if (!flag) return callback(Error("Feature '" + name + "' is unknown."));
      assemblyscript.enableFeature(compilerOptions, flag);
    }
  }

  // Set up optimization levels
  var optimizeLevel = 0;
  var shrinkLevel = 0;
  if (args.optimize) {
    optimizeLevel = exports.defaultOptimizeLevel;
    shrinkLevel = exports.defaultShrinkLevel;
  }
  if (typeof args.optimizeLevel === "number") optimizeLevel = args.optimizeLevel;
  if (typeof args.shrinkLevel === "number") shrinkLevel = args.shrinkLevel;
  optimizeLevel = Math.min(Math.max(optimizeLevel, 0), 3);
  shrinkLevel = Math.min(Math.max(shrinkLevel, 0), 2);
  assemblyscript.setOptimizeLevelHints(compilerOptions, optimizeLevel, shrinkLevel);

  // Initialize the program
  const program = assemblyscript.newProgram(compilerOptions);

  // Set up transforms
  const transforms = [];
  if (args.transform) {
    let tsNodeRegistered = false;
    let transformArgs = args.transform;
    for (let i = 0, k = transformArgs.length; i < k; ++i) {
      let filename = transformArgs[i].trim();
      if (!tsNodeRegistered && filename.endsWith('.ts')) {
        require("ts-node").register({ transpileOnly: true, skipProject: true, compilerOptions: { target: "ES2016" } });
        tsNodeRegistered = true;
      }
      try {
        const classOrModule = require(require.resolve(filename, { paths: [baseDir, process.cwd()] }));
        if (typeof classOrModule === "function") {
          Object.assign(classOrModule.prototype, {
            program,
            baseDir,
            stdout,
            stderr,
            log: console.error,
            readFile,
            writeFile,
            listFiles
          });
          transforms.push(new classOrModule());
        } else {
          transforms.push(classOrModule); // legacy module
        }
      } catch (e) {
        return callback(e);
      }
    }
  }
  function applyTransform(name, ...args) {
    for (let i = 0, k = transforms.length; i < k; ++i) {
      let transform = transforms[i];
      if (typeof transform[name] === "function") {
        try {
          transform[name](...args);
        } catch (e) {
          return e;
        }
      }
    }
  }

  // Parse library files
  Object.keys(exports.libraryFiles).forEach(libPath => {
    if (libPath.indexOf("/") >= 0) return; // in sub-directory: imported on demand
    stats.parseCount++;
    stats.parseTime += measure(() => {
      assemblyscript.parse(program, exports.libraryFiles[libPath], exports.libraryPrefix + libPath + ".ts", false);
    });
  });
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
        libFiles = listFiles(libDir, baseDir) || [];
      }
      for (let j = 0, l = libFiles.length; j < l; ++j) {
        let libPath = libFiles[j];
        let libText = readFile(libPath, libDir);
        if (libText === null) return callback(Error("Library file '" + libPath + "' not found."));
        stats.parseCount++;
        exports.libraryFiles[libPath.replace(/\.ts$/, "")] = libText;
        stats.parseTime += measure(() => {
          assemblyscript.parse(program, libText, exports.libraryPrefix + libPath, false);
        });
      }
    }
  }
  args.path = args.path || [];

  // Maps package names to parent directory
  var packageMains = new Map();
  var packageBases = new Map();

  // Gets the file matching the specified source path, imported at the given dependee path
  function getFile(internalPath, dependeePath) {
    var sourceText = null; // text reported back to the compiler
    var sourcePath = null; // path reported back to the compiler

    const libraryPrefix = exports.libraryPrefix;
    const libraryFiles = exports.libraryFiles;

    // Try file.ts, file/index.ts, file.d.ts
    if (!internalPath.startsWith(libraryPrefix)) {
      if ((sourceText = readFile(sourcePath = internalPath + ".ts", baseDir)) == null) {
        if ((sourceText = readFile(sourcePath = internalPath + "/index.ts", baseDir)) == null) {
          // portable d.ts: uses the .js file next to it in JS or becomes an import in Wasm
          sourceText = readFile(sourcePath = internalPath + ".d.ts", baseDir);
        }
      }

    // Search library in this order: stdlib, custom lib dirs, paths
    } else {
      const plainName = internalPath.substring(libraryPrefix.length);
      const indexName = plainName + "/index";
      if (libraryFiles.hasOwnProperty(plainName)) {
        sourceText = libraryFiles[plainName];
        sourcePath = libraryPrefix + plainName + ".ts";
      } else if (libraryFiles.hasOwnProperty(indexName)) {
        sourceText = libraryFiles[indexName];
        sourcePath = libraryPrefix + indexName + ".ts";
      } else { // custom lib dirs
        for (const libDir of customLibDirs) {
          if ((sourceText = readFile(plainName + ".ts", libDir)) != null) {
            sourcePath = libraryPrefix + plainName + ".ts";
            break;
          } else {
            if ((sourceText = readFile(indexName + ".ts", libDir)) != null) {
              sourcePath = libraryPrefix + indexName + ".ts";
              break;
            }
          }
        }
        if (sourceText == null) { // paths
          const match = internalPath.match(/^~lib\/((?:@[^\/]+\/)?[^\/]+)(?:\/(.+))?/); // ~lib/(pkg)/(path), ~lib/(@org/pkg)/(path)
          if (match) {
            const packageName = match[1];
            const isPackageRoot = match[2] === undefined;
            const filePath = isPackageRoot ? "index" : match[2];
            const basePath = packageBases.has(dependeePath) ? packageBases.get(dependeePath) : ".";
            if (args.traceResolution) stderr.write("Looking for package '" + packageName + "' file '" + filePath + "' relative to '" + basePath + "'" + EOL);
            const absBasePath = path.isAbsolute(basePath) ? basePath : path.join(baseDir, basePath);
            const paths = [];
            for (let parts = absBasePath.split(SEP), i = parts.length, k = SEP == "/" ? 0 : 1; i >= k; --i) {
              if (parts[i - 1] !== "node_modules") paths.push(parts.slice(0, i).join(SEP) + SEP + "node_modules");
            }
            for (const currentPath of paths.concat(...args.path).map(p => path.relative(baseDir, p))) {
              if (args.traceResolution) stderr.write("  in " + path.join(currentPath, packageName) + EOL);
              let mainPath = "assembly";
              if (packageMains.has(packageName)) { // use cached
                mainPath = packageMains.get(packageName);
              } else { // evaluate package.json
                let jsonPath = path.join(currentPath, packageName, "package.json");
                let jsonText = readFile(jsonPath, baseDir);
                if (jsonText != null) {
                  try {
                    let json = JSON.parse(jsonText);
                    if (typeof json.ascMain === "string") {
                      mainPath = json.ascMain.replace(/[\/\\]index\.ts$/, "");
                      packageMains.set(packageName, mainPath);
                    }
                  } catch (e) { }
                }
              }
              const mainDir = path.join(currentPath, packageName, mainPath);
              const plainName = filePath;
              if ((sourceText = readFile(path.join(mainDir, plainName + ".ts"), baseDir)) != null) {
                sourcePath = libraryPrefix + packageName + "/" + plainName + ".ts";
                packageBases.set(sourcePath.replace(/\.ts$/, ""), path.join(currentPath, packageName));
                if (args.traceResolution) stderr.write("  -> " + path.join(mainDir, plainName + ".ts") + EOL);
                break;
              } else if (!isPackageRoot) {
                const indexName = filePath + "/index";
                if ((sourceText = readFile(path.join(mainDir, indexName + ".ts"), baseDir)) !== null) {
                  sourcePath = libraryPrefix + packageName + "/" + indexName + ".ts";
                  packageBases.set(sourcePath.replace(/\.ts$/, ""), path.join(currentPath, packageName));
                  if (args.traceResolution) stderr.write("  -> " + path.join(mainDir, indexName + ".ts") + EOL);
                  break;
                }
              }
            }
          }
        }
      }
    }
    // No such file
    if (sourceText == null) return null;
    return { sourceText, sourcePath };
  }

  // Parses the backlog of imported files after including entry files
  function parseBacklog() {
    var internalPath;
    while ((internalPath = assemblyscript.nextFile(program)) != null) {
      let file = getFile(internalPath, assemblyscript.getDependee(program, internalPath));
      if (!file) return callback(Error("Import file '" + internalPath + ".ts' not found."))
      stats.parseCount++;
      stats.parseTime += measure(() => {
        assemblyscript.parse(program, file.sourceText, file.sourcePath, false);
      });
    }
    if (checkDiagnostics(program, stderr)) return callback(Error("Parse error"));
  }

  // Include runtime template before entry files so its setup runs first
  {
    let runtimeName = String(args.runtime);
    let runtimePath = "rt/index-" + runtimeName;
    let runtimeText = exports.libraryFiles[runtimePath];
    if (runtimeText == null) {
      runtimePath = runtimeName;
      runtimeText = readFile(runtimePath + ".ts", baseDir);
      if (runtimeText == null) return callback(Error("Runtime '" + runtimeName + "' not found."));
    } else {
      runtimePath = "~lib/" + runtimePath;
    }
    stats.parseCount++;
    stats.parseTime += measure(() => {
      assemblyscript.parse(program, runtimeText, runtimePath, true);
    });
  }

  // Include entry files
  for (let i = 0, k = argv.length; i < k; ++i) {
    const filename = argv[i];

    let sourcePath = String(filename).replace(/\\/g, "/").replace(/(\.ts|\/)$/, "");
    // Setting the path to relative path
    sourcePath = path.isAbsolute(sourcePath) ? path.relative(baseDir, sourcePath) : sourcePath;

    // Try entryPath.ts, then entryPath/index.ts
    let sourceText = readFile(sourcePath + ".ts", baseDir);
    if (sourceText == null) {
      sourceText = readFile(sourcePath + "/index.ts", baseDir);
      if (sourceText == null) return callback(Error("Entry file '" + sourcePath + ".ts' not found."));
      sourcePath += "/index.ts";
    } else {
      sourcePath += ".ts";
    }

    stats.parseCount++;
    stats.parseTime += measure(() => {
      assemblyscript.parse(program, sourceText, sourcePath, true);
    });
  }

  // Parse entry files
  {
    let code = parseBacklog();
    if (code) return code;
  }

  // Call afterParse transform hook
  {
    let error = applyTransform("afterParse", program.parser);
    if (error) return callback(error);
  }

  // Parse additional files, if any
  {
    let code = parseBacklog();
    if (code) return code;
  }

  // Print files and exit if listFiles
  if (args.listFiles) {
    // FIXME: not a proper C-like API
    stderr.write(program.sources.map(s => s.normalizedPath).sort().join(EOL) + EOL);
    return callback(null);
  }

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

  var module;
  stats.compileCount++;
  try {
    stats.compileTime += measure(() => {
      module = assemblyscript.compile(program);
    });
  } catch (e) {
    return callback(e);
  }
  if (checkDiagnostics(program, stderr)) {
    if (module) module.dispose();
    return callback(Error("Compile error"));
  }

  // Call afterCompile transform hook
  {
    let error = applyTransform("afterCompile", module);
    if (error) return callback(error);
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

  const runPasses = [];
  if (args.runPasses) {
    if (typeof args.runPasses === "string") {
      args.runPasses = args.runPasses.split(",");
    }
    if (args.runPasses.length) {
      args.runPasses.forEach(pass => {
        if (runPasses.indexOf(pass = pass.trim()) < 0)
          runPasses.push(pass);
      });
    }
  }

  function doOptimize() {
    const hasARC = args.runtime == "half" || args.runtime == "full";
    const passes = [];
    function add(pass) { passes.push(pass); }

    // Optimize the module if requested
    if (optimizeLevel > 0 || shrinkLevel > 0) {
      // Binaryen's default passes with Post-AssemblyScript passes added.
      // see: Binaryen/src/pass.cpp

      // PassRunner::addDefaultGlobalOptimizationPrePasses
      add("duplicate-function-elimination");

      // PassRunner::addDefaultFunctionOptimizationPasses
      if (optimizeLevel >= 3 || shrinkLevel >= 1) {
        add("ssa-nomerge");
      }
      if (optimizeLevel >= 3) {
        add("flatten");
        add("local-cse");
      }
      if (hasARC) { // differs
        if (optimizeLevel < 3) {
          add("flatten");
        }
        add("post-assemblyscript");
      }
      add("dce");
      add("remove-unused-brs");
      add("remove-unused-names");
      add("optimize-instructions");
      if (optimizeLevel >= 2 || shrinkLevel >= 1) {
        add("pick-load-signs");
        add("simplify-globals-optimizing"); // differs
      }
      if (optimizeLevel >= 3 || shrinkLevel >= 2) {
        add("precompute-propagate");
      } else {
        add("precompute");
      }
      // this will be done later (1)
      // if (optimizeLevel >= 2 || shrinkLevel >= 2) {
      //   add("code-pushing");
      // }
      add("simplify-locals-nostructure");
      add("vacuum");
      add("reorder-locals");
      add("remove-unused-brs");
      if (optimizeLevel >= 3 || shrinkLevel >= 2) {
        add("merge-locals");
      }
      add("coalesce-locals");
      add("simplify-locals");
      add("vacuum");
      add("reorder-locals");
      add("coalesce-locals");
      add("reorder-locals");
      add("vacuum");
      if (optimizeLevel >= 3 || shrinkLevel >= 1) {
        add("code-folding");
      }
      if (optimizeLevel >= 2 || shrinkLevel >= 1) { // differs
        add("simplify-globals-optimizing");
      }
      add("merge-blocks");
      add("remove-unused-brs");
      add("remove-unused-names");
      add("merge-blocks");
      // make this later & move to (2)
      // if (optimizeLevel >= 3 || shrinkLevel >= 2) {
      //   add("precompute-propagate");
      // } else {
      //   add("precompute");
      // }
      add("optimize-instructions");
      if (optimizeLevel >= 2 || shrinkLevel >= 1) {
        add("rse");
      }
      add("vacuum");
      // PassRunner::addDefaultGlobalOptimizationPostPasses
      if (optimizeLevel >= 2 || shrinkLevel >= 1) {
        add("dae-optimizing");
      }
      if (optimizeLevel >= 2 || shrinkLevel >= 2) {
        add("inlining-optimizing");
      }
      // "duplicate-function-elimination" will better done later
      // add("duplicate-function-elimination");
      add("duplicate-import-elimination");
      if (optimizeLevel >= 2 || shrinkLevel >= 2) {
        add("simplify-globals-optimizing");
      } else {
        add("simplify-globals");
      }
      // moved from (2)
      // it works better after globals optimizations like simplify-globals, inlining-optimizing and etc
      if (optimizeLevel >= 2 || shrinkLevel >= 1) { // differs
        add("precompute-propagate");
      } else {
        add("precompute");
      }
      // replace indirect calls with direct, reduce arity and
      // inline this calls if possible
      add("directize"); // differs
      add("dae-optimizing"); // differs
      add("inlining-optimizing"); // differs
      // ARC finalization should be done exactly after inlining for better release/retain reduction
      if (hasARC) { // differs
        add("post-assemblyscript-finalize");
      }
      if (optimizeLevel >= 2 || shrinkLevel >= 1) { // differs
        add("rse");
        // rearrange / reduce switch cases again
        add("remove-unused-brs");
        add("vacuum");

        // replace indirect calls with direct and inline if possible again.
        add("directize");
        add("inlining-optimizing");
        // move some code after early return which potentially could reduce computations
        // do this after CFG cleanup (originally it was done before)
        // moved from (1)
        add("code-pushing");

        // this quite expensive so do this only for highest opt level
        add("simplify-globals-optimizing");
        if (optimizeLevel >= 3) {
          add("simplify-locals-nostructure");
          add("vacuum");

          add("precompute-propagate");
          add("simplify-locals-nostructure");
          add("vacuum");

          add("reorder-locals");
        } else {
          add("simplify-globals-optimizing");
        }
        add("optimize-instructions");
      }
      // remove unused elements of table and pack / reduce memory
      add("duplicate-function-elimination"); // differs
      add("remove-unused-nonfunction-module-elements"); // differs
      add("memory-packing");
      add("remove-unused-module-elements"); // differs
      // It seems stack-ir unuseful for our needs.
      // if (optimizeLevel >= 3 || shrinkLevel >= 1) { // differs. was optimizeLevel >= 2
      //   add("generate-stack-ir");
      //   add("optimize-stack-ir");
      // }
    }

    // Append additional passes if requested and execute
    module.runPasses(passes.concat(runPasses));
  }

  stats.optimizeTime += measure(() => {
    stats.optimizeCount++;
    doOptimize();
    if (args.converge) {
      let last = module.toBinary();
      do {
        stats.optimizeCount++;
        doOptimize();
        let next = module.toBinary();
        if (next.output.length >= last.output.length) {
          if (next.output.length > last.output.length) {
            stderr.write("Last converge was suboptimial." + EOL);
          }
          break;
        }
        last = next;
      } while (true);
    }
  });

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
      let basename = path.basename(args.binaryFile);
      let sourceMapURL = args.sourceMap != null
        ? args.sourceMap.length
          ? args.sourceMap
          : "./" + basename + ".map"
        : null;

      let wasm;
      stats.emitCount++;
      stats.emitTime += measure(() => {
        wasm = module.toBinary(sourceMapURL);
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
          let map = JSON.parse(wasm.sourceMap);
          map.sourceRoot = "./" + basename;
          let contents = [];
          map.sources.forEach((name, index) => {
            let text = assemblyscript.getSource(program, name.replace(/\.ts$/, ""));
            if (text == null) return callback(Error("Source of file '" + name + "' not found."));
            contents[index] = text;
          });
          map.sourcesContent = contents;
          writeFile(path.join(
            path.dirname(args.binaryFile),
            path.basename(sourceMapURL)
          ).replace(/^\.\//, ""), JSON.stringify(map), baseDir);
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
  if (args.printrtti) {
    printRTTI(program, stderr);
  }
  return callback(null);

  function readFileNode(filename, baseDir) {
    let name = path.resolve(baseDir, filename);
    try {
      let text;
      stats.readCount++;
      stats.readTime += measure(() => {
        text = fs.readFileSync(name, { encoding: "utf8" });
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
      return null;
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
function checkDiagnostics(program, stderr) {
  var diagnostic;
  var hasErrors = false;
  while ((diagnostic = assemblyscript.nextDiagnostic(program)) != null) {
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

/** Prints runtime type information. */
function printRTTI(program, output) {
  if (!output) output = process.stderr;
  output.write("# Runtime type information (RTTI)\n");
  output.write(assemblyscript.buildRTTI(program));
}

exports.printRTTI = printRTTI;

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
