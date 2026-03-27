function regular(@first value: i32): void {}
function rest(@rest ...values: i32[]): void {}
function withthis(@self this: i32, value: i32): i32 { return this; }

class Box {
  constructor(@field public value: i32) {}
  method(@arg value: i32): void {}
}

type Callback = (@arg value: i32) => void;
const expression = function(@arg value: i32): void {};
const arrow = (@arg value: i32): void => {};

ERROR("EOF");
