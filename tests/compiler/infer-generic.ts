// T should infer T

function inferPlain<T>(arr: T): T {
  return arr;
}

export function test1(arr: f32): f32 {
  return inferPlain(arr);
}

// Array<T> should infer T

function inferEncapsulatedClass<T>(arr: T[]): T[] {
  return arr;
}

export function test2(arr: f32[]): f32[] {
  return inferEncapsulatedClass(arr);
}

// (a: T) => R should infer T,R

function inferEncapsulatedFunction<T,R>(fn: (a: T) => R): (a: T) => R {
  return fn;
}

export function test3(fn: (a: f32) => f64): (a: f32) => f64 {
  return inferEncapsulatedFunction(fn);
}

// (a: T, b: i32) => R should not bail out on non-inferred i32

function inferEncapsulatedFunctionMixed<T,R>(fn: (a: T, b: i32) => R): (a: T, b: i32) => R {
  return fn;
}

export function test4(fn: (a: f32, b: i32) => f64): (a: f32, b: i32) => f64 {
  return inferEncapsulatedFunctionMixed(fn);
}

// <i32|f64> should pick common compatible type f64

function inferCompatible<T>(a: T, b: T): bool {
  return a == b;
}
assert(inferCompatible(1, 1.0));

// should work with function expressions with omitted types
// if all types can be inferred from other arguments

const arr: f32[] = [1.0, 2.0, 3.0];
arr.reduce(((acc, cur) => acc && cur != 0), false);
