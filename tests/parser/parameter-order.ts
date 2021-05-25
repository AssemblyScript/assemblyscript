function restValid(a: i32, ...b: i32[]): void {}
function optionalValid(a: i32, b?: i32): void {}

// 1014: A rest parameter must be last in a parameter list.
function restParameterMustBeLast(...a: i32[], b: i32): void {}

// 1016: A required parameter cannot follow an optional parameter.
function optionalCannotPrecedeRequired(a?: i32, b: i32): void {}

// 1016: A required parameter cannot follow an optional parameter.
function optionalWithInitializerCannotPrecedeRequired(a: i32 = 1, b: i32): void {}
