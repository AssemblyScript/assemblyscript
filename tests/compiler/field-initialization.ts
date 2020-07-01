// without constructor

class Value_Init {
  a: i32 = 1; // OK
}
{
  let o = new Value_Init();
  assert(o.a == 1);
}

class Value {
  a: i32; // OK (zeroed)
}
{
  let o = new Value();
  assert(o.a == 0);
}

class Ref_Init {
  a: ArrayBuffer = new ArrayBuffer(0); // OK
}
{
  let o = new Ref_Init();
  assert(o.a != null);
}

class Nullable_Init {
  a: ArrayBuffer | null = new ArrayBuffer(0); // OK
}
{
  let o = new Nullable_Init();
  assert(o.a != null);
}

class Nullable {
  a: ArrayBuffer | null; // OK (zeroed)
}
{
  let o = new Nullable();
  assert(o.a == null);
}

// with constructor

class Value_Ctor {
  a: i32; // OK (zeroed)
  constructor() {
  }
}
{
  let o = new Value_Ctor();
  assert(o.a == 0);
}

class Value_Init_Ctor {
  a: i32 = 1; // OK
  constructor() {
  }
}
{
  let o = new Value_Init_Ctor();
  assert(o.a == 1);
}

class Value_Ctor_Init {
  a: i32; // OK (zeroed)
  constructor() {
    this.a = 1;
  }
}
{
  let o = new Value_Ctor_Init();
  assert(o.a == 1);
}

class Ref_Init_Ctor {
  a: ArrayBuffer = new ArrayBuffer(0); // OK
  constructor() {
  }
}
{
  let o = new Ref_Init_Ctor();
  assert(o.a != null);
}

class Ref_Ctor_Init {
  a: ArrayBuffer; // OK (in ctor)
  constructor() {
    this.a = new ArrayBuffer(0);
  }
}
{
  let o = new Ref_Ctor_Init();
  assert(o.a != null);
}

class Ref_Ctor_Param {
  constructor(public a: ArrayBuffer) { // OK
  }
}
{
  let a = new ArrayBuffer(0);
  let o = new Ref_Ctor_Param(a);
  assert(o.a == a);
}

class Nullable_Ctor {
  a: ArrayBuffer | null; // OK (zeroed)
  constructor() {
  }
}
{
  let o = new Nullable_Ctor();
  assert(o.a == null);
}

class Nullable_Init_Ctor {
  a: ArrayBuffer | null = new ArrayBuffer(0); // OK
  constructor() {
  }
}
{
  let o = new Nullable_Init_Ctor();
  assert(o.a != null);
}

class Nullable_Ctor_Init {
  a: ArrayBuffer | null; // OK (zeroed)
  constructor() {
    this.a = new ArrayBuffer(0);
  }
}
{
  let o = new Nullable_Ctor_Init();
  assert(o.a != null);
}

// inheritance

class Inherit_Base {
  a: ArrayBuffer = new ArrayBuffer(0);
}
class Inherit extends Inherit_Base {
}
{
  let o = new Inherit();
  assert(o.a != null);
}
class Inherit_Ctor extends Inherit_Base {
}
{
  let o = new Inherit_Ctor();
  assert(o.a != null);
}

// related object literal cases

class SomeObject {
  a: i32;
  b: string | null;
}
{
  let a: SomeObject = {}; // OK
  assert(a.a == 0);
  assert(a.b == null);
  let b: SomeObject = { a: 1 }; // OK
  assert(b.a == 1);
  assert(b.b == null);
  let c: SomeObject = { b: "b" }; // OK
  assert(c.a == 0);
  assert(c.b == "b");
  let d: SomeObject = { a: 2, b: "bb" }; // OK
  assert(d.a == 2);
  assert(d.b == "bb");
}

class SomeOtherObject extends SomeObject {
  c: string;
}
{
  let a: SomeOtherObject = { c: "c" }; // OK
  assert(a.a == 0);
  assert(a.b == null);
  assert(a.c == "c");
  let b: SomeOtherObject = { a: 3, b: "bbb", c: "cc" };
  assert(b.a == 3);
  assert(b.b == "bbb");
  assert(b.c == "cc");
}

// related flow cases

class Flow_Balanced {
  a: ArrayBuffer; // OK (any branch)
  constructor(cond: bool) {
    if (cond) {
      this.a = new ArrayBuffer(0);
    } else {
      this.a = new ArrayBuffer(0);
    }
  }
}
{
  let o = new Flow_Balanced(true);
  assert(o.a != null);
}

// inlined ctors

class Ref_Init_InlineCtor {
  a: ArrayBuffer = new ArrayBuffer(0); // OK
  @inline
  constructor() {
  }
}
{
  let o = new Ref_Init_InlineCtor();
  assert(o.a != null);
}

class Ref_InlineCtor_Init {
  a: ArrayBuffer; // OK (in ctor)
  @inline
  constructor() {
    this.a = new ArrayBuffer(0);
  }
}
{
  let o = new Ref_InlineCtor_Init();
  assert(o.a != null);
}
