let glob = require("glob").sync
let cp = require('child_process')
let path = require('path');

function exec(commands) {
    glob(__dirname+"/**/packages/*").forEach((_path) => {
        let buildcommands = require(path.join(_path, 'package.json')).scripts.build.split(" && ")
        for (let cmds of buildcommands){
            let child = cp.spawn('node', cmds.split(" "), { env: process.env, cwd: _path, stdio: 'inherit' })
                .on("error", (error) => {console.error(error); process.exit(1)})
                .on("close", (code, signal) => {
                if (code != 0 ){
                    console.error(path.basename(_path) + " Failed");
                    process.exit(1);
                }else {
                    console.log(path.basename(_path) + " Passed");
                }});

        }
    });
}

exec(process.argv.slice(2))