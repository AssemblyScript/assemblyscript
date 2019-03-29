@global const GC_TRACE = true;

import "allocator/arena";
import "collector/itcm";

import { HEADER_SIZE } from "runtime";

assert(HEADER_SIZE == 16);
assert(gc.implemented);

gc.collect(); // trigger init

class Ref {}

trace("# ref = new Ref()");
var ref = new Ref();
trace("# arr = new Array(1)");
var arr = new Array<Ref | null>(1);
trace("# arr[0] = ref");
arr[0] = ref;
trace("# arr[0] = null");
arr[0] = null;

// TODO...

@start export function main(): void {}
