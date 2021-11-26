import fs from "fs";
import path from "path";
import { fileURLToPath } from "url";
import esbuild from "esbuild";
import glob from "glob";
import { createRequire } from "module";

const require = createRequire(import.meta.url);
const dirname = path.dirname(fileURLToPath(import.meta.url));
const watch = process.argv[2] === "--watch";

function prelude(name) {
  return [
    "/**\n",
    " * @license\n",
    " * ", name, "\n",
    " * Copyright ", new Date().getFullYear().toString(), " Daniel Wirtz / The AssemblyScript Authors\n",
    " * SPDX-License-Identifier: Apache-2.0\n",
    " */"
  ].join("");
}

// Report what's going on

let started = false;
let startTime = 0;

const INFO = "\u001b[90m";
const SUCCESS = "\u001b[92m";
const ERROR = "\u001b[91m";
const RESET = "\u001b[0m";
const status = { [INFO]: "INFO", [SUCCESS]: "SUCCESS", [ERROR]: "ERROR" };

function log(KIND, ...args) {
  console.log(`${new Date().toISOString()} - ${KIND}${status[KIND]}${RESET} -`, ...args);
}

function onRebuild(error, result) {
  const time = Date.now() - startTime;
  if (error) log(ERROR, `${error.errors.length} errors, ${error.warnings.length} warnings (${time} ms)`);
  else log(SUCCESS, `${result.errors.length} errors, ${result.warnings.length} warnings (${time} ms)`);
}

class ReportPlugin {
  constructor(name) {
    this.name = name;
  }
  setup = (build) => {
    build.onStart(() => {
      log(INFO, `Starting new ${this.name} build ...`);
      startTime = Date.now();
    });
    build.onEnd(result => {
      if (started) return;
      started = true;
      onRebuild(Boolean(result.errors && result.errors.length), result);
    });
  };
}

// Standard library integration

function bundleFile(filename) {
  return fs.readFileSync(filename, { encoding: "utf8" }).replace(/\r\n/g, "\n");
}

class StdlibPlugin {
  name = "stdlib";
  setup(build) {
    build.onResolve({ filter: /\basc\.generated\.js$/ }, args => {
      return {
        path: path.join(args.resolveDir, args.path),
        watchFiles: glob.sync(path.join(dirname, "..", "std", "assembly") + "/**/*.ts")
          .concat([
            path.join(dirname, "..", "package.json"),
            path.join(dirname, "..", "cli", "asc.json"),
            path.join(dirname, "..", "std", "portable", "index.d.ts")
          ])
      };
    });
    build.onLoad({ filter: /\basc\.generated\.js$/ }, args => {
      const out = [
        `// GENERATED FILE. DO NOT EDIT.\n\n`
      ];
      const version = require("../package.json").version;
      out.push(
        `export const version = ${JSON.stringify(version)};\n`
      );
      const options = require("../cli/asc.json");
      out.push(
        `export const options = ${JSON.stringify(options, null, 2)};\n`
      );
      const definitionFiles = {
        assembly: bundleFile(path.join(dirname, "..", "std", "assembly", "index.d.ts")),
        portable: bundleFile(path.join(dirname, "..", "std", "portable", "index.d.ts"))
      };
      out.push(
        `export const definitionFiles = ${JSON.stringify(definitionFiles, null, 2)};\n`
      );
      const libraryDir = path.join(dirname, "..", "std", "assembly");
      const libraryFiles = {};
      for (const file of glob.sync("**/!(*.d).ts", { cwd: libraryDir })) {
        libraryFiles[file.replace(/\.ts$/, "")] = bundleFile(path.join(libraryDir, file));
      }
      out.push(
        `export const libraryFiles = ${JSON.stringify(libraryFiles, null, 2)};\n`
      );
      const generated = out.join("");
      fs.writeFileSync(path.join(dirname, "..", "cli", "asc.generated.js"), generated);
      return {
        contents: generated,
        loader: "js"
      };
    });
  }
}

// Diagnostic messages integration

class DiagnosticsPlugin {
  name = "diagnostics";
  setup(build) {
    build.onResolve({ filter: /\bdiagnosticMessages\.generated$/ }, args => {
      return {
        path: path.join(args.resolveDir, args.path),
        watchFiles: [
          path.join(dirname, "..", "src", "diagnosticMessages.json")
        ]
      };
    });
    build.onLoad({ filter: /\bdiagnosticMessages\.generated$/ }, args => {
      const out = [
        `// GENERATED FILE. DO NOT EDIT.\n\n`
      ];

      function makeKey(text) {
        return text.replace(/[^\w]+/g, "_").replace(/_+$/, "");
      }

      out.push("/** Enum of available diagnostic codes. */\n");
      out.push("export enum DiagnosticCode {\n");

      var first = true;
      const messages = JSON.parse(fs.readFileSync(path.join(dirname, "..", "src", "diagnosticMessages.json")));
      Object.keys(messages).forEach(text => {
        var key = makeKey(text);
        if (first)
          first = false;
        else {
          out.push(",\n");
        }
        out.push("  " + key + " = " + messages[text]);
      });
      
      out.push("\n}\n\n");
      out.push("/** Translates a diagnostic code to its respective string. */\n");
      out.push("export function diagnosticCodeToString(code: DiagnosticCode): string {\n  switch (code) {\n");
      
      Object.keys(messages).forEach(text => {
        out.push("    case " + messages[text] + ": return " + JSON.stringify(text) + ";\n");
      });
      
      out.push("    default: return \"\";\n  }\n}\n");
      
      const generated = out.join("");
      fs.writeFileSync(path.join(dirname, "..", "src", "diagnosticMessages.generated.ts"), generated);
      return {
        contents: generated,
        loader: "ts"
      };
    });
  }
}

// Build compiler and CLI

const externals = [ "assemblyscript", "binaryen", "long" ];

esbuild.build({
  tsconfig: "./src/tsconfig.json",
  entryPoints: [ "./src/index-js.ts" ],
  bundle: true,
  target: "esnext",
  outfile: "./dist/assemblyscript.js",
  platform: "node",
  format: "esm",
  sourcemap: true,
  external: externals,
  treeShaking: true,
  minify: true,
  legalComments: "none",
  banner: {
    js: prelude("The AssemblyScript compiler")
  },
  watch: watch && { onRebuild },
  plugins: [ new DiagnosticsPlugin(), new ReportPlugin("AS") ]
});

esbuild.build({
  entryPoints: [ "./cli/asc.js" ],
  bundle: true,
  target: "esnext",
  outfile: "./dist/asc.js",
  platform: "node",
  format: "esm",
  sourcemap: true,
  external: externals,
  treeShaking: true,
  minify: true,
  legalComments: "none",
  banner: {
    js: prelude("The AssemblyScript frontend")
  },
  watch: watch && { onRebuild },
  plugins: [ new StdlibPlugin(), new ReportPlugin("ASC") ]
});
