/// <reference path="./rt/index.d.ts" />

/** Garbage collector interface. */
export namespace gc {

  /** Can be set to `false` to disable automatic collection. Defaults to `true`. */
  export var auto: bool = true;

  /** Performs a full garbage collection cycle. */
  export function collect(): void {
    __collect();
  }
}
