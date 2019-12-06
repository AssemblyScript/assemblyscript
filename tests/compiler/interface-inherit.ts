
interface IA {
  a(): i32;
}

interface IB extends IA {
  b(): string;
}

interface IC extends IB {
  c(): bool;
}

class AC implements IC {
  a(): i32 { return 42; }
  b(): string { return "hello world"; }
  c(): bool { return true; }
}

let ac = new AC();

function testIC(ic: IC): void {
  assert(ic.a() == 42);
  assert(ic.b() == "hello world");
  assert(ic.c());
}

testIC(ac);