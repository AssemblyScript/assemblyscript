"use strict";
/**
 * A tool to run asc, suitable for use by NPM or manually.
 *
 * It wraps the build process by allowing flags to be grouped into profiles.
 *
 * Run with --help for more information.
 *
 * @module cli/asbuild
 */

const util = require("util");
const execFile = util.promisify(require("child_process").execFile);

const fs = require("fs");
const path = require("path");

const optionsUtil = require("../util/options");
exports.options = require("./asbuild.json");

const profiles = require("./profiles.json");

// Assembles the build directory and profile information into an output wasm file path.
function outputWasmName(profile, options) {
  if(profiles[profile] !== undefined) {
    return path.join(options.buildDir, profiles[profile].default_name + ".wasm")
  } else {
    return "" // intentionally cause an asc error due to missing file name
  }
}

// Assembles the build directory and profile information into an output wat file path.
function outputWatName(profile, options) {
  if(profiles[profile] !== undefined) {
    return path.join(options.buildDir, profiles[profile].default_name + ".wat")
  } else {
    return "" // intentionally cause an asc error due to missing file name
  }
}

// Gather all the flags and options into an ASC command line, and run the compiler.
function ascRun(profile, argv) {
  var execargs = [
    argv.options.entryPath,
    "-b", outputWasmName(profile, argv.options),
    "-t", outputWatName(profile, argv.options)
  ];
  if(profiles[profile] !== undefined) {
    profiles[profile].args.forEach(e => execargs.push(e));
  }
  argv.trailing.forEach(e => execargs.push(e));

  return execFile("asc", execargs);
}

// Nail down directories for the build if the user omitted them.
function cleanUpBuildDirs(argv) {
  argv.options.baseDir = path.resolve(argv.options.baseDir);
  while (!fs.existsSync(path.join(argv.options.baseDir, "package.json"))) {
    argv.options.baseDir = path.normalize(path.join(argv.options.baseDir, ".."));
    var p = path.parse(argv.options.baseDir);
    if (p.root === p.dir) {
      throw new Error("cannot find package.json; please specify --baseDir option");
    }
  }

  if(argv.options.buildDir === undefined) {
    argv.options.buildDir = path.relative(argv.options.baseDir,
                                          path.join(argv.options.baseDir, "build"));
  }
  argv.options.assemblyDir = path.join(argv.options.baseDir, "assembly");
  if (fs.existsSync(path.join(argv.options.assemblyDir, "index.ts"))) {
    argv.options.entryPath = path.join(argv.options.assemblyDir, "index.ts");
  } else {
    argv.options.entryPath = argv.options.assemblyDir;
  }

  // NB: asc only accepts relative root paths, hence this trick
  process.chdir(argv.options.baseDir);
  argv.options.baseDir = path.relative(process.cwd(), argv.options.baseDir);
  argv.options.buildDir = path.relative(process.cwd(), argv.options.buildDir);
  argv.options.assemblyDir = path.relative(process.cwd(), argv.options.assemblyDir);
  argv.options.entryPath = path.relative(process.cwd(), argv.options.entryPath);

  return argv;
}

// Merge profile information with static options to populate the full list of options of asbuild.
function mergeConfigOptions() {
  var config = {};
    Object.keys(exports.options).forEach(k => config[k] = exports.options[k]);
    Object.keys(profiles).forEach(k => config[k] = {
      description: [ profiles[k].description ],
      type: "b",
      default: false
    });
  return config;
}

exports.main = async function main(argv) {
  var argv = cleanUpBuildDirs(optionsUtil.parse(argv, mergeConfigOptions()));

  if (argv.options.debug && argv.options.release) {
    await ascRun("debug", argv)
      .then(function() { return ascRun("release", argv) });
  } else if (argv.options.release) {
    await ascRun("release", argv);
  } else {
    await ascRun("debug", argv);
  }
}
