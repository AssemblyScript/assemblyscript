// Copy Binaryen exports to global scope

const binaryen = global.Binaryen || require("binaryen");
global.binaryen = binaryen;

for (var key in binaryen) {
  if (key.startsWith("_Binaryen") || key.startsWith("_Relooper")) global[key] = binaryen[key];
}

// Utilize Binaryen's heap

global.__memory_allocate = binaryen._malloc;
global.__memory_free = binaryen._free;
global.__memory_copy = binaryen._memmove;
global.__store = function(ptr, val) { binaryen.HEAPU8[ptr] = val; };
global.__load = function(ptr) { return binaryen.HEAPU8[ptr]; };
