assert(
  ((a: i32): i32 => a + 40)(2)
  ==
  42
);
assert(
  (function(a: i32): i32 { return a + 41; })(1)
  ==
  42
);
assert(
  ((a: i32): i32 => a + 42)(0).toString()
  ==
  "42"
);
