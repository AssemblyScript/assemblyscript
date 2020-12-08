class A {
  public call(): i32 {
    return this.callImpl();
  }
  public callImpl(): i32 {
    throw new Error("not implemented");
  }
}

class B extends A {
  public callImpl(): i32 {
    return 3;
  }
}

class Base {
  run(): i32 {
    throw new Error("not implemented");
  }
}

class Bar extends Base {
  run(): i32 {
    return new B().call();
  }
}

var instance: Base = new Bar();
assert(instance.run() == 3);
