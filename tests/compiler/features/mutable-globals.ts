export declare var external: i32;

export var internal: i32 = 124;

assert(external == 123);
assert(internal == 124);

external += 10;
internal += 10;

assert(external == 133);
assert(internal == 134);
