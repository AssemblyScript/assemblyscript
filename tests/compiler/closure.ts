// TODO

// export function outer(): () => () => i32 {
//   var inner: i32 = 42; // should become a global right away
//   return function a(): () => i32 {
//     return function b(): i32 {
//       return inner++;
//     };
//   };
// }

// var fnA = outer();
// var fnB = fnA();

// assert(fnB() == 42);
// assert(fnB() == 43);
