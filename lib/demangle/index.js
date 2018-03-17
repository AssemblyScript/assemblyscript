/**
 * @file AssemblyScript demangler.
 */

module.exports = demangle;

/**
 * Demangles module exports to a friendly object structure compatible with WebIDL and TypeScript
 * definitions.
 */
function demangle(exports) {
  var root = {};
  for (let i in exports) {
    if (exports.hasOwnProperty(i)) {
      // TODO
    }
  }
  return root;
}
