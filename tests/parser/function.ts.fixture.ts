function simple(): void {}
function typeparams<T, V extends T>(a: V | null = null): void {}
@decorator()
function withdecorator(): void {}
function withthis(this: i32): i32 {
  return this;
}
function withthisp(this: i32, a: f32, b: f64): i32 {
  return this;
}
function extendsfunctiontype(): void {}
function trycatchFunction(): void {
  try {
  } catch (exception_var) {
  } finally {
  }
  }
function errorTrycatchFunction(): void {}
function switchError(i: i32): void {
    switch (i) {
      case constant - expression1:
        {
          break;
        }

      default:
        {
          break;
        }

}
  }
function ifError(i: i32): void {}
function doError(i: i32): void {}
// ERROR 1003: "Identifier expected." in function.ts(9,29+10)
// ERROR 1003: "Identifier expected." in function.ts(12,36+8)
// ERROR 1005: "':' expected." in function.ts(15,32+4)
// ERROR 1003: "Identifier expected." in function.ts(18,19+4)
// ERROR 1003: "Identifier expected." in function.ts(21,36+8)
// ERROR 1005: "')' expected." in function.ts(21,40+4)
// ERROR 1003: "Identifier expected." in function.ts(32,25+4)
// ERROR 1003: "Identifier expected." in function.ts(34,29+4)
// ERROR 1003: "Identifier expected." in function.ts(36,25+4)
// ERROR 1005: "'(' expected." in function.ts(38,18+0)
// ERROR 1003: "Identifier expected." in function.ts(41,25+4)
// ERROR 1351: "An identifier or keyword cannot immediately follow a numeric literal." in function.ts(41,42+0)
// ERROR 1005: "'(' expected." in function.ts(47,3+5)
// ERROR 1109: "Expression expected." in function.ts(47,3+5)
// ERROR 1109: "Expression expected." in function.ts(49,3+7)
// ERROR 1003: "Identifier expected." in function.ts(54,9+1)
// ERROR 1109: "Expression expected." in function.ts(54,3+5)
// ERROR 1109: "Expression expected." in function.ts(56,3+7)
// ERROR 1005: "'{' expected." in function.ts(61,23+1)
// ERROR 1109: "Expression expected." in function.ts(61,3+5)
// ERROR 1109: "Expression expected." in function.ts(62,3+7)
// ERROR 1005: "'(' expected." in function.ts(66,5+5)
// ERROR 1005: "'{' expected." in function.ts(71,3+7)
// ERROR 1109: "Expression expected." in function.ts(70,3+5)
// ERROR 1109: "Expression expected." in function.ts(71,3+7)
// ERROR 1005: "'{' expected." in function.ts(73,3+3)
// ERROR 1005: "'catch' expected." in function.ts(75,10+1)
// ERROR 1005: "'(' expected." in function.ts(89,3+6)
// ERROR 1005: "'{' expected." in function.ts(93,12+1)
// ERROR 1005: "'(' expected." in function.ts(99,3+2)
// ERROR 1005: "'while' expected." in function.ts(105,7+1)
