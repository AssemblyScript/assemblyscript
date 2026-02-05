#!/usr/bin/env node

import fs from "fs";
import path from "path";
import { createRequire } from "module";
import { fileURLToPath } from "url";
import { stdoutColors } from "../util/terminal.js";
import * as optionsUtil from "../util/options.js";

const dirname = path.dirname(fileURLToPath(import.meta.url));
const require = createRequire(import.meta.url);
const version = require("../package.json").version; // TODO

const npmDefaultTest = "echo \"Error: no test specified\" && exit 1";

const commands = {
  "npm": {
    install: "npm install",
    run: "npm run",
    test: "npm test"
  },
  "yarn": {
    install: "yarn install",
    run: "yarn",
    test: "yarn test"
  },
  "pnpm": {
    install: "pnpm install",
    run: "pnpm run",
    test: "pnpm test"
  }
};

let pm = "npm";
if (typeof process.env.npm_config_user_agent === "string") {
  if (/\byarn\//.test(process.env.npm_config_user_agent)) {
    pm = "yarn";
  } else if (/\bpnpm\//.test(process.env.npm_config_user_agent)) {
    pm = "pnpm";
  }
}

const asinitOptions = {
  "help": {
    "category": "General",
    "description": "Prints this help message.",
    "type": "b",
    "alias": "h"
  },
  "yes": {
    "category": "General",
    "description": [
      "Answers all questions with their default option",
      "for non-interactive usage."
    ],
    "type": "b",
    "alias": "y"
  },
  "noColors": {
    "description": "Disables terminal colors.",
    "type": "b",
    "default": false
  },
};

const cliOptions = optionsUtil.parse(process.argv.slice(2), asinitOptions);

if (cliOptions.options.noColors) {
  stdoutColors.enabled = false;
}

if (cliOptions.options.help || cliOptions.arguments.length === 0) printHelp();

function printHelp() {
  console.log([
    "Sets up a new AssemblyScript project or updates an existing one.",
    "",
    stdoutColors.white("SYNTAX"),
    "  " + stdoutColors.cyan("asinit") + " directory [options]",
    "",
    stdoutColors.white("EXAMPLES"),
    "  " + stdoutColors.cyan("asinit") + " .",
    "  " + stdoutColors.cyan("asinit") + " ./newProject -y",
    "",
    stdoutColors.white("OPTIONS"),
    optionsUtil.help(asinitOptions, { noCategories: true })
  ].join("\n"));
  process.exit(0);
}

const compilerDir = path.join(dirname, "..");
const projectDir = path.resolve(cliOptions.arguments[0]);
const assemblyDir = path.join(projectDir, "assembly");
const tsconfigFile = path.join(assemblyDir, "tsconfig.json");
const asconfigFile = path.join(projectDir, "asconfig.json");
let tsconfigBase = path.relative(assemblyDir, path.join(compilerDir, "std", "assembly.json"));
if (/^(\.\.[/\\])*node_modules[/\\]assemblyscript[/\\]/.test(tsconfigBase)) {
  // Use node resolution if the compiler is a normal dependency
  tsconfigBase = "assemblyscript/std/assembly.json";
}
const entryFile = path.join(assemblyDir, "index.ts");
const buildDir = path.join(projectDir, "build");
const testsDir = path.join(projectDir, "test");
const gitignoreFile = path.join(buildDir, ".gitignore");
const packageFile = path.join(projectDir, "package.json");

const indexHtmlFile = path.join(projectDir, "index.html");
const testsIndexFile = path.join(testsDir, "index.js");

const paths = [
  [assemblyDir, "Directory holding the AssemblyScript sources being compiled to WebAssembly."],
  [tsconfigFile, "TypeScript configuration inheriting recommended AssemblyScript settings."],
  [entryFile, "Example entry file being compiled to WebAssembly to get you started."],
  [buildDir, "Build artifact directory where compiled WebAssembly files are stored."],
  [gitignoreFile, "Git configuration that excludes compiled binaries from source control."],
  [asconfigFile, "Configuration file defining both a 'debug' and a 'release' target."],
  [packageFile, "Package info containing the necessary commands to compile to WebAssembly."],
  [testsIndexFile, "Starter test to check that the module is functioning."],
  [indexHtmlFile, "Starter HTML file that loads the module in a browser."]
];

const formatPath = filePath => "./" + path.relative(projectDir, filePath).replace(/\\/g, "/");

if (fs.existsSync(packageFile)) {
  const pkg = JSON.parse(fs.readFileSync(packageFile));
  if ("type" in pkg && pkg["type"] !== "module") {
    console.error(stdoutColors.red([
      `Error: The "type" field in ${formatPath(packageFile)} is set to "${pkg["type"]}".`,
      `       asinit requires the "type" field to be set to "module" (ES modules).`
    ].join("\n")));
    process.exit(1);
  }
}

console.log([
  "Version: " + version,
  "",
  stdoutColors.white([
    "This command will make sure that the following files exist in the project",
    "directory '" + projectDir + "':"
  ].join("\n")),
  ...paths.map(([filePath, description]) => "\n  " + stdoutColors.cyan(formatPath(filePath)) + "\n  " + description),
  "",
  "The command will try to update existing files to match the correct settings",
  "for this instance of the compiler in '" + compilerDir + "'.",
  ""
].join("\n"));

function createProject(answer) {
  if (!/^y?$/i.test(answer)) {
    process.exit(1);
    return;
  }
  console.log();
  ensureProjectDirectory();
  ensureAssemblyDirectory();
  ensureTsconfigJson();
  ensureEntryFile();
  ensureBuildDirectory();
  ensureGitignore();
  ensurePackageJson();
  ensureAsconfigJson();
  ensureTestsDirectory();
  ensureTestsIndexJs();
  ensureIndexHtml();

  console.log([
    stdoutColors.green("Done!"),
    "",
    "Don't forget to install dependencies before you start:",
    "",
    stdoutColors.white("  " + commands[pm].install),
    "",
    "To edit the entry file, open '" + stdoutColors.cyan("assembly/index.ts") + "' in your editor of choice.",
    "Create as many additional files as necessary and use them as imports.",
    "",
    "To build the entry file to WebAssembly when you are ready, run:",
    "",
    stdoutColors.white("  " + commands[pm].run + " asbuild"),
    "",
    "Running the command above creates the following binaries incl. their respective",
    "text format representations and source maps:",
    "",
    stdoutColors.cyan("  ./build/debug.wasm"),
    stdoutColors.cyan("  ./build/debug.wasm.map"),
    stdoutColors.cyan("  ./build/debug.wat"),
    "",
    "  ^ The debuggable WebAssembly module as generated by the compiler.",
    "    This one matches your sources exactly, without any optimizations.",
    "",
    stdoutColors.cyan("  ./build/release.wasm"),
    stdoutColors.cyan("  ./build/release.wasm.map"),
    stdoutColors.cyan("  ./build/release.wat"),
    "",
    "  ^ The optimized WebAssembly module using default optimization settings.",
    "    You can change the optimization settings in '" + stdoutColors.cyan("package.json")+ "'.",
    "",
    "To run the tests, do:",
    "",
    stdoutColors.white("  " + commands[pm].test),
    "",
    "The AssemblyScript documentation covers all the details:",
    "",
    "  https://www.assemblyscript.org",
    "",
    "Have a nice day!"
  ].join("\n"));
}

if (cliOptions.options.yes) {
  createProject("y");
} else {
  const rl = require("readline").createInterface({
    input: process.stdin,
    output: process.stdout
  });
  rl.question(stdoutColors.white("Do you want to proceed?") + " [Y/n] ", result => {
    rl.close();
    createProject(result);
  });
}

function ensureProjectDirectory() {
  console.log("- Making sure that the project directory exists...");
  if (!fs.existsSync(projectDir)) {
    fs.mkdirSync(projectDir);
    console.log(stdoutColors.green("  Created: ") + projectDir);
  } else {
    console.log(stdoutColors.yellow("  Exists: ") + projectDir);
  }
  console.log();
}

function ensureAssemblyDirectory() {
  console.log("- Making sure that the 'assembly' directory exists...");
  if (!fs.existsSync(assemblyDir)) {
    fs.mkdirSync(assemblyDir);
    console.log(stdoutColors.green("  Created: ") + assemblyDir);
  } else {
    console.log(stdoutColors.yellow("  Exists: ") + assemblyDir);
  }
  console.log();
}

function ensureTsconfigJson() {
  console.log("- Making sure that 'assembly/tsconfig.json' is set up...");
  const base = tsconfigBase.replace(/\\/g, "/");
  if (!fs.existsSync(tsconfigFile)) {
    fs.writeFileSync(tsconfigFile, JSON.stringify({
      "extends": base,
      "include": [
        "./**/*.ts"
      ]
    }, null, 2));
    console.log(stdoutColors.green("  Created: ") + tsconfigFile);

  } else {
    let tsconfig = JSON.parse(fs.readFileSync(tsconfigFile, "utf8"));
    tsconfig["extends"] = base;
    fs.writeFileSync(tsconfigFile, JSON.stringify(tsconfig, null, 2));
    console.log(stdoutColors.green("  Updated: ") + tsconfigFile);
  }
  console.log();
}

function ensureAsconfigJson() {
  console.log("- Making sure that 'asconfig.json' is set up...");
  if (!fs.existsSync(asconfigFile)) {
    fs.writeFileSync(asconfigFile, JSON.stringify({
      targets: {
        debug: {
          // -o build/debug.wasm -t build/debug.wat --sourceMap --debug
          outFile: "build/debug.wasm",
          textFile: "build/debug.wat",
          sourceMap: true,
          debug: true
        },
        release: {
          // -o build/release.wasm -t build/release.wat --sourceMap --optimize
          outFile: "build/release.wasm",
          textFile: "build/release.wat",
          sourceMap: true,
          optimizeLevel: 3,
          shrinkLevel: 0,
          converge: false,
          noAssert: false
        }
      },
      options: {
        bindings: "esm"
      }
    }, null, 2));
    console.log(stdoutColors.green("  Created: ") + asconfigFile);
  } else {
    console.log(stdoutColors.yellow("  Exists: ") + asconfigFile);
  }
  console.log();
}

function ensureEntryFile() {
  console.log("- Making sure that 'assembly/index.ts' exists...");
  if (!fs.existsSync(entryFile)) {
    fs.writeFileSync(entryFile, [
      "// The entry file of your WebAssembly module.",
      "",
      "export function add(a: i32, b: i32): i32 {",
      "  return a + b;",
      "}"
    ].join("\n") + "\n");
    console.log(stdoutColors.green("  Created: ") + entryFile);
  } else {
    console.log(stdoutColors.yellow("  Exists: ") + entryFile);
  }
  console.log();
}

function ensureBuildDirectory() {
  console.log("- Making sure that the 'build' directory exists...");
  if (!fs.existsSync(buildDir)) {
    fs.mkdirSync(buildDir);
    console.log(stdoutColors.green("  Created: ") + buildDir);
  } else {
    console.log(stdoutColors.yellow("  Exists: ") + buildDir);
  }
  console.log();
}

function ensureGitignore() {
  console.log("- Making sure that 'build/.gitignore' is set up...");
  if (!fs.existsSync(gitignoreFile)) {
    fs.writeFileSync(gitignoreFile, [
      "*",
      "!.gitignore"
    ].join("\n") + "\n");
    console.log(stdoutColors.green("  Created: ") + gitignoreFile);
  } else {
    console.log(stdoutColors.yellow("  Exists: ") + gitignoreFile);
  }
  console.log();
}

function ensurePackageJson() {
  console.log("- Making sure that 'package.json' contains the build commands...");
  const entryPath = path.relative(projectDir, entryFile).replace(/\\/g, "/");
  const buildDebug = "asc " + entryPath + " --target debug";
  const buildRelease = "asc " + entryPath + " --target release";
  const buildAll = commands[pm].run + " asbuild:debug && " + commands[pm].run + " asbuild:release";
  if (!fs.existsSync(packageFile)) {
    fs.writeFileSync(packageFile, JSON.stringify({
      "type": "module",
      "exports": {
        ".": {
          "import": "./build/release.js",
          "types": "./build/release.d.ts"
        }
      },
      "scripts": {
        "asbuild:debug": buildDebug,
        "asbuild:release": buildRelease,
        "asbuild": buildAll,
        "test": "node --test",
        "start": "npx serve ."
      },
      "devDependencies": {
        "@btc-vision/assemblyscript": "^" + version
      }
    }, null, 2));
    console.log(stdoutColors.green("  Created: ") + packageFile);
  } else {
    let pkg = JSON.parse(fs.readFileSync(packageFile));
    let scripts = pkg.scripts || {};
    let updated = false;
    if (!pkg["type"]) {
      pkg["type"] = "module";
      updated = true;
    }
    if (!pkg["exports"]) {
      pkg["exports"] = {
        ".": {
          "import": "./build/release.js",
          "types": "./build/release.d.ts"
        }
      };
    }
    if (!scripts["asbuild"]) {
      scripts["asbuild:debug"] = buildDebug;
      scripts["asbuild:release"] = buildRelease;
      scripts["asbuild"] = buildAll;
      pkg["scripts"] = scripts;
      updated = true;
    }
    if (!scripts["test"] || scripts["test"] == npmDefaultTest) {
      scripts["test"] = "node --test";
      pkg["scripts"] = scripts;
      updated = true;
    }
    if (!scripts["start"]) {
      scripts["start"] = "npx serve .",
      pkg["scripts"] = scripts;
      updated = true;
    }
    let devDependencies = pkg["devDependencies"] || {};
    if (!devDependencies["@btc-vision/assemblyscript"]) {
      devDependencies["@btc-vision/assemblyscript"] = "^" + version;
      pkg["devDependencies"] = devDependencies;
      updated = true;
    }
    if (updated) {
      fs.writeFileSync(packageFile, JSON.stringify(pkg, null, 2));
      console.log(stdoutColors.green("  Updated: ") + packageFile);
    } else {
      console.log(stdoutColors.yellow("  Exists: ") + packageFile);
    }
  }
  console.log();
}

function ensureTestsDirectory() {
  console.log("- Making sure that the 'test' directory exists...");
  if (!fs.existsSync(testsDir)) {
    fs.mkdirSync(testsDir);
    console.log(stdoutColors.green("  Created: ") + testsDir);
  } else {
    console.log(stdoutColors.yellow("  Exists: ") + testsDir);
  }
  console.log();
}

function ensureTestsIndexJs() {
  console.log("- Making sure that 'test/index.js' exists...");
  if (!fs.existsSync(testsIndexFile)) {
    fs.writeFileSync(testsIndexFile, [
      "import assert from \"node:assert/strict\";",
      "import { it } from \"node:test\";",
      "import { add } from \"../build/debug.js\";",
      "",
      "it(\"add\", () => {",
      "  assert.equal(add(1, 2), 3);",
      "});"
    ].join("\n") + "\n");
    console.log(stdoutColors.green("  Created: ") + testsIndexFile);
  } else {
    console.log(stdoutColors.yellow("  Exists: ") + testsIndexFile);
  }
  console.log();
}

function ensureIndexHtml() {
  console.log("- Making sure that 'index.html' exists...");
  if (!fs.existsSync(indexHtmlFile)) {
    fs.writeFileSync(indexHtmlFile, [
      "<!DOCTYPE html>",
      "<html lang=\"en\">",
      "<head>",
      "<script type=\"module\">",
      "import { add } from \"./build/release.js\";",
      "document.body.innerText = add(1, 2);",
      "</script>",
      "</head>",
      "<body></body>",
      "</html>",
    ].join("\n") + "\n");
    console.log(stdoutColors.green("  Created: ") + indexHtmlFile);
  } else {
    console.log(stdoutColors.yellow("  Exists: ") + indexHtmlFile);
  }
  console.log();
}
