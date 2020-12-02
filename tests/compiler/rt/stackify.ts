function currentStackSize(): usize {
  return __stackptr - __stack_base;
}

function getStacked(frameSlots: usize, slot: usize): usize {
  var frameStart = __stackptr - frameSlots * sizeof<usize>();
  return load<usize>(frameStart + slot * sizeof<usize>());
}

function foo(): void {
  const slots = 2;
  // prepares upfront
  assert(currentStackSize() == slots << alignof<usize>());
  assert(getStacked(slots, 0) == 0);
  assert(getStacked(slots, 1) == 0);
  var a = __stackify(1, 0);
  var b = __stackify(2, 0);
  // to be sure
  assert(currentStackSize() == slots << alignof<usize>());
  assert(getStacked(slots, 0) == 1);
  assert(getStacked(slots, 1) == 2);
  bar();
}

function bar(): void {
  const slots = 1;
  assert(currentStackSize() == 2 + slots << alignof<usize>());
  assert(getStacked(slots, 0) == 0);
  var c = __stackify(3, 0);
  assert(currentStackSize() == 2 + slots << alignof<usize>());
  assert(getStacked(slots, 0) == 3);
}

assert(currentStackSize() == 0);
foo();
assert(currentStackSize() == 0);

function fooVarargs(a: string, b: string = "b".charAt(0)): string { // ensure stub
  const slots = 2;
  assert(currentStackSize() == (2 * slots) << alignof<usize>()); // stub calls self
  assert(getStacked(slots, -2) == changetype<usize>(a));
  assert(getStacked(slots, -1) == changetype<usize>(b));
  assert(getStacked(slots, 0) == changetype<usize>(a));
  assert(getStacked(slots, 1) == changetype<usize>(b));
  return a + b;
}

assert(currentStackSize() == 0);
assert(fooVarargs("a") == "ab");
assert(currentStackSize() == 0);

class VarargsCtor {
  b: string = "b" + "";
  constructor(
    public a: string = "a" + "",
  ) {
    // varargs stub: nullThis + a
    // ctor: b + this + a
    const slots = 5
    assert(currentStackSize() == slots << alignof<usize>());
    assert(getStacked(slots, 0) == 0); // not yet allocated
    assert(getStacked(slots, 1) == changetype<usize>(a));
    assert(getStacked(slots, 2) == changetype<usize>(this.b));
    assert(getStacked(slots, 3) == changetype<usize>(this));
    assert(getStacked(slots, 4) == changetype<usize>(a));
  }
}
assert(currentStackSize() == 0);
new VarargsCtor();
assert(currentStackSize() == 0);
