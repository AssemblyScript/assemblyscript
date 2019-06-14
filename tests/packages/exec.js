let fs = require("fs");
let cp = require('child_process')
let cmd = /^win/.test(process.platform) ? 'npm.cmd' : 'npm';
let path = require("path");

function exec(commands) {
    fs.readdirSync(path.join(__dirname,"packages")).forEach((folder) => {
        let _path = path.join(__dirname, "packages", folder).toString();
        cp.spawn(cmd, commands, { env: process.env, cwd: _path, stdio: 'inherit' })
            .on("error", (error) => {console.error(error); process.exit(1)})
            .on("close", (code, signal) => {
            if (code != 0 ){
                process.exit(1);
            }});
    });
}

exec(process.argv.slice(2))