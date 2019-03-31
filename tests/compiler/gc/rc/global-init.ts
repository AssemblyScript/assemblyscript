import { register_count, retain_count, retain_ref, release_count } from "./_dummy";

@start export function main(): void {}

class Ref {}

// should register and retain, with nothing to release

var global = new Ref();
assert(register_count == 1);
assert(retain_count == 1);
assert(retain_ref == changetype<usize>(global));
assert(release_count == 0);
