{
  let arr = [1, 2, 3];
  assert(isInteger(arr[0]));
  assert(isSigned(arr[0]));
}
{
  let arr = [1.0, 2, 3];
  assert(isFloat(arr[0]));
}
{
  let a: u32 = 0;
  let arr = [ a, -1 ];
  assert(isInteger(arr[0]));
  assert(!isSigned(arr[0]));
  assert(arr[1] == 4294967295);
}
