exports.preInstantiate = function(imports, exports) {
  // compiler generates initial = 1 because it doesn't know the imported value
  // of env.memory_base yet, hence we need to import a suitable memory as well:
  imports["env"]["memory"] = new WebAssembly.Memory({ initial: 2 });
  imports["env"]["memory_base"] = 65536;
  imports["env"]["table_base"] = 100;
};
