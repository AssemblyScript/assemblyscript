import "allocator/arena";

// These imports need to be copied properly
import { near } from "./near"
import { near as bazinga_near } from "./near"

@external("env", "log")
declare function log(str: string): void;

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
    foobar: FooBar
}

export function doNothing(): void {

}

export function add(x: i32, y: i32): i32 {
    return x + y;
}

export function getFoobar(container: ContainerClass): AnotherContainerClass {
    let result = new AnotherContainerClass();
    result.foobar = container.foobar;
    return result;
}

export function convertFoobars(foobars: Array<FooBar>): Array<ContainerClass> {
    return foobars.map<ContainerClass>((it: FooBar, i: i32, arr: Array<FooBar>): ContainerClass => { let container = new ContainerClass(); container.foobar = it; return container; });
}