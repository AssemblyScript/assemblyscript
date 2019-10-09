export class FooBar {
    foo: i32 = 0;
    bar: u32 = 1;
    u64Val: u64 = 4294967297;
    u64_zero: u64;
    i64Val: i64 = -64;
    flag: bool;
    private _baz: string = "123";
    uint8array: Uint8Array;
    arr: Array<Array<string>>;
    u32Arr: u32[];
    i32Arr: i32[];
    // u128Val: u128;
    uint8arrays: Array<Uint8Array>;
    // TODO: Fix u64 arrays
    u64Arr: u64[];

    get baz(): string {
        return this._baz;
    }
}
