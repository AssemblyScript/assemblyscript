enum Bar {
  Baz
}

function foo(): boolean {
  return Bar.Baz;
}

foo();

ERROR("EOF");