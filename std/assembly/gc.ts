/// <reference path="./rt/index.d.ts" />

export namespace gc {
  export function collect(): void {
    __collect();
  }
}
