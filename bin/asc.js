#!/usr/bin/env node

import childProcess from "child_process";

const [ nodePath, thisPath, ...args ] = process.argv;
const nodeArgs = process.execArgv;

const hasSourceMaps = nodeArgs.includes("--enable-source-maps");
const hasCustomArgs = args.includes("--");

if (!hasSourceMaps || hasCustomArgs) {
  if (!hasSourceMaps) {
    nodeArgs.push("--enable-source-maps");
  }
  if (hasCustomArgs) {
    const index = args.indexOf("--");
    nodeArgs.push(...args.slice(index + 1));
    args.length = index;
  }
  childProcess.spawnSync(
    nodePath,
    [...nodeArgs, thisPath, ...args],
    { stdio: "inherit" }
  );
} else {
  const asc = await import("../dist/asc.js");
  const { error } = await asc.main(process.argv.slice(2));
  if (error) process.exitCode = 1;
}
