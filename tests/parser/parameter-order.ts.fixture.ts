function restValid(a: i32, ...b: Array<i32>): void {
}
function restParameterMustBeLast(...a: Array<i32>, b: i32): void {
}
function optionalValid(a: i32, b?: i32): void {
}
function optionalCannotPrecedeRequired(a?: i32, b: i32): void {
}
function optionalWithInitializerCannotPrecedeRequired(a: i32 = 1, b: i32): void {
}
// ERROR 1014: "A rest parameter must be last in a parameter list." in parameter-order.ts @ 85,86
// ERROR 1016: "A required parameter cannot follow an optional parameter." in parameter-order.ts @ 210,211
// ERROR 1016: "A required parameter cannot follow an optional parameter." in parameter-order.ts @ 293,294
