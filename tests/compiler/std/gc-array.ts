import "allocator/arena";
import "collector/itcm";

class Foo {
}

var arr: Foo[] = [];

gc.collect(); // should do nothing

arr[0] = {};

gc.collect(); // should do nothing

arr[1] = {};

gc.collect(); // should do nothing

arr[0] = {};

gc.collect(); // should collect the old one

@start
export function main(): i32 { return 0; }
