import "allocator/arena";

const staticArray: i32[] = [0, 1, 2];
assert(staticArray.length == 3);
assert(staticArray[0] == 0);
assert(staticArray[1] == 1);
assert(staticArray[2] == 2);

var emptyArray: i32[] = []; // not static atm
assert(emptyArray.length == 0);

var i = 0;
var dynamicArray: i32[] = [i, ++i, ++i];
assert(dynamicArray.length == 3);
assert(dynamicArray[0] == 0);
assert(dynamicArray[1] == 1);
assert(dynamicArray[2] == 2);
