const path = require("path");
const fs = require("fs");
const webpack = require("webpack");

// Build the C-like library
const lib = {
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
  externals: [ "binaryen" ],
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
  }
};

// Build asc for browser usage
const bin = {
  context: path.join(__dirname, "cli"),
  entry: [ "./asc.js" ],
  externals: [{
    "../dist/assemblyscript.js": "assemblyscript"
  }],
  node: {
    "buffer": false,
    "fs": "empty",
    "global": true,
    "os": false,
    "process": "mock",
    "crypto": false
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
    new webpack.IgnorePlugin(/\.\/src|package\.json|^(ts\-node|glob)$/)
  ]
};

function bundleFile(filename) {
  return JSON.stringify(fs.readFileSync(filename, { encoding: "utf8" }).replace(/\r\n/g, "\n"));
}

module.exports = [ lib, bin ];
