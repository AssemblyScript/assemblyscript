/**
 * @fileoverview File finding utility definitions.
 * @license Apache-2.0
 */

export function findFiles(dirname: string, filter?: ((name: string) => boolean) | RegExp): string[];
