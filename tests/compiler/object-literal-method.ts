class SomeClass {
  add: (a: i32, b: i32) => i32;
}

const obj1 = {
    add(a: i32, b: i32): i32 {
        return a + b;
    }
} as SomeClass;

const obj2 = {
    add: (a: i32, b: i32): i32 => {
        return a + b;
    }
} as SomeClass;
