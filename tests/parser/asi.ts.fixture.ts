function failLet(y: i32): i32 {
  let x = y;
  234;
  return x + y;
}
function failReturn(): i32 {
  return 123;
  456;
}
function failThrow(): i32 {
  throw 123;
  456;
}
function successCloseBrace(): i32 {
  return 123;
}
function successCloseParen(): i32 {
  return (123);
}
function successAfterLet(): i32 {
  let a = 0;
  return a;
}
function failExpressionStatement(): void {
  let first: i32 = 1;
  first;
  second;
}
function failThrowNewline(): void {
  123;
}
function failArrowNewline(): void {}
function failAsNewline(value: any): any {
  return value;
  as;
  any;
}
function failVariableAssertionNewline(): void {
  let value;
}
function successPostfixNewline(): void {
  let current: i32 = 0;
  let previous: i32 = 45;
  let count: i32 = 13;
  current = previous;
  ++count;
  current = previous++;
}
function successExpressionContinuations(first: any, second: any): any {
  let call = first(second);
  let element = first[0];
  let property = first.value;
  return first + second;
}
function successPrefixAfterNewline(value: any, next: any): any {
  return value;
  !next;
}
function failBreakTerminator(): void {
  while (true) {
    break target;
    next;
  }
}
function failContinueTerminator(): void {
  while (true) {
    continue target;
    next;
  }
}
function failFieldTerminator(): void {
  class Fields {
    first: i32 = 1;
    second: i32 = 2;
  };
}
class FieldsWithASI {
  first: i32 = 1;
  second: i32 = 2;
}
function failElseAfterWhileEmptyStatement(): void {
  if (true) while (false) {};
;
  ;
}
function failElseAfterSwitchEmptyStatement(): void {
  if (true) switch (false) {
};
;
  ;
}
function failElseAfterTryEmptyStatement(): void {
  if (true) try {
  } finally {
  };
;
  ;
  }
type FirstType = i32;
type SecondType = i32;
type SameLineArrayType = Array<i32>;
type SameLineGenericType = Array<i32>;
type ArrayTypeBeforeNewlineLiteral = i32;
[];
type GenericTypeBeforeNewlineAssertion = Array;
<i32>genericValue;
type FailSameLineType = i32;
type NextType = i32;
import "module";
consume();
export {};
consume();
module "test";
let moduleValue: i32 = 0;
{
    let blockValue: i32 = 0;
  }
// ERROR 1012: "Unexpected token." in asi.ts(2,13+0)
// ERROR 1012: "Unexpected token." in asi.ts(7,14+0)
// ERROR 1012: "Unexpected token." in asi.ts(11,13+0)
// ERROR 1012: "Unexpected token." in asi.ts(29,9+0)
// ERROR 1012: "Unexpected token." in asi.ts(34,5+0)
// ERROR 1012: "Unexpected token." in asi.ts(39,5+0)
// ERROR 1109: "Expression expected." in asi.ts(39,5+2)
// ERROR 1012: "Unexpected token." in asi.ts(44,8+0)
// ERROR 1110: "Type expected." in asi.ts(48,12+0)
// ERROR 1109: "Expression expected." in asi.ts(49,6+1)
// ERROR 1012: "Unexpected token." in asi.ts(79,18+0)
// ERROR 1012: "Unexpected token." in asi.ts(85,21+0)
// ERROR 1012: "Unexpected token." in asi.ts(91,20+0)
// ERROR 1109: "Expression expected." in asi.ts(101,31+4)
// ERROR 1109: "Expression expected." in asi.ts(105,32+4)
// ERROR 1109: "Expression expected." in asi.ts(109,32+4)
// ERROR 1012: "Unexpected token." in asi.ts(124,29+0)
// ERROR 1012: "Unexpected token." in asi.ts(129,11+0)
