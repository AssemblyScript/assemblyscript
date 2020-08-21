class Animal {}
class Cat extends Animal {}
class BlackCat extends Cat {}

var animal: Animal = new Animal();
var cat: Animal = new Cat();
var blackcat: Animal = new BlackCat();

assert(animal instanceof Animal); // static true
assert(!(animal instanceof Cat)); // dynamic false
assert(!(animal instanceof BlackCat)); // dynamic false

assert(cat instanceof Animal); // static true
assert(cat instanceof Cat); // dynamic true
assert(!(cat instanceof BlackCat)); // dynamic false

assert(blackcat instanceof Animal); // static true
assert(blackcat instanceof Cat); // dynamic true
assert(blackcat instanceof BlackCat); // dynamic true

var nullableAnimal: Animal | null = new Animal();
var nullableCat: Animal | null = new Cat();
var nullableBlackcat: Animal | null = new BlackCat();

assert(nullableAnimal instanceof Animal); // static true
assert(!(nullableAnimal instanceof Cat)); // dynamic false
assert(!(nullableAnimal instanceof BlackCat)); // dynamic false

assert(nullableCat instanceof Animal); // static true
assert(nullableCat instanceof Cat); // dynamic true
assert(!(nullableCat instanceof BlackCat)); // dynamic false

assert(nullableBlackcat instanceof Animal); // static true
assert(nullableBlackcat instanceof Cat); // dynamic true
assert(nullableBlackcat instanceof BlackCat); // dynamic true

var nullAnimal: Animal | null = null;
var nullCat: Animal | null = null;
var nullBlackcat: Animal | null = null;

assert(!(nullAnimal instanceof Animal)); // static false
assert(!(nullAnimal instanceof Cat)); // dynamic false
assert(!(nullAnimal instanceof BlackCat)); // dynamic false

assert(!(nullCat instanceof Animal)); // static false
assert(!(nullCat instanceof Cat)); // dynamic false
assert(!(nullCat instanceof BlackCat)); // dynamic false

assert(!(nullBlackcat instanceof Animal)); // static false
assert(!(nullBlackcat instanceof Cat)); // dynamic false
assert(!(nullBlackcat instanceof BlackCat)); // dynamic false
