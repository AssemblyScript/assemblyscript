const assert = require('assert');

exports.postInstantiate = function (instance) {
  const exports = instance.exports;
  assert.throws(() => {
    exports.testNullFunction();
  }, /^RuntimeError: wasm exception$/);
};
