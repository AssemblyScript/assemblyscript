// note that this doesn't test a real set implementation yet, see std/assembly/set.ts

var set = changetype<Set<i32>>(allocate_memory(sizeof<usize>() + 2 * sizeof<i32>()));

assert(set.size == 0);

set.add(1);
set.add(0);
set.add(2);

assert(set.size == 3);

assert(set.has(1));
assert(set.has(0));
assert(set.has(2));
assert(!set.has(3));

set.delete(0);

assert(set.size == 2);
assert(set.has(1));
assert(!set.has(0));
assert(set.has(2));

set.clear();

assert(set.size == 0);
assert(!set.has(1));
