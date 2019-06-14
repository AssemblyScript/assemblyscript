let cp = require('child_process')
let cmd = /^win/.test(process.platform) ? 'npm.cmd' : 'npm';

cp.spawn(cmd, ['install'], { env: process.env, cwd: __dirname, stdio: 'inherit' })
    .on("error", (error) => {console.error(error); process.exit(1)})
    .on("close", (code, signal) => {
    if (code != 0 ){
        process.exit(1);
    }
    cp.spawn(cmd, ['run', 'test'], { env: process.env, cwd: __dirname, stdio: 'inherit' })
      .on("error", (error) => {console.error(error); process.exit(1)})
      .on("close", (code, signal) => {
      if (code != 0 ){
          process.exit(1);
      }});
});

