// see: https://en.wikipedia.org/wiki/Mandelbrot_set

/** Number of discrete color values on the JS side. */
const NUM_COLORS = 2048;

/** Computes a single line in the rectangle `width` x `height`. */
export function computeLine(y: u32, width: u32, height: u32, limit: u32): void {
  var translateX = width / 1.6;
  var translateY = height / 2.0;
  var scale = 10.0 / min(3 * width, 4 * height);
  var imaginary = (y - translateY) * scale;
  for (let x: u32 = 0; x < width; ++x) {
    let real = (x - translateX) * scale;

    // Iterate until either the escape radius or iteration limit is exceeded
    let ix = 0.0, iy = 0.0, ixsq: f64, iysq: f64;
    let iteration: u32 = 0;
    while ((ixsq = ix * ix) + (iysq = iy * iy) <= 4.0) {
      let ix_new = ixsq - iysq + real;
      iy = 2.0 * ix * iy + imaginary;
      ix = ix_new;
      if (iteration >= limit) break;
      ++iteration;
    }

    // Do a few extra iterations to reduce error margin
    for (let i = 0; i < 5 && iteration < limit; ++i, ++iteration) {
      let ix_new = ix * ix - iy * iy + real;
      iy = 2.0 * ix * iy + imaginary;
      ix = ix_new;
    }

    // Renormalize, see: http://linas.org/art-gallery/escape/escape.html
    let frac: f64 = JSMath.log(JSMath.log(sqrt(ix * ix + iy * iy))) / JSMath.LN2;
    store<u16>((y * width + x) << 1,
      isFinite(frac)
        ? <u32>((NUM_COLORS - 1) * clamp((iteration + 1 - frac) / limit, 0.0, 1.0))
        : (NUM_COLORS - 1) * iteration / limit
    );
  }
}

/** Clamps a value between the given minimum and maximum. */
@inline
function clamp<T>(value: T, minValue: T, maxValue: T): T {
  return min(max(value, minValue), maxValue);
}
