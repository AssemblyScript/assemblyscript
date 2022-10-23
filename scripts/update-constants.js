// Updates the Binaryen constants in src/module.ts

import fs from "fs";
import path from "path";
import { fileURLToPath } from "url";
import binaryen from "../lib/binaryen.js";

const __dirname = path.dirname(fileURLToPath(import.meta.url));

const srcfile = path.join(__dirname, "..", "src", "module.ts");
let src = fs.readFileSync(srcfile, "utf8")
  .replace(/(?:enum|namespace) (\w+) \{([^}]*)\}/g, function($0) {
    return $0.replace(/(\w+)[ ]+=[ ]+([^,;\n]+)/g, function($0, key, val) {
      // ignore values which have runtime assignments
      if (val.startsWith("binaryen.")) {
        return $0;
      }
      let match = val.match(/\b(_(?:Binaryen|Relooper|ExpressionRunner|TypeBuilder)\w+)\b/);
      if (match) {
        let fn = match[1];
        if (typeof binaryen[fn] !== "function") throw Error("API mismatch on '" + fn + "': Is Binaryen up to date?");
        let id = binaryen[fn]();
        console.log(fn + " = " + id);
        return key + " = " + id + " /* " + fn + " */";
      }
      return $0;
    });
  });
fs.writeFileSync(srcfile, src, "utf8");
