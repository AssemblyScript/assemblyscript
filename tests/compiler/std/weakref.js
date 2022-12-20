export function preInstantiate(imports, exports) {
  imports.env["console.log"] = console.log;
}
