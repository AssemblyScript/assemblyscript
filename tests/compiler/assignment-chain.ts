class A {
  x: i64 = 0;
  y: i64 = 0;
}

export function normal_assignment_chain(): void {
  let x = new A();
  let cnt = 0;
  x.x = x.y = cnt++;
  assert(cnt == 1); // `cnt++` should be executed only once
}
normal_assignment_chain();

class B {
  _setter_cnt: i32 = 0;
  _getter_cnt: i32 = 0;
  _y: f64 = 0.0;
  set y(z: f64) {
    this._setter_cnt += 1;
    this._y = z;
  }
  get y(): f64 {
    this._getter_cnt += 1;
    return this._y;
  }
}
export function setter_assignment_chain(): void {
  let x = new B();
  x.y = x.y = 1;
  assert(x._setter_cnt == 2);
  assert(x._getter_cnt == 0); // should not use getter method
}
setter_assignment_chain();

class C {
  static _setter_cnt: i32 = 0;
  static _y: f64 = 0.0;
  static set y(z: f64) {
    C._setter_cnt += 1;
    C._y = z;
  }
}
export function static_setter_assignment_chain(): void {
  C.y = C.y = 1;
  assert(C._setter_cnt == 2);
}
static_setter_assignment_chain();