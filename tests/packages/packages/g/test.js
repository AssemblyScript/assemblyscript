#!/usr/bin/env node
let glob = require("glob").sync;
let cp = require("child_process");
let cmd = /^win/.test(process.platform) ? "npm.cmd" : "npm";
let path = require("path");
let buffer = [];

function exec() {
    let commands = [
      path.join(__dirname, "..", "..", "node_modules", ".bin", "asc"),
      "assembly/index.ts",
      "--noEmit",
      "--runtime",
      "stub",
      "--validate",
      "--traceResolution"
    ];
  let child;
  child = cp
    .spawn("node", commands, { env: process.env, cwd: __dirname })
    .on("error", error => {
      console.error("ERROR " + error);
      process.exit(1);
    })
    .on("close", (code, signal) => {
      let res = buffer.join("");
      if (/ERROR.*Import file .*lib\/a.ts.* not found/g.test(res)) {
        process.exit(0);
      } else {
        process.exit(1);
      }
    });
  child.stderr.on("data", chunk => {
    buffer.push(chunk.toString());
  });
}
exec();


