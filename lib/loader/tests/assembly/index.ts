import "allocator/arena";

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
  static usualDoors: i32 = 3;

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
    free_memory(changetype<usize>(this));
  }
}

export { allocate_memory, free_memory };
