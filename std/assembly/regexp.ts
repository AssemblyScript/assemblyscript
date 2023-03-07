export class RegExp {
  // @binding(CALL_NEW, [ STRING, STRING], OBJECT_HANDLE)
  constructor(pattern: string, flags: string = "") {
    throw new Error("unreachable");
  }

  // @binding(CALL_THIS, [ STRING ], PASS_THRU)
  test(search: string): bool {
    throw new Error("unreachable");
  }

  // @binding(CALL_THIS, [], STRING)
  toString(): string {
    throw new Error("unreachable");
  }
}
