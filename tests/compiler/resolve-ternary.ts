var b = true;

// literal

assert(
  (b ? 1 : 2).toString()
  ==
  "1"
);

// literal mismatch (convert lhs to f64)

assert(
  (b ? 1 : 2.0).toString()
  ==
  "1.0"
);

// function type

const f1 = (x: i32): i32 => x + 1;
const f2 = (x: i32): i32 => x + 2;

assert(
  (b ? f1 : f2)(1)
  ==
  2
);

// function type from identifier

function g1(x: i32): i32 { return x + 3; }
function g2(x: i32): i32 { return x + 4; }

assert(
  (b ? g1 : g2)(1)
  ==
  4
);

// function type mixed

assert(
  (b ? f2 : g2)(1)
  ==
  3
);
