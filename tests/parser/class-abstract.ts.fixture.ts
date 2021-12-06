class Foo {
  bar(): void;
}
// ERROR 1244: "Abstract methods can only appear within an abstract class." in class-abstract.ts(2,3+8)
// ERROR 2391: "Function implementation is missing or not immediately following the declaration." in class-abstract.ts(2,19+4)
