var a = (a = 4, 3); // TS2448

function test(): void {
  let b = (b = 4, 3); // TS2448
}
test();

ERROR("EOF");
