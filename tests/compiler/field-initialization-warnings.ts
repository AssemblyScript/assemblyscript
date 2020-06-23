// non-reference is unnecessary
class Nonref {
  a!: i32;
}
{
  new Nonref();
}

// always assigned
class Ref_Ctor_Init {
  a!: string;
  constructor() {
    this.a = "a";
  }
}
{
  var o = new Ref_Ctor_Init();
  assert(o.a == "a");
}

ERROR("EOF");
