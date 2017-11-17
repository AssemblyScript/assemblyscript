export { CharCode, isLineBreak} from "./util/charcode";
export { I64, U64 } from "./util/i64";
export { normalize as normalizePath, resolve as resolvePath, dirname } from "./util/path";
export const sb: string[] = new Array(256); // shared string builder. 64-bit without growing: (4+4+8) + 8*256 = 16b + 2kb
