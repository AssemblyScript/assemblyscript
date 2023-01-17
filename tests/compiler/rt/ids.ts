import { ArrayBufferView } from "arraybuffer";

assert(idof<Object>() == 0);
assert(idof<ArrayBuffer>() == 1);
assert(idof<String>() == 2);
assert(idof<ArrayBufferView>() == 3);
