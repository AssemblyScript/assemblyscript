// Direct
var arr = new Float32Array(2);
arr[0] = 1;
arr[1] = 2;
assert(
  arr[0].toString()
  ==
  "1.0"
);
assert(
  (arr[1]).toString()
  ==
  "2.0"
);
assert(
  (arr[0] += 10).toString()
  ==
  "11.0"
);
arr[0] += 10; // void context
assert(arr[0] == 21.0);

// Inherited
class Buffer extends Uint8Array {}
var buf = new Buffer(2);
buf[0] = 1;
buf[1] = 2;
assert(
  buf[0].toString()
  ==
  "1"
);
assert(
  (buf[1]).toString()
  ==
  "2"
);
assert(
  (buf[0] += 10).toString()
  ==
  "11"
);
buf[0] += 10; // void context
assert(buf[0] == 21);
