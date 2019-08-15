const path = require("path");

// Build the transformer
let config = {
  entry: "./src/index.ts" ,
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
  output: {
    filename: "transformerBundle.js",
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
  if (argv.mode == "development") {
    config.devtool = 'source-map';
  }
  return config;
}