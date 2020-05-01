// Example 3: Calling JavaScript imports with WebAssembly strings.

// Let's declare a `myConsole` import, with member functions we can call with
// WebAssembly strings. Our imports, defined in the top-level index.js, will
// translate the calls to JavaScript's console API using the loader.

export declare function log(s: string): void;
export declare function time(s: string): void;
export declare function timeEnd(s: string): void;
