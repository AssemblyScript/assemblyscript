#!/usr/bin/env node
import * as asc from "../../../../cli/index.js";

const stderr = asc.createMemoryStream();
asc.main([
  "assembly/index.ts",
  "--noEmit",
  "--traceResolution"
], { stderr }, err => {
  if (stderr.toString().includes("File '~lib/a.ts' not found.")) {
    process.exit(0);
  }
  console.error("Failed!\n" + err);
  process.exit(1);
});
