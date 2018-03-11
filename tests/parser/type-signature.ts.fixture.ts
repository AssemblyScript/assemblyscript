type foo = () => void;
type foo = (() => void) | null;
type foo = (a: i32) => i32;
type foo = (a?: i32) => i32;
type foo = (this: AClass, a: i32) => i32;
type foo = () => () => void;
type foo = () => (() => void) | null;
type foo = (this: AClass, a: i32) => ((this: BClass, b?: f32) => i32) | null;
