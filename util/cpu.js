/**
 * @fileoverview CPU utility.
 * @license Apache-2.0
 */

// https://www.npmjs.com/package/physical-cpu-count

import os from "os";
import childProcess from "child_process";

const cpus = os.cpus();

function exec(command) {
  return childProcess.execSync(command, {encoding: 'utf8'});
}

var coreCount;

const platform = os.platform();
if (platform === "linux") {
  const output = exec("lscpu -p | egrep -v \"^#\" | sort -u -t, -k 2,4 | wc -l");
  coreCount = parseInt(output.trim(), 10);
} else if (platform === "darwin") {
  const output = exec("sysctl -n hw.physicalcpu_max");
  coreCount = parseInt(output.trim(), 10);
} else if (platform === "windows") {
  const output = exec("WMIC CPU Get NumberOfCores");
  coreCount = output.split(os.EOL)
    .map(line => parseInt(line))
    .filter(value => !isNaN(value))
    .reduce((sum, number) => sum + number, 0);
} else {
  const cores = cpus.filter(function (cpu, index) {
    const hasHyperthreading = cpu.model.includes("Intel");
    const isOdd = index % 2 === 1;
    return !hasHyperthreading || isOdd;
  });
  coreCount = cores.length;
}

export const threadCount = cpus.length;
export { coreCount };
