#!/usr/bin/env node
import * as asc from "../../../../cli/index.js";

const { error, stderr } = await asc.main([
  "assembly/index.ts",
  "--noEmit",
  "--traceResolution"
]);
if (!stderr.toString().includes("File '~lib/a.ts' not found.")) {
  console.error("Failed!\n" + error);
  process.exit(1);
}
