import "allocator/arena";

// These imports need to be copied properly
import { near } from "./near"
import { near as bazinga_near } from "./near"
import { FooBar, ContainerClass, AnotherContainerClass } from "./model_near";

@external("env", "log")
declare function log(str: string): void;

export function doNothing(): void {

}

export function add(x: i32, y: i32): i32 {
    return x + y;
}

export function rewrapFoobar(container: ContainerClass): AnotherContainerClass {
    let result = new AnotherContainerClass();
    result.foobars = [[<FooBar>container.foobar]];
    return result;
}

export function unwrapFoobar(container: AnotherContainerClass): FooBar {
    return <FooBar>container.foobars[0][0];
}

export function getStringArrayLength(arr: string[]): i32 {
    near.log("getStringArrayLength: " + near.str(arr.length));
    return arr.length;
}

export function convertFoobars(foobars: Array<FooBar>): Array<ContainerClass> {
    /* TODO: Fix compiler bug https://github.com/AssemblyScript/assemblyscript/issues/539
    return foobars.map<ContainerClass>((it: FooBar, i: i32, arr: Array<FooBar>): ContainerClass => {
        return { foobar: it};
    });
    */
    let result: ContainerClass[] = new Array(foobars.length);
    for (let i = 0; i < foobars.length; i++) {
        result[i] = { foobar: foobars[i] }
    }
    return result;
}