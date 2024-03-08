let foo = (): experimental_first_class_function<(v: i32) => void> => {
  let fn = experimental_first_class_function((v: i32): void => {
    assert(v == 1234);
  });
  experimental_first_class_function((v: i32): void => {}); // TODO: suspend binaryen optimized bug?

  assert(fn.index != 0);
  fn(1234);
  return fn;
};

let fn1 = foo();
__collect();
fn1(1234);
fn1(1234);

let fn2 = foo();

assert(fn1 != fn2);
assert(fn1.index == fn2.index);
