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
