/**
 * @fileoverview File finding utility.
 * @license Apache-2.0
 */

import { fs, path } from "./node.js";

export function findFiles(dirname, filter) {
  var out = [];
  fs.readdirSync(dirname).forEach(name => {
    if (fs.statSync(path.join(dirname, name)).isDirectory()) {
      findFiles(path.join(dirname, name), filter).forEach(iname => out.push(name + "/" + iname));
    } else if (!filter || typeof filter === "function" ? filter(name) : filter.test(name)) {
      out.push(name);
    }
  });
  return out;
}

export default findFiles;
