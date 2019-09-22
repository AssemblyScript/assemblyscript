const { spawn } = require('child_process');

const tests = [
    "cd ./packages/packages/as && node ../../../../bin/asc as/index.ts --noEmit --runtime stub --validate",
    "cd ./packages/packages/b && node ../../../../bin/asc assembly/index.ts --noEmit --runtime stub && node ../../../../bin/asc assembly/index.ts --noEmit --runtime stub --listFiles",
    "cd ./packages/packages/c && node ../../../../bin/asc assembly/index.ts --noEmit --runtime stub --validate",
    "cd ./packages/packages/d && node ../../../../bin/asc assembly/index.ts --path packages --noEmit --runtime stub --validate --traceResolution",
    "cd ./packages/packages/d/packages/e && node ../../../../../../bin/asc assembly/index.ts --noEmit --runtime stub --validate",
    "cd ./packages/packages/d/packages/e/packages/f && node ../../../../../../../../bin/asc assembly/index.ts --noEmit --runtime stub --validate",
    "cd ./packages/packages/g && node test.js",
    "cd ./packages/packages/h && node ../../../../bin/asc assembly/index.ts --noEmit --runtime none --validate --traceResolution"
]

function performTest(args) {
  return new Promise((resolve) => {
    const result = {
      failed: false,
      skipped: false,
      skippedMessage: undefined,
      failedMessage: undefined
    }

    console.log(__dirname);
    const test = spawn(args.arg);
    test.stdout.on('data', (data) => {
      console.log(`stdout: ${data}`);
    });
    
    test.stderr.on('data', (data) => {
      result.failed = true;
      console.error(`stderr: ${data}`);
    });
    
    test.on('close', (code) => {
      resolve(result);
      console.log(`child process exited with code ${code}`);
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
  workers: 6
}