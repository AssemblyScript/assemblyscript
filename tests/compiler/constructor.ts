import "allocator/arena";

// trailing conditional allocate
class EmptyCtor {
  constructor() {}
}

var emptyCtor = new EmptyCtor();

// trailing conditional allocate with field initializer
class EmptyCtorWithFieldInit {
  a: i32 = 1;
  constructor() {}
}

var emptyCtorWithFieldInit = new EmptyCtorWithFieldInit();

// trailing conditional allocate with field initialized to zero
class EmptyCtorWithFieldNoInit {
  a: i32;
  constructor() {}
}

var emptyCtorWithFieldNoInit = new EmptyCtorWithFieldNoInit();

// direct allocate
class None {
}

var none = new None();

// direct allocate with field initializer
class JustFieldInit {
  a: i32 = 1;
}

var justFieldInit = new JustFieldInit();

// direct allocate with field initialized to zero
class JustFieldNoInit {
  a: i32;
}

var justFieldNoInit = new JustFieldNoInit();

// explicit allocation with no extra checks
class CtorReturns {
  constructor() {
    return changetype<CtorReturns>(memory.allocate(0));
  }
}

var ctorReturns = new CtorReturns();

var b: bool = true;

// explicit allocation with a trailing conditional fallback
class CtorConditionallyReturns {
  constructor() {
    if (b) {
      return changetype<CtorConditionallyReturns>(memory.allocate(0));
    }
  }
}

var ctorConditionallyReturns = new CtorConditionallyReturns();

// implicit allocation with no extra checks
class CtorAllocates {
  constructor() {
    this;
  }
}

var ctorAllocates = new CtorAllocates();

// implicit allocation with a trailing conditional fallback
class CtorConditionallyAllocates {
  constructor() {
    if (b) {
      this;
    }
  }
}

var ctorConditionallyAllocates = new CtorConditionallyAllocates();
