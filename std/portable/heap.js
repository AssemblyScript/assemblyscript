var globalScope = typeof window !== "undefined" && window || typeof global !== "undefined" && global || self;

globalScope["Heap"] = {
  allocate: function() { throw new Error("not implemented"); },
  dispose: function() { throw new Error("not implemented"); },
  used: 0,
  free: 0,
  size: 0
};
