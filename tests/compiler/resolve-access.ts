export function arrayAccess(): string {
  let arr: u64[] = [1];
  return arr[0].toString();
}

class Container {
  foo: u64;

  toU32(): u32 {
    return this.foo as u32;
  }
}

export function fieldAccess(): string {
  let container = new Container();
  container.foo = 1;
  return container.foo.toString();
}

export function propertyAccess(): string {
  let container = new Container();
  container.foo = 1;
  return container.toU32().toString();
}

