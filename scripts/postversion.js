// Make sure that we are not publishing a v1 just yet
const mainPkg = require("../package.json");
if (!/^0\./.test(mainPkg.version)) {
  throw Error("Unexpected version: " + mainPkg.version);
}
