const i = 10;
i;

const I = 0x100000000;
I;

const F = 1.5;
F;

function locals(): void {
  let li = 10;
  let lI = 0x100000000;
  let lF = 1.5;
  let ai = i;
  let aI = I;
  let aF = F;
}
locals();

function reti(): i32 {
  return 0;
}
let ri = reti();
ri;

function retI(): i64 {
  return 0;
}
let rI = retI();
rI;

function retf(): f32 {
  return 0;
}
let rf = retf();
rf;

function refF(): f64 {
  return 0;
}
let rF = refF();
rF;

for (let a = 0, b = 10; a < b; ++a) {
  ;
}
