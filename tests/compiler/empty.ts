export function foo(): void {
  var a = changetype<string>(__stackify(changetype<usize>("a"), 0));
  // var b = changetype<string>(__stackify(changetype<usize>("b"), 0));
  // var c = changetype<string>(__stackify(changetype<usize>("b"), 0));
  // var d = changetype<string>(__stackify(changetype<usize>("b"), 0));
  // return 2;
}
