#!/usr/bin/env node
let asc = require("../../../../cli/asc");

let argv = [
  "assembly/index.ts",
  "--noEmit",
  "--runtime",
  "stub",
  "--validate",
  "--traceResolution"
];

asc.main(argv, error => {
  if (/Import file .*lib\/a.ts.* not found/g.test(error.message)) {
    process.exit(0);
  }
  console.error("Failed!\n" + error);
  process.exit(1);
});
