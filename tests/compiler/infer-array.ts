{ // default to i32 for integer literals
  let arr = [1, 2, 3];
  assert(isInteger(arr[0]));
  assert(isSigned(arr[0]));
}
{ // default to f64 for float literals
  let arr = [1.0, 2, 3];
  assert(isFloat(arr[0]));
}
{ // retain signedness
  let arr = [<u32>1, -1];
  assert(isInteger(arr[0]));
  assert(!isSigned(arr[0]));
  assert(arr[1] == 4294967295);
}
{ // use common denominator
  let arr = [1, 2, 3.0];
  assert(isFloat(arr[0]));
}
{ // pass contextual type upwards
  let arr = [<f32>1.0, 2.0, 3];
  assert(isFloat(arr[0]));
  let f: f32 = arr[1]; // would error if f64
}
class Ref {}
{ // use common nullable state
  let a: Ref = new Ref();
  let b: Ref | null = new Ref();
  let arr = [a, b];
  assert(isNullable(arr[0]));
}
{ // allow lesser nullable state
  let a: Ref | null = new Ref();
  let b: Ref = new Ref();
  let arr = [a, b];
  assert(isNullable(arr[1]));
}
{ // also works with null literal
  let a: Ref = new Ref();
  let arr = [a, null];
  assert(isNullable(arr[0]));
}
