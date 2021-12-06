abstract;
interface Foo {
}
abstract;
interface Foo {
}
interface Foo {
}
interface Foo extends Bar {
}
interface Foo {
  abstract a: i32;
  b: i32;
  c: i32;
  c: i32;
  d: i32;
  readonly e: i32;
  constructor(): i32;
  constructor();
}
// ERROR 1242: "'abstract' modifier can only appear on a class, method, or property declaration." in interface-errors.ts(1,1+8)
// ERROR 1176: "Interface declaration cannot have 'implements' clause." in interface-errors.ts(8,15+10)
// ERROR 1070: "'abstract' modifier cannot appear on a type member." in interface-errors.ts(15,3+8)
// ERROR 100: "Not implemented: Abstract fields" in interface-errors.ts(15,12+1)
// ERROR 1070: "'private' modifier cannot appear on a type member." in interface-errors.ts(16,3+7)
// ERROR 1070: "'protected' modifier cannot appear on a type member." in interface-errors.ts(17,3+9)
// ERROR 1070: "'public' modifier cannot appear on a type member." in interface-errors.ts(18,3+6)
// ERROR 1070: "'static' modifier cannot appear on a type member." in interface-errors.ts(19,3+6)
// ERROR 230: "'constructor' keyword cannot be used here." in interface-errors.ts(21,3+11)
// ERROR 230: "'constructor' keyword cannot be used here." in interface-errors.ts(22,3+11)
// ERROR 1110: "Type expected." in interface-errors.ts(22,16+0)
