/**
 * @fileoverview File finding utility definitions.
 * @license Apache-2.0
 */

export function files(dirname: string, filter?: ((name: string) => bool) | RegExp): string[];
export const TS: RegExp;
export const TS_EXCEPT_DTS: RegExp;
