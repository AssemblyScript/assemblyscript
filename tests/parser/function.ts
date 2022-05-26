function simple(): void {}
function typeparams<T, V extends T>(a: V | null = null): void {}
@decorator()
function withdecorator(): void {}
function withthis(this: i32): i32 { return this; }
function withthisp(this: i32, a: f32, b: f64): i32 { return this; }

// 1003: Identifier expected.
function typevoid<T extends () => void>():void{}

// 1003: Identifier expected.
function extendsfunctiontype(this: ()=>void):void {}

// 1005: ':' expected.
function extendsinsteadofcolon(this extends i32):void {}

// 1003: Identifier expected.
function typeNone<void>():void{}

// 1005: ')' expected.
function functionforgetcomma(this: ()=>void a: i32):void {}

function trycatchFunction(): void {
  try {
  }
  catch (exception_var) {
  }
  finally {
  }
}
// ERROR 1003: "Identifier expected."
function deeperFunction<void>():void{{++a;}}
// ERROR 1003: "Identifier expected."
function identifierFunction<void>():void{var a = 0;}
// ERROR 1003: "Identifier expected."
function stringFunction<void>():void{"string"}
// ERROR 1005: "'(' expected."
function backtick Function<void>():void{`${a}bc`}
// ERROR 1003: "Identifier expected."
// ERROR 1351: "An identifier or keyword cannot immediately follow a numeric literal."
function deeperFunction<void>():void{1.23f}

function errorTrycatchFunction(): void {
  // ERROR 1005: "'(' expected."
  try {
  }
  catch  {
  }
  finally {
  }
  // ERROR 1003: "Identifier expected."
  try {
  }
  catch (var) {
  }
  finally {
  }
  // ERROR 1005: "'{' expected."
  try {
  }
  catch (exception_var) 
  finally {
  }
  // ERROR 1005: "'(' expected."
  try {
  } catch
  // ERROR 1005: "'{' expected."
  try {
  }
  catch (exception_var) {}
  finally()
  // ERROR 1005: "'{' expected."
  try(a())
  // ERROR 1005: "'catch' expected."
  try{a()}
}

function switchError(i: i32): void{

  switch(i) { 
    case constant-expression1: { 
       break; 
    } 
    default: { 
       break; 
    } 
  } 
  // ERROR 1005: "'(' expected."
  switch {i} {

  }
  // ERROR 1005: "'{' expected."
  switch (i) []

}

function ifError(i: i32): void{
  // ERROR 1005: "'(' expected."
  if {i}

}

function doError(i: i32): void{
  // ERROR 1005: "'while' expected."
  do {}
}