// Example transform proving that preserved parameter decorators can be stripped
// during afterInitialize, since the compiler otherwise ignores them.
console.log("Parameter decorator removal transform loaded");

import type { Program } from "assemblyscript";

export function afterInitialize(program: Program): void {
  console.log("- afterInitialize strip parameter decorators");
  for (const source of program.sources) {
    const fts = source.decoratedFunctionTypes;
    if (!fts) continue;
    for (const ft of fts) {
      ft.explicitThisDecorators = null;
      for (const param of ft.parameters) {
        param.decorators = null;
      }
    }
  }
}
