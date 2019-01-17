
import * as main from "./main_near";
import { JSONEncoder } from "./json/encoder";

@external("env", "log")
declare function log(str: string): void;

export function runTest(): void {
    let original = new main.FooBar();
    original.foo = 321;
    original.bar = 123;
    original.flag = true;
    original.baz = "foo";
    let encoded = original.encode();
    let decoded = main.FooBar.decode(encoded);

    assert(original.foo == decoded.foo);
    assert(original.bar == decoded.bar);
}

export function convertFoobars(): void {
    main.near_func_convertFoobars();
}