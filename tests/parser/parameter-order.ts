function restValid(a: i32, ...b: i32[]): void {}
function restParameterMustBeLast(...a: i32[], b: i32): void {}

function optionalValid(a: i32, b?: i32): void {}
function optionalCannotPrecedeRequired(a?: i32, b: i32): void {}
function optionalWithInitializerCannotPrecedeRequired(a: i32 = 1, b: i32): void {}
