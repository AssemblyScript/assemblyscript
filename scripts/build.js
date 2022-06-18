import fs from "fs";
import path from "path";
import { fileURLToPath } from "url";
import childProcess from "child_process";
import esbuild from "esbuild";
import glob from "glob";
import { createRequire } from "module";
import { stdoutColors } from "../util/terminal.js";

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

function time() {
  return new Date().toISOString();
}

function reportPlugin(name) {
  return {
    name: "reporter",
    setup(build) {
      let startTime = 0;
      build.onStart(() => {
        console.log(`${time()} - ${name} - Starting new build ...`);
        startTime = Date.now();
      });
      build.onEnd(({ errors, warnings }) => {
        const duration = Date.now() - startTime;
        if (errors.length) {
          console.log(`${time()} - ${name} - ${stdoutColors.red("ERROR")} (${errors.length} errors, ${warnings.length} warnings, ${duration} ms)`);
        } else {
          console.log(`${time()} - ${name} - ${stdoutColors.green("SUCCESS")} (${warnings.length} warnings, ${duration} ms)`);
        }
      });
    }
  };
}

// Standard library integration

function bundleFile(filename) {
  return fs.readFileSync(filename, { encoding: "utf8" }).replace(/\r\n/g, "\n");
}

const stdlibPlugin = {
  name: "stdlib",
  setup(build) {
    build.onResolve({ filter: /\bindex\.generated\.js$/ }, args => {
      return {
        path: path.join(args.resolveDir, args.path),
        watchFiles: glob.sync(path.join(dirname, "..", "std", "assembly") + "/**/*.ts")
          .concat([
            path.join(dirname, "..", "package.json"),
            path.join(dirname, "..", "cli", "options.json"),
            path.join(dirname, "..", "std", "portable", "index.d.ts")
          ])
      };
    });
    build.onLoad({ filter: /\bindex\.generated\.js$/ }, args => {
      const out = [
        `// GENERATED FILE. DO NOT EDIT.\n\n`
      ];
      const version = require("../package.json").version;
      out.push(
        `export const version = ${JSON.stringify(version)};\n`
      );
      const options = require("../cli/options.json");
      out.push(
        `export const options = ${JSON.stringify(options, null, 2)};\n`
      );
      out.push(
        `export const libraryPrefix = "~lib/";\n`
      );
      const libraryDir = path.join(dirname, "..", "std", "assembly");
      const libraryFiles = {};
      for (const file of glob.sync("**/!(*.d).ts", { cwd: libraryDir })) {
        libraryFiles[file.replace(/\.ts$/, "")] = bundleFile(path.join(libraryDir, file));
      }
      out.push(
        `export const libraryFiles = ${JSON.stringify(libraryFiles, null, 2)};\n`
      );
      const definitionFiles = {
        assembly: bundleFile(path.join(dirname, "..", "std", "assembly", "index.d.ts")),
        portable: bundleFile(path.join(dirname, "..", "std", "portable", "index.d.ts"))
      };
      out.push(
        `export const definitionFiles = ${JSON.stringify(definitionFiles, null, 2)};\n`
      );
      const generated = out.join("");
      fs.writeFileSync(path.join(dirname, "..", "cli", "index.generated.js"), generated);
      return {
        contents: generated,
        loader: "js"
      };
    });
  }
};

// Diagnostic messages integration

const diagnosticsPlugin = {
  name: "diagnostics",
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
};

// Web template integration

const webPlugin = {
  name: "web",
  setup(build) {
    build.onEnd(() => {
      const startTime = Date.now();
      const stdout = [];
      console.log(`${time()} - ${"web"} - Starting new build ...`);
      childProcess.spawn("node", [ "./build-web.js" ], {
        cwd: dirname,
        stdio: "pipe"
      }).on("data", data => {
        stdout.push(data.toString());
      }).on("error", err => {
        const duration = Date.now() - startTime;
        console.log(stdout.join(""));
        console.log(`${time()}  - ${"web"} - ${stdoutColors.red("ERROR")} (had errors, ${duration} ms)`);
      }).on("close", code => {
        if (code) return;
        const duration = Date.now() - startTime;
        console.log(`${time()} - ${"web"} - ${stdoutColors.green("SUCCESS")} (no errors, ${duration} ms)`);
      });
    });
  }
};

// Build compiler and CLI

const common = {
  target: "esnext",
  platform: "node",
  format: "esm",
  external: [
    "assemblyscript",
    "binaryen",
    "long"
  ],
  legalComments: "none",
  bundle: true,
  sourcemap: true,
  treeShaking: true,
  minify: true,
  watch,
  incremental: watch
};

const srcBuild = esbuild.build({
  entryPoints: [ "./src/index.ts" ],
  tsconfig: "./src/tsconfig.json",
  outfile: "./dist/assemblyscript.js",
  banner: { js: prelude("The AssemblyScript compiler") },
  plugins: [ diagnosticsPlugin, reportPlugin("src") ],
  ...common
});

const cliBuild = esbuild.build({
  entryPoints: [ "./cli/index.js" ],
  tsconfig: "./cli/tsconfig.json",
  outfile: "./dist/asc.js",
  banner: { js: prelude("The AssemblyScript frontend") },
  plugins: [ stdlibPlugin, webPlugin, reportPlugin("cli") ],
  ...common
});

// Optionally build definitions (takes a while)

var buildingDefinitions = false;

function buildDefinitions() {
  const startTime = Date.now();
  const stdout = [];
  console.log(`${time()} - ${"dts"} - Starting new build ...`);
  buildingDefinitions = true;
  childProcess.spawn("node", [ "./build-dts.js" ], {
    cwd: dirname,
    stdio: "pipe"
  }).on("data", data => {
    stdout.push(data.toString());
  }).on("error", err => {
    buildingDefinitions = false;
    const duration = Date.now() - startTime;
    console.log(stdout.join(""));
    console.log(`${time()}  - ${"dts"} - ${stdoutColors.red("ERROR")} (had errors, ${duration} ms)`);
  }).on("close", code => {
    buildingDefinitions = false;
    if (code) return;
    const duration = Date.now() - startTime;
    console.log(`${time()} - ${"dts"} - ${stdoutColors.green("SUCCESS")} (no errors, ${duration} ms)`);
  });
}

if (watch) {
  console.log("Watching for changes. Press RETURN to rebuild definitions.\n");
  process.stdin.on("data", data => {
    if (data === "\r\n" || data === "\n") {
      process.stdout.write("\u001b[1A");
      if (!buildingDefinitions) buildDefinitions();
    }
  });
}

console.log(`src : Compiler as a library
cli : Compiler frontend asc
dts : TS definition bundles
web : Example web template\n`);

await Promise.all([ srcBuild, cliBuild ]);
buildDefinitions();
