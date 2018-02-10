// see also: https://github.com/AssemblyScript/assemblyscript/issues/26

var badByte: u8 = 0xFF;
badByte += 1;
assert(badByte == 0);

var anotherBadByte: u8 = 0xFF;
var badIncrementer: u8 = 1;
anotherBadByte += badIncrementer;
assert(anotherBadByte == 0);

function local(): void {
  var badByte: u8 = 0xFF;
  badByte += 1;
  assert(badByte == 0);

  var anotherBadByte: u8 = 0xFF;
  var badIncrementer: u8 = 1;
  anotherBadByte += badIncrementer;
  assert(anotherBadByte == 0);
}

local();

function loadU8FF(): u8 {
  store<u8>(0, 0xff);
  return load<u8>(0);
}

var valueU8: u8 = loadU8FF();
valueU8 += 1;
assert(valueU8 == 0);

function storeU8FFadd1(val: u8): void {
  store<u8>(0, val);
  assert(load<u8>(0) == 0);
}

valueU8 = 0xFF;
storeU8FFadd1(valueU8 + 1);

store<u8>(0, valueU8 + 1);
assert(load<u8>(0) == 0);

store<u8>(0, ++valueU8);
assert(load<u8>(0) == 0);
assert(valueU8 == 0);
