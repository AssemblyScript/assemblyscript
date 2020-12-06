// Runtime shim for the compiler compiled to JS.

function __newString(str) {
  return str;
}

exports.__newString = __newString;

function __getString(ptr) {
  return ptr;
}

exports.__getString = __getString;

function __retain(ptr) {
  return ptr;
}

exports.__retain = __retain;

function __release(ptr) {
  // nop
}

exports.__release = __release;

function __collect(incremental) {
  // nop
}

exports.__collect = __collect;
