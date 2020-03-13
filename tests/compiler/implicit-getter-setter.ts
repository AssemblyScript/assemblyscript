export class Basic {
  constructor(public val: i32) {}
}

export class Managed {
  constructor(public foo: Basic) {}
}
