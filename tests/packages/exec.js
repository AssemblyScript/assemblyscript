let glob = require("glob").sync
let cp = require('child_process')
let cmd = /^win/.test(process.platform) ? 'npm.cmd' : 'npm';

function exec(commands) {
    glob(__dirname+"/**/packages/*").forEach((_path) => {
        cp.spawn(cmd, commands, { env: process.env, cwd: _path, stdio: 'inherit' })
            .on("error", (error) => {console.error(error); process.exit(1)})
            .on("close", (code, signal) => {
            if (code != 0 ){
                process.exit(1);
            }});
    });
}

exec(process.argv.slice(2))