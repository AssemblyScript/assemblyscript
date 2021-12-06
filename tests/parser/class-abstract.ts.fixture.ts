class Foo {
  bar(): void;
}
// ERROR 1242: "'abstract' modifier can only appear on a class, method, or property declaration." in class-abstract.ts(2,3+8)
// ERROR 2391: "Function implementation is missing or not immediately following the declaration." in class-abstract.ts(2,19+4)
