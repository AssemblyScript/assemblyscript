const globalScope: any = typeof window !== "undefined" && window || typeof global !== "undefined" && global || self;

globalScope["store"] = function store_u8(ptr: number, val: number) {
  binaryen.HEAPU8[ptr] = val;
};

globalScope["load"] = function load_u8(ptr: number) {
  return binaryen.HEAPU8[ptr];
};

const binaryen = require("binaryen");
for (const key in binaryen)
  if (/^_(?:Binaryen|Relooper|malloc$|free$)/.test(key))
    globalScope[key] = binaryen[key];
