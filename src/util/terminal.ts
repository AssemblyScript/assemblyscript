/**
 * @fileoverview Terminal utility.
 * @license Apache-2.0
 */

/** Gray terminal color code. */
export const COLOR_GRAY = "\u001b[90m";
/** Red terminal color code. */
export const COLOR_RED = "\u001b[91m";
/** Green terminal color code. */
export const COLOR_GREEN = "\u001b[92m";
/** Yellow terminal color code. */
export const COLOR_YELLOW = "\u001b[93m";
/** Blue terminal color code. */
export const COLOR_BLUE = "\u001b[94m";
/** Magenta terminal color code. */
export const COLOR_MAGENTA = "\u001b[95m";
/** Cyan terminal color code. */
export const COLOR_CYAN = "\u001b[96m";
/** White terminal color code. */
export const COLOR_WHITE = "\u001b[97m";
/** Terminal color reset code. */
export const COLOR_RESET = "\u001b[0m";

/** Whether terminal colors are enabled or not. */
var colorsEnabled = true;

/** Checks whether terminal colors are enabled or not. */
export function isColorsEnabled(): bool {
  return colorsEnabled;
}

/** Sets whether terminal colors are enabled or not. */
export function setColorsEnabled(isEnabled: bool): bool {
  var wasEnabled = isEnabled;
  colorsEnabled = isEnabled;
  return wasEnabled;
}

/** Wraps the specified text in the specified terminal color code. */
export function colorize(text: string, color: string): string {
  return colorsEnabled ? color + text + COLOR_RESET : text;
}
