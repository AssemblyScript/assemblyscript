
const webpack = require("webpack");
const path = require("path");
const fs = require("fs");

// Build the transformer
function _config(files, outfolder, toBundle) { 
  const config = {
    entry: files,
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
      path: outfolder,
      library: "transformer",
      libraryTarget: "umd",
      globalObject: "typeof self !== 'undefined' ? self : this"
    },
    node: {
      fs: 'empty'
    }  
  };
  return (env, argv) => {
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
          BUNDLE: (() => {
            if (toBundle){
            const lib = {};
            toBundle.forEach(file => lib[path.basename(file).replace(/\.ts$/, "")] = bundleFile(file));
            return lib;
            }
          })(),
      })
    ]
    return config;
  }
}
function bundleFile(filename) {
  return JSON.stringify(fs.readFileSync(filename, { encoding: "utf8" }).replace(/\r\n/g, "\n"));
}

module.exports = _config;