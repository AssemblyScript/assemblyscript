class Parent<T> {
}

class Child<T> extends Parent<T> {
}

class SomethingElse<T> {
}

var a: Child<i32> = new Child<i32>();
assert(a instanceof Child);            // static true
assert(a instanceof Parent);           // static true
assert(!(a instanceof SomethingElse)); // static false

var b: Parent<f32> = new Child<f32>();
assert(b instanceof Parent);           // static true
assert(b instanceof Child);            // dynamic true (checks Child<i32>, Child<f32>)
assert(!(b instanceof SomethingElse)); // static false
