import "allocator/tlsf";

export { memory };

export const COLOR: string = "red";

export function strlen(str: string): i32 {
  return str.length;
}

export namespace math {
  export function add(a: i32, b: i32): i32 {
    return a + b;
  }
}

export class Car {
  static readonly MAX_DOORS: i32 = 5;
  static readonly usualDoors: i32 = 3;

  numDoors: i32;
  private doorsOpen: bool = false;

  get isDoorsOpen(): bool { return this.doorsOpen; }
  set isDoorsOpen(value: bool) { this.doorsOpen = value; }

  constructor(numDoors: i32) {
    this.numDoors = numDoors;
  }

  openDoors(): bool {
    if (this.doorsOpen) return false;
    this.doorsOpen = true;
    return true;
  }

  closeDoors(): bool {
    if (!this.doorsOpen) return false;
    this.doorsOpen = false;
    return true;
  }

  dispose(): void {
    memory.free(changetype<usize>(this));
  }
}

export function sum(arr: Int32Array): i32 {
  var v = 0;
  for (let i = 0, k = arr.length; i < k; ++i) v += arr[i];
  return v;
}

export function varadd(a: i32 = 1, b: i32 = 2): i32 {
  return a + b;
}

export const varadd_ptr = varadd;

export function calladd(fn: (a: i32, b: i32) => i32, a: i32, b: i32): i32 {
  return fn(a, b);
}

export function dotrace(num: f64): void {
  trace("The answer is", 1, num);
}
