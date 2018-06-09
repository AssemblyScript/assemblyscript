class A {}
class B extends A {}

var a: A;
var b: B;
var i: i32;
var f: f32;

assert(  a instanceof A );
assert(  b instanceof A );
assert(!(i instanceof A));
assert(!(f instanceof A));

assert(!(a instanceof B));
assert(  b instanceof B );
assert(!(i instanceof B));
assert(!(f instanceof B));

assert(!(a instanceof i32));
assert(!(b instanceof i32));
assert(  i instanceof i32 );
assert(!(f instanceof i32));

assert(!(a instanceof f32));
assert(!(b instanceof f32));
assert(!(i instanceof f32));
assert(  f instanceof f32 );

function isI32<T>(v: T): bool {
  // should eliminate non-applicable branches (see fixture)
  if (v instanceof i32) {
    return true;
  } else {
    return false;
  }
}

assert( isI32(0));
assert(!isI32(0.0));
assert(!isI32(<u32>0)); // signedness is relevant

var an: A | null = null;
assert(!(an instanceof A));       // TS: null is not an instance of A
assert(  an instanceof A | null); // AS: null is     an instance of A | null
an = changetype<A | null>(1);
assert(  an instanceof A);        // TS: non-null is an instance of A
assert(  an instanceof A | null); // AS: non-null is an instance of A | null

// TODO: keep track of nullability during flows, so this becomes precomputable:
// assert(an !== null && an instanceof A);
