class CtorAccessThis {
  a: i32 = 0;
  constructor(
    public b: i32 = this.a, // TS2333
    public c: i32 = this.foo() // TS2333
  ) {}
  foo(): i32 { return 0; }
}

new CtorAccessThis();

class CtorAccessThisInline {
  d: i32 = 0;
  @inline
  constructor(
    public e: i32 = this.d, // TS2333
    public f: i32 = this.bar() // TS2333
  ) {}
  bar(): i32 { return 0; }
}

new CtorAccessThisInline();

class CtorSuper {
  g: i32 = 0;
  baz(): i32 { return 0; }
}

class CtorAccessSuper extends CtorSuper {
  constructor(
    public h: i32 = super.g, // TS2336
    public i: i32 = super.baz() // TS2336
  ) {
    super();
  }
}

new CtorAccessSuper();

class CtorAccessSuperInline extends CtorSuper {
  @inline
  constructor(
    public j: i32 = super.g, // TS2336
    public k: i32 = super.baz() // TS2336
  ) {
    super();
  }
}

new CtorAccessSuperInline();

ERROR("EOF");
