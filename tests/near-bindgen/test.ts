import * as main from "./main";
import * as model from "./model";
import { base64 } from "near-runtime-ts";
import { FooBar } from "./model";
import { u128 } from "bignum";

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
    //@ts-ignore
    let encoded = original.encode().serialize();
    let decoded = FooBar.decode(encoded);

    assert(original.foo == decoded.foo);
    assert(original.bar == decoded.bar);
}

export function convertFoobars(): void {
    //@ts-ignore will be converted when parsed
    main.convertFoobars();
}

export function getStringArrayLength(): void {
    //@ts-ignore will be converted when parsed
    main.getStringArrayLength();
}

export function rewrapFoobar(): void {
    //@ts-ignore will be converted when parsed
    main.rewrapFoobar();
}

export function unwrapFoobar(): void {
    //@ts-ignore will be converted when parsed
    main.unwrapFoobar();
}
