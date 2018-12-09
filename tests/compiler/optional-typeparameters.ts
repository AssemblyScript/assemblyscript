function testConcrete<T,U = i32>(a: T): U {
  return a;
}

function testDerived<T,U = T>(a: T): U {
  return a;
}

testConcrete<i32>(1);
testDerived<i32>(2);

class TestConcrete<T,U = i32> {
  test<V = i32>(a: T, b: U): V {
    return a + b;
  }
}

class TestDerived<T,U = T> {
  test<V = U>(a: T, b: U): V {
    return a + b;
  }
}

import "allocator/arena";
var tConcrete = new TestConcrete<i32>();
tConcrete.test<i32>(1, 2);
var tDerived = new TestDerived<f64>()
tDerived.test<f64>(1, 2);
