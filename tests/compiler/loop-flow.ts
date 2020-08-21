export function whileReturn(): i32 {
  while (true) {
    return 1;
  }
}

assert(whileReturn() == 1);

export function whileThrow(): i32 {
  while (true) {
    throw new Error("term");
  }
}

export function whileContinue(): i32 {
  while (true) {
    continue;
  }
}

export function whileAny(a: i32): i32 {
  while (true) {
    if (a == 1) return 1;
    else if (a == 2) throw new Error("term");
    else continue;
  }
}

assert(whileAny(1) == 1);

export function forReturn(): i32 {
  for (;;) {
    return 1;
  }
}

assert(forReturn() == 1);

export function forThrow(): i32 {
  for (;;) {
    throw new Error("term");
  }
}

export function forContinue(): i32 {
  for (;;) {
    continue;
  }
}

export function forAny(a: i32): i32 {
  for (;;) {
    if (a == 1) return 1;
    else if (a == 2) throw new Error("term");
    else continue;
  }
}

assert(forAny(1) == 1);

export function doReturn(): i32 {
  do {
    return 1;
  } while (true);
}

assert(doReturn() == 1);

export function doThrow(): i32 {
  do {
    throw new Error("term");
  } while (true);
}

export function doAny(a: i32): i32 {
  do {
    if (a == 1) return 1;
    else if (a == 2) throw new Error("term");
    else continue;
  } while (true);
}

assert(doAny(1) == 1);
