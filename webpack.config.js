const path = require("path");
const fs = require("fs");
const webpack = require("webpack");
const TerserPlugin = require('terser-webpack-plugin');

function preamble(name) {
  return [
    "/**",
    " * @license",
    " * " + name,
    " * Copyright Daniel Wirtz / The AssemblyScript Authors.",
    " * SPDX-License-Identifier: Apache-2.0",
    " */"
  ].join("\n");
}

// Build the C-like library
const lib = {
  mode: "production",
  target: ["web", "es6"],
  entry: [ "./src/glue/js", "./src/index.ts" ],
  module: {
    rules: [
      {
        test: /\.ts$/,
        use: "ts-loader",
        exclude: /node_modules/
      }
    ]
  },
  externals: [
    "binaryen"
  ],
  resolve: {
    extensions: [ ".ts", ".js" ]
  },
  output: {
    filename: "assemblyscript.js",
    path: path.resolve(__dirname, "dist"),
    library: "assemblyscript",
    libraryTarget: "umd",
    globalObject: "typeof self !== 'undefined' ? self : this"
  },
  devtool: "source-map",
  performance: {
    hints : false
  },
  optimization: {
    minimize: true,
    minimizer: [
      new TerserPlugin({
        terserOptions: {
          output: {
            comments: false,
            preamble: preamble("The AssemblyScript Compiler.")
          }
        },
        parallel: true,
        extractComments: false
      })
    ],
  }
};

// Build asc for browser usage
const shimDir = path.join(__dirname, "cli", "shim");
const bin = {
  mode: "production",
  target: ["web", "es6"],
  context: path.join(__dirname, "cli"),
  entry: [ "./asc.js" ],
  externals: [
    "binaryen",
    "assemblyscript"
  ],
  node: {
    global: true
  },
  output: {
    filename: "asc.js",
    path: path.resolve(__dirname, "dist"),
    library: "asc",
    libraryTarget: "umd",
    globalObject: "typeof self !== 'undefined' ? self : this"
  },
  devtool: "source-map",
  performance: {
    hints : false
  },
  plugins: [
    new webpack.DefinePlugin({
      BUNDLE_VERSION: JSON.stringify(require("./package.json").version),
      BUNDLE_LIBRARY: (() => {
        const libDir = path.join(__dirname, "std", "assembly");
        const libFiles = require("glob").sync("**/!(*.d).ts", { cwd: libDir });
        const lib = {};
        libFiles.forEach(file => lib[file.replace(/\.ts$/, "")] = bundleFile(path.join(libDir, file)));
        return lib;
      })(),
      BUNDLE_DEFINITIONS: {
        "assembly": bundleFile(path.join(__dirname, "std", "assembly", "index.d.ts")),
        "portable": bundleFile(path.join(__dirname, "std", "portable", "index.d.ts"))
      },
      __dirname: JSON.stringify(".")
    }),

    // Browser shims
    new webpack.NormalModuleReplacementPlugin(/^path$/, path.join(shimDir, "path")),
    new webpack.NormalModuleReplacementPlugin(/^process$/, path.join(shimDir, "process")),
    new webpack.NormalModuleReplacementPlugin(/^fs$/, path.join(shimDir, "fs"))
  ],
  optimization: {
    minimize: true,
    minimizer: [
      new TerserPlugin({
        terserOptions: {
          output: {
            comments: false,
            preamble: preamble("The AssemblyScript Compiler Frontend.")
          }
        },
        parallel: true,
        extractComments: false
      })
    ],
  }
};

function bundleFile(filename) {
  return JSON.stringify(fs.readFileSync(filename, { encoding: "utf8" }).replace(/\r\n/g, "\n"));
}

module.exports = [ lib, bin ];
