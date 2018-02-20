var child_process = require("child_process");

// restarts the test forever, that is, until an issue is detected

var count = 0;
while (true) {
  console.log("[ #" + ++count + " ]\n");
  var script = process.argv.length > 2
    ? __dirname + "/" + process.argv[2]
    : __dirname;
  var res = child_process.spawnSync("node", [ script ], { stdio: "inherit" });
  if (res.status !== 0)
    throw Error("exited with " + res.status);
  if (res.error)
    throw res.error;
}
