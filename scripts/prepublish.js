// Reconfigures the repository before publishing

const fs = require("fs");
const path = require("path");
const pkg = require("../package.json");
const devFiles = require("./postpublish-files.json");

if (!pkg.releaseFiles) {
  console.log("Package has already been updated");
  return;
}

console.log("Backing up development files ...");

devFiles.forEach(originalName => {
  const backupName = originalName + ".backup";
  console.log("- " + originalName + " -> " + backupName);
  fs.copyFileSync(
    path.join(__dirname, "..", originalName),
    path.join(__dirname, "..", backupName)
  );
});

console.log("Updating package.json ...");

// Stuff we don't need in release
Object.keys(pkg.devDependencies).forEach(dep => delete pkg.dependencies[dep]);
delete pkg.devDependencies;
delete pkg.scripts;

// Stuff we want in release
pkg.files = pkg.releaseFiles;
delete pkg.releaseFiles;

// Copy contributors from NOTICE to .contributors
const notice = fs.readFileSync(path.join(__dirname, "..", "NOTICE"), "utf8");
const noticeRange = ["dcode.io>", "Portions of this software"];
const posStart = notice.indexOf(noticeRange[0]);
const posEnd = notice.indexOf(noticeRange[1], posStart);
if (posStart < 0 || posEnd < 0) throw Error("unexpected NOTICE format");
pkg.contributors = [];
for (let entry of notice.substring(posStart + noticeRange[0].length, posEnd).trim().matchAll(/^\* ([^<\n]+(?: <([^>\n]+)>))/mg)) {
  pkg.contributors.push(entry[1]);
}
if (!pkg.contributors.length) throw Error("missing contributors");
fs.writeFileSync(path.join(__dirname, "..", "package.json"), [
  JSON.stringify(pkg, null, 2), '\n'
].join(""));

console.log("Copying index.release.js -> index.js ...");
fs.copyFileSync(
  path.join(__dirname, "..", "index.release.js"),
  path.join(__dirname, "..", "index.js")
);

console.log("Copying index.release.d.ts -> index.d.ts ...");
fs.copyFileSync(
  path.join(__dirname, "..", "index.release.d.ts"),
  path.join(__dirname, "..", "index.d.ts")
);

// We are going to use these immediately, so, to be sure:
setTimeout(() => console.log("OK"), 2000);
