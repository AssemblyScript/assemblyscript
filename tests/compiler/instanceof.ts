function assertStaticTrue<T,U>(value: T): void {
  if (value instanceof U) return;
  ERROR("should be statically true");
}
function assertStaticFalse<T,U>(value: T): void {
  if (!(value instanceof U)) return;
  ERROR("should be statically false");
}
function assertDynamicTrue<T,U>(value: T): void {
  if (!(value instanceof U)) {
    var check: i32 = 0;
    assert(false);
  }
  assert(isDefined(check));
}
function assertDynamicFalse<T,U>(value: T): void {
  if (value instanceof U) {
    var check: i32 = 0;
    assert(false);
  }
  assert(isDefined(check));
}

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

// Interfaces

//  IA    W
//   |
//  IB    IC   IE
//   |   /
//   X  ID
//   | /
//   Y
//   |
//   Z
class W {}
interface IA {}
interface IB extends IA {}
class X implements IB {}
interface IC {}
interface ID extends IC {}
class Y extends X implements ID {}
class Z extends Y {}
interface IE {}

let w = new W();
let x = new X();
let y = new Y();
let z = new Z();

// <x> instanceof Object

assertStaticTrue<W,Object>(w);
assertStaticTrue<X,Object>(x);
assertStaticTrue<Y,Object>(y);
assertStaticTrue<Z,Object>(z);

assertStaticTrue<IA,Object>(x);
assertStaticTrue<IB,Object>(x);
assertStaticTrue<IA,Object>(y);
assertStaticTrue<IB,Object>(y);
assertStaticTrue<IC,Object>(y);
assertStaticTrue<ID,Object>(y);
assertStaticTrue<IA,Object>(z);
assertStaticTrue<IB,Object>(z);
assertStaticTrue<IC,Object>(z);
assertStaticTrue<ID,Object>(z);

// Object instanceof <x>

assertDynamicTrue<Object,W>(w);
assertDynamicTrue<Object,X>(x);
assertDynamicTrue<Object,X>(y);
assertDynamicTrue<Object,X>(z);
assertDynamicTrue<Object,Y>(y);
assertDynamicTrue<Object,Y>(z);
assertDynamicTrue<Object,Z>(z);

assertDynamicTrue<Object,IA>(x);
assertDynamicTrue<Object,IB>(x);
assertDynamicTrue<Object,IA>(y);
assertDynamicTrue<Object,IB>(y);
assertDynamicTrue<Object,IC>(y);
assertDynamicTrue<Object,ID>(y);
assertDynamicTrue<Object,IA>(z);
assertDynamicTrue<Object,IB>(z);
assertDynamicTrue<Object,IC>(z);
assertDynamicTrue<Object,ID>(z);

// <class> instanceof <class>

assertStaticTrue<W,W>(w);
assertStaticFalse<W,X>(w);
assertStaticFalse<W,Y>(w);
assertStaticFalse<W,Z>(w);
assertStaticFalse<X,W>(x);
assertStaticFalse<Y,W>(y);
assertStaticFalse<Z,W>(z);

assertStaticTrue<X,X>(x);
assertDynamicFalse<X,Y>(x);
assertDynamicFalse<X,Z>(x);
assertStaticTrue<X,X>(y);
assertDynamicTrue<X,Y>(y);
assertDynamicFalse<X,Z>(y);
assertStaticTrue<X,X>(z);
assertDynamicTrue<X,Y>(z);
assertDynamicTrue<X,Z>(z);

assertStaticTrue<Y,X>(y);
assertStaticTrue<Y,Y>(y);
assertDynamicFalse<Y,Z>(y);
assertStaticTrue<Y,X>(z);
assertStaticTrue<Y,Y>(z);
assertDynamicTrue<Y,Z>(z);

assertStaticTrue<Z,X>(z);
assertStaticTrue<Z,Y>(z);
assertStaticTrue<Z,Z>(z);

// <interface> instanceof <interface>

assertDynamicFalse<IA,IC>(x);
assertDynamicFalse<IB,IC>(x);
assertDynamicFalse<IA,ID>(x);
assertDynamicFalse<IB,ID>(x);
assertStaticFalse<IA,IE>(x);
assertStaticFalse<IB,IE>(x);

assertDynamicTrue<IA,IC>(y);
assertDynamicTrue<IB,IC>(y);
assertDynamicTrue<IA,ID>(y);
assertDynamicTrue<IB,ID>(y);
assertStaticFalse<IA,IE>(y);
assertStaticFalse<IB,IE>(y);

assertDynamicTrue<IA,IC>(z);
assertDynamicTrue<IB,IC>(z);
assertDynamicTrue<IA,ID>(z);
assertDynamicTrue<IB,ID>(z);
assertStaticFalse<IA,IE>(z);
assertStaticFalse<IB,IE>(z);

// <class> instanceof <interface>

assertStaticTrue<X,IA>(x);
assertStaticTrue<X,IB>(x);
assertDynamicFalse<X,ID>(x);
assertDynamicFalse<X,IC>(x);
assertStaticFalse<X,IE>(x);
assertStaticTrue<X,IA>(y);
assertStaticTrue<X,IB>(y);
assertDynamicTrue<X,ID>(y);
assertDynamicTrue<X,IC>(y);
assertStaticFalse<X,IE>(y);
assertStaticTrue<X,IA>(z);
assertStaticTrue<X,IB>(z);
assertDynamicTrue<X,ID>(z);
assertDynamicTrue<X,IC>(z);
assertStaticFalse<X,IE>(z);

assertStaticTrue<Y,IA>(y);
assertStaticTrue<Y,IB>(y);
assertStaticTrue<Y,ID>(y);
assertStaticTrue<Y,IC>(y);
assertStaticFalse<Y,IE>(y);
assertStaticTrue<Y,IA>(z);
assertStaticTrue<Y,IB>(z);
assertStaticTrue<Y,ID>(z);
assertStaticTrue<Y,IC>(z);
assertStaticFalse<Y,IE>(z);

assertStaticTrue<Z,IA>(z);
assertStaticTrue<Z,IB>(z);
assertStaticTrue<Z,ID>(z);
assertStaticTrue<Z,IC>(z);
assertStaticFalse<Z,IE>(z);

// <interface> instanceof <class>

assertStaticFalse<IA,W>(x);
assertStaticFalse<IB,W>(x);
assertStaticFalse<IA,W>(y);
assertStaticFalse<IB,W>(y);
assertStaticFalse<IC,W>(y);
assertStaticFalse<ID,W>(y);
assertStaticFalse<IA,W>(z);
assertStaticFalse<IB,W>(z);
assertStaticFalse<IC,W>(z);
assertStaticFalse<ID,W>(z);

assertDynamicTrue<IA,X>(x);
assertDynamicTrue<IB,X>(x);
assertDynamicTrue<IA,X>(y);
assertDynamicTrue<IB,X>(y);
assertDynamicTrue<IA,X>(z);
assertDynamicTrue<IB,X>(z);

assertDynamicTrue<IA,Y>(y);
assertDynamicTrue<IB,Y>(y);
assertDynamicTrue<IC,Y>(y);
assertDynamicTrue<ID,Y>(y);
assertDynamicTrue<IA,Y>(z);
assertDynamicTrue<IB,Y>(z);
assertDynamicTrue<IC,Y>(z);
assertDynamicTrue<ID,Y>(z);

assertDynamicTrue<IA,Z>(z);
assertDynamicTrue<IB,Z>(z);
assertDynamicTrue<IC,Z>(z);
assertDynamicTrue<ID,Z>(z);
