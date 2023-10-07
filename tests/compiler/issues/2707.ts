// should not crash
let func: (...args: i32[]) => i32 = (...args: i32[]) => {
  return 1;
};

func(1, 2, 3, 4);
