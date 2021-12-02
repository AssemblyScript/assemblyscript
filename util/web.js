/**
 * @fileoverview Web polyfills.
 * @license Apache-2.0
 */

import { fs } from "./node.js";

var _fetch = typeof fetch === "function" ? fetch :
  url => new Promise((resolve, reject) => { // eslint-disable-line no-global-assign
    fs.readFile(url, (err, data) => {
      if (err) reject(err);
      resolve({
        arrayBuffer() {
          let offset = data.byteOffset;
          return Promise.resolve(data.buffer.slice(offset, offset + data.byteLength));
        },
        text() {
          return Promise.resolve(data.toString());
        },
        json() {
          try {
            return Promise.resolve(JSON.parse(data.toString()));
          } catch (err) {
            return Promise.reject(err);
          }
        }
      });
    });
  });

export {
  _fetch as fetch
};
