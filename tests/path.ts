import { normalizePath, resolvePath } from "../src/util";
import * as path from "path";

let test = "./Y/./N/./N/../../././../Y/./.";
console.log(normalizePath(test));
console.log(path.posix.normalize(test));

console.log(resolvePath("../../..", "lib/util/i64.ts"));
