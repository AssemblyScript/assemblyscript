// import "allocator/arena";
import "allocator/tlsf";
type float = f64;

declare function logf(arg: float): void;
declare function logi(arg: i32): void;

var seed = reinterpret<u64>(JSMath.random());
NativeMath.seedRandom(seed);

function rand(): float {
    return <float>NativeMath.random();
}

class Vec {
    constructor(public x: float = 1.0, public y: float = 1.0, public z: float = 1.0) {}
}

var arrRef: Vec[];

export function run(len: i32): Vec[] {
    if (arrRef) {
        arrRef.forEach(function(vec: Vec, index: i32, array: Array<Vec>): void {
            let ptr = <usize>vec;
            logi(ptr);
            free_memory(ptr);
        });
        let ptr = <usize>arrRef;
        logi(ptr);
        free_memory(ptr);
    }
    var arr = new Array<Vec>(len);
    for (let i = 0; i < len; i++) {
        arr[i] = new Vec();
    }
    arrRef = arr;
    free_memory(<usize>arr);
    return arr;
}

export function run2(ptr: usize): Vec {
    if (ptr) {
        free_memory(ptr);
    }
    return new Vec();
}

export function run3(arr: Vec[]): Vec[] {
    if (arr) {
        for (let i: i32 = 0; i < arr.length; i++) {
            free_memory(<usize>arr[i]);
        }

        let ptr = <usize>arr;
        let buf_ptr = load<u32>(ptr, 0);
        free_memory(buf_ptr);
        free_memory(ptr);
    }
    return [new Vec()];
}
