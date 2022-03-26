export function preInstantiate(imports, exports) {
  const env = imports.env ||= {};
  env["console.log"] = function() { /* stub */ };
  env["performance.timeOrigin"] = 42;
  // env.mutableGlobal = new WebAssembly.Global({ value: "i32", mutable: true}, 42);
}
