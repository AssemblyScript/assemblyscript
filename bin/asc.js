#!/usr/bin/env node

import childProcess from "child_process";

function tryApplyNodeArguments() {
  const argv = process.argv;
  const tail = argv.indexOf("--");
  if (~tail) {
    childProcess.spawnSync(
      argv[0],
      argv.slice(tail + 1).concat(argv.slice(1, tail)),
      { stdio: "inherit" }
    );
    return true;
  }
  return false;
}

var asc;

if (!tryApplyNodeArguments()) {
  global.binaryen = (await import("binaryen")).default;
  global.assemblyscript = (await import("../index.js")).default;
  asc = await import("../cli/asc.js");
  process.exitCode = asc.main(process.argv.slice(2));
}

export default asc;