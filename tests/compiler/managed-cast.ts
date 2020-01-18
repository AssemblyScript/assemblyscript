class Animal {
  tame(): void {}
}
class Cat extends Animal {
  meow(): void {}
}

function testDowncast(cat: Cat): void {
  (<Animal>cat).tame();
}
testDowncast(new Cat());

function testDowncastFromNullable(cat: Cat | null): void {
  (<Animal>cat).tame();
}
testDowncastFromNullable(new Cat());

function testDowncastToNullable(cat: Cat): void {
  var maybeAnimal = <Animal | null>cat;
  if (maybeAnimal) maybeAnimal.tame();
}
testDowncastToNullable(new Cat());

function testDowncastFromToNullable(cat: Cat | null): void {
  var maybeAnimal = <Animal | null>cat;
  if (maybeAnimal) maybeAnimal.tame();
}
testDowncastFromToNullable(new Cat());

function testUpcast(animal: Animal): void {
  (<Cat>animal).meow();
}
testUpcast(new Cat());

function testUpcastFromNullable(animal: Animal | null): void {
  (<Cat>animal).meow();
}
testUpcastFromNullable(new Cat());

function testUpcastToNullable(animal: Animal): void {
  var maybeCat = <Cat | null>animal;
  if (maybeCat) maybeCat.meow();
}
testUpcastToNullable(new Cat());

function testUpcastFromToNullable(animal: Animal | null): void {
  var maybeCat = <Cat | null>animal;
  if (maybeCat) maybeCat.meow();
}
testUpcastFromToNullable(new Cat());
