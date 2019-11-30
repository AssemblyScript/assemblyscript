export function genericExample<T>(a: T, b: T): Array<T> {
  return [a, b];
}

export function okFunction(a: i32, b: i32): Array<i32> {
  return [a, b];
}

export class OkClass {
  one(): i32 {
    return 1;
  }
}

export class GenericNumber<T> {
  zeroValue: T;
  add: (x: T, y: T) => T;
}

export namespace GenericNumberNamespace {
  export class GenericNumber2<T> {
    zeroValue: T;
    add: (x: T, y: T) => T;
  }
}

export const okVariable: i32 = 1;

export function functionThatUsesGenericFunction(): Array<i32> {
  return genericExample<i32>(1, 1);
}
