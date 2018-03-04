void 1;

function anInt(): i32 {
  return 2;
}

void anInt();

var u8Val1: u8 = 1;
var u8Val2: u8 = 255;

void (u8Val1 + u8Val2); // can remain unwrapped
