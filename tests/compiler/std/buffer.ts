// Buffer.from /////////////////////////////////////////////////////////////////////////////////////
{
  let buffer = new Buffer(3);
  buffer[0] = 0;
  buffer[1] = 1;
  buffer[2] = 2;

  assert(buffer[0] == 0);
  assert(buffer[1] == 1);
  assert(buffer[2] == 2);

  let i32array: i32[] = [1, 2, 3, 4, 5, 6, 257];
  buffer = Buffer.from<i32[]>(i32array);
  assert(buffer[0] == 1);
  assert(buffer[1] == 2);
  assert(buffer[2] == 3);
  assert(buffer[3] == 4);
  assert(buffer[4] == 5);
  assert(buffer[5] == 6);
  assert(buffer[6] == 1);

  let f64array: f64[] = [1.1, 2.2, 3.3, 4.4];
  buffer = Buffer.from<f64[]>(f64array);
  assert(buffer[0] == <u8>1.1);
  assert(buffer[1] == <u8>2.2);
  assert(buffer[2] == <u8>3.3);
  assert(buffer[3] == <u8>4.4);

  buffer = Buffer.from<string>("abcdef");
  assert(buffer[0] == <u8>0x61);
  assert(buffer[1] == <u8>0x62);
  assert(buffer[2] == <u8>0x63);
  assert(buffer[3] == <u8>0x64);
  assert(buffer[4] == <u8>0x65);
  assert(buffer[5] == <u8>0x66);
}
