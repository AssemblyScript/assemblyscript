const asc = require("../dist/asc.js");

function log(arg) {
  console.log(arg);
}

const stdout = asc.createMemoryStream(arg => {
  console.log("out:", arg);
});
const stderr = asc.createMemoryStream(arg => {
  console.log("err:", arg);
});

const files = {
  "/module.ts": `import "allocator/arena";`
};

asc.main([
  "./module.ts",
  "--textFile"
], {
  stdout: stdout,
  stderr: stderr,
  readFile: (name) => {
    console.log("readFile: " + name);
    if (files.hasOwnProperty(name)) {
      return files[name];
    }
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
  console.log(">>> STDOUT >>>");
  process.stdout.write(stdout.toString());
  console.log(">>> STDERR >>>");
  process.stdout.write(stderr.toString());
});
