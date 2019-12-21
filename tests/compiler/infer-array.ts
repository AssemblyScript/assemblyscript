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
  let arr = [a, -1];
  assert(isInteger(arr[0]));
  assert(!isSigned(arr[0]));
  assert(arr[1] == 4294967295);
}
{
  let arr = [1, 2, 3.0];
  assert(isFloat(arr[0]));
}
class Ref {}
{
  let a: Ref = new Ref();
  let b: Ref | null = new Ref();
  let arr = [a, b];
  assert(isNullable(arr[0]));
}
{
  let a: Ref | null = new Ref();
  let b: Ref = new Ref();
  let arr = [a, b];
  assert(isNullable(arr[1]));
}
{
  let a: Ref = new Ref();
  let arr = [a, null];
  assert(isNullable(arr[0]));
}
