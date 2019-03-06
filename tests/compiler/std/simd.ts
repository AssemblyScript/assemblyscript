// hint: asc tests/compiler/std/simd --enable simd --validate

@sealed
class I8x16 {

  @inline static from(vec: v128): I8x16 {
    return changetype<I8x16>(vec);
  }

  // TODO: not possible due to arguments becoming locals, no longer being compile-time constants
  // @inline constructor(
  //   a: i8, b: i8, c: i8, d: i8, e: i8, f: i8, g: i8, h: i8, i: i8, j: i8, k: i8, l: i8, m: i8, n: i8, o: i8, p: i8
  // ) {
  //   return changetype<I8x16>(i8x16(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p));
  // }
  private constructor() { unreachable(); }

  @inline @operator("+")
  add(vec: I8x16): I8x16 {
    return changetype<I8x16>(v128.add<i8>(changetype<v128>(this), changetype<v128>(vec)));
  }
}

function test_I8x16(): void {
  var a = I8x16.from(i8x16(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16));
  var c = a + a;
}

if (ASC_FEATURE_SIMD) {
  test_I8x16();
}
