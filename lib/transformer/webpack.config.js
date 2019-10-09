const path = require("path");
const  config = require("./webpack.base");

const files = {
  ASTPrinter: "./src/examples/printer.ts",
  FuncVisitor: "./src/examples/functions.ts"
 };

const outfolder = path.resolve(__dirname, "dist");


module.exports = config(files, outfolder);
