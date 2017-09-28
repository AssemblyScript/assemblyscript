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

// Raw memory access (here: Binaryen memory, T=u8)
declare function store<T>(ptr: usize, val: u8): void;
declare function load<T>(ptr: usize): u8;
