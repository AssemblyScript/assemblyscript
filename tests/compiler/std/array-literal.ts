import "allocator/arena";

const staticArrayI8: i8[] = [0, 1, 2];
assert(staticArrayI8.length == 3);
assert(staticArrayI8[0] == 0);
assert(staticArrayI8[1] == 1);
assert(staticArrayI8[2] == 2);

const staticArrayI32: i32[] = [0, 1, 2];
assert(staticArrayI32.length == 3);
assert(staticArrayI32[0] == 0);
assert(staticArrayI32[1] == 1);
assert(staticArrayI32[2] == 2);

var emptyArrayI32: i32[] = []; // static
assert(emptyArrayI32.length == 0);

var i = 0;

var dynamicArrayI8: i8[] = [<i8>i, <i8>++i, <i8>++i];
assert(dynamicArrayI8.length == 3);
assert(dynamicArrayI8[0] == 0);
assert(dynamicArrayI8[1] == 1);
assert(dynamicArrayI8[2] == 2);

i = 0;

var dynamicArrayI32: i32[] = [i, ++i, ++i];
assert(dynamicArrayI32.length == 3);
assert(dynamicArrayI32[0] == 0);
assert(dynamicArrayI32[1] == 1);
assert(dynamicArrayI32[2] == 2);

class Ref {}
var dynamicArrayRef: Ref[] = [new Ref(), new Ref(), new Ref()];
assert(dynamicArrayRef.length == 3);

class RefWithCtor { constructor() {} }
var dynamicArrayRefWithCtor: RefWithCtor[] = [new RefWithCtor(), new RefWithCtor(), new RefWithCtor()];
assert(dynamicArrayRefWithCtor.length == 3);
