function a_i64_i32<T,U>(): bool { // T'=U=i64, U'=T=i32
  return sizeof<T>() == sizeof<U>();
}

function foo<T,U>(): bool { // T=i32, U=i64
  return a_i64_i32<U,T>() == true;
}

assert(foo<i32, i64>() == false);

function bar<T1,T2>(): string { // T1=f64, T2=i32
  if (isInteger<T2>()) {
    return bar<T2,T1>(); // T2'=T1=f64, T2'=T1=i32
  }
  return nameof<T1>(); // iff T1 == i32
}

assert(bar<f64, i32>() === "i32");
