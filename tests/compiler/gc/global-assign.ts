import { register_count, link_count, unlink_count } from "./_dummy";

@start export function main(): void {}

class Ref {}

// should register only

var global: Ref = new Ref();
var globalRef = changetype<usize>(global);
assert(register_count == 1);
assert(link_count == 0);
assert(unlink_count == 0);

// should register only

global = new Ref();
assert(register_count == 2);
assert(link_count == 0);
assert(unlink_count == 0);
