/**
 * @fileoverview Terminal utility.
 * @license Apache-2.0
 */

/** Terminal color reset code. */
export const COLOR_RESET = "\x1b[0m";
/** Terminal color bold code. */
export const BOLD = "\x1b[1m";

/** Gray terminal color code. */
export const COLOR_GRAY = "\x1b[90m";
/** Red terminal color code. */
export const COLOR_RED = "\x1b[91m";
/** Green terminal color code. */
export const COLOR_GREEN = "\x1b[92m";
/** Yellow terminal color code. */
export const COLOR_YELLOW = "\x1b[93m";
/** Blue terminal color code. */
export const COLOR_BLUE = "\x1b[94m";
/** Magenta terminal color code. */
export const COLOR_MAGENTA = "\x1b[95m";
/** Cyan terminal color code. */
export const COLOR_CYAN = "\x1b[96m";
/** White terminal color code. */
export const COLOR_WHITE = "\x1b[97m";

/** Whether terminal colors are enabled or not. */
var colorsEnabled = true;

/** Checks whether terminal colors are enabled or not. */
export function isColorsEnabled(): bool {
  return colorsEnabled;
}

/** Sets whether terminal colors are enabled or not. */
export function setColorsEnabled(isEnabled: bool): bool {
  return (colorsEnabled = isEnabled);
}

/** Wraps the specified text in the specified terminal color code. */
export function colorize(text: string, color: string, bold: bool = false): string {
  if (colorsEnabled) {
    if (bold) {
      return BOLD + color + text + COLOR_RESET;
    } else {
      return color + text + COLOR_RESET;
    }
  }
  return text;
}
