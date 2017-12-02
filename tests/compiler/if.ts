export function ifThenElse(n: i32): bool {
  if (n)
    return true;
  else
    return false;
}

export function ifThen(n: i32): bool {
  if (n)
    return true;
  return false;
}

export function ifThenElseBlock(n: i32): bool {
  if (n) {
    ; // nop
    return true;
  } else {
    ; // nop
    return false;
  }
}
