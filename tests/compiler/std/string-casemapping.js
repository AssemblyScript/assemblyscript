exports.preInstantiate = function preInstantiate(imports) {
  imports.string_casemapping = {
    toUpperCaseFromIndex: function toUpperCaseFromIndex(index, codePointIndex) {
      const code = String.fromCodePoint(index).toUpperCase().codePointAt(codePointIndex|0);
      return code !== undefined ? code : -1;
    },
    toLowerCaseFromIndex: function toLowerCaseFromIndex(index, codePointIndex) {
      const code = String.fromCodePoint(index).toLowerCase().codePointAt(codePointIndex|0);
      return code !== undefined ? code : -1;
    }
  };
};