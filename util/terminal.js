/**
 * @fileoverview Terminal utility.
 * @license Apache-2.0
 */

var proc = typeof process !== "undefined" && process || {};
var isCI = proc.env && "CI" in proc.env;

export const GRAY = "\u001b[90m";
export const RED = "\u001b[91m";
export const GREEN = "\u001b[92m";
export const YELLOW = "\u001b[93m";
export const BLUE = "\u001b[94m";
export const MAGENTA = "\u001b[95m";
export const CYAN = "\u001b[96m";
export const WHITE = "\u001b[97m";
export const RESET = "\u001b[0m";

export class Colors {
  constructor(stream) {
    this.stream = stream;
    this.enabled = Boolean((this.stream && this.stream.isTTY) || isCI);
  }
  gray(text) { return this.enabled ? GRAY + text + RESET : text; }
  red(text) { return this.enabled ? RED + text + RESET : text; }
  green(text) { return this.enabled ? GREEN + text + RESET : text; }
  yellow(text) { return this.enabled ? YELLOW + text + RESET : text; }
  blue(text) { return this.enabled ? BLUE + text + RESET : text; }
  magenta(text) { return this.enabled ? MAGENTA + text + RESET : text; }
  cyan(text) { return this.enabled ? CYAN + text + RESET : text; }
  white(text) { return this.enabled ? WHITE + text + RESET : text; }
}

export const stdoutColors = new Colors(proc.stdout);
export const stderrColors = new Colors(proc.stderr);
