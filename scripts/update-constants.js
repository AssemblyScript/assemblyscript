// Updates the Binaryen constants in src/module.ts

const fs = require("fs");
const path = require("path");
const binaryen = require("binaryen");

const srcfile = path.join(__dirname, "..", "src", "module.ts");
var src = fs.readFileSync(srcfile, "utf8");

binaryen.ready.then(() => {
  src = src.replace(/(?:enum|namespace) (\w+) \{([^}]*)\}/g, function($0) {
    return $0.replace(/(\w+)[ ]+=[ ]+([^,;\n]+)/g, function($0, key, val) {
      var match = val.match(/\b(_(?:Binaryen|Relooper|ExpressionRunner)\w+)\b/);
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
});
