// OK - Field with explicit initializer
export class WithInitializer {
  public a: i32 = 1;
  constructor() {}
}

// ERR - Field b not initialized
export class WithoutInitializer {
  b: f64;
  constructor() {}
}

// OK - Field as constructor param
class Param {}
export class FieldAsConstructorParam {
  constructor(public val: Param) {}
}

// OK - Field initialized in constructor
export class ExplicitConstructorInit {
  p: Param;
  constructor(a: Param) {
    this.p = a;
  }
}

export class SupressExplicitInit {
  p!: f64;
  constructor() {}
}

