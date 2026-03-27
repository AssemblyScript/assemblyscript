function regular(@first @second("x") value: i32, @optional maybe?: i32): void {}
function withthis(@self this: i32, @rest ...values: i32[]): i32 { return this; }

class Box {
  constructor(@field public value: i32) {}
  method(@arg value: i32): void {}
}

type Callback = (@self this: i32, @arg value: i32, @rest ...values: i32[]) => void;
const expression = function (@arg value: i32): void {};
const arrow = (@arg value: i32): void => {};
