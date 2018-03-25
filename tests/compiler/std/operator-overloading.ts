import "allocator/arena";

class Tester {
  x: i32 = 0;
  y: i32 = 0;

  constructor(x: i32, y: i32) {
    this.x = x;
    this.y = y;
  }

  @operator('+')
  static add(a: Tester, b: Tester): Tester {
    return new Tester(a.x + b.x, a.y + b.y);
  }

  @operator('-')
  static sub(a: Tester, b: Tester): Tester {
    return new Tester(a.x - b.x, a.y - b.y);
  }

  @operator('*')
  static mul(a: Tester, b: Tester): Tester {
    return new Tester(a.x * b.x, a.y * b.y);
  }

  @operator('/')
  static div(a: Tester, b: Tester): Tester {
    return new Tester(a.x / b.x, a.y / b.y);
  }

  @operator('%')
  static mod(a: Tester, b: Tester): Tester {
    return new Tester(a.x % b.x, a.y % b.y);
  }

  @operator('|')
  static or(a: Tester, b: Tester): Tester {
    return new Tester(a.x | b.x, a.y | b.y);
  }

  @operator('&')
  static and(a: Tester, b: Tester): Tester {
    return new Tester(a.x & b.x, a.y & b.y);
  }

  @operator('^')
  static xor(a: Tester, b: Tester): Tester {
    return new Tester(a.x ^ b.x, a.y ^ b.y);
  }

  @operator('==')
  static equal(a: Tester, b: Tester): bool {
    return a.x == b.x && a.y == b.y;
  }
}

// check additional
var a1 = new Tester(1, 2);
var a2 = new Tester(2, 3);
var a  = a1 + a2;
assert(a.x == 3 && a.y == 5);

// check subtraction
var s1 = new Tester(2, 3);
var s2 = new Tester(2,-3);
var s  = s1 - s2;
assert(s.x == 0 && s.y == 6);

// check multiplication
var m1 = new Tester(2, 5);
var m2 = new Tester(3, 2);
var m  = m1 * m2;
assert(m.x == 6 && m.y == 10);

// check division
var d1 = new Tester(6, 50);
var d2 = new Tester(3, 10);
var d  = d1 / d2;
assert(d.x == 2 && d.y == 5);

// check fractional
var f1 = new Tester(10, 10);
var f2 = new Tester(6, 10);
var f  = f1 % f2;
assert(f.x == 4 && f.y == 0);

// check bitwise and
var n1 = new Tester(0xFF, 0x0F);
var n2 = new Tester(0x0F, 0xFF);
var n  = n1 & n2;
assert(n.x == 0xF && n.y == 0xF);

// check bitwise or
var o1 = new Tester(0x0F0F, 0xFF);
var o2 = new Tester(0xF0F0, 0x00);
var o  = o1 | o2;
assert(o.x == 0xFFFF && o.y == 0xFF);

// check bitwise xor
var x1 = new Tester(0x00FF, 0xFF);
var x2 = new Tester(0xFF00, 0x00);
var x  = x1 ^ x2;
assert(x.x == 0xFFFF && x.y == 0xFF);

// check truthfully equal
var eq1 = new Tester(1, -2);
var eq2 = new Tester(1, -2);
var eq  = eq1 == eq2;
assert(eq == true);

// check falsely equal
var eq3 = new Tester(1, 0);
var eq4 = new Tester(0, 1);
var eqf = eq3 == eq4;
assert(eqf == false);
