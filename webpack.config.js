var path = require("path");
var webpack = require("webpack");

module.exports = {
  entry: [ "./src/glue/js.js", "./src/index.ts" ],
  module: {
    rules: [
      {
        test: /\.ts$/,
        use: "ts-loader",
        exclude: /node_modules/
      }
    ]
  },
  externals: [ "binaryen", "../../lib/binaryen" ],
  resolve: {
    extensions: [ ".ts", ".js" ]
  },
  output: {
    filename: "assemblyscript.js",
    path: path.resolve(__dirname, "dist"),
    library: "assemblyscript",
    libraryTarget: "umd"
  },
  plugins: [
    new webpack.optimize.UglifyJsPlugin({
      minimize: true,
      sourceMap: true
    }),
    new webpack.SourceMapDevToolPlugin({
      filename: "assemblyscript.js.map"
    })
  ]
}
