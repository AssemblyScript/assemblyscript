// Copy Binaryen exports to global scope

const binaryen = global.Binaryen || require("binaryen");
global.binaryen = binaryen;

for (var key in binaryen) {
  if (/^(?:_Binaryen|_Relooper|_malloc$|_free$)/.test(key)) global[key] = binaryen[key];
}

// Utilize Binaryen's heap

global.store = function(ptr, val) { binaryen.HEAPU8[ptr] = val; };
global.load = function(ptr) { return binaryen.HEAPU8[ptr]; };
