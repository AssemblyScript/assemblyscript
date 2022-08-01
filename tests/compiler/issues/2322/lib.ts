export function test<T = i32>(t: Wrapper<T>): void {}
export class Wrapper<T> {
  v: T;
}
