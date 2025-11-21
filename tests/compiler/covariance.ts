class Animal {
  sibling: Animal | null;
}

class Cat extends Animal {
  sibling: Cat | null; // covariance is unsound
}

new Cat();