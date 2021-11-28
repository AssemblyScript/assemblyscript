/**
 * @fileoverview Terminal colors utility definitions.
 * @license Apache-2.0
 */

export const GRAY: string;
export const RED: string;
export const GREEN: string;
export const YELLOW: string;
export const BLUE: string;
export const MAGENTA: string;
export const CYAN: string;
export const WHITE: string;
export const RESET: string;

export class Colors {
  /** Whether terminal colors are enabled. */
  enabled: boolean;
  /** Colors a string in gray if {@link supported}. */
  gray(text: string): string;
  /** Colors a string in red if {@link supported}. */
  red(text: string): string;
  /** Colors a string in green if {@link supported}. */
  green(text: string): string;
  /** Colors a string in yellow if {@link supported}. */
  yellow(text: string): string;
  /** Colors a string in blue if {@link supported}. */
  blue(text: string): string;
  /** Colors a string in magenta if {@link supported}. */
  magenta(text: string): string;
  /** Colors a string in cyan if {@link supported}. */
  cyan(text: string): string;
  /** Colors a string in white if {@link supported}. */
  white(text: string): string;
}

export const stdout: Colors;
export const stderr: Colors;
