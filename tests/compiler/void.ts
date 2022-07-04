void 1;

function anInt(): i32 {
  return 2;
}

void anInt();

var u8Val1: u8 = 1;
var u8Val2: u8 = 255;

void (u8Val1 + u8Val2); // can remain unwrapped

var foo = -1;
[1, 2, 3, 4, 5, 6, 7, 8].forEach(v => void (foo = v));
assert(foo == 8);

function aVoid(): void {
  return void (foo = 9);
}

aVoid();
assert(foo == 9);