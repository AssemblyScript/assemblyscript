function restValid(a: i32, ...b: Array<i32>): void {}
function optionalValid(a: i32, b?: i32): void {}
function restParameterMustBeLast(...a: Array<i32>, b: i32): void {}
function optionalCannotPrecedeRequired(a?: i32, b: i32): void {}
function optionalWithInitializerCannotPrecedeRequired(a?: i32 = 1, b: i32): void {}
// ERROR 1014: "A rest parameter must be last in a parameter list." in parameter-order.ts:5:36
// ERROR 1016: "A required parameter cannot follow an optional parameter." in parameter-order.ts:8:48
// ERROR 1016: "A required parameter cannot follow an optional parameter." in parameter-order.ts:11:66
