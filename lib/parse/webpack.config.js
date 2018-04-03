const fs = require("fs");
const path = require("path");
const webpack = require("webpack");

const wasmData = fs.readFileSync(__dirname + "/build/index.wasm");

module.exports = {
  entry: [ "./src/index.ts" ],
  module: {
    rules: [
      {
        test: /\.ts$/,
        use: "ts-loader",
        exclude: /node_modules/
      }
    ]
  },
  resolve: {
    extensions: [ ".ts", ".js" ]
  },
  node: {
    fs: false
  },
  output: {
    filename: "index.js",
    path: __dirname,
    library: "asparse",
    libraryTarget: "umd",
    globalObject: "typeof self !== 'undefined' ? self : this"
  },
  plugins: [
    new webpack.DefinePlugin({
      WASM_DATA: JSON.stringify(wasmData.toString("base64"))
    })
  ],
  devtool: "source-map"
};
