var Long = require("long");

var psonJS = require("pson");
var psonWASM = require("..");

// encode in JS
var buf = new psonJS.Encoder().encode({
  emptyObject: {},
  emptyArray: [],
  emptyString: "",
  object: {
    aSmallInt: 42,
    anInt: 9000,
    aLong: Long.MIN_VALUE.add(1)
  },
  array: [
    0.25, // fits into float
    0.1   // always a double
  ],
  binary: Buffer.from([1, 2, 3])
}).toBuffer();

// decode in WASM
psonWASM.decode(buf);
