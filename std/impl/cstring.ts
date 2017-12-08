/// <reference path="../../assembly.d.ts" />

@global()
@struct()
class CString {

  constructor(string: string) {
    const ptr: usize = Heap.allocate(<usize>string.length * 2 + 1);
    let idx: usize = ptr;
    for (let i: usize = 0, k: usize = <usize>(<string>str).length; i < k; ++i) {
      let u: i32 = string.charCodeAt(i);
      if (u >= 0xD800 && u <= 0xDFFF && i + 1 < k)
        u = 0x10000 + ((u & 0x3FF) << 10) | (string.charCodeAt(++i) & 0x3FF);
      if (u <= 0x7F)
        store<u8>(idx++, u as u8);
      else if (u <= 0x7FF) {
        // TODO: maybe combine multiple stores into the next larger one
        store<u8>(idx++, (0xC0 |  (u >>> 6)       ) as u8);
        store<u8>(idx++, (0x80 | ( u         & 63)) as u8);
      } else if (u <= 0xFFFF) {
        store<u8>(idx++, (0xE0 |  (u >>> 12)      ) as u8);
        store<u8>(idx++, (0x80 | ((u >>>  6) & 63)) as u8);
        store<u8>(idx++, (0x80 | ( u         & 63)) as u8);
      } else if (u <= 0x1FFFFF) {
        store<u8>(idx++, (0xF0 |  (u >>> 18)      ) as u8);
        store<u8>(idx++, (0x80 | ((u >>> 12) & 63)) as u8);
        store<u8>(idx++, (0x80 | ((u >>>  6) & 63)) as u8);
        store<u8>(idx++, (0x80 | ( u         & 63)) as u8);
      } else if (u <= 0x3FFFFFF) {
        store<u8>(idx++, (0xF8 |  (u >>> 24)      ) as u8);
        store<u8>(idx++, (0x80 | ((u >>> 18) & 63)) as u8);
        store<u8>(idx++, (0x80 | ((u >>> 12) & 63)) as u8);
        store<u8>(idx++, (0x80 | ((u >>>  6) & 63)) as u8);
        store<u8>(idx++, (0x80 | ( u         & 63)) as u8);
      } else {
        store<u8>(idx++, (0xFC |  (u >>> 30)      ) as u8);
        store<u8>(idx++, (0x80 | ((u >>> 24) & 63)) as u8);
        store<u8>(idx++, (0x80 | ((u >>> 18) & 63)) as u8);
        store<u8>(idx++, (0x80 | ((u >>> 12) & 63)) as u8);
        store<u8>(idx++, (0x80 | ((u >>>  6) & 63)) as u8);
        store<u8>(idx++, (0x80 | ( u         & 63)) as u8);
      }
    }
    store<u8>(idx, 0);
    return changetype<usize, this>(ptr);
  }

  @inline()
  "[]"(index: usize): u8 {
    return load<u8>(changetype<this, usize>(this) + index /* * sizeof<u8>() */);
  }

  // read-only

  dispose(): void {
    Heap.dispose(changetype<this, usize>(this));
  }
}
