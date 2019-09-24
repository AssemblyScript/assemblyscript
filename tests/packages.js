const { spawn } = require('child_process');
const path = require('path');

const tests = [
    ["./packages/packages/as", "node ../../../../bin/asc as/index.ts --noEmit --runtime stub --validate"],
    ["./packages/packages/b", "node ../../../../bin/asc assembly/index.ts --noEmit --runtime stub"],
    ["./packages/packages/b", "node ../../../../bin/asc assembly/index.ts --noEmit --runtime stub --listFiles"],
    ["./packages/packages/c", "node ../../../../bin/asc assembly/index.ts --noEmit --runtime stub --validate"],
    ["./packages/packages/d", "node ../../../../bin/asc assembly/index.ts --path packages --noEmit --runtime stub --validate --traceResolution"],
    ["./packages/packages/d/packages/e", "node ../../../../../../bin/asc assembly/index.ts --noEmit --runtime stub --validate"],
    ["./packages/packages/d/packages/e/packages/f", "node ../../../../../../../../bin/asc assembly/index.ts --noEmit --runtime stub --validate"],
    ["./packages/packages/g", "node test.js"],
    ["./packages/packages/h", "node ../../../../bin/asc assembly/index.ts --noEmit --runtime none --validate --traceResolution"]
]

function performTest(args) {

  return new Promise((resolve) => {
    const result = {
      failed: false,
      skipped: false,
      skippedMessage: undefined,
      failedMessage: undefined
    }

    const parts = args.arg[1].split(" ");
    const node = parts.shift();
    const test = spawn(node, parts, {
      cwd: path.join(__dirname, args.arg[0])
    });
    // test.stdout.on('data', (data) => {
    //   console.log(`stdout: ${data}`);
    // });
    
    // test.stderr.on('data', (data) => {
    //   result.failed = true;
    //   console.error(`stderr: ${data}`);
    // });
    
    test.on('close', (code) => {
      if (code > 0) {
        result.failed = true;
      }
      resolve(result);
      // console.log(`child process exited with code ${code}`);
    });
  });
}

function postTest(results) {
  console.log("Packages tests finished");
}

module.exports = {
  suiteName: "packages",
  tests,
  postTest,
  performTest,
  workers: 2
}