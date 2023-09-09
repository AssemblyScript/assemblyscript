namespace foo {
    export function bar<T>(): void {}
}

// Should error from missing type arguments:
foo.bar;
memory.data;

ERROR("EOF");