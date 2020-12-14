import { hash } from "util/hash";

function check(hash: u32): bool {
  return true;
}

check(hash<string | null>(null));
check(hash<string>(""));
check(hash<string>("a"));
check(hash<string>("ab"));
check(hash<string>("abc"));
check(hash<string>("abcd"));
check(hash<string>("abcde"));

check(hash<f32>(0.0));
check(hash<f32>(1.0));
check(hash<f32>(1.1));
check(hash<f32>(-0));
check(hash<f32>(Infinity));
check(hash<f32>(NaN));

check(hash<f64>(0.0));
check(hash<f64>(1.0));
check(hash<f64>(1.1));
check(hash<f64>(-0));
check(hash<f64>(Infinity));
check(hash<f64>(NaN));
