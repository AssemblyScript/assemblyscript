// see: https://github.com/AssemblyScript/assemblyscript/issues/2067

@unmanaged export class Base {}
export class Baz {}
export class Foo extends Base {
  constructor(public baz: Baz) { super(); }
}

ERROR("EOF");
