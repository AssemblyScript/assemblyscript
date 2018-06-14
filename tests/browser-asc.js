const asc = require("../dist/asc.js");

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
  readFile: (name) => {
    console.log("readFile: " + name);
    if (files.hasOwnProperty(name)) return files[name];
    return null;
  },
  writeFile: (name, data) => {
    console.log("writeFile: " + name);
  },
  listFiles: (dirname) => {
    console.log("listFiles: " + dirname);
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

const output = asc.compileString(`import "allocator/arena";`, { optimize: 2 });
console.log(">>> .stdout >>>");
process.stdout.write(output.stdout.toString());
console.log(">>> .stderr >>>");
process.stdout.write(output.stderr.toString());
console.log(">>> .text >>>");
process.stdout.write(output.text);
console.log(">>> .binary >>> " + output.binary.length + " bytes");
