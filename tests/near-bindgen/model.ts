export class FooBar {
    foo: i32 = 0;
    bar: i32 = 1;
    flag: bool;
    baz: string = "123";
    //foobar: Uint8Array;
    arr: Array<Array<string>>;
}

export class ContainerClass {
    foobar: FooBar
}

export class AnotherContainerClass {
    foobars: Array<Array<FooBar>>
}