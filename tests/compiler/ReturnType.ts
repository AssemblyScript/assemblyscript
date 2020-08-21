assert(isInteger<ReturnType<() => i8>>());
assert(isSigned<ReturnType<() => i8>>());
assert(sizeof<ReturnType<() => i8>>() == 1); // i32

assert(isFloat<ReturnType<() => f64>>());
assert(sizeof<ReturnType<() => f64>>() == 8);

class SomeExample {
  a: f64;
  b: f64;
}

assert(isManaged<ReturnType<() => SomeExample>>());
assert(offsetof<ReturnType<() => SomeExample>>() == 16);
