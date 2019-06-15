// simple
assert(isInteger<valueof<i8[]>>());
assert(isSigned<valueof<i8[]>>());
assert(sizeof<valueof<i8[]>>() == 1);

// alias
type u32Array = u32[];
assert(isInteger<valueof<u32Array>>());
assert(!isSigned<valueof<u32Array>>());
assert(sizeof<valueof<u32Array>>() == 4);

// float
assert(isFloat<valueof<f32[]>>());
assert(sizeof<valueof<f32[]>>() == 4);

// string
assert(isString<valueof<string[]>>());
assert(isManaged<valueof<string[]>>());

// array
assert(isArray<valueof<string[][]>>());

// typed array
assert(isInteger<valueof<Uint8ClampedArray>>());
assert(!isSigned<valueof<Uint8ClampedArray>>());
assert(sizeof<valueof<Uint8ClampedArray>>() == 1);
