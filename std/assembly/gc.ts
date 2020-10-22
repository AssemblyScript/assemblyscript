/// <reference path="./rt/index.d.ts" />

/** Garbage collector interface. */
export namespace gc {

  /** Performs a full garbage collection cycle. */
  export function collect(): void {
    __collect();
  }
}
