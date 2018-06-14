interface Colors {
  /** Whether terminal colors are supported. */
  supported: boolean;
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

interface Exports extends Colors {
  /** Standard output wrapper. */
  stdout: Colors;
  /** Standard error wrapper. */
  stderr: Colors;
  /** Creates an instance for the specified stream. */
  from(stream: any, base?: {}): Colors;
  /** Gray color escape sequence. */
  GRAY: string;
  /** Red color escape sequence. */
  RED: string;
  /** Green color escape sequence. */
  GREEN: string;
  /** Yellow color escape sequence. */
  YELLOW: string;
  /** Blue color escape sequence. */
  BLUE: string;
  /** Magenta color escape sequence. */
  MAGENTA: string;
  /** Cyan color escape sequence. */
  CYAN: string;
  /** White color escape sequence. */
  WHITE: string;
  /** Reset color escape sequence. */
  RESET: string;
}

declare const colors: Exports;
export = colors;
