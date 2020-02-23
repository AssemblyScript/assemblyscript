// from contextual type
const arr1: FixedArray<i32> = [1,2,3];
assert(arr1[1] == 2);
assert(arr1.length == 3);
arr1[1] = 4;
assert(arr1[1] == 4);

// from assertion
const arr2 = [1,2,3] as FixedArray<i32>;
assert(arr2[1] == 2);
assert(arr2.length == 3);
arr2[1] = 4;
assert(arr2[1] == 4);

// using convenience type
const arr3 = [1,2,3] as fixed<i32>;
assert(arr3[1] == 2);
assert(arr3.length == 3);
arr3[1] = 4;
assert(arr3[1] == 4);

// unique copy
function test(): FixedArray<i32> {
  return [5,6,7];
}
var arr4 = test();
assert(arr4[0] == 5);
assert(arr4[1] == 6);
assert(arr4[2] == 7);
assert(arr4.length == 3);
arr4[1] = 8;
assert(arr4[1] == 8);
arr4 = test();
assert(arr4[1] == 6);

arr4 = changetype<FixedArray<i32>>(0); // unleak
