abstract interface Foo { // ERROR 1242: "'abstract' modifier can only appear on a class, method, or property declaration
}

abstract
interface Foo { // no error
}

interface Foo implements Bar { // ERROR 1176: "Interface declaration cannot have 'implements' clause."
}

interface Foo extends Bar { // no error
}

interface Foo {
  abstract a: i32; // ERROR 1042: "'abstract' modifier cannot be used here." (TS1070)
  private b: i32; // ERROR 1042: "'private' modifier cannot be used here." (TS1070)
  protected c: i32; // ERROR 1042: "'protected' modifier cannot be used here."
  public c: i32; // ERROR 1042: "'public' modifier cannot be used here."
  static d: i32; // ERROR 1042: "'static' modifier cannot be used here."
  constructor(): i32; // ERROR 229: "'constructor' keyword cannot be used here." (TS: none?)
  constructor(); // ^ + ERROR 1110: "Type expected."
}
