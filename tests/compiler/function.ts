function v(): void {}
function i(): i32 { return 0; }
function I(): i64 { return 0; }
function f(): f32 { return 0; }
function F(): f64 { return 0; }

v();
i();
I();
f();
F();

function iv(a: i32): void {}
function ii(a: i32): i32 { return a; }
function II(a: i64): i64 { return a; }
function ff(a: f32): f32 { return a; }
function FF(a: f64): f64 { return a; }

iv(0);
ii(0);
II(0);
ff(0);
FF(0);

function iiv(a: i32, b: i32): void {}
function iii(a: i32, b: i32): i32 { return a + b; }
function III(a: i64, b: i32): i64 { return a + b; }
function fff(a: f32, b: f32): f32 { return a + b; }
function FFF(a: f64, b: f64): f64 { return a + b; }

iiv(1, 2);
iii(1, 2);
III(1, 2);
fff(1, 2);
FFF(1, 2);
