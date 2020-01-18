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

function testUpcast(animal: Animal): void {
  (<Cat>animal).meow();
}
testUpcast(new Cat());
