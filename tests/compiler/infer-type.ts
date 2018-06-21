const i = 10; // infers i32 because it fits into i32 as the default
i;

const I = 0x100000000; // infers i64 because the value doesn't fit into 32 bits
I;

const F = 1.5; // infers f64 because of float notation
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

var inferi = 0x80000000; // infers u32
assert(!isSigned(inferi));

var inferu = 0x7fffffff; // infers i32
assert(isSigned(inferu));
