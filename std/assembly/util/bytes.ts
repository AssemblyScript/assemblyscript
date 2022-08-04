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

export function FILL<T>(
  ptr: usize,
  len: usize,
  value: T,
  start: isize,
  end: isize
): void {
  start = start < 0 ? max(len + start, 0) : min(start, len);
  end   = end   < 0 ? max(len + end,   0) : min(end,   len);

  if (sizeof<T>() == 1) {
    if (start < end) {
      memory.fill(
        ptr + <usize>start,
        u8(value),
        <usize>(end - start)
      );
    }
  } else {
    if (ASC_SHRINK_LEVEL <= 1) {
      if (isInteger<T>()) {
        // @ts-ignore
        if (value == <T>0 | value == <T>-1) {
          if (start < end) {
            memory.fill(
              ptr + (<usize>start << alignof<T>()),
              u8(value),
              <usize>(end - start) << alignof<T>()
            );
          }
          return;
        }
      } else if (isFloat<T>()) {
        // for floating non-negative zeros we can use fast memory.fill
        if ((sizeof<T>() == 4 && reinterpret<u32>(f32(value)) == 0) ||
            (sizeof<T>() == 8 && reinterpret<u64>(f64(value)) == 0)) {
          if (start < end) {
            memory.fill(
              ptr + (<usize>start << alignof<T>()),
              0,
              <usize>(end - start) << alignof<T>()
            );
          }
          return;
        }
      }
    }
    for (; start < end; ++start) {
      store<T>(ptr + (<usize>start << alignof<T>()), value);
    }
  }
}
