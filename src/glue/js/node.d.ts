/**
 * @fileoverview Node.js glue code for TypeScript.
 * @license Apache-2.0
 */

declare const global: Record<string, unknown>;
declare function require(name: string): unknown;
declare namespace console {
  function log(...args: unknown[]): void;
}
