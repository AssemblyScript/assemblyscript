function localConst(a: i32): void {
  const b = a + 1;
  b = 3;
}
localConst(1);

function localConstInline(): void {
  const a = 1;
  a = 2;
}
localConstInline();

function localConstArray(a: i32): void {
  const b: i32[] = [ a ];
  b = [ 2 ];
}
localConstArray(1);

function localConstArrayInline(): void {
  const a: i32[] = [ 1 ];
  a = [ 2 ];
}
localConstArrayInline();

// globalConst
const a = 1;
a = 2;

ERROR("EOF"); // mark end and ensure fail
