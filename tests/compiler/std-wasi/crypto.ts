import "wasi";

var ab = new ArrayBuffer(8);

var buf = Uint8Array.wrap(ab, 0, 4);
crypto.getRandomValues(buf);
console.log("crypto.getRandomValues: " + buf.toString());
var b1 = buf.slice();

buf = Uint8Array.wrap(ab, 4, 4);
crypto.getRandomValues(buf);
console.log("crypto.getRandomValues: " + buf.toString());
var b2 = buf.slice();

buf = Uint8Array.wrap(ab);
for (let i = 0; i < 4; ++i) {
  assert(buf[i] == b1[i]);
}
for (let i= 0; i < 4; ++i) {
  assert(buf[4 + i] == b2[i]);
}
