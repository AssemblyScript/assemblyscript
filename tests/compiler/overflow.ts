// becomes simplified: val++
// uses a temp. local: ctx = val++

// i8
{
  let val: i8 = 127;
  let ctx: i8;

  val++;
  assert(val == -128);

  val--;
  assert(val == 127);

  ctx = val++;
  assert(val == -128);

  ctx = val--;
  assert(val == 127);

  ++val;
  assert(val == -128);

  --val;
  assert(val == 127);

  ctx = ++val;
  assert(val == -128);

  ctx = --val;
  assert(val == 127);

  assert(val + 1 == -128);
}

// i16
{
  let val: i16 = 32767;
  let ctx: i16;

  val++;
  assert(val == -32768);

  val--;
  assert(val == 32767);

  ctx = val++;
  assert(val == -32768);

  ctx = val--;
  assert(val == 32767);

  ++val;
  assert(val == -32768);

  --val;
  assert(val == 32767);

  ctx = ++val;
  assert(val == -32768);

  ctx = --val;
  assert(val == 32767);

  assert(val + 1 == -32768);
}

// u8
{
  let val: u8 = 0;
  let ctx: u8;

  val--;
  assert(val == 0xff);

  val++;
  assert(val == 0);

  ctx = val--;
  assert(val == 0xff);

  ctx = val++;
  assert(val == 0);

  --val;
  assert(val == 0xff);

  ++val;
  assert(val == 0);

  ctx = --val;
  assert(val == 0xff);

  ctx = ++val;
  assert(val == 0);

  assert(val - 1 == 0xff);
}

// u16
{
  let val: u16 = 0;
  let ctx: u16;

  val--;
  assert(val == 0xffff);

  val++;
  assert(val == 0);

  ctx = val--;
  assert(val == 0xffff);

  ctx = val++;
  assert(val == 0);

  --val;
  assert(val == 0xffff);

  ++val;
  assert(val == 0);

  ctx = --val;
  assert(val == 0xffff);

  ctx = ++val;
  assert(val == 0);

  assert(val - 1 == 0xffff);
}
