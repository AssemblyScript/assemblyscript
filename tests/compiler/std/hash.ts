import { HASH } from "util/hash";

function check(hash: u32): bool {
  return true;
}

check(HASH<string | null>(null));
check(HASH<string>(""));
check(HASH<string>("a"));
check(HASH<string>("ab"));
check(HASH<string>("abc"));
check(HASH<string>("abcd"));
check(HASH<string>("abcde"));
check(HASH<string>("abcdef"));
check(HASH<string>("abcdefg"));
check(HASH<string>("abcdefgh"));
check(HASH<string>("abcdefghi"));

check(HASH<f32>(0.0));
check(HASH<f32>(1.0));
check(HASH<f32>(1.1));
check(HASH<f32>(-0));
check(HASH<f32>(Infinity));
check(HASH<f32>(NaN));

check(HASH<f64>(0.0));
check(HASH<f64>(1.0));
check(HASH<f64>(1.1));
check(HASH<f64>(-0));
check(HASH<f64>(Infinity));
check(HASH<f64>(NaN));
