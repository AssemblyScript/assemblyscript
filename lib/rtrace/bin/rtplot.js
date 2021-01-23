#!/usr/bin/env node

import process from "process";
import fs from "fs";
import path from "path";
import { gc } from "../plot.js";

if (process.argv.length < 3) {
  process.stderr.write(`Usage: ${path.basename(process.argv[1])} rtrace-gc-profile.json > profile.svg\n`);
  process.exit(1);
}

const data = JSON.parse(fs.readFileSync(process.argv[2]));
process.stdout.write(gc(data));
