// simple indexes
assert(isInteger<indexof<i8[]>>());
assert(isSigned<indexof<i8[]>>());
assert(sizeof<indexof<i8[]>>() == 4); // i32

// simple values
assert(isInteger<valueof<i8[]>>());
assert(isSigned<valueof<i8[]>>());
assert(sizeof<valueof<i8[]>>() == 1);

// using an alias
type u32Array = u32[];
assert(isInteger<valueof<u32Array>>());
assert(!isSigned<valueof<u32Array>>());
assert(sizeof<valueof<u32Array>>() == 4);

// float values
assert(isFloat<valueof<f32[]>>());
assert(sizeof<valueof<f32[]>>() == 4);

// string values
assert(isString<valueof<string[]>>());
assert(isManaged<valueof<string[]>>());

// array indexes
assert(isInteger<indexof<string[][]>>());
assert(isSigned<indexof<string[][]>>());
assert(sizeof<indexof<string[][]>>() == 4); // i32

// array values
assert(isArray<valueof<string[][]>>());

// typed array indexes
assert(isInteger<indexof<Float32Array>>());
assert(isSigned<indexof<Float32Array>>());
assert(sizeof<indexof<Float32Array>>() == 4); // i32

// typed array values
assert(isInteger<valueof<Uint8ClampedArray>>());
assert(!isSigned<valueof<Uint8ClampedArray>>());
assert(sizeof<valueof<Uint8ClampedArray>>() == 1);

// map indexes
assert(isInteger<indexof<Map<i32,i32>>>());
assert(isFloat<indexof<Map<f32,i32>>>());
assert(isString<indexof<Map<string,i32>>>());

// map values
assert(isInteger<valueof<Map<i32,i8>>>());
assert(isFloat<valueof<Map<i32,f32>>>());
assert(isString<valueof<Map<i32,string>>>());

// set indexes
assert(isInteger<indexof<Set<i32>>>());
assert(isFloat<indexof<Set<f32>>>());
assert(isString<indexof<Set<string>>>());

// set values (always bool)
assert(isBoolean<valueof<Set<i32>>>());
assert(isBoolean<valueof<Set<f32>>>());
assert(isBoolean<valueof<Set<string>>>());
