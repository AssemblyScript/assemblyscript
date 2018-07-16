// import "allocator/arena";
import "allocator/tlsf";

var s1 = "Hello";
var s2 = " World";

export function getString(): string {
    return s1 + s2;
}

export function free(str: usize): void {
    free_memory(str);
}
