// see: https://en.wikipedia.org/wiki/Mandelbrot_set

/** Number of discrete color values on the JS side. */
const NUM_COLORS = 2048;

/** Computes a single line in the rectangle `width` x `height`. */
export function computeLine(y: u32, width: u32, height: u32, limit: u32): void {
  var translateX = width  * (1.0 / 1.6);
  var translateY = height * (1.0 / 2.0);
  var scale      = 10.0 / min(3 * width, 4 * height);
  var imaginary  = (y - translateY) * scale;
  var realOffset = translateX * scale;
  var stride     = (y * width) << 1;
  var invLimit   = 1.0 / limit;

  var minIterations = min(8, limit);

  for (let x: u32 = 0; x < width; ++x) {
    let real = x * scale - realOffset;

    // Iterate until either the escape radius or iteration limit is exceeded
    let ix = 0.0, iy = 0.0, ixSq: f64, iySq: f64;
    let iteration: u32 = 0;
    while ((ixSq = ix * ix) + (iySq = iy * iy) <= 4.0) {
      iy = 2.0 * ix * iy + imaginary;
      ix = ixSq - iySq + real;
      if (iteration >= limit) break;
      ++iteration;
    }

    // Do a few extra iterations for quick escapes to reduce error margin
    while (iteration < minIterations) {
      let ixNew = ix * ix - iy * iy + real;
      iy = 2.0 * ix * iy + imaginary;
      ix = ixNew;
      ++iteration;
    }

    // Iteration count is a discrete value in the range [0, limit] here, but we'd like it to be
    // normalized in the range [0, 2047] so it maps to the gradient computed in JS.
    // see also: http://linas.org/art-gallery/escape/escape.html
    let col = NUM_COLORS - 1;
    let sqd = ix * ix + iy * iy;
    if (sqd > 1.0) {
      let frac = Math.log2(0.5 * Math.log(sqd));
      col = <u32>((NUM_COLORS - 1) * clamp((iteration + 1 - frac) * invLimit, 0.0, 1.0));
    }
    store<u16>(stride + (x << 1), col);
  }
}

/** Clamps a value between the given minimum and maximum. */
@inline
function clamp<T>(value: T, minValue: T, maxValue: T): T {
  return min(max(value, minValue), maxValue);
}
