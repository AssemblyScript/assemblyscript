@start export function main(): void {}
{
  let arr: i32[] = new Array<i32>(3);
  arr.push(123);
  arr.push(123);
  arr.pop();
}
{
  for (let i = 0; i < 10; ++i) {
    let arr = new Array<string>();
    for (let j = 0; j < 10; ++j) {
      arr.push("");
    }
  }
}
{
  let a = "a";
  let c = a + "b";
  c + "d";
}
__collect();
