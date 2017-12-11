// Raw memory accesses to Binaryen memory
declare function store<T = u8>(ptr: usize, val: T): void;
declare function load<T = u8>(ptr: usize): T;
