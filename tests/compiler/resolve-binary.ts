// comparison
assert(
  (1 < 2).toString()
  ==
  "true"
);
assert(
  (1 > 2).toString()
  ==
  "false"
);
assert(
  (1 <= 2).toString()
  ==
  "true"
);
assert(
  (1 >= 2).toString()
  ==
  "false"
);
assert(
  (1 == 2).toString()
  ==
  "false"
);
assert(
  (1 != 2).toString()
  ==
  "true"
);

// identity
assert(
  ("a" === "a").toString()
  ==
  "true"
);
assert(
  ("a" !== "a").toString()
  ==
  "false"
);

// assignment
var a: i32;
assert(
  (a = 1).toString()
  ==
  "1"
);
assert(
  (a += 1).toString()
  ==
  "2"
);
assert(
  (a -= 1).toString()
  ==
  "1"
);
assert(
  (a *= 2).toString()
  ==
  "2"
);
// assert(
//   (a **= 2).toString()
//   ==
//   "4"
// );
a = 4;
assert(
  (a /= 2).toString()
  ==
  "2"
);
assert(
  (a %= 3).toString()
  ==
  "2"
);
assert(
  (a <<= 1).toString()
  ==
  "4"
);
assert(
  (a >>= 1).toString()
  ==
  "2"
);
assert(
  (a >>>= 1).toString()
  ==
  "1"
);
assert(
  (a &= 3).toString()
  ==
  "1"
);
assert(
  (a |= 3).toString()
  ==
  "3"
);
assert(
  (a ^= 2).toString()
  ==
  "1"
);

// arithmetics
assert(
  (1 + 2).toString()
  ==
  "3"
);
assert(
  (1 - 2).toString()
  ==
  "-1"
);
assert(
  (1 * 2).toString()
  ==
  "2"
);
assert(
  (4 / 2).toString()
  ==
  "2"
);
assert(
  (3 % 2).toString()
  ==
  "1"
);

// pow
assert(
  (2 ** 2).toString()
  ==
  "4.0" // TBD
);

// shift
assert(
  (2 << 1).toString()
  ==
  "4"
);
assert(
  (2 >> 1).toString()
  ==
  "1"
);
assert(
  (-1 >>> 30).toString()
  ==
  "3"
);

// bitwise
assert(
  (3 & 1).toString()
  ==
  "1"
);
assert(
  (1 | 2).toString()
  ==
  "3"
);
assert(
  (1 ^ 3).toString()
  ==
  "2"
);

// logical
assert(
  (1 && 2).toString()
  ==
  "2"
);
assert(
  (0 && 2).toString()
  ==
  "0"
);
assert(
  (1 || 2).toString()
  ==
  "1"
);
assert(
  (0 || 2).toString()
  ==
  "2"
);
