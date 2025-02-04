function sum(...args: i32[]): i32 {
  let sum = 0;
  for (let i = 0, k = args.length; i < k; ++i) {
    sum += args[i];
  }
  return sum;
}

function count<T>(...args: T[]): i32 {
  return args.length;
}

sum('a', 'b'); // expect a type mismatch error on each argument
count(1, 'a'); // expect a type mismatch error on the second argument
count(); // expect type inference error
