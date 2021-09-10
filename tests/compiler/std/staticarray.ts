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


// constructor

{
  const source = new StaticArray<i32>(3);
  assert(source.length == 3);
  for (let i = 0; i < source.length; i++) {
    assert(source[i] == 0);
  }
}


// fromArray

{
  const source: i32[] = [0, 1, 1, 2, 3, 5];
  let subject = StaticArray.fromArray(source);
  assert(subject.length == source.length);
  for (let i = 0; i < source.length; i++) {
    assert(subject[i] == source[i]);
  }
  subject = StaticArray.fromArray<i32>([]);
  assert(subject.length == 0);
}

// concat

{
  let source: StaticArray<i32> = [1, 2];
  let result = StaticArray.concat(source, [1]);
  assert(result.length == 3);
  result = StaticArray.concat(source, []);
  assert(result.length == source.length);
}

// slice
{
  const source: StaticArray<string> = ['ant', 'bison', 'camel', 'duck', 'elephant'];
  let result = StaticArray.slice(source);
  assert(result.length == source.length);

  for(let i = 0; i < source.length; i++) {
    assert(source[i] == result[i]);
  }

  result = StaticArray.slice(source, 1, 3);
  assert(result.length == 2);
  assert(result[0] == "bison");
  assert(result[1] == "camel");

  result = StaticArray.slice(source, 1);
  assert(result.length == (source.length - 1));

  result = StaticArray.slice(source, 0, 50);
  assert(result.length == source.length);

  result = StaticArray.slice(source, 100);
  assert(result.length == 0);

  result = StaticArray.slice(source, -1);
  assert(result.length == 1);
  assert(result[0] == "elephant");

  result = StaticArray.slice(source, -2, -2);
  assert(result.length == 0);

  result = StaticArray.slice(source, 2, -2);
  assert(result.length == 1);
  assert(result[0] == "camel");
}

// concat
{
  const source: StaticArray<string> = ['ant', 'bison', 'camel', 'duck', 'elephant'];

  let result = source.concat([]);
  assert(result.length == source.length);
  assert(isArray(result));

  result = source.concat(["foo"]);
  assert(result.length == (source.length + 1));
  assert(isArray(result));
}

// includes
{
  const source: StaticArray<string> = ['ant', 'bison', 'camel', 'duck', 'elephant'];
  assert(source.includes("bison") == true);
  assert(source.includes("foo") == false);
  assert(source.includes("elephant", 5) == false);
  assert(source.includes("elephant", -1) == true);

  assert(([NaN] as StaticArray<f64>).includes(NaN) == true);
  assert(([NaN] as StaticArray<f32>).includes(NaN) == true);
}

// indexOf
{
  const array: StaticArray<i32> = [2, 9, 9];
  assert(array.indexOf(2) == 0);
  assert(array.indexOf(7) == -1);
  assert(array.indexOf(9, 2) == 2);
  assert(array.indexOf(2, -1) == -1);
  assert(array.indexOf(2, -3) == 0);
}

// join + toString
{
  const elements: StaticArray<string> = ['Fire', 'Air', 'Water'];
  assert(elements.join() == "Fire,Air,Water");
  assert(elements.join('') == "FireAirWater");
  assert(elements.join('-') == "Fire-Air-Water");
  assert(elements.join(' + ') == "Fire + Air + Water");
  assert(elements.join() == elements.toString());
}

// lastIndexOf
{
  const numbers: StaticArray<i32> = [2, 5, 9, 2];
  assert(numbers.lastIndexOf(2) == 3);
  assert(numbers.lastIndexOf(7) == -1);
  assert(numbers.lastIndexOf(2, 3) == 3);
  assert(numbers.lastIndexOf(2, 2) == 0);
  assert(numbers.lastIndexOf(2, -2) == 0);
  assert(numbers.lastIndexOf(2, -1) == 3);
}

// sort
{
  const array: StaticArray<i32> = [0, 3, 2, 1];
  array.sort();

  assert(array[0] == 0);
  assert(array[1] == 1);
  assert(array[2] == 2);
  assert(array[3] == 3);
}

__stack_pointer = __heap_base;
__collect();
