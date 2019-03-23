function _(): void {}
function v(): void { return; }
function i(): i32 { return 0; }
function j(): i64 { return 0; }
function f(): f32 { return 0; }
function d(): f64 { return 0; }

_();
v();
i();
j();
f();
d();

function i_(a: i32): void {}
function iv(a: i32): void { return; }
function ii(a: i32): i32 { return a; }
function jj(a: i64): i64 { return a; }
function ff(a: f32): f32 { return a; }
function dd(a: f64): f64 { return a; }

i_(0);
iv(0);
ii(0);
jj(0);
ff(0);
dd(0);

function ii_(a: i32, b: i32): void {}
function iiv(a: i32, b: i32): void { return; }
function iii(a: i32, b: i32): i32 { return a + b; }
function jjj(a: i64, b: i32): i64 { return a + b; }
function fff(a: f32, b: f32): f32 { return a + b; }
function ddd(a: f64, b: f64): f64 { return a + b; }

ii_(1, 2);
iiv(1, 2);
iii(1, 2);
jjj(1, 2);
fff(1, 2);
ddd(1, 2);
