{
  let buffer = new ArrayBuffer(8);

  assert(buffer.byteLength == 8);

  let sliced = buffer.slice();

  assert(sliced.byteLength == 8);
  assert(sliced !== buffer);

  sliced = buffer.slice(1);

  assert(sliced.byteLength == 7);

  sliced = buffer.slice(-1);

  assert(sliced.byteLength == 1);

  sliced = buffer.slice(1, 3);

  assert(sliced.byteLength == 2);

  sliced = buffer.slice(1, -1);

  assert(sliced.byteLength == 6);

  sliced = buffer.slice(-3, -1);

  assert(sliced.byteLength == 2);

  sliced = buffer.slice(-4, 42);

  assert(sliced.byteLength == 4);

  sliced = buffer.slice(42);

  assert(sliced.byteLength == 0);
  assert(sliced != null);

  assert(!ArrayBuffer.isView<i32[] | null>(null));
  assert(!ArrayBuffer.isView<usize>(0));
  assert(!ArrayBuffer.isView<usize>(1));
  assert(!ArrayBuffer.isView<Uint8Array | null>(null));
  assert(!ArrayBuffer.isView<Int32Array | null>(null));
  assert(!ArrayBuffer.isView<DataView | null>(null));

  let arr8 = new Uint8Array(1);
  assert(!ArrayBuffer.isView(<i32[]>[1, 2]));
  assert(ArrayBuffer.isView(arr8));
  assert(ArrayBuffer.isView(new Int32Array(1)));
  assert(ArrayBuffer.isView(new DataView(arr8.buffer)));
}
