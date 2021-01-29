import "wasi";

var buf = new Uint8Array(8);

crypto.getRandomValues(buf);
console.log("crypto.getRandomValues: " + buf.toString());

crypto.getRandomValues(buf);
console.log("crypto.getRandomValues: " + buf.toString());

crypto.getRandomValues(buf);
console.log("crypto.getRandomValues: " + buf.toString());
