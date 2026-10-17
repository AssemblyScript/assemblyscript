function failLet(y: i32): i32 {
  let x = y 234;
  return x + y;
}

function failReturn(): i32 {
  return 123 456;
}

function failThrow(): i32 {
  throw 123 456;
}

function successCloseBrace(): i32 {
  return 123 }

function successCloseParen(): i32 {
  return ( 123 )
}

function successAfterLet(): i32 {
  // multiple tn.peeks
  let a = 0
  return a
}

function failExpressionStatement(): void {
  let first: i32 = 1;
  first second;
}

function failThrowNewline(): void {
  throw
    123;
}

function failArrowNewline(): void {
  let fn = (value: i32)
    => value;
}

function failAsNewline(value: any): any {
  return value
    as any;
}

function failVariableAssertionNewline(): void {
  let value
    !: i32;
}

function successPostfixNewline(): void {
  let current: i32 = 0;
  let previous: i32 = 45;
  let count: i32 = 13;
  current = previous
  ++count
  current = previous++
}

function successExpressionContinuations(first: any, second: any): any {
  let call = first
    (second);
  let element = first
    [0];
  let property = first
    .value;
  return first
    + second;
}

function successPrefixAfterNewline(value: any, next: any): any {
  return value
    !next
}

function failBreakTerminator(): void {
  while (true) {
    break target next;
  }
}

function failContinueTerminator(): void {
  while (true) {
    continue target next;
  }
}

function failFieldTerminator(): void {
  class Fields {
    first: i32 = 1 second: i32 = 2;
  }
}

class FieldsWithASI {
  first: i32 = 1
  second: i32 = 2
}

function failElseAfterWhileEmptyStatement(): void {
  if (true) while (false) {}; else {}
}

function failElseAfterSwitchEmptyStatement(): void {
  if (true) switch (false) {}; else {}
}

function failElseAfterTryEmptyStatement(): void {
  if (true) try {} finally {}; else {}
}

type FirstType = i32
type SecondType = i32;

type SameLineArrayType = i32[];
type SameLineGenericType = Array<i32>;

type ArrayTypeBeforeNewlineLiteral = i32
[];

type GenericTypeBeforeNewlineAssertion = Array
<i32>genericValue;

type FailSameLineType = i32 type NextType = i32;

import "module"
consume();

export {} consume();

module "test"
let moduleValue: i32 = 0;

{
  let blockValue: i32 = 0;
};
