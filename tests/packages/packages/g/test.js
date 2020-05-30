#!/usr/bin/env node
const asc = require("../../../../cli/asc");

const stderr = asc.createMemoryStream();
asc.main([
  "assembly/index.ts",
  "--noEmit",
  "--runtime", "stub",
  "--traceResolution"
], { stderr }, err => {
  if (stderr.toString().includes("File '~lib/a.ts' not found.")) {
    process.exit(0);
  }
  console.error("Failed!\n" + err);
  process.exit(1);
});
