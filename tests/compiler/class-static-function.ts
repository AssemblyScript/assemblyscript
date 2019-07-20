class Example {
  public static staticFunc(): i32 {
    return 42;
  }
}

function call(func: () => i32): i32 {
  return func();
}

assert(call(Example.staticFunc) == 42);
