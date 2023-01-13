import path from "path";
import fs from "fs";
import { createRequire } from "module";
import { fileURLToPath } from "url";

const dirname = path.dirname(fileURLToPath(import.meta.url));
const require = createRequire(import.meta.url);
const pkg = require("../package-lock.json");

const mainVersion = pkg.version;
const binaryenVersion = pkg.dependencies.binaryen.version;
const longVersion = pkg.dependencies.long.version;

const distUrl = mainVersion === "0.0.0" ? `./` : `https://cdn.jsdelivr.net/npm/assemblyscript@${mainVersion}/dist/`;
const binaryenUrl = `https://cdn.jsdelivr.net/npm/binaryen@${binaryenVersion}/index.js`;
const longUrl = `https://cdn.jsdelivr.net/npm/long@${longVersion}/index.js`;
const importmap = {
  "imports": {
    "assemblyscript": `${distUrl}assemblyscript.js`,
    "assemblyscript/asc": `${distUrl}asc.js`,
    "binaryen": binaryenUrl,
    "long": longUrl
  }
};

fs.writeFileSync(path.join(dirname, "..", "dist", "importmap.json"), `${JSON.stringify(importmap, null, 2)}
`);
fs.writeFileSync(path.join(dirname, "..", "dist", "web.js"), `var ASSEMBLYSCRIPT_VERSION = ${JSON.stringify(mainVersion)};
var ASSEMBLYSCRIPT_IMPORTMAP = ${JSON.stringify(importmap, null, 2)};
if (!document.currentScript.src.includes("noinstall")) {
  let elem = document.createElement("script");
  elem.type = "importmap";
  elem.text = JSON.stringify(ASSEMBLYSCRIPT_IMPORTMAP);
  document.head.appendChild(elem);
}
if (!document.currentScript.src.includes("noshim")) {
  let elem = document.createElement("script");
  elem.async = true;
  elem.src = "https://cdn.jsdelivr.net/npm/es-module-shims@1/dist/es-module-shims.wasm.min.js";
  document.head.appendChild(elem);
}
`);
