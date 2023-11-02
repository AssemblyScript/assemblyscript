let growCount = 0;

export function preInstantiate(imports) {
  imports.grow = {
    handler() { growCount++; }
  };
}

export function postInstantiate({exports}) {
  exports.stress();
  if (!growCount) throw new Error("did not detect growth on large allocation");
}