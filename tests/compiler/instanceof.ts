class A {}
class B extends A {}

var a: A = new A();
var b: B = new B();
var i: i32;
var I: i64;
var f: f32;
var F: f64;

assert(  a instanceof A );
assert(  b instanceof A );
assert(!(i instanceof A));
assert(!(I instanceof A));
assert(!(f instanceof A));
assert(!(F instanceof A));

assert(!(a instanceof B));
assert(  b instanceof B );
assert(!(i instanceof B));
assert(!(I instanceof B));
assert(!(f instanceof B));
assert(!(F instanceof B));

assert(!(a instanceof i32));
assert(!(b instanceof i32));
assert(  i instanceof i32 );
assert(!(I instanceof i32));
assert(!(f instanceof i32));
assert(!(F instanceof i32));

assert(!(a instanceof i64));
assert(!(b instanceof i64));
assert(!(i instanceof i64));
assert(  I instanceof i64 );
assert(!(f instanceof i64));
assert(!(F instanceof i64));

assert(!(a instanceof f32));
assert(!(b instanceof f32));
assert(!(i instanceof f32));
assert(!(I instanceof f32));
assert(  f instanceof f32 );
assert(!(F instanceof f32));

assert(!(a instanceof f64));
assert(!(b instanceof f64));
assert(!(i instanceof f64));
assert(!(I instanceof f64));
assert(!(f instanceof f64));
assert(  F instanceof f64 );

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
assert(!isI32(<u16>0)); // byte size is relevant

var an: A | null = null;
assert(!(an instanceof A));       // TS: ==null is not an instance of A
assert(  an instanceof A | null); // AS: ==null is     an instance of A | null
an = changetype<A | null>(1);
assert(  an instanceof A);        // TS: !=null is an instance of A
assert(  an instanceof A | null); // AS: !=null is an instance of A | null

// Formerly instanceof-class

class Parent<T> {}
class Child<T> extends Parent<T> {}
class SomethingElse<T> {}

var child: Child<i32> = new Child<i32>();
assert(child instanceof Child);                 // static true
assert(child instanceof Child<i32>);            // static true
assert(!(child instanceof Child<f32>));         // static false
assert(child instanceof Parent);                // static true
assert(child instanceof Parent<i32>);           // static true
assert(!(child instanceof Parent<f32>));        // static false
assert(!(child instanceof SomethingElse));      // static false
assert(!(child instanceof SomethingElse<i32>)); // static false

var childAsParent: Parent<f32> = new Child<f32>();
assert(childAsParent instanceof Parent);                // static true
assert(childAsParent instanceof Parent<f32>);           // static true
assert(!(childAsParent instanceof Parent<i32>));        // static false
assert(childAsParent instanceof Child<f32>);            // dynamic true
assert(!(childAsParent instanceof Child<i32>));         // dynamic false
assert(childAsParent instanceof Child);                 // dynamic true (checks Child<i32>, Child<f32>)
assert(!(childAsParent instanceof SomethingElse));      // static false
assert(!(childAsParent instanceof SomethingElse<i32>)); // static false

// Formerly rt/instanceof

class Animal {}
class Cat extends Animal {}
class BlackCat extends Cat {}

var animal: Animal = new Animal();
var cat: Animal = new Cat();
var blackcat: Animal = new BlackCat();

assert(animal instanceof Animal);      // static true
assert(!(animal instanceof Cat));      // dynamic false
assert(!(animal instanceof BlackCat)); // dynamic false

assert(cat instanceof Animal);      // static true
assert(cat instanceof Cat);         // dynamic true
assert(!(cat instanceof BlackCat)); // dynamic false

assert(blackcat instanceof Animal);   // static true
assert(blackcat instanceof Cat);      // dynamic true
assert(blackcat instanceof BlackCat); // dynamic true

var nullableAnimal: Animal | null = new Animal();
var nullableCat: Animal | null = new Cat();
var nullableBlackcat: Animal | null = new BlackCat();

assert(nullableAnimal instanceof Animal);      // static true
assert(!(nullableAnimal instanceof Cat));      // dynamic false
assert(!(nullableAnimal instanceof BlackCat)); // dynamic false

assert(nullableCat instanceof Animal);      // static true
assert(nullableCat instanceof Cat);         // dynamic true
assert(!(nullableCat instanceof BlackCat)); // dynamic false

assert(nullableBlackcat instanceof Animal);   // static true
assert(nullableBlackcat instanceof Cat);      // dynamic true
assert(nullableBlackcat instanceof BlackCat); // dynamic true

var nullAnimal: Animal | null = null;
var nullCat: Animal | null = null;
var nullBlackcat: Animal | null = null;

assert(!(nullAnimal instanceof Animal));   // static false
assert(!(nullAnimal instanceof Cat));      // dynamic false
assert(!(nullAnimal instanceof BlackCat)); // dynamic false

assert(!(nullCat instanceof Animal));   // static false
assert(!(nullCat instanceof Cat));      // dynamic false
assert(!(nullCat instanceof BlackCat)); // dynamic false

assert(!(nullBlackcat instanceof Animal));   // static false
assert(!(nullBlackcat instanceof Cat));      // dynamic false
assert(!(nullBlackcat instanceof BlackCat)); // dynamic false
