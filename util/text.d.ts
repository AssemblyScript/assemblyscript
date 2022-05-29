/**
 * @fileoverview Text utility definitions.
 * @license Apache-2.0
 */

/** Calculates the UTF-8 byte length of a string. */
export function utf8Length(string: string): number;

/** Reads UTF-8 bytes as a string. */
export function utf8Read(buffer: Uint8Array, start: number, end: number): string;

/** Writes a string as UTF-8 bytes. */
export function utf8Write(string: string, buffer: Uint8Array, offset: number): number;

/** UTF-8 utility. */
export const utf8: {
  /** Calculates the UTF8 byte length of a string. */
  length: typeof utf8Length;
  /** Reads UTF8 bytes as a string. */
  read: typeof utf8Read;
  /** Writes a string as UTF8 bytes. */
  write: typeof utf8Write;
};

/** Computes the difference between an expected and its actual text. */
export function diff(filename: string, expected: string, actual: string): string;
