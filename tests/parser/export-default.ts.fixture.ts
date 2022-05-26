export default function theFunction(): void {}
export default class TheClass {}
export default enum TheEnum {}
export default namespace theNamespace {}
export {
  something as default
};
export import A = B;
// ERROR 1109: "Expression expected." in export-default.ts(8,20+1)
// ERROR 1005: "'=' expected." in export-default.ts(12,15+1)
// ERROR 1003: "Identifier expected." in export-default.ts(14,8+6)
