export default function theFunction(): void {}
export default class TheClass {}
// not so ts-y:
export default enum TheEnum {}
export default namespace theNamespace {}
export default something;
// ERROR 1109: "Expression expected."
export import A = B? ;

export import A = :B? ;
// ERROR 1005: "'=' expected."
export import A (= B)? ;
// ERROR 1003: "Identifier expected."
export import: A (= B)? ;
