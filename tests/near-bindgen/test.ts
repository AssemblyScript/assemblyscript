
import * as main from "./main_near";
import * as model from "./model_near";
import { near } from "./near";
import { FooBar } from "./model_near";

@external("env", "log")
declare function log(str: string): void;

export function runTest(): void {
    let original = new FooBar();
    original.foo = 321;
    original.bar = 123;
    original.flag = true;
    original.baz = "foo";
    let encoded = original.encode();
    let decoded = FooBar.decode(encoded);

    assert(original.foo == decoded.foo);
    assert(original.bar == decoded.bar);
}

export function convertFoobars(): void {
    main.near_func_convertFoobars();
}

export function getStringArrayLength(): void {
    main.near_func_getStringArrayLength();
}

export function rewrapFoobar(): void {
    main.near_func_rewrapFoobar();
}

export function unwrapFoobar(): void {
    main.near_func_unwrapFoobar();
}