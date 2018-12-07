const asc = require("../dist/asc.js");

if (typeof asc.definitionFiles.assembly !== "string") throw Error("missing bundled assembly.d.ts");
if (typeof asc.definitionFiles.portable !== "string") throw Error("missing bundled portable.d.ts");

const stdout = asc.createMemoryStream();
const stderr = asc.createMemoryStream();
const files = { "module.ts": `import "allocator/arena";` };

console.log("# asc --version");

asc.main([
  "--version"
], {
  stdout: stdout,
  stderr: stderr
}, err => {
  console.log(">>> STDOUT >>>");
  process.stdout.write(stdout.toString());
  stdout.reset();
  console.log(">>> STDERR >>>");
  process.stdout.write(stderr.toString());
  stderr.reset();
});

console.log("\n# asc --help");

asc.main([
  "--help"
], {
  stdout: stdout,
  stderr: stderr
}, err => {
  console.log(">>> STDOUT >>>");
  process.stdout.write(stdout.toString());
  stdout.reset();
  console.log(">>> STDERR >>>");
  process.stdout.write(stderr.toString());
  stderr.reset();
});

console.log("\n# asc module.ts --textFile");

asc.main([
  "module.ts",
  "--textFile"
], {
  stdout: stdout,
  stderr: stderr,
  readFile: (name, baseDir) => {
    console.log("readFile: " + name + ", baseDir=" + baseDir);
    if (files.hasOwnProperty(name)) return files[name];
    return null;
  },
  writeFile: (name, data, baseDir) => {
    console.log("writeFile: " + name + ", baseDir=" + baseDir);
  },
  listFiles: (dirname, baseDir) => {
    console.log("listFiles: " + dirname + ", baseDir=" + baseDir);
    return [];
  }
}, err => {
  if (err) {
    console.log(">>> THROWN >>>");
    console.log(err);
  }
});

console.log(">>> STDOUT >>>");
process.stdout.write(stdout.toString());
console.log(">>> STDERR >>>");
process.stdout.write(stderr.toString());

console.log("\n# asc.compileString");

const output = asc.compileString(`import "allocator/arena";`, { optimizeLevel: 2 });
console.log(">>> .stdout >>>");
process.stdout.write(output.stdout.toString());
console.log(">>> .stderr >>>");
process.stdout.write(output.stderr.toString());
console.log(">>> .text >>>");
process.stdout.write(output.text);
console.log(">>> .binary >>> " + output.binary.length + " bytes");
