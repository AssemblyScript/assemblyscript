class Animal {
  tame(): void {}
}
class Cat extends Animal {
  meow(): void {}
}

function testUpcast(cat: Cat): void {
  (<Animal>cat).tame();
}
testUpcast(new Cat());

function testUpcastFromNullable(cat: Cat | null): void {
  (<Animal>cat).tame();
}
testUpcastFromNullable(new Cat());

function testUpcastToNullable(cat: Cat): void {
  var maybeAnimal = <Animal | null>cat;
  if (maybeAnimal) maybeAnimal.tame();
}
testUpcastToNullable(new Cat());

function testUpcastFromToNullable(cat: Cat | null): void {
  var maybeAnimal = <Animal | null>cat;
  if (maybeAnimal) maybeAnimal.tame();
}
testUpcastFromToNullable(new Cat());

function testDowncast(animal: Animal): void {
  (<Cat>animal).meow();
}
testDowncast(new Cat());

function testDowncastFromNullable(animal: Animal | null): void {
  (<Cat>animal).meow();
}
testDowncastFromNullable(new Cat());

function testDowncastToNullable(animal: Animal): void {
  var maybeCat = <Cat | null>animal;
  if (maybeCat) maybeCat.meow();
}
testDowncastToNullable(new Cat());

function testDowncastFromToNullable(animal: Animal | null): void {
  var maybeCat = <Cat | null>animal;
  if (maybeCat) maybeCat.meow();
}
testDowncastFromToNullable(new Cat());

__stack_pointer = __heap_base;
__collect();
