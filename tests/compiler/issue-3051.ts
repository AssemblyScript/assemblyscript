let index = 0;
const values = new StaticArray<i32>(1);
values[index++] += 7;
assert(index == 1);
assert(values[0] == 7);

let assignedIndex = 0;
const assignedValues = new StaticArray<i32>(1);
let assigned = assignedValues[assignedIndex++] += 5;
assert(assignedIndex == 1);
assert(assignedValues[0] == 5);
assert(assigned == 5);
