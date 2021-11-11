/** Vector abstraction. */
@final @unmanaged
export abstract class V128 {
  toString(this: v128, radix: i32 = 0): String {
    if (radix == 0 || radix == 10) {
      return (
        i8x16.extract_lane_s(this, 0).toString() +
        i8x16.extract_lane_s(this, 1).toString() + " " +
        i8x16.extract_lane_s(this, 2).toString() + " " +
        i8x16.extract_lane_s(this, 3).toString() + " " +

        i8x16.extract_lane_s(this, 4).toString() + " " +
        i8x16.extract_lane_s(this, 5).toString() + " " +
        i8x16.extract_lane_s(this, 6).toString() + " " +
        i8x16.extract_lane_s(this, 7).toString() + " " +

        i8x16.extract_lane_s(this, 8).toString() + " " +
        i8x16.extract_lane_s(this, 9).toString() + " " +
        i8x16.extract_lane_s(this, 10).toString() + " " +
        i8x16.extract_lane_s(this, 11).toString() + " " +

        i8x16.extract_lane_s(this, 12).toString() + " " +
        i8x16.extract_lane_s(this, 13).toString() + " " +
        i8x16.extract_lane_s(this, 14).toString() + " " +
        i8x16.extract_lane_s(this, 15).toString()
      );
    } else {
      return (
        i8x16.extract_lane_u(this, 0).toString(radix) +
        i8x16.extract_lane_u(this, 1).toString(radix) + " " +
        i8x16.extract_lane_u(this, 2).toString(radix) + " " +
        i8x16.extract_lane_u(this, 3).toString(radix) + " " +

        i8x16.extract_lane_u(this, 4).toString(radix) + " " +
        i8x16.extract_lane_u(this, 5).toString(radix) + " " +
        i8x16.extract_lane_u(this, 6).toString(radix) + " " +
        i8x16.extract_lane_u(this, 7).toString(radix) + " " +

        i8x16.extract_lane_u(this, 8).toString(radix) + " " +
        i8x16.extract_lane_u(this, 9).toString(radix) + " " +
        i8x16.extract_lane_u(this, 10).toString(radix) + " " +
        i8x16.extract_lane_u(this, 11).toString(radix) + " " +

        i8x16.extract_lane_u(this, 12).toString(radix) + " " +
        i8x16.extract_lane_u(this, 13).toString(radix) + " " +
        i8x16.extract_lane_u(this, 14).toString(radix) + " " +
        i8x16.extract_lane_u(this, 15).toString(radix)
      );
    }
  }
}
