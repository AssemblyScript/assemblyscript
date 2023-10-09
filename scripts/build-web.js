import { dirname, join } from "path";
import fs from "fs";
import { fileURLToPath } from "url";

const __dirname = dirname(fileURLToPath(import.meta.url));

export function buildWeb() {
  const pkg = JSON.parse(fs.readFileSync(join(__dirname, "../package-lock.json")));

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

  fs.writeFileSync(join(__dirname, "..", "dist", "importmap.json"), `${JSON.stringify(importmap, null, 2)}
  `);
  fs.writeFileSync(join(__dirname, "..", "dist", "web.js"), `var ASSEMBLYSCRIPT_VERSION = ${JSON.stringify(mainVersion)};
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
}