export function preInstantiate(imports, exports) {
  const externalValue = 9007199254740991n;
  imports["bigint-integration"] = {
    externalValue,
    getExternalValue: function() {
      return externalValue;
    },
  };
}

export function postInstantiate(instance) {
  const exports = instance.exports;
  const internalValue = exports.internalValue.valueOf();
  if (internalValue !== 9007199254740991n) throw Error("unexpected value");
  if (exports.getInternalValue() !== internalValue) throw Error("unexpected value");
}
