class A {
  private privPriv: i32;
  private privProt: i32;
  private privPub: i32;

  // --

  protected protPriv: i32;
  public pubPriv: i32;

  // --

  public pubProt: i32;

  // --

  method(): void {}
}

class B extends A {
  private privPriv: i32;
  protected privProt: i32;
  public privPub: i32;

  // --

  private protPriv: i32;
  private pubPriv: i32;

  // --

  protected pubProt: i32;

  // --

  public method: i32;
}

class Animal {
  sibling: Animal | null;
}
class Cat extends Animal {
  sibling: Cat | null; // covariance is unsound
}

export function test(): void {
  new A();
  new B();
  new Cat();
}
