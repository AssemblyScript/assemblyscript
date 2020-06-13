// Make sure that we are not publishing a v1 just yet

const pkg = require("../package.json");

if (!/^0\./.test(pkg.version)) {
  throw Error("Unexpected version: " + pkg.version);
}
