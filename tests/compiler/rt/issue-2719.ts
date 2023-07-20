class issue2719_T {
  v: i32 = 0;
}

function issue2719_f1(a: i32, t: issue2719_T, b: i32): void {
  assert(t.v == 0);
}

function issue2719_f2(t: issue2719_T): i32 {
  __collect(); // gc will recover the second argument issue2719_T in issue2719_f1
  let c = new issue2719_T();
  c.v = 100;
  return 1;
}

issue2719_f1(1, new issue2719_T(), issue2719_f2(new issue2719_T()));

