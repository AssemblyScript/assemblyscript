function simple(): void {}
function typeparams<T, V extends T>(a: V | null = null): void {}
@decorator()
function withdecorator(): void {}
function withthis(this: i32): i32 { return this; }
function withthisp(this: i32, a: f32, b: f64): i32 { return this; }

// 1003: Identifier expected.
function typevoid<T extends () => void>():void{}

// 1003: Identifier expected.
function extendsfunctiontype(this: ()=>void):void {}

// 1005: ':' expected.
function extendsinsteadofcolon(this extends i32):void {}

// 1003: Identifier expected.
function typeNone<void>():void{}

// 1005: ')' expected.
function functionforgetcomma(this: ()=>void a: i32):void {}