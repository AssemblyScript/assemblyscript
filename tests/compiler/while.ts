var ran: bool;

function testSimple(): void {
  var i = 10;
  var j = 0;
  while (i) {
    i--;
    j++;
  }
  assert(i == 0);
  assert(j == 10);
  ran = true;
}
ran = false;
testSimple();
assert(ran);

function testNested(): void {
  var i = 10;
  var j = 0;
  var k = 0;
  while (i) {
    i--;
    j++;
    while (i) {
      i--;
      k++;
    }
    assert(i == 0);
    assert(k == 9);
  }
  assert(i == 0);
  assert(j == 1);
  assert(k == 9);
  ran = true;
}
ran = false;
testNested();
assert(ran);

function testEmpty(): void {
  var i = 1;
  var j = 0;
  while (i-- && ++j);
  assert(i == -1);
  assert(j == 1);
  ran = true;
}
ran = false;
testEmpty();
assert(ran);

function testAlwaysTrue(): void {
  var i = 0;
  while (true) {
    if (++i == 10) break;
  }
  assert(i == 10);
  ran = true;
}
ran = false;
testAlwaysTrue();
assert(ran);

function testAlwaysTrueNeverBreaks(): i32 {
  var i = 0;
  while (true) {
    if (++i == 10) return i;
  }
  // no return required
}
assert(testAlwaysTrueNeverBreaks() == 10);

function testAlwaysFalse(): void {
  var i = 0;
  while (false) {
    ++i;
    assert(false);
  }
  assert(i == 0);
  ran = true;
}
ran = false;
testAlwaysFalse();
assert(ran);

function testAlwaysBreaks(): void {
  var i = 0;
  while (++i) {
    break;
  }
  assert(i == 1);
  ran = true;
}
ran = false;
testAlwaysBreaks();
assert(ran);

function testAlwaysReturns(): void {
  var i = 0;
  while (++i) {
    ran = true;
    return;
  }
  assert(false);
}
ran = false;
testAlwaysReturns();
assert(ran);

function testContinue(): void {
  var i = 10;
  while (i) {
    --i;
    continue;
  }
  assert(i == 0);
  ran = true;
}
ran = false;
testContinue();
assert(ran);

function testNestedContinue(): void {
  var i = 10;
  var j = 10;
  while (i) {
    while (j) {
      --j;
      continue;
    }
    --i;
    continue;
  }
  assert(i == 0);
  assert(j == 0);
  ran = true;
}
ran = false;
testNestedContinue();
assert(ran);

class Ref {}
function testRef(): void {
  var i = 0;
  var ref: Ref | null = new Ref();
  while (ref) {
    if (++i == 10) ref = null;
    else ref = new Ref();
  }
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
  while (getRef()) { // must not leak
    if (++i == 10) {
      ref = null;
      break;
    }
  }
  assert(i == 10);
  assert(!ref);
  ran = true;
}
ran = false;
testRefAutorelease();
assert(ran);

function testIfImplicitContinueThen(): void {
  var i = 0;
  while (true) {
    i++;
    if (i < 1) {
      // continue
    } else {
      break;
    }
  }
  ran = true;
}
ran = false;
testIfImplicitContinueThen();
assert(ran);

function testIfImplicitContinueElse(): void {
  var i = 0;
  while (true) {
    i++;
    if (i >= 1) {
      break;
    } else {
      // continue
    }
  }
  ran = true;
}
ran = false;
testIfImplicitContinueElse();
assert(ran);
