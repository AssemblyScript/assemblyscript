var ran: bool;

function testSimple(): void {
  var n = 10;
  var m = 0;
  do {
    n--;
    m++;
  } while (n);
  assert(n == 0);
  assert(m == 10);
  ran = true;
}
ran = false;
testSimple();
assert(ran);

function testEmpty(): void {
  var n = 10;
  do; while(n--);
  assert(n == -1);
  ran = true;
}
ran = false;
testEmpty();
assert(ran);

function testNested(): void {
  var n = 10;
  var m = 0;
  var o = 0;
  do {
    n--;
    m++;
    do {
      n--;
      o++;
    } while (n);
    assert(n == 0);
    assert(o == 9);
  } while (n);
  assert(n == 0);
  assert(m == 1);
  assert(o == 9);
  ran = true;
}
ran = false;
testNested();
assert(ran);

function testAlwaysTrue(): void {
  var i = 0;
  do {
    if (++i == 10) break;
  } while (true);
  assert(i == 10);
  ran = true;
}
ran = false;
testAlwaysTrue();
assert(ran);

function testAlwaysTrueNeverBreaks(): i32 {
  var i = 0;
  do {
    if (++i == 10) return i;
  } while (true);
  // no return required
}
assert(testAlwaysTrueNeverBreaks() == 10);

function testAlwaysFalse(): void {
  var i = 0;
  do {
    ++i;
  } while (false);
  assert(i == 1);
  ran = true;
}
ran = false;
testAlwaysFalse();
assert(ran);

function testAlwaysBreaks(): void {
  var i = 0;
  do {
    ++i;
    break;
  } while (i);
  assert(i == 1);
  ran = true;
}
ran = false;
testAlwaysBreaks();
assert(ran);

function testAlwaysReturns(): void {
  var i = 0;
  do {
    ++i;
    ran = true;
    return;
  } while (i);
  assert(false);
}
ran = false;
testAlwaysReturns();
assert(ran);

function testContinue(): void {
  var i = 0;
  do {
    if (++i == 10) break;
    continue;
  } while (i);
  assert(i == 10);
  ran = true;
}
ran = false;
testContinue();
assert(ran);

function testNestedContinue(): void {
  var i = 0;
  var j = 0;
  do {
    if (++i == 10) break;
    do {
      if ((++j % 10) == 0) break;
      continue;
    } while (j);
    continue;
  } while (i);
  assert(i == 10);
  assert(j == 90);
  ran = true;
}
ran = false;
testNestedContinue();
assert(ran);

class Ref {}
function testRef(): void {
  var i = 0;
  var ref: Ref | null = new Ref();
  do {
    if (++i == 10) ref = null;
    else ref = new Ref();
  } while (ref);
  assert(i == 10);
  assert(!ref);
  ran = true;
}
ran = false;
testRef();
assert(ran);

function getRef(): Ref {
  return new Ref();
}
function testRefAutorelease(): void {
  var i = 0;
  var ref: Ref | null = new Ref();
  do {
    if (++i == 10) {
      ref = null;
      break;
    }
  } while (getRef()); // must not leak
  assert(i == 10);
  assert(!ref);
  ran = true;
}
ran = false;
testRefAutorelease();
assert(ran);
