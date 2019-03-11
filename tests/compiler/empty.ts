import "allocator/arena";

var arr = new Uint8Array(8);
arr[0] = 10;
arr[4] = 5;
var arr2 = arr.sort();
arr2.forEach(x => {
  trace("", 1, x);
});
