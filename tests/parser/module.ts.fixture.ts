module "abc";
declare module "abc";
module`a bc`;
declare namespace A {
  module "abc";
}
// ERROR 1038: "A 'declare' modifier cannot be used in an already ambient context." in module.ts(9,22+7)
