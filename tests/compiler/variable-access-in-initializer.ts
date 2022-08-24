var a = (a = 4, 3); // TS2448
let c = typeof c;

function test(): void {
  let b = (b = 4, 3); // TS2448
}
test();

ERROR("EOF");
