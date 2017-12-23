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
