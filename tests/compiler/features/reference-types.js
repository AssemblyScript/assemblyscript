exports.preInstantiate = function(imports, exports) {
  imports.Reflect = Reflect;
  imports.console = {
    log: function(ref) {
      console.log("  log: " + ref);
    }
  };
  imports["reference-types"] = {
    external: function(a) {
      return a;
    },
    someObject: {
      theKey: "Hello world!"
    },
    someKey: "theKey"
  };
};
