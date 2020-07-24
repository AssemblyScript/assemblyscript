/**
 * @fileoverview Command line options utility definitions.
 * @license Apache-2.0
 */

/** A set of options. */
export interface OptionSet {
  [key: string]: number | string
}

/** Command line option description. */
export interface OptionDescription {
  /** Textual description. */
  description?: string | string[],
  /** Data type. One of (b)oolean [default], (i)nteger, (f)loat or (s)tring. Uppercase means multiple values. */
  type?: "b" | "i" | "f" | "s" | "I" | "F" | "S",
  /** Substituted options, if any. */
  value?: OptionSet,
  /** Short alias, if any. */
  alias?: string
  /** The default value, if any. */
  default?: string | number | boolean | string[] | number[];
  /** The category this option belongs in. */
  category?: string;
}

/** Configuration object. */
interface Config {
  [key: string]: OptionDescription;
}

/** Parsing result. */
interface Result {
  /** Parsed options. */
  options: OptionSet,
  /** Unknown options. */
  unknown: string[],
  /** Normal arguments. */
  arguments: string[],
  /** Trailing arguments. */
  trailing: string[]
}

/** Parses the specified command line arguments according to the given configuration. */
export function parse(argv: string[], config: Config, propagateDefaults?: boolean): Result;

/** Help formatting options. */
interface HelpOptions {
  /** Leading indent. Defaults to 2. */
  indent?: number,
  /** Table padding. Defaults to 24. */
  padding?: number,
  /** End of line character. Defaults to "\n". */
  eol?: string
}

/** Generates the help text for the specified configuration. */
export function help(config: Config, options?: HelpOptions): string;

/** Merges two sets of options into one, preferring the current over the parent set. */
export function merge(config: Config, currentOptions: OptionSet, parentOptions: OptionSet, parentBaseDir: string): OptionSet;

/** Resolves a single relative path. Keeps absolute paths, otherwise prepends baseDir. */
export function resolvePath(path: string, baseDir: string, useNodeResolution?: boolean): string;

/** Populates default values on a parsed options result. */
export function addDefaults(config: Config, options: OptionSet): void;
