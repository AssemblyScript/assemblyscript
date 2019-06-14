var cp = require('child_process')

// Determine OS and set command accordingly
const cmd = /^win/.test(process.platform) ? 'npm.cmd' : 'npm';

cp.spawn(cmd, ['i'], { env: process.env, cwd: __dirname, stdio: 'inherit' })
  .on("error", () => exit(1))
  .on("close", (code, signal) => {
    if (code != 0 ){
        exit(1);
    }
    cp.spawn(cmd, ['run', 'test'], { env: process.env, cwd: __dirname, stdio: 'inherit' })
      .on("error", () => exit(1))
      .on("close", (code, signal) => {
       if (code != 0 ){
          exit(1);
        }
      });
});

