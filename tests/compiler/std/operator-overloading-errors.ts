class A {
  b: string | null = "b";
  c: string = "c";
}

var a = new A();

a.b + a.c; // TS2322
a.c + a.b; // TS2322

ERROR("EOF");
