/**
 * @fileoverview Dynamic require utility.
 * @license Apache-2.0
 */

module.exports = typeof __webpack_require__ === "function"
  ? __non_webpack_require__
  : require;
