/**
 * @fileoverview Recursive mkdir definitions.
 * @license Apache-2.0
 */

interface Options {
  mode?: number;
}
declare function mkdirp(path: string, options?: Options): string | null;
export = mkdirp;
