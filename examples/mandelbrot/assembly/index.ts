// see: https://en.wikipedia.org/wiki/Mandelbrot_set

/** Computes the number of iterations in the rectangle `width` x `height`, limited to `max`. */
export function compute(width: u32, height: u32, max: u32): void {
  var translateX = width / 1.6;
  var translateY = height / 2.0;
  var scale = 4.0 / width;
  for (let y: u32 = 0; y < height; ++y) {
    let imaginary = (y - translateY) * scale;
    for (let x: u32 = 0; x < width; ++x) {
      let real = (x - translateX) * scale;
      let iteration = <u32>0;
      let ixsq: f64, iysq: f64;
      for (let ix = 0.0, iy = 0.0; (ixsq = ix * ix) + (iysq = iy * iy) <= 4.0; ++iteration) {
        let t = ixsq - iysq + real;
        iy = 2.0 * ix * iy + imaginary;
        ix = t;
        if (++iteration >= max) break;
      }
      // write normalized iterations to [0, width * height], row by row
      store<u8>(y * width + x, iteration * 255 / max);
    }
  }
}
