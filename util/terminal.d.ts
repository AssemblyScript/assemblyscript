/**
 * @fileoverview Terminal colors utility definitions.
 * @license Apache-2.0
 */

/** Color code for gray. */
export const GRAY: string;
/** Color code for red. */
export const RED: string;
/** Color code for green. */
export const GREEN: string;
/** Color code for yellow. */
export const YELLOW: string;
/** Color code for blue. */
export const BLUE: string;
/** Color code for magenta. */
export const MAGENTA: string;
/** Color code for cyan. */
export const CYAN: string;
/** Color code for white. */
export const WHITE: string;
/** Code to reset any colors. */
export const RESET: string;

/** Color utility class. */
export class Colors {
  /** Constructs a new instance for the given stream. */
  constructor(stream: { isTTY: boolean });
  /** Whether terminal colors are enabled. */
  enabled: boolean;
  /** Colors a string in gray if {@link enabled}. */
  gray(text: string): string;
  /** Colors a string in red if {@link enabled}. */
  red(text: string): string;
  /** Colors a string in green if {@link enabled}. */
  green(text: string): string;
  /** Colors a string in yellow if {@link enabled}. */
  yellow(text: string): string;
  /** Colors a string in blue if {@link enabled}. */
  blue(text: string): string;
  /** Colors a string in magenta if {@link enabled}. */
  magenta(text: string): string;
  /** Colors a string in cyan if {@link enabled}. */
  cyan(text: string): string;
  /** Colors a string in white if {@link enabled}. */
  white(text: string): string;
}

/** Color utility for stdout. */
export const stdoutColors: Colors;
/** Color utility for stderr. */
export const stderrColors: Colors;
