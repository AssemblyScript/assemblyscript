import { OBJECT, TOTAL_OVERHEAD } from "rt/common";

// from contextual type
const arr1: StaticArray<i32> = [1,2,3];
assert(arr1[1] == 2);
assert(arr1.length == 3);
arr1[1] = 4;
assert(arr1[1] == 4);
assert(changetype<OBJECT>(changetype<usize>(arr1) - TOTAL_OVERHEAD).rtId == idof<StaticArray<i32>>());

// from assertion
const arr2 = [1,2,3] as StaticArray<i32>;
assert(arr2[1] == 2);
assert(arr2.length == 3);
arr2[1] = 4;
assert(arr2[1] == 4);

// unique copy
function test(): StaticArray<i32> {
  return [5,6,7];
}
var arr3 = test();
assert(arr3[0] == 5);
assert(arr3[1] == 6);
assert(arr3[2] == 7);
assert(arr3.length == 3);
arr3[1] = 8;
assert(arr3[1] == 8);
arr3 = test();
assert(arr3[1] == 6);

// non-static instantiation
class Ref {}
var arr4: StaticArray<Ref> = [ new Ref(), new Ref() ];

arr3 = changetype<StaticArray<i32>>(0); // unleak
arr4 = changetype<StaticArray<Ref>>(0);
