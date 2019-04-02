@global const GC_TRACE = true;
import "collector/itcm";

import { HEADER_SIZE } from "util/runtime";

assert(HEADER_SIZE == 16);
assert(gc.implemented);

gc.collect(); // trigger init

class Ref {
  inner: Ref;
}

trace("# ref = new Ref()");
var ref = new Ref();
trace("# arr = new Array(1)");
var arr = new Array<Ref | null>(1);
trace("# arr[0] = ref");
arr[0] = ref;
trace("# arr[0] = null");
arr[0] = null;

gc.collect(); // FIXME: should do nothing yet, but collects arr.data ?

@start export function main(): void {}
