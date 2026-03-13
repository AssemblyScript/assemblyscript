class Box {
  value: i32 = 0;
}

let box = new Box();
let boxCalls: i32 = 0;

function getBox(): Box {
  boxCalls++;
  return box;
}

function resetBox(value: i32): void {
  box.value = value;
  boxCalls = 0;
}

function assertOneBoxCall(): void {
  assert(boxCalls == 1);
}

let arr = [1, 2];
let idxCalls: i32 = 0;

function getIndex(): i32 {
  idxCalls++;
  return 0;
}

function testPropertyCompoundAssignments(): void {
  resetBox(8);
  getBox().value += 2;
  assert(box.value == 10);
  assertOneBoxCall();

  resetBox(8);
  getBox().value -= 3;
  assert(box.value == 5);
  assertOneBoxCall();

  resetBox(8);
  getBox().value *= 3;
  assert(box.value == 24);
  assertOneBoxCall();

  resetBox(8);
  getBox().value /= 2;
  assert(box.value == 4);
  assertOneBoxCall();

  resetBox(8);
  getBox().value %= 3;
  assert(box.value == 2);
  assertOneBoxCall();

  resetBox(8);
  getBox().value <<= 1;
  assert(box.value == 16);
  assertOneBoxCall();

  resetBox(8);
  getBox().value >>= 1;
  assert(box.value == 4);
  assertOneBoxCall();

  resetBox(-8);
  getBox().value >>>= 1;
  assert(box.value == 2147483644);
  assertOneBoxCall();

  resetBox(10);
  getBox().value &= 3;
  assert(box.value == 2);
  assertOneBoxCall();

  resetBox(8);
  getBox().value |= 3;
  assert(box.value == 11);
  assertOneBoxCall();

  resetBox(8);
  getBox().value ^= 3;
  assert(box.value == 11);
  assertOneBoxCall();

  resetBox(3);
  getBox().value **= 2;
  assert(box.value == 9);
  assertOneBoxCall();
}

function testElementCompoundAssignments(): void {
  idxCalls = 0;
  arr[0] = 1;
  arr[getIndex()] |= 2;
  assert(arr[0] == 3);
  assert(idxCalls == 1);
}

testPropertyCompoundAssignments();
testElementCompoundAssignments();
