declare function external(): void;

// "unexpected false: module function exports must be found"
// see: https://github.com/WebAssembly/binaryen/issues/1325
export { external };
