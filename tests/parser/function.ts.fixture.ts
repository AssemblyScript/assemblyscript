function simple(): void {}
function typeparams<T, V extends T>(a?: V | null = null): void {}
@decorator()
function withdecorator(): void {}
function withthis(this: i32): i32 {
  return this;
}
function withthisp(this: i32, a: f32, b: f64): i32 {
  return this;
}
