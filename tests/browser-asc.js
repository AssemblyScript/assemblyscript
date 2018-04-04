const asc = require("../dist/asc.js");

console.log("# asc.main");

const stdout = asc.createMemoryStream(arg => console.log("out:", arg));
const stderr = asc.createMemoryStream(arg => console.log("err:", arg));
const files = { "module.ts": `import "allocator/arena";` };

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
