import fs from "fs";
import path from "path";
import { createRequire } from "module";
import { fileURLToPath } from "url";

const require = createRequire(import.meta.url);
const dirname = path.dirname(fileURLToPath(import.meta.url));

const reset = process.argv[2] === "--reset";

if (reset) {
  fs.copyFileSync(
    path.join(dirname, "..", "package.json.backup"),
    path.join(dirname, "..", "package.json")
  );
  fs.unlinkSync(
    path.join(dirname, "..", "package.json.backup")
  );
} else {
  const pkg = require("../package.json");
  if (!pkg.scripts) throw Error("already modified");
  delete pkg.scripts;
  delete pkg.devDependencies;
  fs.copyFileSync(
    path.join(dirname, "..", "package.json"),
    path.join(dirname, "..", "package.json.backup")
  );
  fs.writeFileSync(
    path.join(dirname, "..", "package.json"),
    JSON.stringify(pkg, null, 2)
  );
}
