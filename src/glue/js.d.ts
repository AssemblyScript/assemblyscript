// Aliased AssemblyScript types. Beware of semantic differences.
declare type i8 = number;
declare type u8 = number;
declare type i16 = number;
declare type u16 = number;
declare type i32 = number;
declare type u32 = number;
declare type isize = number;
declare type usize = number;
declare type f32 = number;
declare type f64 = number;
declare type bool = boolean;

// Raw memory access (here: Binaryen memory)
declare function store<T = u8>(ptr: usize, val: T): void;
declare function load<T = u8>(ptr: usize): T;

// Other things that might or might not be useful
declare function select<T>(ifTrue: T, ifFalse: T, condition: bool): T;
