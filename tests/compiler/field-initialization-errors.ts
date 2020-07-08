// Uninitialized without ctor
class Ref {
  a: ArrayBuffer; // TS2564
}
{
  new Ref();
}

// Uninitialized with ctor
class Ref_Ctor {
  a: ArrayBuffer; // TS2564
  constructor() {
  }
}
{
  new Ref_Ctor();
}

// Uninitialized with inline ctor
class Ref_InlineCtor {
  a: ArrayBuffer; // TS2564
  @inline constructor() {
  }
}
{
  new Ref_InlineCtor();
}

// Uninitialized in any branch
class Ref_Ctor_Branch {
  a: ArrayBuffer; // TS2564
  constructor(cond: bool) {
    if (cond) {
      this.a = new ArrayBuffer(0);
    } else {
      // uninitialized
    }
  }
}
{
  new Ref_Ctor_Branch(true);
}

// Access before initialize
class Ref_Ctor_Use_Init {
  a: ArrayBuffer;
  constructor() {
    this.a; // TS2565
    this.a = new ArrayBuffer(0);
  }
}
{
  new Ref_Ctor_Use_Init();
}

// Call before initialize
class Ref_Ctor_Call_Init {
  a: ArrayBuffer;
  constructor() {
    this.foo();
    this.a = new ArrayBuffer(0);
  }
  foo(): void {}
}
{
  new Ref_Ctor_Call_Init();
}

// Property (call) before initialize
class Ref_Ctor_Prop_Init {
  a: ArrayBuffer;
  constructor() {
    this.foo;
    this.a = new ArrayBuffer(0);
  }
  get foo(): i32 { return 1; }
}
{
  new Ref_Ctor_Prop_Init();
}

// Called with before initialize
class Ref_Ctor_Callwith_Init {
  a: ArrayBuffer;
  constructor() {
    Ref_Ctor_Callwith_Init.foo(this);
    this.a = new ArrayBuffer(0);
  }
  static foo(o: Ref_Ctor_Callwith_Init): void {}
}
{
  new Ref_Ctor_Callwith_Init();
}

// Aliase before initialize
class Ref_Ctor_Alias_Init {
  a: ArrayBuffer;
  constructor() {
    var b = this;
    this.a = new ArrayBuffer(0);
  }
}
{
  new Ref_Ctor_Alias_Init();
}

// Assignment before initialize
class Ref_Ctor_Assign_Init {
  a: ArrayBuffer;
  constructor() {
    var b: this;
    b = this;
    this.a = new ArrayBuffer(0);
  }
}
{
  new Ref_Ctor_Assign_Init();
}

// Indirectly called with before initialize
class Ref_Ctor_Icallwith_Init {
  a: ArrayBuffer;
  constructor() {
    Ref_Ctor_Icallwith_Init_fn(this);
    this.a = new ArrayBuffer(0);
  }
}
var Ref_Ctor_Icallwith_Init_fn = (o: Ref_Ctor_Icallwith_Init): void => {};
{
  new Ref_Ctor_Icallwith_Init();
}

// Uninitialized inherited
class Inherit_Base {
  a: ArrayBuffer; // TS2564
}
class Inherit extends Inherit_Base {
}
{
  new Inherit();
}

ERROR("EOF");
