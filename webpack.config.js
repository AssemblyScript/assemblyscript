const path = require("path");
const webpack = require("webpack");
const CheckerPlugin = require('fork-ts-checker-webpack-plugin');

const {
  NoEmitOnErrorsPlugin,
} = webpack;

const {
  OccurrenceOrderPlugin,
  AggressiveMergingPlugin,
  ModuleConcatenationPlugin,
} = webpack.optimize;

module.exports = {
  entry: [ "./src/glue/js.js", "./src/index.ts" ],
  module: {
    rules: [
      {
        test: /\.ts$/,
        loader: 'ts-loader',
        options: {
          transpileOnly: true,
        },
        exclude: [
          /node_modules/,
          /tests/,
          /dist/,
          /bin/,
          /scripts/,
          /examples/
        ]
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
    libraryTarget: "umd"
  },
  plugins: [
    new NoEmitOnErrorsPlugin(),
    new CheckerPlugin({
      tsconfig: path.resolve(__dirname, "src/tsconfig.json"),
      silent: true,
      tslint: false
    }),
    new webpack.optimize.UglifyJsPlugin({
      minimize: true,
      sourceMap: true
    }),
    new webpack.SourceMapDevToolPlugin({
      filename: "assemblyscript.js.map"
    })
  ]
}
