/**
 * @fileoverview Node polyfill definitions.
 * @license Apache-2.0
 */

import fs from "fs";
import module from "module";
import path from "path";
import process from "process";
import url from "url";

/** Whether the environment is Node.js. */
export const isNode: boolean;

export {
  fs,
  module,
  path,
  process,
  url
};
