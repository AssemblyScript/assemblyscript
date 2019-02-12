/// <reference types="webassembly-js-api" />
export declare class Env {
    memory: WebAssembly.Memory;
    constructor(memory?: WebAssembly.MemoryDescriptor);
    readonly __imports__: any;
}
