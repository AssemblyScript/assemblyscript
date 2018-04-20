// see: https://en.wikipedia.org/wiki/Mandelbrot_set

/** Computes the number of iterations in the rectangle `width` x `height`, limited to `max`. */
export function compute(width: u32, height: u32, limit: u32): void {
  var translateX = width / 1.6;
  var translateY = height / 2.0;
  var scale = 10.0 / min(3 * width, 4 * height);
  for (let y: u32 = 0; y < height; ++y) {
    let imaginary = (y - translateY) * scale;
    for (let x: u32 = 0; x < width; ++x) {
      let real = (x - translateX) * scale;

      // Iterate until either the escape radius or iteration limit is exceeded
      let ix = 0.0, iy = 0.0, ixsq: f64, iysq: f64;
      let iteration: u32 = 0;
      while ((ixsq = ix * ix) + (iysq = iy * iy) <= 4.0) {
        let t = ixsq - iysq + real;
        iy = 2.0 * ix * iy + imaginary;
        ix = t;
        if (iteration >= limit) break;
        ++iteration;
      }

      // Do a few extra iterations to reduce error margin
      for (let i = 0; i < 4; ++i) {
        let t = (ixsq = ix * ix) - (iysq = iy * iy) + real;
        iy = 2.0 * ix * iy + imaginary;
        ix = t;
      }

      // Renormalize, see: http://linas.org/art-gallery/escape/escape.html
      let frac: f64 = JSMath.log(JSMath.log(sqrt(ix * ix + iy * iy))) / JSMath.LN2;
      if (frac > 0) {
        let norm: f64 = max<f64>(min<f64>((<f64>(iteration + 1) - frac) / limit, 1.0), 0.0);
        store<u16>((y * width + x) << 1, <u32>(2047 * norm));
      } else {
        store<u16>((y * width + x) << 1, iteration * 2047 / limit);
      }
    }
  }
}
