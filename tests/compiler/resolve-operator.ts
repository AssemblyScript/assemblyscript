export function operatorAccessLiteral(): string {
  return (1 + 2).toString();
}

export function operatorAccess(): string {
  let a: u64 = 1;
  let b: u64 = 2;
  return (a + b).toString();
}

class Container {
  u64Val: u64;

  constructor(u64Val: u64) {
    this.u64Val = u64Val;
  }

  @operator('+')
  static add(a: Container, b: Container): Container {
    return new Container(a.u64Val + b.u64Val);
  }

  toString(): string {
    return this.u64Val.toString();
  }
}

export function OperatorOverloadingAccess(): string {
  let a = new Container(1);
  let b = new Container(2);
  return (a + b).toString();
}


class SubContainer extends Container {
  toU64(): u64 {
    return this.u64Val;
  }
}

export function OperatorOverloadingSubclassAccess(): string {
  let a = new SubContainer(1);
  let b = new SubContainer(2);
  return (a + b).toString();
}
