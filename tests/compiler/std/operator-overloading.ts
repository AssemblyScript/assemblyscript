import "allocator/arena";

class Tester {
  constructor(public x: i32, public y: i32) {
  }

  @operator("+")
  static add(a: Tester, b: Tester): Tester {
    return new Tester(a.x + b.x, a.y + b.y);
  }

  @operator("-")
  static sub(a: Tester, b: Tester): Tester {
    return new Tester(a.x - b.x, a.y - b.y);
  }

  @operator("*")
  static mul(a: Tester, b: Tester): Tester {
    return new Tester(a.x * b.x, a.y * b.y);
  }

  @operator("/")
  static div(a: Tester, b: Tester): Tester {
    return new Tester(a.x / b.x, a.y / b.y);
  }

  @operator("%")
  static mod(a: Tester, b: Tester): Tester {
    return new Tester(a.x % b.x, a.y % b.y);
  }

  @operator("**")
  static pow(a: Tester, b: Tester): Tester {
    return new Tester(<i32>(a.x ** b.x), <i32>(a.y ** b.y));
  }

  @operator("|")
  static or(a: Tester, b: Tester): Tester {
    return new Tester(a.x | b.x, a.y | b.y);
  }

  @operator("&")
  static and(a: Tester, b: Tester): Tester {
    return new Tester(a.x & b.x, a.y & b.y);
  }

  @operator("^")
  static xor(a: Tester, b: Tester): Tester {
    return new Tester(a.x ^ b.x, a.y ^ b.y);
  }

  @operator("==")
  static equals(a: Tester, b: Tester): bool {
    return a.x == b.x && a.y == b.y;
  }

  @operator("!=")
  static notEquals(a: Tester, b: Tester): bool {
    return a.x != b.x && a.y != b.y;
  }

  @operator(">")
  static greater(a: Tester, b: Tester): bool {
    return a.x > b.x && a.y > b.y;
  }

  @operator(">=")
  static greaterEquals(a: Tester, b: Tester): bool {
    return a.x >= b.x && a.y >= b.y;
  }

  @operator("<")
  static less(a: Tester, b: Tester): bool {
    return a.x < b.x && a.y < b.y;
  }

  @operator("<=")
  static lessEquals(a: Tester, b: Tester): bool {
    return a.x <= b.x && a.y <= b.y;
  }

  @operator(">>")
  static shr(value: Tester, shift: i32): Tester {
    return new Tester(value.x >> shift, value.y >> shift);
  }

  @operator(">>>")
  static shu(value: Tester, shift: i32): Tester {
    return new Tester(value.x >>> shift, value.y >>> shift);
  }

  @operator("<<")
  static shl(value: Tester, shift: i32): Tester {
    return new Tester(value.x << shift, value.y << shift);
  }

  // unary opterators
  @operator.prefix("~")
  static not(value: Tester): Tester {
    return new Tester(~value.x, ~value.y);
  }

  @operator.prefix("!")
  static excl(value: Tester): bool {
    return !value.x && !value.y;
  }

  @operator.prefix("+")
  static pos(value: Tester): Tester {
    return new Tester(+value.x, +value.y);
  }

  @operator.prefix("-")
  static neg(value: Tester): Tester {
    return new Tester(-value.x, -value.y);
  }

  @operator.prefix("++")
  inc(): this {
    ++this.x;
    ++this.y;
    return this;
  }

  @operator.prefix("--")
  dec(): this {
    --this.x;
    --this.y;
    return this;
  }

  @operator.postfix("++")
  postInc(): Tester {
    return new Tester(this.x + 1, this.y + 1);
  }

  @operator.postfix("--")
  postDec(): Tester {
    return new Tester(this.x - 1, this.y - 1);
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

// check remainder
var f1 = new Tester(10, 10);
var f2 = new Tester(6, 10);
var f  = f1 % f2;
assert(f.x == 4 && f.y == 0);

// check power
var p1 = new Tester(2, 3);
var p2 = new Tester(4, 5);
var p  = p1 ** p2;
assert(p.x == 16 && p.y == 243);

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

// check falsely non-equal
eq = eq1 != eq2;
assert(eq == false);

// check truthfully non-equal
eqf = eq3 != eq4;
assert(eqf == true);

// check greater
var gt1 = new Tester(2, i32.MAX_VALUE);
var gt2 = new Tester(1, 0);
var gt  = gt1 > gt2;
assert(gt == true);

// check greater or equal
var gte1 = new Tester(2, 2);
var gte2 = new Tester(2, 2);
var gte  = gte1 >= gte2;
assert(gte == true);

// check less
var le1 = new Tester(5,-1);
var le2 = new Tester(6, 6);
var le  = le1 < le2;
assert(le == true);

// check less or equal
var leq1 = new Tester(4, 3);
var leq2 = new Tester(4, 3);
var leq  = leq1 <= leq2;
assert(leq == true);

// check right shift
var shr  = new Tester(8, 16);
var sres = shr >> 3;
assert(sres.x == 1 && sres.y == 2);

// check right shift
var shu  = new Tester(-8, -16);
var ures = shu >>> 3;
assert(ures.x == 536870911 && ures.y == 536870910);

// check left shift
var shl = new Tester(1, 2);
sres = shl << 3;
assert(sres.x == 8 && sres.y == 16);

// check unary positive
var pos = new Tester(1, -2);
var pres = +pos;
assert(pres.x == pos.x && pres.y == pos.y);

// check unary negative
var neg = new Tester(-1, -2);
var nres = -neg;
assert(nres.x == -neg.x && nres.y == -neg.y);

// check unary not "~"
var not = new Tester(0xFF, 0x10);
var res = ~not;
assert(res.x == ~not.x && res.y == ~not.y);

// check unary exclamation "!"
var excl = new Tester(0, 0);
var bres = !excl;
assert(bres == (!excl.x && !excl.y));
assert(bres == true);

//
var incdec = new Tester(0, 1);

++incdec;
assert(incdec.x == 1 && incdec.y == 2);

--incdec;
assert(incdec.x == 0 && incdec.y == 1);

incdec = new Tester(0, 1);

var tmp = incdec++;
assert(tmp.x == 0 && tmp.y == 1);
assert(incdec.x == 1 && incdec.y == 2);

tmp = incdec--;
assert(tmp.x == 1 && tmp.y == 2);
assert(incdec.x == 0 && incdec.y == 1);

// check inlined static
class TesterInlineStatic {
  constructor(public x: i32, public y: i32) {
  }
  @inline @operator("+")
  static add(a: TesterInlineStatic, b: TesterInlineStatic): TesterInlineStatic {
    return new TesterInlineStatic(a.x + b.x, a.y + b.y);
  }

  @inline @operator.postfix("++")
  static postInc(a: TesterInlineStatic): TesterInlineStatic {
    return new TesterInlineStatic(a.x + 1, a.y + 1);
  }
}
var ais1 = new TesterInlineStatic(1, 2);
ais1++; // 2, 3
var ais2 = new TesterInlineStatic(2, 3);
var ais  = ais1 + ais2;
assert(ais.x == 4 && ais.y == 6);

// check inlined instance
class TesterInlineInstance {
  constructor(public x: i32, public y: i32) {
  }
  @inline @operator("+")
  add(b: TesterInlineInstance): TesterInlineInstance {
    return new TesterInlineInstance(this.x + b.x, this.y + b.y);
  }

  @inline @operator.postfix("++")
  postInc(): TesterInlineInstance {
    return new TesterInlineInstance(this.x + 1, this.y + 1);
  }
}
var aii1 = new TesterInlineInstance(1, 2);
aii1++; // 2, 3
var aii2 = new TesterInlineInstance(2, 3);
var aii  = aii1 + aii2;
assert(aii.x == 4 && aii.y == 6);
