// NOTE: this test mostly relies on comparing to the fixture because the ABI affects emitted
// instructions, not semantics.

// exported functions should wrap their returns
export function exported(): i8 {
  return <i8>128;
}

// internal functions should not wrap their returns
function internal(): i8 {
  return <i8>128;
}

// calling a function that already wraps its return should not wrap again
export function exportedExported(): i8 {
  return exported();
}

// calling a function that does not wrap its return should wrap it
export function exportedInternal(): i8 {
  return internal();
}

internal(); // keep alive

var condition = !0;

// locals not marked as wrapped should be wrapped when necessaray
{
  let x: i8;
  x = <i8>256; // overflows to 0
  assert(!x); // should wrap
}

// locals not marked as wrapped in all branches should be wrapped when necessary
{
  let x: i8;
  x = <i8>256; // overflows to 0

  if (condition) {
    x = x / 2; // should sign-extend x on input
  } else {
    x = x / 2; // ^
  }
  assert(!x); // should wrap x
}

// locals marked as wrapped in all branches should not be wrapped again
{
  let x: i8; // local
  x = <i8>256; // overflows to 0

  if (condition) {
    x = x >> 24; // should mark result as wrapped
  } else {
    x = x & 127; // ^
  }
  assert(!x); // should not wrap
}

// unlike locals, globals are wrapped on assignment
var y: i8;
{
  y = <i8>256; // should wrap
  assert(!y); // should not wrap
}

// certain operations do not overflow, depending on target type
{
  let b: bool;
  b = <bool>ctz(2);
  assert(b); // should wrap
  b = <bool>clz(1);
  assert(b); // should wrap
  let x: i8;
  x = <i8>ctz(2);
  assert(x);  // should not wrap
  x = <i8>clz(1);
  assert(x);  // should not wrap
  // TODO: test more?
}
