@global const GC_TRACE = true;
import "collector/itcm";

import { HEADER_SIZE } from "util/runtime";

assert(HEADER_SIZE == 16);

class Ref {
  inner: Ref;
}

function makeGarbage(): void {
  trace("# ref = new Ref()");
  var ref = new Ref();
  trace("# arr = new Array(1)");
  var arr = new Array<Ref | null>(1);
  trace("# arr[0] = ref");
  arr[0] = ref;
  trace("# arr[0] = null");
  arr[0] = null;
  trace("# new Ref()");
  new Ref();
}

makeGarbage();
runtime.collect();

// should have sweeped four objects (incl. arr.buffer)

@start export function main(): void {}
