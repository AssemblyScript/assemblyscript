const arr = fixed<i32>([1, 2, 3]);

assert(arr[0] == 1);
assert(arr[1] == 2);
assert(arr[2] == 3);
assert(arr.length == 3);

arr[1] = 4;
assert(arr[1] == 4);
assert(arr.length == 3);
