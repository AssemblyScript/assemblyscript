/** Command line option description. */
export interface OptionDescription {
  /** Textual description. */
  description?: string | string[],
  /** Data type. One of (b)oolean [default], (i)nteger, (f)loat or (s)tring. Uppercase means multiple values. */
  type?: "b" | "i" | "f" | "s" | "I" | "F" | "S",
  /** Substituted options, if any. */
  value?: { [key: string]: number | string },
  /** Short alias, if any. */
  alias?: string
}

/** Configuration object. */
interface Config {
  [key: string]: OptionDescription;
}

/** Parsing result. */
interface Result {
  /** Parsed options. */
  options: { [key: string]: number | string },
  /** Unknown options. */
  unknown: string[],
  /** Normal arguments. */
  arguments: string[],
  /** Trailing arguments. */
  trailing: string[]
}

/** Parses the specified command line arguments according to the given configuration. */
export function parse(argv: string[], config: Config): Result;

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
