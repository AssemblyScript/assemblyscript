class A {
  ptr: usize;
  __visit(cookie: u32): void {
    if (this.ptr != 0) __visit(this.ptr, cookie);
  }
}

class B {
  ptr: usize;
  @unsafe __visit(cookie: u32): void {
    if (this.ptr != 0) __visit(this.ptr, cookie);
  }
}

let a = new A();
let b = new B();
