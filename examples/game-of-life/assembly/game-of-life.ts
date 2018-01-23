// A simplified version of the game of life as seen on http://dcode.io

var w: u32, // width
    h: u32, // height
    s: u32; // total size

/** Initializes width and height. */
export function init(w_: u32, h_: u32): void {
  w = w_;
  h = h_;
  s = w * h;
}

/** Performs one step. */
export function step(): void {
  var hm1 = h - 1,
      wm1 = w - 1;
  for (var y: u32 = 0; y < h; ++y) {
    var ym1 = select<u32>(hm1, y - 1, y == 0),
        yp1 = select<u32>(0, y + 1, y == hm1);
    for (var x: u32 = 0; x < w; ++x) {
      var xm1 = select<u32>(wm1, x - 1, x == 0),
          xp1 = select<u32>(0, x + 1, x == wm1);
      var n = (
        load<u8>(ym1 * w + xm1) + load<u8>(ym1 * w + x) + load<u8>(ym1 * w + xp1) +
        load<u8>(y   * w + xm1)                         + load<u8>(y   * w + xp1) +
        load<u8>(yp1 * w + xm1) + load<u8>(yp1 * w + x) + load<u8>(yp1 * w + xp1)
      );
      if (load<u8>(y * w + x)) {
        if (n < 2 || n > 3)
          store<u8>(s + y * w + x, 0);
      } else if (n == 3)
        store<u8>(s + y * w + x, 1);
    }
  }
}

// Performing a step uses bytes [0, s-1] as the input and writes the output to [s, 2*s-1].
// Note that the code above wastes a lot of space by using one byte per cell.
