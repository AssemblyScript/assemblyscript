const fs = require("fs");
const path = require("path");

// Make sure that we are not publishing a v1 just yet
const mainPkg = require("../package.json");
if (!/^0\./.test(mainPkg.version)) {
  throw Error("Unexpected version: " + mainPkg.version);
}

// Sync lib with main package
[
  "lib/loader"
].forEach(dir => {
  const pkgFile = path.join(__dirname, "..", dir, "package.json");
  const pkg = require(pkgFile);
  pkg.version = mainPkg.version;
  fs.writeFileSync(pkgFile, JSON.stringify(pkg, null, 2));
});
