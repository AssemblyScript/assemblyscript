#!/usr/bin/env node

const [ nodePath, thisPath, ...args ] = process.argv;
const nodeArgs = process.execArgv;

const hasSourceMaps = nodeArgs.includes("--enable-source-maps");
const posCustomArgs = args.indexOf("--");
const isDeno = typeof Deno !== "undefined";

if (isDeno) {
  process.on = function() { /* suppress 'not implemented' message */ };
}

if ((!hasSourceMaps || ~posCustomArgs) && !isDeno) {
  if (!hasSourceMaps) {
    nodeArgs.push("--enable-source-maps");
  }
  if (~posCustomArgs) {
    nodeArgs.push(...args.slice(posCustomArgs + 1));
    args.length = posCustomArgs;
  }
  const { status, signal } = (await import("child_process")).spawnSync(
    nodePath,
    [...nodeArgs, thisPath, ...args],
    { stdio: "inherit" }
  );
  if (status || signal) process.exitCode = 1;
} else {
  const apiResult = (await import("../dist/asc.js")).main(process.argv.slice(2), {
    stdout: process.stdout,
    stderr: process.stderr
  });
  const { error }  = await apiResult;
  if (error) process.exitCode = 1;
}
