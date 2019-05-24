import { ArrayBufferView } from "arraybuffer";

assert(idof<ArrayBuffer>() == 0);
assert(idof<String>() == 1);
assert(idof<ArrayBufferView>() == 2);
