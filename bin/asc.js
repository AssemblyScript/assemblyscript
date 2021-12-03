#!/usr/bin/env node

import childProcess from "child_process";

const [ nodePath, thisPath, ...args ] = process.argv;
const nodeArgs = process.execArgv;

const hasSourceMaps = nodeArgs.includes("--enable-source-maps");
const posCustomArgs = args.indexOf("--");

if (!hasSourceMaps || ~posCustomArgs) {
  if (!hasSourceMaps) {
    nodeArgs.push("--enable-source-maps");
  }
  if (~posCustomArgs) {
    nodeArgs.push(...args.slice(posCustomArgs + 1));
    args.length = posCustomArgs;
  }
  childProcess.spawnSync(
    nodePath,
    [...nodeArgs, thisPath, ...args],
    { stdio: "inherit" }
  );
} else {
  const asc = await import("../dist/asc.js");
  const { error } = await asc.main(process.argv.slice(2), {
    stdout: process.stdout,
    stderr: process.stderr
  });
  if (error) process.exitCode = 1;
}
