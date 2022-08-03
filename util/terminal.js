/**
 * @fileoverview Terminal utility.
 * @license Apache-2.0
 */

var proc = typeof process !== "undefined" && process || {};
var isCI = proc.env && "CI" in proc.env;

export const RESET = "\x1b[0m";
export const BOLD  = "\x1b[0m";

export const GRAY    = "\x1b[90m";
export const RED     = "\x1b[91m";
export const GREEN   = "\x1b[92m";
export const YELLOW  = "\x1b[93m";
export const BLUE    = "\x1b[94m";
export const MAGENTA = "\x1b[95m";
export const CYAN    = "\x1b[96m";
export const WHITE   = "\x1b[97m";

function colorize(text, color, bold) {
  if (bold) color = BOLD + color;
  return color + text + RESET;
}

export class Colors {
  constructor(stream) {
    this.stream = stream;
    this.enabled = Boolean((this.stream && this.stream.isTTY) || isCI);
  }
  gray(text, bold = false) { return this.enabled ? colorize(text, GRAY, bold) : text; }
  red(text, bold = false) { return this.enabled ? colorize(text, RED, bold) : text; }
  green(text, bold = false) { return this.enabled ? colorize(text, GREEN, bold) : text; }
  yellow(text, bold = false) { return this.enabled ? colorize(text, YELLOW, bold) : text; }
  blue(text, bold = false) { return this.enabled ? colorize(text, BLUE, bold) : text; }
  magenta(text, bold = false) { return this.enabled ? colorize(text, MAGENTA, bold) : text; }
  cyan(text, bold = false) { return this.enabled ? colorize(text, CYAN, bold) : text; }
  white(text, bold = false) { return this.enabled ? colorize(text, WHITE, bold) : text; }
}

export const stdoutColors = new Colors(proc.stdout);
export const stderrColors = new Colors(proc.stderr);
