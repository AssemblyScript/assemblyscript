import { toDigits32, toDigits64, gDigits } from "~lib/util/dtoa";

toDigits32(1);
assert(gDigits == 1);
toDigits32(78);
assert(gDigits == 2);
toDigits32(1234);
assert(gDigits == 4);
toDigits32(10000);
assert(gDigits == 5);
toDigits32(10000000);
assert(gDigits == 8);

toDigits64(100000001);
assert(gDigits == 9);
toDigits64(100000000);
assert(gDigits == 9);
toDigits64(1000000000000000);
assert(gDigits == 16);
toDigits64(1234567890123456);
assert(gDigits == 16);
