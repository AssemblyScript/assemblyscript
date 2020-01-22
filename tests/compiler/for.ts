var ran: bool;

function testInitExpression(): void {
  var i: i32;
  for (i = 0; i < 10; ++i) {
    ;
  }
  assert(i == 10);
  ran = true;
}
ran = false;
testInitExpression();
assert(ran);

function testInitStatement(): void {
  for (var j = 0; j < 10; ++j) {
    ;
  }
  assert(j == 10);
  ran = true;
}
ran = false;
testInitStatement();
assert(ran);

function testEmpty(): void {
  var i = 10;
  for (; i > 0; --i);
  assert(i == 0);
  ran = true;
}
ran = false;
testEmpty();
assert(ran);

function testConditionOmitted(): void {
  var i = 0;
  for (;; ++i) if (i == 10) break;
  assert(i == 10);
  ran = true;
}
ran = false;
testConditionOmitted();
assert(ran);

function testAllOmitted(): void {
  var i = 10;
  for (;;) if (--i == 0) break;
  assert(i == 0);
  ran = true;
}
ran = false;
testAllOmitted();
assert(ran);

function testAlwaysTrue(): void {
  var i = 0;
  for (;true;) {
    if (++i == 10) break;
  }
  assert(i == 10);
  ran = true;
}
ran = false;
testAlwaysTrue();
assert(ran);

function testAlwaysFalse(): void {
  for (;false;) {
    assert(false);
  }
  ran = true;
}
ran = false;
testAlwaysFalse();
assert(ran);

function testAlwaysContinues(): void {
  for (var k = 0; k < 10; ++k) continue;
  assert(k == 10);
  ran = true;
}
ran = false;
testAlwaysContinues();
assert(ran);

function testAlwaysBreaks(): void {
  for (var k = 0; k < 10; ++k) break;
  assert(k == 0);
  ran = true;
}
ran = false;
testAlwaysBreaks();
assert(ran);

function testAlwaysReturns(): void {
  for (let k = 0; k < 10; ++k) {
    ran = true;
    return;
  }
  assert(false);
}
ran = false;
testAlwaysReturns();
assert(ran);

function testNestedContinue(): void {
  var i = 0;
  var j = 0;
  var k = 0;
  for (; i < 10; i++) {
    if (i < 2) continue;
    for (j = 0; j < 10; j++) {
      if (i < j) {
        ++k;
        continue;
      }
    }
  }
  assert(i == 10);
  assert(j == 10);
  assert(k == 28);
  ran = true;
}
ran = false;
testNestedContinue();
assert(ran);

class Ref {}
function testRef(): void {
  var i = 0;
  var ref: Ref | null = new Ref();
  for (; ref;) {
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
  for (ref = getRef(); getRef(); ref = getRef()) { // must not leak
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
