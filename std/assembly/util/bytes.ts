export function REVERSE<T>(ptr: usize, len: usize): void {
  if (len > 1) {
    let
      i: usize = 0,
      tail: usize,
      hlen: usize = len >> 1;

    if (ASC_SHRINK_LEVEL < 1) {
      if (sizeof<T>() == 1) {
        // TODO: Decide later: Does we need this fast path cases?
        //
        // if (len == 4) {
        //   store<u32>(ptr, bswap(load<u32>(ptr)));
        //   return;
        // }
        // if (len == 8) {
        //   store<u64>(ptr, bswap(load<u64>(ptr)));
        //   return;
        // }
        tail = len - 8;
        while (i + 7 < hlen) {
          let front = ptr + i;
          let back  = ptr + tail - i;
          let temp  = bswap(load<u64>(front));
          store<u64>(front, bswap(load<u64>(back)));
          store<u64>(back, temp);
          i += 8;
        }
      }

      if (sizeof<T>() == 2) {
        tail = len - 2;
        while (i + 1 < hlen) {
          let front = ptr + (i << 1);
          let back  = ptr + (tail - i << 1);
          let temp  = rotr(load<u32>(back), 16);
          store<u32>(back, rotr(load<u32>(front), 16));
          store<u32>(front, temp);
          i += 2;
        }
      }
    }

    tail = len - 1;
    while (i < hlen) {
      let front = ptr + (i << alignof<T>());
      let back  = ptr + (tail - i << alignof<T>());
      let temp  = load<T>(front);
      store<T>(front, load<T>(back));
      store<T>(back, temp);
      i++;
    }
  }
}
