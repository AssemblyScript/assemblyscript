export class FooBar {
    foo: i32 = 0;
    bar: u32 = 1;
    u64Val: u64 = 64;
    i64Val: i64 = -64;
    flag: bool;
    baz: string = "123";
    //foobar: Uint8Array;
    arr: Array<Array<string>>;
    u32Arr: u32[];
    i32Arr: i32[];
    // TODO: Fix u64 arrays
    //u64Arr: u64[];
}

export class ContainerClass {
    foobar: FooBar
}

export class AnotherContainerClass {
    foobars: Array<Array<FooBar>>
}