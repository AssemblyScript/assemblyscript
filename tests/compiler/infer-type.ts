const i = 10;
i;

const I = 0x100000000;
I;

const F = 1.5;
F;

function locals(): void {
  var li = 10;
  var lI = 0x100000000;
  var lF = 1.5;
  var ai = i;
  var aI = I;
  var aF = F;
}
locals();

function reti(): i32 {
  return 0;
}
var ri = reti();
ri;

function retI(): i64 {
  return 0;
}
var rI = retI();
rI;

function retf(): f32 {
  return 0;
}
var rf = retf();
rf;

function refF(): f64 {
  return 0;
}
var rF = refF();
rF;

for (var a = 0, b = 10; a < b; ++a) {
  ;
}
