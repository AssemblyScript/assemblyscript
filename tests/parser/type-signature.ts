type foo = () => void;
type foo = (() => void) | null;
type foo = (a: i32) => i32;
type foo = (a?: i32) => i32;
type foo = (this: AClass, a: i32) => i32;
type foo = () => () => void;
type foo = () => (() => void) | null;
type foo = (this: AClass, a: i32) => ((this: BClass, b?: f32) => i32) | null;
// ERROR 1005: "')' expected."
type foo = (() => void | null;
// ERROR 1005: "'|' expected."
type foo = (() => void);
//ERROR 1005: "'null' expected."
type foo = () | void;

type bar = (foo);
// ERROR 1005: "')' expected."
type bar = (foo;
type bar = (true);
type bar = (this);
type bar = (null);
type bar = ("a");
