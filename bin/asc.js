#!/usr/bin/env node

import childProcess from "child_process";
import sourceMapSupport from "source-map-support";

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

if (!tryApplyNodeArguments()) {
  sourceMapSupport.install();
  const asc = await import("assemblyscript/asc");
  process.exitCode = asc.main(process.argv.slice(2));
}
