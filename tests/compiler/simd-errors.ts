// f32
{
  let a = f32x4.splat(0);
  let b: f32 = 0;
  v128.add<f32>(a, b);
}

// i32
{
  let a: i32 = 0;
  let b = i32x4.splat(0);
  v128.sub<i32>(a, b);
}

ERROR("EOF");
