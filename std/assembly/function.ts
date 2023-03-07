type auto = i32;


@final export abstract class Function<T> {
  private _index: u32;
  private _env: usize;

  // @ts-ignore: this on getter
  get index(this: T): u32 {
    return load<u32>(changetype<usize>(this), offsetof<Function<T>>("_index"));
  }

  // @ts-ignore: this on getter
  get name(this: T): string {
    return "";
  }

  // @ts-ignore: this on getter
  get length(this: T): i32 {
    // @ts-ignore: T is function
    return lengthof<T>();
  }

  // @ts-ignore: T is function
  @builtin call(thisArg: thisof<T> | null, ...args: auto[]): returnof<T> {
    return unreachable();
  }

  toString(this: T): string {
    return "function() { [native code] }";
  }

  // RT integration

  @unsafe private __visit(cookie: u32): void {
    // Env is either `null` (nop) or compiler-generated
    __visit(this._env, cookie);
  }
}
