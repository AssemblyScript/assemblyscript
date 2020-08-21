// fall-through allocate
class EmptyCtor {
  constructor() {}
}

var emptyCtor = new EmptyCtor();

// fall-through allocate with field initializer
class EmptyCtorWithFieldInit {
  a: i32 = 1;
  constructor() {}
}

var emptyCtorWithFieldInit = new EmptyCtorWithFieldInit();

// fall-through allocate with field initialized to zero
class EmptyCtorWithFieldNoInit {
  a: i32;
  constructor() {}
}

var emptyCtorWithFieldNoInit = new EmptyCtorWithFieldNoInit();

// fall-through allocate with field access
class EmptyCtorWithFieldAccess {
  a: i32;
  constructor() {
    this.a = 1;
  }
}

var emptyCtorWithFieldAccess = new EmptyCtorWithFieldAccess();

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

// explicit return with no extra checks
@final
class CtorReturns {
  constructor() {
    return changetype<CtorReturns>(0);
  }
}

var ctorReturns = new CtorReturns();

var b: bool = true;

// conditional explicit return, otherwise fall-through
@final
class CtorConditionallyReturns {
  constructor() {
    // AS905 due to fall-through needing to prepend a 'this' allocation
    if (b) {
      return changetype<CtorConditionallyReturns>(0);
    }
  }
}

var ctorConditionallyReturns = new CtorConditionallyReturns();

// conditional explicit return 'this', otherwise fall-through
class CtorConditionallyReturnsThis {
  constructor() {
    if (b) {
      return this;
    }
  }
}

var ctorConditionallyReturnsThis = new CtorConditionallyReturnsThis();
