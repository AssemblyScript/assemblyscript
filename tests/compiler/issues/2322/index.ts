import * as lib from "./lib";

export function test(): void {
  lib.test(new lib.Wrapper<i32>());
}
