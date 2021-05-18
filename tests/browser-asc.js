const asc = require("../dist/asc.js");
const {
  Parser,
  newProgram,
  newOptions,
} = require("../src");


if (typeof asc.definitionFiles.assembly !== "string") throw Error("missing bundled assembly.d.ts");
if (typeof asc.definitionFiles.portable !== "string") throw Error("missing bundled portable.d.ts");

const stdout = asc.createMemoryStream();
const stderr = asc.createMemoryStream();
const files = { "module.ts": `export function test(): void {}` };

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
    if (Object.prototype.hasOwnProperty.call(files, name)) return files[name];
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

const output = asc.compileString(`export function test(): void {}`, { optimizeLevel: 3, exportTable: true, measure: true });
console.log(">>> .stdout >>>");
process.stdout.write(output.stdout.toString());
console.log(">>> .stderr >>>");
process.stdout.write(output.stderr.toString());
console.log(">>> .text >>>");
process.stdout.write(output.text);
console.log(">>> .binary >>> " + output.binary.length + " bytes");

const code = `"hello world"`;
const program = newProgram(newOptions());
const parser = program.parser;
parser.parseFile(code, "index.ts", true);
console.log(`Before replaceSource node kind: ${parser.sources[0].statements[0].kind}`);
const newCode = `{}`;
const newParser = new Parser();
newParser.parseFile(newCode, "index2.ts", true);

const internalPath = parser.sources[0].internalPath;
const newCodeSource = newParser.sources[0];
newCodeSource.internalPath = internalPath;
program.replaceSource(newCodeSource);
console.log(`After replaceSource node kind: ${parser.sources[0].statements[0].kind}`);
if (program.sources[0] != newCodeSource) {
  throw new Error("source code have not been updated after calling replaceSource!");
}