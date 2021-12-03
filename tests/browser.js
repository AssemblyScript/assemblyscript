import * as asc from "../dist/asc.js";

if (typeof asc.definitionFiles.assembly !== "string") throw Error("missing bundled assembly.d.ts");
if (typeof asc.definitionFiles.portable !== "string") throw Error("missing bundled portable.d.ts");

const files = { "index.ts": `export function test(): void {}` };

console.log("# asc --version");
{
  const { stdout, stderr } = await asc.main([ "--version" ]);

  console.log(">>> STDOUT >>>");
  process.stdout.write(stdout.toString());
  console.log(">>> STDERR >>>");
  process.stdout.write(stderr.toString());
}

console.log("\n# asc --help");
{
  const { stdout, stderr } = await asc.main([ "--help" ]);

  console.log(">>> STDOUT >>>");
  process.stdout.write(stdout.toString());
  console.log(">>> STDERR >>>");
  process.stdout.write(stderr.toString());
}

console.log("\n# asc index.ts --textFile");
{
  const { error, stdout, stderr } = await asc.main([ "index.ts", "--textFile" ], {
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
  });

  if (error) {
    console.log(">>> THROWN >>>");
    console.log(error);
  }
  console.log(">>> STDOUT >>>");
  process.stdout.write(stdout.toString());
  console.log(">>> STDERR >>>");
  process.stdout.write(stderr.toString());
}

console.log("\n# asc.compileString");
{
  const { stdout, stderr, text, binary } = await asc.compileString(`export function test(): void {}`, { optimizeLevel: 3, exportTable: true, measure: true });
  console.log(">>> .stdout >>>");
  process.stdout.write(stdout.toString());
  console.log(">>> .stderr >>>");
  process.stdout.write(stderr.toString());
  console.log(">>> .text >>>");
  process.stdout.write(text);
  console.log(">>> .binary >>> " + binary.length + " bytes");
}
