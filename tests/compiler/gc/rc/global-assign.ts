import "allocator/arena";
import { register_count, retain_count, retain_ref, release_count, release_ref } from "./_dummy";

@start export function main(): void {}

class Ref {}

// should register and retain

var global: Ref = new Ref();
var globalRef = changetype<usize>(global);
assert(register_count == 1);
assert(retain_count == 1);
assert(retain_ref == globalRef);
assert(release_count == 0);

// should register, release old and retain new

global = new Ref();
assert(register_count == 2);
assert(retain_count == 2);
assert(retain_ref == changetype<usize>(global));
assert(release_count == 1);
assert(release_ref == globalRef);
