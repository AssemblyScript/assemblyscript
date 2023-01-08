import child_process from "child_process";

// restarts the test forever, that is, until an issue is detected

if (process.argv.length < 2) {
  console.error("Usage: npm run test:forever <allocator>");
  process.exit(1);
}

let count = 0;
while (true) {
  console.log("[ #" + ++count + " ]\n");
  let res = child_process.spawnSync("node", [ "./index", process.argv[2] ], { stdio: "inherit" });
  if (res.status !== 0)
    throw Error("exited with " + res.status);
  if (res.error)
    throw res.error;
}
