/**
 * @fileoverview Node.js polyfills.
 * @license Apache-2.0
 */

export const isNode = Object.prototype.toString.call(typeof globalThis.process !== 'undefined' ? globalThis.process : 0) === '[object process]';

var fs;
var module;
var path;
var process;
var url;

if (isNode) {
  fs = await import("fs");
  module = await import("module");
  path = await import("path");
  process = globalThis.process;
  url = await import("url");
} else {
  fs = await import("./browser/fs.js");
  module = await import("./browser/module.js");
  path = await import("./browser/path.js");
  process = await import("./browser/process.js");
  url = await import("./browser/url.js");
}

export {
  fs,
  module,
  path,
  process,
  url
};
