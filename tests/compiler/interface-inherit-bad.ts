
interface BadIA {
  a(): i32;
}

interface BadIB extends BadIA {
  b(): string;
}

interface BadIC extends BadIB {
  c(): bool;
}
//@ts-ignore

class BadAC implements IC {
  b(): string { return "hello world"; }
  c(): bool { return true; }
}

let badac = new BadAC();

function testbadIC(ic: BadIC): void {
  assert(ic.a() == 42);
  assert(ic.b() == "hello world");
  assert(ic.c());
}
//@ts-ignore

testbadIC(badac);