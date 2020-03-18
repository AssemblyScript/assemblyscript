// OK - Field with explicit initializer
export class WithInitializer {
  public a: i32 = 1;
  some: string | null = null;
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

// ERR - Left block empty
export class EmptyLeftBlock {
  fieldLeft: i32;

  constructor(x: i32) {
    if ((x + 5) == 6) {
    } else {
      this.fieldLeft = 7;
    }
  }
}

// ERR - Right block empty
export class EmptyRightBlock {
  fieldRight: i32;

  constructor(x: i32) {
    if ((x + 5) == 6) {
      this.fieldRight = 7;
    } else {
    }
  }
}

// ERR - Indefinite
export class NonDefiniteIf {
  p: f64;
  constructor(a: i32) {
    if ((a % 2) == 0) {
      this.p = 1.0;
    } else if ((a * 2) == 10) {
      this.p = 0.0;
    }
  }
}

// OK - All branches covered
export class DefiniteIf {
  definite: i32;

  constructor(a: i32) {
    if ((a % 2) == 0) {
      this.definite = 1;
    } else if ((a * 2) == 10) {
      this.definite = 0;
    } else if ((a / 2) == 1) {
      this.definite = 8;
    } else {
      this.definite = 0;
    }
  }
}


// ERR
export class Inlined {
  inlinedProp: string | null;
}

new Inlined();

// OK - inherited fields
class ElementKind {}

export abstract class Y {
  inherited: string | null = "the inherited string";
}

export abstract class X extends Y {
  ax: string[] | null;
  protected constructor(public kind: ElementKind, other: ElementKind | null) {
    super();

    if (other) {
      this.ax = ["string"];
    } else {
      this.ax = ["string", "string"];
    }
  }
}
