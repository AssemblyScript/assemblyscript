var abortCalled = false;

@global
function abort(message: string | null, filename: string, line: i32, column: i32): void {
  abortCalled = true;
}

assert(false, "this is ok");

if (!abortCalled)
  unreachable();
