exports.preInstantiate = function(imports, exports) {
  const externalValue = 9007199254740991n;
  imports["js-bigint-integration"] = {
    externalValue,
    getExternalValue: function() {
      return externalValue;
    },
  };
};
exports.postInstantiate = function(instance) {
  const exports = instance.exports;
  const internalValue = exports.internalValue;
  if (internalValue != 9007199254740991n) throw Error("unexpected value");
  if (exports.getInternalValue() != internalValue) throw Error("unexpected value");
};
