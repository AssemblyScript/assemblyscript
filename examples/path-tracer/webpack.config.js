const path = require("path");
const webpack = require("webpack");
const nodeExternals = require("webpack-node-externals");

const entry =
    process.env.NODE_ENV === "prod"
        ? {
              xray: "./js-app/src/index.ts",
              "xray.min": "./js-app/src/index.ts",
          }
        : {
              xray: "./js-app/src/index.ts",
          };

module.exports = {
    mode: "development",
    target: "web",
    context: __dirname,
    entry: entry,
    externals: [nodeExternals()],
    devtool: "source-map",
    resolve: {
        // Add ".ts" and ".tsx" as a resolvable extension.
        extensions: [".ts", ".js"],
        alias: {
            "~assembly": path.join(__dirname, "./assembly/src"),
        },
    },
    plugins: [
        new webpack.DefinePlugin({
            VERSION: JSON.stringify(require("./package.json").version),
        }),
    ],
    module: {
        rules: [
            {
                test: /\.(obj|txt)$/,
                loader: "raw-loader",
                exclude: [/(node_modules)/, /(test)/, /(out)/],
            },
            {
                test: /\.tsx?$/,
                loader: "ts-loader",
                exclude: [/(node_modules)/, /(test)/, /(out)/],
            },
        ],
    },
    output: {
        filename: "[name].js",
        path: path.resolve(__dirname, "./build/xray"),
        library: "xray",
        libraryTarget: "umd",
    },
};
