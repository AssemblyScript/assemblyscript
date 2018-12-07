/**
 * Common constants.
 * @module common
 *//***/

/** Indicates traits of a {@link Node} or {@link Element}. */
export enum CommonFlags {
  /** No flags set. */
  NONE = 0,

  // Basic modifiers

  /** Has an `import` modifier. */
  IMPORT = 1 << 0,
  /** Has an `export` modifier. */
  EXPORT = 1 << 1,
  /** Has a `declare` modifier. */
  DECLARE = 1 << 2,
  /** Has a `const` modifier. */
  CONST = 1 << 3,
  /** Has a `let` modifier. */
  LET = 1 << 4,
  /** Has a `static` modifier. */
  STATIC = 1 << 5,
  /** Has a `readonly` modifier. */
  READONLY = 1 << 6,
  /** Has an `abstract` modifier. */
  ABSTRACT = 1 << 7,
  /** Has a `public` modifier. */
  PUBLIC = 1 << 8,
  /** Has a `private` modifier. */
  PRIVATE = 1 << 9,
  /** Has a `protected` modifier. */
  PROTECTED = 1 << 10,
  /** Has a `get` modifier. */
  GET = 1 << 11,
  /** Has a `set` modifier. */
  SET = 1 << 12,
  /** Has a definite assignment assertion `!` as in `x!: i32;`. */
  DEFINITE_ASSIGNMENT = 1 << 13,

  // Extended modifiers usually derived from basic modifiers

  /** Is ambient, that is either declared or nested in a declared element. */
  AMBIENT = 1 << 14,
  /** Is generic. */
  GENERIC = 1 << 15,
  /** Is part of a generic context. */
  GENERIC_CONTEXT = 1 << 16,
  /** Is an instance member. */
  INSTANCE = 1 << 17,
  /** Is a constructor. */
  CONSTRUCTOR = 1 << 18,
  /** Is an arrow function. */
  ARROW = 1 << 19,
  /** Is a module export. */
  MODULE_EXPORT = 1 << 20,
  /** Is a module import. */
  MODULE_IMPORT = 1 << 21,

  // Compilation states

  /** Is resolved. */
  RESOLVED = 1 << 22,
  /** Is compiled. */
  COMPILED = 1 << 23,
  /** Has a constant value and is therefore inlined. */
  INLINED = 1 << 24,
  /** Is scoped. */
  SCOPED = 1 << 25,
  /** Is a trampoline. */
  TRAMPOLINE = 1 << 26,
  /** Is a virtual method. */
  VIRTUAL = 1 << 27,
  /** Is the main function. */
  MAIN = 1 << 28,

  // Other

  QUOTED = 1 << 29
}

/** Path delimiter inserted between file system levels. */
export const PATH_DELIMITER = "/";
/** Substitution used to indicate the parent directory. */
export const PARENT_SUBST = "..";
/** Function name prefix used for getters. */
export const GETTER_PREFIX = "get:";
/** Function name prefix used for setters. */
export const SETTER_PREFIX = "set:";
/** Delimiter used between class names and instance members. */
export const INSTANCE_DELIMITER = "#";
/** Delimiter used between class and namespace names and static members. */
export const STATIC_DELIMITER = ".";
/** Delimiter used between a function and its inner elements. */
export const INNER_DELIMITER = "~";
/** Substitution used to indicate a library directory. */
export const LIBRARY_SUBST = "~lib";
/** Library directory prefix. */
export const LIBRARY_PREFIX = LIBRARY_SUBST + PATH_DELIMITER;
/** Prefix used to indicate a filespace element. */
export const FILESPACE_PREFIX = "file:";
