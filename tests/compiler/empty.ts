export function foo(): string {
  return "";
}

var a = foo();
__release(changetype<usize>(a));
