import "allocator/arena";

// top-level function
export function add(a: i32, b: i32): i32 {
  return a + b;
}

export function subOpt(a: i32, b: i32 = 0): i32 {
  return a - b;
}

// namespaced function
export namespace math {
  export function sub(a: i32, b: i32): i32 {
    return a - b;
  }
}

// top-level enum
export const enum Animal {
  CAT,
  DOG
}

// namespaced enum
export namespace animals {
  export const enum Animal {
    CAT,
    DOG
  }
}

// top-level class
export class Car {
  static readonly TIRES: i32 = 4;
  static getNumTires(): i32 { return this.TIRES; }
  constructor(public doors: i32 = 2) { this.doors = doors; }
  get numDoors(): i32 { return this.doors; }
  set numDoors(doors: i32) { this.doors = doors; }
  openDoors(): void {}
}

// namespaced class
export namespace vehicles {
  export class Car {
    static readonly TIRES: i32 = 4;
    static getNumTires(): i32 { return this.TIRES; }
    constructor(public doors: i32 = 2) { this.doors = doors; }
    get numDoors(): i32 { return this.doors; }
    set numDoors(doors: i32) { this.doors = doors; }
    openDoors(): void {}
  }
}

// namespaced namespace
export namespace outer {
  export namespace inner {
    export const a = 42;
  }
}
