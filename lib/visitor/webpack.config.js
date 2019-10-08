const path = require("path");
const webpack = require("webpack");

// Build the transformer
let config = {
  entry: {
   jsonbindings:"./src/index.ts",
   ASTPrinter: "./src/printer.ts"
  },
  module: {
    rules: [
      {
        test: /\.ts$/,
        loader: "ts-loader",
        exclude: /node_modules/
      }
    ]
  },
  resolve: {
    extensions: [ ".ts", ".js" ]
  },
  output: {
    filename: "[name].js",
    path: path.resolve(__dirname, "dist"),
    library: "transformer",
    libraryTarget: "umd",
    globalObject: "typeof self !== 'undefined' ? self : this"
  },
  node: {
    fs: 'empty'
  }  
};

module.exports = (env, argv) => {
  let dev = false;
  if (argv.mode == "development") {
    config.devtool = 'source-map';
    dev = true;
  } else {
    argv.mode = "production";
  }
  config.plugins = [
    new webpack.DefinePlugin({
        DEV: dev,
        unmanaged: ()=>{}
    })
  ]
  return config;
}