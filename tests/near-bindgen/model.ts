export class FooBar {
    foo: i32 = 0;
    bar: u32 = 1;
    flag: bool;
    baz: string = "123";
    //foobar: Uint8Array;
    arr: Array<Array<string>>;
    u32Arr: u32[];
    i32Arr: i32[];
}

export class ContainerClass {
    foobar: FooBar
}

export class AnotherContainerClass {
    foobars: Array<Array<FooBar>>
}