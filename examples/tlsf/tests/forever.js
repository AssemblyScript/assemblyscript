var child_process = require("child_process");

// restarts the test forever, that is, until an issue is detected

var count = 0;
while (true) {
  console.log("[ #" + ++count + " ]\n");
  var res = child_process.spawnSync("node", [ "tests" ], { stdio: "inherit" });
  if (res.status !== 0)
    throw Error("exited with " + res.status);
  if (res.error)
    throw res.error;
}
