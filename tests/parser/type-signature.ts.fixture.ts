type foo = () => void;
type foo = (() => void) | null;
type foo = (a: i32) => i32;
type foo = (a?: i32) => i32;
type foo = (this: AClass, a: i32) => i32;
type foo = () => () => void;
type foo = () => (() => void) | null;
type foo = (this: AClass, a: i32) => ((this: BClass, b?: f32) => i32) | null;
type bar = foo;
type bar = bool;
type bar = this;
type bar = null;
type bar = string;
// ERROR 1005: "')' expected." in type-signature.ts(10,26+4)
// ERROR 1005: "'|' expected." in type-signature.ts(12,23+1)
// ERROR 1005: "'=>' expected." in type-signature.ts(14,13+1)
// ERROR 1012: "Unexpected token." in type-signature.ts(14,13+1)
// ERROR 1005: "')' expected." in type-signature.ts(18,16+0)
