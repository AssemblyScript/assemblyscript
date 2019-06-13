function testCatchImmediately(): void {
  var caught: string | null = null;
  try {
    throw new Error("test");
  } catch (e) {
    caught = e.message;
  }
  assert(caught == "test");
}

testCatchImmediately();
/*
function throws(): void {
  throw new Error("test");
}

function throwsNonVoid(): i32 {
  throw new Error("test");
}

function testCatchCall(): void {
  var caught: string | null = null;
  try {
    throws();
  } catch (e) {
    caught = e.message;
  }
  assert(caught == "test");
}

testCatchCall();

function testCatchCallNonVoid(): void {
  var caught: string | null = null;
  try {
    throws();
  } catch (e) {
    caught = e.message;
  }
  assert(caught == "test");
}

testCatchCallNonVoid();

function forwardCall(): void {
  throws();
}

function forwardCallNonVoid(): i32 {
  throwsNonVoid();
  return 0;
}

function testCatchForward(): void {
  var caught: string | null = null;
  try {
    forwardCall();
  } catch (e) {
    caught = e.message;
  }
  assert(caught == "test");
}

testCatchForward();

function testCatchForwardNonVoid(): void {
  var caught: string | null = null;
  try {
    forwardCallNonVoid();
  } catch (e) {
    caught = e.message;
  }
  assert(caught == "test");
}

testCatchForwardNonVoid();
*/