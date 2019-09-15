var arr = new Float32Array(2);
arr[0] = 1;
arr[1] = 2;
assert(
  arr[0].toString()
  ==
  "1.0"
);
assert(
  (arr[1]).toString()
  ==
  "2.0"
);
assert(
  (arr[0] += 10).toString()
  ==
  "11.0"
);
arr[0] += 10; // void context
assert(arr[0] == 21.0);
