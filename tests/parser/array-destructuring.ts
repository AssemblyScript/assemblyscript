function test1() {
  const arr: Array<i32> = [1, 2, 3, 4];
  const [a, b] = arr;
  const [first, second, ...tail] = arr;
}