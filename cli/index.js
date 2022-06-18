/**
 * @license
 * Copyright 2020 Daniel Wirtz / The AssemblyScript Authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
 */

/**
 * @fileoverview Compiler frontend for node.js
 *
 * Uses the low-level API exported from src/index.ts so it works with the compiler compiled to
 * JavaScript as well as the compiler compiled to WebAssembly (eventually).
 *
 * Can also be packaged as a bundle suitable for in-browser use with the standard library injected
 * in the build step. See dist/asc.js for the bundle.
 */

import { fs, module, path, process, url } from "../util/node.js";
import { Colors } from "../util/terminal.js";
import { utf8 } from "../util/text.js";
import * as optionsUtil from "../util/options.js";
import * as generated from "./index.generated.js";

import binaryen from "../lib/binaryen.js";
import * as assemblyscriptJS from "assemblyscript";

// Use the TS->JS variant by default
var assemblyscript = assemblyscriptJS;

// Use the AS->Wasm variant as an option (experimental)
const wasmPos = process.argv.indexOf("--wasm");
if (~wasmPos) {
  const wasmPath = String(process.argv[wasmPos + 1]);
  process.argv.splice(wasmPos, 2);
  assemblyscript = await import(new URL(wasmPath, url.pathToFileURL(process.cwd() + "/")));
}

const require = module.createRequire(import.meta.url);

const WIN = process.platform === "win32";
const EOL = WIN ? "\r\n" : "\n";
const SEP = WIN ? "\\"   : "/";

const extension = ".ts";
const extension_d = `.d${extension}`;
const extension_re = new RegExp("\\" + extension + "$");
const extension_re_except_d = new RegExp("^(?!.*\\.d\\" + extension + "$).*\\" + extension + "$");

function toUpperSnakeCase(str) {
  return str.replace(/-/g, "_").toUpperCase();
}

/** Ensures that an object is a wrapper class instead of just a pointer. */
// function __wrap(ptrOrObj, wrapperClass) {
//   if (typeof ptrOrObj === "number") {
//     return ptrOrObj === 0 ? null : wrapperClass.wrap(ptrOrObj);
//   }
//   return ptrOrObj;
// }

/** AssemblyScript version. */
export const version = generated.version;

/** Available CLI options. */
export const options = generated.options;

/** Prefix used for library files. */
export const libraryPrefix = generated.libraryPrefix;

/** Bundled library files. */
export const libraryFiles = generated.libraryFiles;

/** Bundled definition files. */
export const definitionFiles = generated.definitionFiles;

/** Default Binaryen optimization level. */
export const defaultOptimizeLevel = 3;

/** Default Binaryen shrink level. */
export const defaultShrinkLevel = 0;

/** Converts a configuration object to an arguments array. */
export function configToArguments(options, argv = []) {
  Object.keys(options || {}).forEach(key => {
    const val = options[key];
    const opt = generated.options[key];
    if (opt && opt.type === "b") {
      if (val) argv.push(`--${key}`);
    } else if (Array.isArray(val)) {
      val.forEach(val => { argv.push(`--${key}`, String(val)); });
    } else {
      argv.push(`--${key}`, String(val));
    }
  });
  return argv;
}

/** Convenience function that parses and compiles source strings directly. */
export async function compileString(sources, config = {}) {
  if (typeof sources === "string") sources = { [`input${extension}`]: sources };
  var argv = [
    "--outFile", "binary",
    "--textFile", "text",
  ];
  configToArguments(config, argv);
  const output = {};
  const result = await main(argv.concat(Object.keys(sources)), {
    readFile: name => Object.prototype.hasOwnProperty.call(sources, name) ? sources[name] : null,
    writeFile: (name, contents) => { output[name] = contents; },
    listFiles: () => []
  });
  return Object.assign(result, output);
}

/** Runs the command line utility using the specified arguments array. */
export async function main(argv, options) {
  if (!Array.isArray(argv)) argv = configToArguments(argv);
  if (!options) options = {};

  const stats = options.stats || new Stats();
  const statsBegin = stats.begin();

  // Bundle semantic version
  let bundleMinorVersion = 0, bundleMajorVersion = 0, bundlePatchVersion = 0;
  const versionParts = (version || "").split(".");
  if (versionParts.length === 3) {
    bundleMajorVersion = parseInt(versionParts[0]) | 0;
    bundleMinorVersion = parseInt(versionParts[1]) | 0;
    bundlePatchVersion = parseInt(versionParts[2]) | 0;
  }

  const stdout = options.stdout || createMemoryStream();
  const stderr = options.stderr || createMemoryStream();
  const readFile = options.readFile || readFileNode;
  const writeFile = options.writeFile || writeFileNode;
  const listFiles = options.listFiles || listFilesNode;

  // Parse command line options but do not populate option defaults yet
  const optionsResult = optionsUtil.parse(argv, generated.options, false);
  let opts = optionsResult.options;
  argv = optionsResult.arguments;

  const stdoutColors = new Colors(stdout);
  const stderrColors = new Colors(stderr);
  if (opts.noColors) {
    stdoutColors.enabled = false;
    stderrColors.enabled = false;
  }

  // Check for unknown options
  const unknownOpts = optionsResult.unknown;
  if (unknownOpts.length) {
    unknownOpts.forEach(arg => {
      stderr.write(
        `${stderrColors.yellow("WARNING ")}Unknown option '${arg}'${EOL}`
      );
    });
  }

  // Check for trailing arguments
  const trailingArgv = optionsResult.trailing;
  if (trailingArgv.length) {
    stderr.write(
      `${stderrColors.yellow("WARNING ")}Unsupported trailing arguments: ${trailingArgv.join(" ")}${EOL}`
    );
  }

  var module = null;
  var binaryenModule = null;

  // Prepares the result object
  var prepareResult = (error, result = {}) => {
    if (error) {
      stderr.write(`${stderrColors.red("FAILURE ")}${error.stack.replace(/^ERROR: /i, "")}${EOL}`);
    }
    if (binaryenModule) binaryenModule.dispose();
    if (!stats.total) stats.total = stats.end(statsBegin);
    return Object.assign({ error, stdout, stderr, stats }, result);
  };

  // Just print the version if requested
  if (opts.version) {
    stdout.write(`Version ${version}${EOL}`);
    return prepareResult(null);
  }

  // Set up base directory
  const baseDir = path.normalize(opts.baseDir || ".");

  // Check if a config file is present
  let configPath = optionsUtil.resolvePath(opts.config || "asconfig.json", baseDir);
  let configFile = path.basename(configPath);
  let configDir = path.dirname(configPath);
  let config = await getConfig(configFile, configDir, readFile);
  let configHasEntries = config != null && Array.isArray(config.entries) && config.entries.length;

  // Print the help message if requested or no source files are provided
  if (opts.help || (!argv.length && !configHasEntries)) {
    var out = opts.help ? stdout : stderr;
    var colors = opts.help ? stdoutColors : stderrColors;
    out.write([
      colors.white("SYNTAX"),
      "  " + colors.cyan("asc") + " [entryFile ...] [options]",
      "",
      colors.white("EXAMPLES"),
      "  " + colors.cyan("asc") + " hello" + extension,
      "  " + colors.cyan("asc") + " hello" + extension + " -o hello.wasm -t hello.wat",
      "  " + colors.cyan("asc") + " hello1" + extension + " hello2" + extension + " -o -O > hello.wasm",
      "  " + colors.cyan("asc") + " --config asconfig.json --target release",
      "",
      colors.white("OPTIONS"),
    ].concat(
      optionsUtil.help(generated.options, 24, EOL)
    ).join(EOL) + EOL);
    return prepareResult(null);
  }

  // I/O must be specified if not present in the environment
  if (!(fs.promises && fs.promises.readFile)) {
    if (readFile === readFileNode)   throw Error("'options.readFile' must be specified");
    if (writeFile === writeFileNode) throw Error("'options.writeFile' must be specified");
    if (listFiles === listFilesNode) throw Error("'options.listFiles' must be specified");
  }

  // Load additional options from asconfig.json
  const seenAsconfig = new Set();
  seenAsconfig.add(configPath);
  const target = opts.target || "release";
  while (config) {
    // Merge target first
    if (config.targets) {
      const targetOptions = config.targets[target];
      if (targetOptions) {
        opts = optionsUtil.merge(generated.options, opts, targetOptions, configDir);
      }
    }
    // Merge general options
    const generalOptions = config.options;
    if (generalOptions) {
      opts = optionsUtil.merge(generated.options, opts, generalOptions, configDir);
    }

    // Append entries
    if (config.entries) {
      for (let entry of config.entries) {
        argv.push(optionsUtil.resolvePath(entry, configDir));
      }
    }

    // Look up extended asconfig and repeat
    if (config.extends) {
      configPath = optionsUtil.resolvePath(config.extends, configDir, true);
      configFile = path.basename(configPath);
      configDir = path.dirname(configPath);
      if (seenAsconfig.has(configPath)) break;
      seenAsconfig.add(configPath);
      config = await getConfig(configFile, configDir, readFile);
    } else {
      break;
    }
  }

  // Populate option defaults once user-defined options are set
  optionsUtil.addDefaults(generated.options, opts);

  // If showConfig print options and exit
  if (opts.showConfig) {
    stderr.write(JSON.stringify({
      options: opts,
      entries: argv
    }, null, 2));
    return prepareResult(null);
  }

  // create a unique set of values
  function unique(values) {
    return [...new Set(values)];
  }

  // Set up options
  var program, runtime;
  const compilerOptions = assemblyscript.newOptions();
  switch (opts.runtime) {
    case "stub": runtime = 0; break;
    case "minimal": runtime = 1; break;
    /* incremental */
    default: runtime = 2; break;
  }
  assemblyscript.setTarget(compilerOptions, 0);
  assemblyscript.setRuntime(compilerOptions, runtime);
  assemblyscript.setNoAssert(compilerOptions, opts.noAssert);
  assemblyscript.setExportMemory(compilerOptions, !opts.noExportMemory);
  assemblyscript.setImportMemory(compilerOptions, opts.importMemory);
  assemblyscript.setInitialMemory(compilerOptions, opts.initialMemory >>> 0);
  assemblyscript.setMaximumMemory(compilerOptions, opts.maximumMemory >>> 0);
  assemblyscript.setSharedMemory(compilerOptions, opts.sharedMemory);
  assemblyscript.setImportTable(compilerOptions, opts.importTable);
  assemblyscript.setExportTable(compilerOptions, opts.exportTable);
  assemblyscript.setExportStart(compilerOptions, typeof opts.exportStart === "string" ? opts.exportStart : null);
  assemblyscript.setMemoryBase(compilerOptions, opts.memoryBase >>> 0);
  assemblyscript.setTableBase(compilerOptions, opts.tableBase >>> 0);
  assemblyscript.setSourceMap(compilerOptions, opts.sourceMap != null);
  assemblyscript.setNoUnsafe(compilerOptions, opts.noUnsafe);
  assemblyscript.setPedantic(compilerOptions, opts.pedantic);
  assemblyscript.setLowMemoryLimit(compilerOptions, opts.lowMemoryLimit >>> 0);
  assemblyscript.setExportRuntime(compilerOptions, opts.exportRuntime);
  assemblyscript.setBundleVersion(compilerOptions, bundleMajorVersion, bundleMinorVersion, bundlePatchVersion);
  if (!opts.stackSize && opts.runtime === "incremental") {
    opts.stackSize = assemblyscript.DEFAULT_STACK_SIZE;
  }
  assemblyscript.setStackSize(compilerOptions, opts.stackSize);

  // Instrument callback to perform GC
  // prepareResult = (original => {
  //   return function gcBeforePrepareResult(err) {
  //     __unpin(compilerOptions);
  //     if (program) __unpin(program);
  //     __collect();
  //     return original(err);
  //   };
  // })(prepareResult);

  // Add or override aliases if specified
  if (opts.use) {
    let aliases = opts.use;
    for (let i = 0, k = aliases.length; i < k; ++i) {
      let part = aliases[i];
      let p = part.indexOf("=");
      if (p < 0) return prepareResult(Error(`Global alias '${part}' is invalid.`));
      let alias = part.substring(0, p).trim();
      let name = part.substring(p + 1).trim();
      if (!alias.length) {
        return prepareResult(Error(`Global alias '${part}' is invalid.`));
      }
      assemblyscript.addGlobalAlias(compilerOptions, alias, name);
    }
  }

  // Disable default features if specified
  var features;
  if ((features = opts.disable) != null) {
    if (typeof features === "string") features = features.split(",");
    for (let i = 0, k = features.length; i < k; ++i) {
      let name = features[i].trim();
      let flag = assemblyscript[`FEATURE_${toUpperSnakeCase(name)}`];
      if (!flag) return prepareResult(Error(`Feature '${name}' is unknown.`));
      assemblyscript.disableFeature(compilerOptions, flag);
    }
  }

  // Enable experimental features if specified
  if ((features = opts.enable) != null) {
    if (typeof features === "string") features = features.split(",");
    for (let i = 0, k = features.length; i < k; ++i) {
      let name = features[i].trim();
      let flag = assemblyscript[`FEATURE_${toUpperSnakeCase(name)}`];
      if (!flag) return prepareResult(Error(`Feature '${name}' is unknown.`));
      assemblyscript.enableFeature(compilerOptions, flag);
    }
  }

  // Set up optimization levels
  var optimizeLevel = 0;
  var shrinkLevel = 0;
  if (opts.optimize) {
    optimizeLevel = defaultOptimizeLevel;
    shrinkLevel = defaultShrinkLevel;
  }
  if (typeof opts.optimizeLevel === "number") optimizeLevel = opts.optimizeLevel;
  if (typeof opts.shrinkLevel === "number") shrinkLevel = opts.shrinkLevel;
  optimizeLevel = Math.min(Math.max(optimizeLevel, 0), 3);
  shrinkLevel = Math.min(Math.max(shrinkLevel, 0), 2);
  assemblyscript.setOptimizeLevelHints(compilerOptions, optimizeLevel, shrinkLevel);

  // Initialize the program
  program = assemblyscript.newProgram(compilerOptions);

  // Collect transforms *constructors* from the `--transform` CLI flag as well
  // as the `transform` option into the `transforms` array.
  let transforms = [];
  // `transform` option from `main()`
  if (Array.isArray(options.transforms)) {
    transforms.push(...options.transforms);
  }
  // `--transform` CLI flag
  if (opts.transform) {
    let transformArgs = unique(opts.transform);
    for (let i = 0, k = transformArgs.length; i < k; ++i) {
      let filename = transformArgs[i].trim();
      let resolved;
      let transform;
      if (require.resolve) {
        try {
          resolved = require.resolve(filename, { paths: [process.cwd(), baseDir] });
          transform = await import(url.pathToFileURL(resolved));
          if (transform.default) transform = transform.default;
        } catch (e1) {
          try {
            transform = require(resolved);
          } catch (e2) {
            return prepareResult(e1);
          }
        }
      } else {
        try {
          transform = await import(new URL(filename, import.meta.url));
          if (transform.default) transform = transform.default;
        } catch (e) {
          return prepareResult(e);
        }
      }
      if (!transform || (typeof transform !== "function" && typeof transform !== "object")) {
        return prepareResult(Error("not a transform: " + transformArgs[i]));
      }
      transforms.push(transform);
    }
  }

  // Fix up the prototype of the transforms’ constructors and instantiate them.
  try {
    transforms = transforms.map(transform => {
      if (typeof transform === "function") {
        Object.assign(transform.prototype, {
          program,
          baseDir,
          stdout,
          stderr,
          log: console.error,
          readFile,
          writeFile,
          listFiles
        });
        transform = new transform();
      }
      return transform;
    });
  } catch (e) {
    return prepareResult(e);
  }

  async function applyTransform(name, ...args) {
    for (let i = 0, k = transforms.length; i < k; ++i) {
      let transform = transforms[i];
      if (typeof transform[name] === "function") {
        try {
          let start = stats.begin();
          stats.transformCount++;
          await transform[name](...args);
          stats.transformTime += stats.end(start);
        } catch (e) {
          return e;
        }
      }
    }
  }

  // Parse library files
  Object.keys(libraryFiles).forEach(libPath => {
    if (libPath.includes("/")) return; // in sub-directory: imported on demand
    let begin = stats.begin();
    stats.parseCount++;
    assemblyscript.parse(program, libraryFiles[libPath], libraryPrefix + libPath + extension, false);
    stats.parseTime += stats.end(begin);
  });
  let customLibDirs = [];
  if (opts.lib) {
    let lib = opts.lib;
    if (typeof lib === "string") lib = lib.split(",");
    customLibDirs.push(...lib.map(p => p.trim()));
    customLibDirs = unique(customLibDirs); // `lib` and `customLibDirs` may include duplicates
    for (let i = 0, k = customLibDirs.length; i < k; ++i) { // custom
      let libDir = customLibDirs[i];
      let libFiles;
      if (libDir.endsWith(extension)) {
        libFiles = [ path.basename(libDir) ];
        libDir = path.dirname(libDir);
      } else {
        libFiles = await listFiles(libDir, baseDir) || [];
      }
      for (let libPath of libFiles) {
        let libText = await readFile(libPath, libDir);
        if (libText == null) {
          return prepareResult(Error(`Library file '${libPath}' not found.`));
        }
        libraryFiles[libPath.replace(extension_re, "")] = libText;
        let begin = stats.begin();
        stats.parseCount++;
        assemblyscript.parse(program, libText, libraryPrefix + libPath, false);
        stats.parseTime += stats.end(begin);
      }
    }
  }
  opts.path = opts.path || [];

  // Maps package names to parent directory
  const packageBases = new Map();

  // Gets the file matching the specified source path, imported at the given dependee path
  async function getFile(internalPath, dependeePath) {
    var sourceText = null; // text reported back to the compiler
    var sourcePath = null; // path reported back to the compiler

    // Try file.ext, file/index.ext, file.d.ext
    if (!internalPath.startsWith(libraryPrefix)) {
      if ((sourceText = await readFile(sourcePath = internalPath + extension, baseDir)) == null) {
        if ((sourceText = await readFile(sourcePath = internalPath + "/index" + extension, baseDir)) == null) {
          // portable d.ext: uses the .js file next to it in JS or becomes an import in Wasm
          sourcePath = internalPath + extension;
          sourceText = await readFile(internalPath + extension_d, baseDir);
        }
      }

    // Search library in this order: stdlib, custom lib dirs, paths
    } else {
      const plainName = internalPath.substring(libraryPrefix.length);
      const indexName = `${plainName}/index`;
      if (Object.prototype.hasOwnProperty.call(libraryFiles, plainName)) {
        sourceText = libraryFiles[plainName];
        sourcePath = libraryPrefix + plainName + extension;
      } else if (Object.prototype.hasOwnProperty.call(libraryFiles, indexName)) {
        sourceText = libraryFiles[indexName];
        sourcePath = libraryPrefix + indexName + extension;
      } else { // custom lib dirs
        for (const libDir of customLibDirs) {
          if ((sourceText = await readFile(plainName + extension, libDir)) != null) {
            sourcePath = libraryPrefix + plainName + extension;
            break;
          } else if ((sourceText = await readFile(indexName + extension, libDir)) != null) {
            sourcePath = libraryPrefix + indexName + extension;
            break;
          }
        }
        if (sourceText == null) { // paths
          const match = internalPath.match(/^~lib\/((?:@[^/]+\/)?[^/]+)(?:\/(.+))?/); // ~lib/(pkg)/(path), ~lib/(@org/pkg)/(path)
          if (match) {
            const packageName = match[1];
            const filePath = match[2] || "index";
            const basePath = packageBases.has(dependeePath) ? packageBases.get(dependeePath) : ".";
            const paths = [];
            const parts = path.resolve(baseDir, basePath).split(SEP);
            for (let i = parts.length, k = WIN ? 1 : 0; i >= k; --i) {
              if (parts[i - 1] !== "node_modules") {
                paths.push(`${parts.slice(0, i).join(SEP)}${SEP}node_modules`);
              }
            }
            paths.push(...opts.path);
            for (const currentDir of paths.map(p => path.relative(baseDir, p))) {
              const plainName = filePath;
              if ((sourceText = await readFile(path.join(currentDir, packageName, plainName + extension), baseDir)) != null) {
                sourcePath = `${libraryPrefix}${packageName}/${plainName}${extension}`;
                packageBases.set(sourcePath.replace(extension_re, ""), path.join(currentDir, packageName));
                break;
              }
              const indexName = `${filePath}/index`;
              if ((sourceText = await readFile(path.join(currentDir, packageName, indexName + extension), baseDir)) != null) {
                sourcePath = `${libraryPrefix}${packageName}/${indexName}${extension}`;
                packageBases.set(sourcePath.replace(extension_re, ""), path.join(currentDir, packageName));
                break;
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

  // Gets all pending imported files from the the backlog
  function getBacklog(paths = []) {
    do {
      let internalPath = assemblyscript.nextFile(program);
      if (internalPath == null) break;
      paths.push(internalPath);
    } while (true);
    return paths;
  }

  // Parses the backlog of imported files after including entry files
  async function parseBacklog() {
    var backlog;
    while ((backlog = getBacklog()).length) {
      let files = [];
      for (let internalPath of backlog) {
        const dependee = assemblyscript.getDependee(program, internalPath);
        files.push(getFile(internalPath, dependee)); // queue
      }
      files = await Promise.all(files); // parallel
      for (let i = 0, k = backlog.length; i < k; ++i) {
        const internalPath = backlog[i];
        const file = files[i];
        const begin = stats.begin();
        stats.parseCount++;
        if (file) {
          assemblyscript.parse(program, file.sourceText, file.sourcePath, false);
        } else {
          assemblyscript.parse(program, null, internalPath + extension, false);
        }
        stats.parseTime += stats.end(begin);
      }
    }
    const numErrors = checkDiagnostics(program, stderr, options.reportDiagnostic, stderrColors.enabled);
    if (numErrors) {
      const err = Error(`${numErrors} parse error(s)`);
      err.stack = err.message; // omit stack
      return prepareResult(err);
    }
  }

  // Include runtime before entry files so its setup runs first
  {
    let runtimeName = String(opts.runtime);
    let runtimePath = `rt/index-${runtimeName}`;
    let runtimeText = libraryFiles[runtimePath];
    if (runtimeText == null) {
      runtimePath = runtimeName;
      runtimeText = await readFile(runtimePath + extension, baseDir);
      if (runtimeText == null) return prepareResult(Error(`Runtime '${runtimeName}' not found.`));
    } else {
      runtimePath = `~lib/${runtimePath}`;
    }
    let begin = stats.begin();
    stats.parseCount++;
    assemblyscript.parse(program, runtimeText, runtimePath + extension, true);
    stats.parseTime += stats.end(begin);
  }

  // Include entry files
  for (let i = 0, k = argv.length; i < k; ++i) {
    const filename = argv[i];
    let sourcePath = String(filename)
      .replace(/\\/g, "/")
      .replace(extension_re, "")
      .replace(/[\\/]$/, "");

    // Setting the path to relative path
    sourcePath = path.isAbsolute(sourcePath)
      ? path.relative(baseDir, sourcePath).replace(/\\/g, "/")
      : sourcePath;

    // Try entryPath.ext, then entryPath/index.ext
    let sourceText = await readFile(sourcePath + extension, baseDir);
    if (sourceText == null) {
      const path = `${sourcePath}/index${extension}`;
      sourceText = await readFile(path, baseDir);
      if (sourceText != null) sourcePath = path;
      else sourcePath += extension;
    } else {
      sourcePath += extension;
    }

    let begin = stats.begin();
    stats.parseCount++;
    assemblyscript.parse(program, sourceText, sourcePath, true);
    stats.parseTime += stats.end(begin);
  }

  // Parse entry files
  {
    let code = await parseBacklog();
    if (code) return code;
  }

  // Call afterParse transform hook
  {
    let error = await applyTransform("afterParse", program.parser);
    if (error) return prepareResult(error);
  }

  // Parse additional files, if any
  {
    let code = await parseBacklog();
    if (code) return code;
  }

  // Pre-emptively initialize the program
  {
    let begin = stats.begin();
    stats.initializeCount++;
    try {
      assemblyscript.initializeProgram(program);
    } catch (e) {
      crash("initialize", e);
    }
    stats.initializeTime += stats.end(begin);
  }

  // Call afterInitialize transform hook
  {
    let error = await applyTransform("afterInitialize", program);
    if (error) return prepareResult(error);
  }

  // Compile the program
  {
    let begin = stats.begin();
    stats.compileCount++;
    try {
      module = assemblyscript.compile(program);
    } catch (e) {
      crash("compile", e);
    }
    stats.compileTime += stats.end(begin);
  }
  // From here on we are going to use Binaryen.js
  binaryenModule = binaryen.wrapModule(
    typeof module === "number" || module instanceof Number
      ? assemblyscript.getBinaryenModuleRef(module)
      : module.ref
  );
  var numErrors = checkDiagnostics(program, stderr, options.reportDiagnostic, stderrColors.enabled);
  if (numErrors) {
    const err = Error(`${numErrors} compile error(s)`);
    err.stack = err.message; // omit stack
    return prepareResult(err);
  }

  // Call afterCompile transform hook
  {
    let error = await applyTransform("afterCompile", binaryenModule);
    if (error) return prepareResult(error);
  }

  numErrors = checkDiagnostics(program, stderr, options.reportDiagnostic, stderrColors.enabled);
  if (numErrors) {
    const err = Error(`${numErrors} afterCompile error(s)`);
    err.stack = err.message; // omit stack
    return prepareResult(err);
  }

  // Validate the module if requested
  if (!opts.noValidate) {
    let begin = stats.begin();
    stats.validateCount++;
    let isValid = assemblyscript.validate(module);
    stats.validateTime += stats.end(begin);
    if (!isValid) {
      return prepareResult(Error("validate error"));
    }
  }

  // Set Binaryen-specific options
  if (opts.trapMode === "clamp" || opts.trapMode === "js") {
    let begin = stats.begin();
    try {
      binaryenModule.runPasses([`trap-mode-${opts.trapMode}`]);
    } catch (e) {
      crash("runPasses", e);
    }
    stats.compileTime += stats.end(begin);
  } else if (opts.trapMode !== "allow") {
    return prepareResult(Error("Unsupported trap mode"));
  }

  // Optimize the module
  const debugInfo = opts.debug;
  const converge = opts.converge;
  const zeroFilledMemory = opts.importMemory
    ? opts.zeroFilledMemory
    : false;

  const runPasses = [];
  if (opts.runPasses) {
    if (typeof opts.runPasses === "string") {
      opts.runPasses = opts.runPasses.split(",");
    }
    if (opts.runPasses.length) {
      opts.runPasses.forEach(pass => {
        if (!runPasses.includes(pass = pass.trim())) {
          runPasses.push(pass);
        }
      });
    }
  }

  {
    let begin = stats.begin();
    try {
      stats.optimizeCount++;
      assemblyscript.optimize(module, optimizeLevel, shrinkLevel, debugInfo, zeroFilledMemory);
    } catch (e) {
      crash("optimize", e);
    }
    try {
      binaryenModule.runPasses(runPasses);
    } catch (e) {
      crash("runPasses", e);
    }
    if (converge) {
      let last;
      try {
        let begin = stats.begin();
        stats.emitCount++;
        last = binaryenModule.emitBinary();
        stats.emitTime += stats.end(begin);
      } catch (e) {
        crash("emitBinary (converge)", e);
      }
      do {
        try {
          stats.optimizeCount++;
          assemblyscript.optimize(module, optimizeLevel, shrinkLevel, debugInfo, zeroFilledMemory);
        } catch (e) {
          crash("optimize (converge)", e);
        }
        try {
          binaryenModule.runPasses(runPasses);
        } catch (e) {
          crash("runPasses (converge)", e);
        }
        let next;
        try {
          let begin = stats.begin();
          stats.emitCount++;
          next = binaryenModule.emitBinary();
          stats.emitTime += stats.end(begin);
        } catch (e) {
          crash("emitBinary (converge)", e);
        }
        if (next.length >= last.length) {
          if (next.length > last.length) {
            stderr.write(`Last converge was suboptimial.${EOL}`);
          }
          break;
        }
        last = next;
      } while (true);
    }
    stats.optimizeTime += stats.end(begin);
  }

  const pending = [];

  // Prepare output
  if (!opts.noEmit) {
    let bindings = opts.bindings || [];
    let hasStdout = false;
    let hasOutFile = opts.outFile != null;
    let hasTextFile = opts.textFile != null;
    let hasOutput = hasOutFile || hasTextFile;
    let hasFileOutput = (hasOutFile && opts.outFile.length > 0) || (hasTextFile && opts.textFile.length > 0);
    let basepath = hasFileOutput
      ? (opts.outFile || opts.textFile).replace(/\.\w+$/, "")
      : null;
    let basename = hasFileOutput
      ? path.basename(basepath)
      : "output";

    assemblyscript.setBasenameHint(compilerOptions, basename);

    // Write binary
    if (opts.outFile != null) {
      let sourceMapURL = opts.sourceMap != null
        ? opts.sourceMap.length
          ? opts.sourceMap
          : `./${basename}.wasm.map`
        : null;

      let begin = stats.begin();
      stats.emitCount++;
      let wasm;
      try {
        wasm = binaryenModule.emitBinary(sourceMapURL);
      } catch (e) {
        crash("emitBinary", e);
      }
      stats.emitTime += stats.end(begin);

      if (opts.outFile.length) {
        pending.push(
          writeFile(opts.outFile, wasm.binary, baseDir)
        );
      } else {
        hasStdout = true;
        writeStdout(wasm.binary);
      }

      // Post-process source map
      if (wasm.sourceMap !== "") {
        if (opts.outFile.length) {
          let map = JSON.parse(wasm.sourceMap);
          map.sourceRoot = `./${basename}`;
          let contents = [];
          for (let i = 0, k = map.sources.length; i < k; ++i) {
            let name = map.sources[i];
            let text = assemblyscript.getSource(program, name.replace(extension_re, ""));
            if (text == null) return prepareResult(Error(`Source of file '${name}' not found.`));
            contents[i] = text;
          }
          map.sourcesContent = contents;
          pending.push(
            writeFile(path.join(
              path.dirname(opts.outFile),
              path.basename(sourceMapURL)
            ).replace(/^\.\//, ""), JSON.stringify(map), baseDir)
          );
        } else {
          stderr.write(`Skipped source map (no output path)${EOL}`);
        }
      }
    }

    // Write text (also fallback)
    if (opts.textFile != null || !hasOutput) {
      let begin = stats.begin();
      stats.emitCount++;
      let out;
      try {
        // use superset text format when extension is `.wast`.
        // Otherwise use official stack IR format (wat).
        out = opts.textFile?.endsWith(".wast")
          ? binaryenModule.emitText()
          : binaryenModule.emitStackIR(true);
      } catch (e) {
        crash("emitText", e);
      }
      stats.emitTime += stats.end(begin);

      if (opts.textFile != null && opts.textFile.length) {
        pending.push(
          writeFile(opts.textFile, out, baseDir)
        );
      } else if (!hasStdout) {
        hasStdout = true;
        writeStdout(out);
      }
    }

    // Write TypeScript definition
    const bindingsEsm = bindings.includes("esm");
    const bindingsRaw = !bindingsEsm && bindings.includes("raw");
    if (bindingsEsm || bindingsRaw) {
      if (basepath) {
        let begin = stats.begin();
        stats.emitCount++;
        let source;
        try {
          source = assemblyscript.buildTSD(program, bindingsEsm);
        } catch (e) {
          crash("buildTSD", e);
        }
        stats.emitTime += stats.end(begin);
        pending.push(
          writeFile(basepath + ".d.ts", source, baseDir)
        );
      } else {
        stderr.write(`Skipped TypeScript binding (no output path)${EOL}`);
      }
    }

    // Write JavaScript bindings
    if (bindingsEsm || bindingsRaw) {
      if (basepath) {
        let begin = stats.begin();
        stats.emitCount++;
        let source;
        try {
          source = assemblyscript.buildJS(program, bindingsEsm);
        } catch (e) {
          crash("buildJS", e);
        }
        stats.emitTime += stats.end(begin);
        pending.push(
          writeFile(basepath + ".js", source, baseDir)
        );
      } else {
        stderr.write(`Skipped JavaScript binding (no output path)${EOL}`);
      }
    }
  }

  try {
    await Promise.all(pending);
  } catch (err) {
    return prepareResult(err);
  }

  stats.total = stats.end(statsBegin);
  if (opts.stats) stderr.write(stats.toString());

  return prepareResult(null);

  // Default implementation to read files on node
  async function readFileNode(filename, baseDir) {
    let name = path.resolve(baseDir, filename);
    try {
      stats.readCount++;
      return await fs.promises.readFile(name, "utf8");
    } catch (e) {
      return null;
    }
  }

  // Default implementation to write files on node
  async function writeFileNode(filename, contents, baseDir) {
    try {
      stats.writeCount++;
      const dirPath = path.resolve(baseDir, path.dirname(filename));
      const filePath = path.join(dirPath, path.basename(filename));
      await fs.promises.mkdir(dirPath, { recursive: true });
      await fs.promises.writeFile(filePath, contents);
      return true;
    } catch (e) {
      return false;
    }
  }

  // Default implementation to list files on node
  async function listFilesNode(dirname, baseDir) {
    try {
      stats.readCount++;
      return (await fs.promises.readdir(path.join(baseDir, dirname)))
        .filter(file => extension_re_except_d.test(file));
    } catch (e) {
      return null;
    }
  }

  // Writes to stdout
  function writeStdout(contents) {
    if (!writeStdout.used) {
      writeStdout.used = true;
      stats.writeCount++;
    }
    stdout.write(contents);
  }

  // Crash handler
  function crash(stage, e) {
    const BAR = stdoutColors.red("▌ ");
    console.error([
      EOL,
      BAR, "Whoops, the AssemblyScript compiler has crashed during ", stage, " :-(", EOL,
      BAR, EOL,
      (typeof e.stack === "string"
        ? [
            BAR, "Here is the stack trace hinting at the problem, perhaps it's useful?", EOL,
            BAR, EOL,
            e.stack.replace(/^/mg, BAR), EOL
          ]
        : [
            BAR, "There is no stack trace. Perhaps a Binaryen exception above / in console?", EOL,
            BAR, EOL,
            BAR, "> " + e.stack, EOL
          ]
      ).join(""),
      BAR, EOL,
      BAR, "If you see where the error is, feel free to send us a pull request. If not,", EOL,
      BAR, "please let us know: https://github.com/AssemblyScript/assemblyscript/issues", EOL,
      BAR, EOL,
      BAR, "Thank you!", EOL
    ].join(""));
    process.exit(1);
  }
}

function isObject(arg) {
  return Object.prototype.toString.call(arg) === "[object Object]";
}

async function getConfig(file, baseDir, readFile) {
  const contents = await readFile(file, baseDir);
  const location = path.join(baseDir, file);
  if (!contents) return null;

  // obtain the configuration
  let config;
  try {
    config = JSON.parse(contents);
  } catch (ex) {
    throw new Error(`Asconfig is not valid json: ${location}`);
  }

  // validate asconfig shape
  if (config.options && !isObject(config.options)) {
    throw new Error(`Asconfig.options is not an object: ${location}`);
  }

  if (config.include && !Array.isArray(config.include)) {
    throw new Error(`Asconfig.include is not an array: ${location}`);
  }

  if (config.targets) {
    if (!isObject(config.targets)) {
      throw new Error(`Asconfig.targets is not an object: ${location}`);
    }
    const targets = Object.keys(config.targets);
    for (let i = 0; i < targets.length; i++) {
      const target = targets[i];
      if (!isObject(config.targets[target])) {
        throw new Error(`Asconfig.targets.${target} is not an object: ${location}`);
      }
    }
  }

  if (config.extends && typeof config.extends !== "string") {
    throw new Error(`Asconfig.extends is not a string: ${location}`);
  }

  return config;
}

/** Checks diagnostics emitted so far for errors. */
export function checkDiagnostics(program, stderr, reportDiagnostic, useColors) {
  if (typeof useColors === "undefined" && stderr) useColors = stderr.isTTY;
  var numErrors = 0;
  do {
    let diagnostic = assemblyscript.nextDiagnostic(program);
    if (!diagnostic) break;
    if (stderr) {
      stderr.write(
        assemblyscript.formatDiagnostic(diagnostic, useColors, true) +
        EOL + EOL
      );
    }
    if (reportDiagnostic) {
      function wrapRange(range) {
        return range && {
          start: assemblyscript.getRangeStart(range),
          end: assemblyscript.getRangeEnd(range),
          source: wrapSource(assemblyscript.getRangeSource(range))
        } || null;
      }
      function wrapSource(source) {
        return source && {
          normalizedPath: assemblyscript.getSourceNormalizedPath(source)
        } || null;
      }
      reportDiagnostic({
        message: assemblyscript.getDiagnosticMessage(diagnostic),
        code: assemblyscript.getDiagnosticCode(diagnostic),
        category: assemblyscript.getDiagnosticCategory(diagnostic),
        range: wrapRange(assemblyscript.getDiagnosticRange(diagnostic)),
        relatedRange: wrapRange(assemblyscript.getDiagnosticRelatedRange(diagnostic))
      });
    }
    if (assemblyscript.isError(diagnostic)) ++numErrors;
  } while (true);
  return numErrors;
}

export class Stats {
  readCount = 0;
  writeCount = 0;
  parseTime = 0;
  parseCount = 0;
  initializeTime = 0;
  initializeCount = 0;
  compileTime = 0;
  compileCount = 0;
  emitTime = 0;
  emitCount = 0;
  validateTime = 0;
  validateCount = 0;
  optimizeTime = 0;
  optimizeCount = 0;
  transformTime = 0;
  transformCount = 0;
  begin() {
    return process.hrtime();
  }
  end(begin) {
    const hrtime = process.hrtime(begin);
    return hrtime[0] * 1e9 + hrtime[1];
  }
  toString() {
    const formatTime = time => time ? `${(time / 1e6).toFixed(3)} ms` : "n/a";
    const keys = Object.keys(this).filter(key => key.endsWith("Time")).map(key => key.substring(0, key.length - 4));
    const times = keys.map(key => formatTime(this[`${key}Time`]));
    const counts = keys.map(key => this[`${key}Count`].toString());
    const keysLen = keys.reduce((current, key) => Math.max(key.length, current), 0);
    const timesLen = times.reduce((current, time) => Math.max(time.length, current), 0);
    const countsLen = counts.reduce((current, count) => Math.max(count.length, current), 0);
    const totalLen = keysLen + timesLen + countsLen + 6;
    const out = [];
    out.push(`╭─${"─".repeat(totalLen)}─╮${EOL}`);
    const header = `Stats`;
    out.push(`│ ${header}${" ".repeat(totalLen - header.length)} │${EOL}`);
    out.push(`╞═${"═".repeat(keysLen)}═╤═${"═".repeat(timesLen)}═╤═${"═".repeat(countsLen)}═╡${EOL}`);
    for (let i = 0, k = keys.length; i < k; ++i) {
      out.push(`│ ${keys[i].padEnd(keysLen)} │ ${times[i].padStart(timesLen)} │ ${counts[i].padStart(countsLen)} │${EOL}`);
    }
    out.push(`├─${"─".repeat(keysLen)}─┴─${"─".repeat(timesLen)}─┴─${"─".repeat(countsLen)}─┤${EOL}`);
    const totalTime = `Took ${formatTime(this.total)}`;
    out.push(`│ ${totalTime}${" ".repeat(totalLen - totalTime.length)} │${EOL}`);
    const readsWrites = `${this.readCount} reads, ${this.writeCount} writes`;
    out.push(`│ ${readsWrites}${" ".repeat(totalLen - readsWrites.length)} │${EOL}`);
    out.push(`╰─${"─".repeat(totalLen)}─╯${EOL}`);
    return out.join("");
  }
}

var allocBuffer = typeof global !== "undefined" && global.Buffer
  ? global.Buffer.allocUnsafe || (len => new global.Buffer(len))
  : len => new Uint8Array(len);

/** Creates a memory stream that can be used in place of stdout/stderr. */
export function createMemoryStream(fn) {
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

/** Compatible TypeScript compiler options for syntax highlighting etc. */
export const tscOptions = {
  alwaysStrict: true,
  strictNullChecks: true,
  noImplicitAny: true,
  noImplicitReturns: true,
  noImplicitThis: true,
  noEmitOnError: true,
  noPropertyAccessFromIndexSignature: true,
  experimentalDecorators: true,
  target: "esnext",
  noLib: true,
  types: [],
  allowJs: false
};

export * as default from "./index.js";
