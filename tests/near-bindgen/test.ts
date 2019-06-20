
import * as main from "./main_near";
import * as model from "./model_near";
import { near, base64 } from "./near";
import { FooBar } from "./model_near";
import { u128 } from "./bignum/integer/u128";

@external("env", "log")
declare function log(str: string): void;

export function runTest(): void {
    let original = new FooBar();
    original.foo = 321;
    original.bar = 123;
    original.flag = true;
    original.baz = "foo";
    original.uint8array = base64.decode("aGVsbG8sIHdvcmxkIQ==");
    original.u128Val = new u128(128);
    original.uint8arrays = Array.create<Uint8Array>(2);
    original.uint8arrays[0] = base64.decode("aGVsbG8sIHdvcmxkIQ==");
    original.uint8arrays[1] = base64.decode("aGVsbG8sIHdvcmxkIQ==");
    
    let encoded = original.encode();
    let decoded = FooBar.decode(encoded);

    assert(original.foo == decoded.foo);
    assert(original.bar == decoded.bar);
}

export function convertFoobars(): void {
    main.convertFoobars();
}

export function getStringArrayLength(): void {
    main.getStringArrayLength();
}

export function rewrapFoobar(): void {
    main.rewrapFoobar();
}

export function unwrapFoobar(): void {
    main.unwrapFoobar();
}
