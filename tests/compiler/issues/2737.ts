namespace foo {
    export function bar<T>(): void {}
}

// Should error from missing type arguments:
foo.bar;
memory.data;

// Should error from lacking first-class builtins:
atomic.fence;

ERROR("EOF");