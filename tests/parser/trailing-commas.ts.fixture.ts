import {
  a,
  b
} from "c";
enum Foo {
  A,
  B
}
function add(x: i32, y: i32): i32 {
  return x + y;
}
function parameterized<A, B>(a: A, b: B): void {}
export function compute(): i32 {
  const arr: Array<i8> = [1, 2];
  parameterized<i8, i32>(0, 0);
  return add(1, 2);
}
export {
  a,
  b
};
