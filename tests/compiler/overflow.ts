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

// special cases
{
  const b1 = <bool>2;
  assert(b1 == true);

  const b2 = <bool>-1;
  assert(b2 == true);

  const b3 = <bool>0;
  assert(b3 == false);

  let b4 = <bool>2;
  assert(b4 == true);

  let b5 = <bool>-1;
  assert(b5 == true);

  let b6 = <bool>0;
  assert(b6 == false);
}

{
  // regression #2131
  const a: u32 = 65;
  const b: u16 = 63457;
  let c = a + (((b & 0x1f8) >> 3) - (b & 0x200 ? 0x40 : 0));
  // trace(">>>> c", 1, <f64>c);
  assert(c == 65597);
}
