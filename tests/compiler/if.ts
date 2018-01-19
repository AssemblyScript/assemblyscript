export function ifThenElse(n: i32): bool {
  if (n)
    return true;
  else
    return false;
}

assert(ifThenElse(0) == false);
assert(ifThenElse(1) == true);

export function ifThen(n: i32): bool {
  if (n)
    return true;
  return false;
}

assert(ifThen(0) == false);
assert(ifThen(1) == true);

export function ifThenElseBlock(n: i32): bool {
  if (n) {
    ; // nop
    return true;
  } else {
    ; // nop
    return false;
  }
}

assert(ifThenElseBlock(0) == false);
assert(ifThenElseBlock(1) == true);

export function ifAlwaysReturns(n: i32): bool {
  if (n)
    return true;
  else
    throw new Error("error");
}
