export class Valid<T> {
  constructor() {}
  instanceFunction(): void {}
  static staticFunction(): void {}
  get instanceGetter(): i32 {}
  static set staticSetter(v: i32) {}
  instanceField: i32;
  static staticField: i32;
  static void: i32;
  void: i32 = Valid.void;
}
export class Invalid<T> {

  // 1092: Type parameters cannot appear on a constructor declaration
  constructor<T>() {}

  // 1110: Type expected.
  instanceFunction() {}

  // 1094: An accessor cannot have type parameters.
  // 1054: A 'get' accessor cannot have parameters.
  // 1110: Type expected.
  get instanceGetter<T>(a: i32) {}

  // 1094: An accessor cannot have type parameters.
  // 1049: A 'set' accessor must have exactly one parameter.
  // 1095: A 'set' accessor cannot have a return type annotation.
  set instanceSetter<T>(): i32 {}

  // 100: Not implemented: Ambient fields
  declare declareField: i32;

  // 100: Not implemented: Ambient fields
  // 1039: Initializers are not allowed in ambient contexts.
  declare declareInitializer: i32 = 0;

  // 1031: 'declare' modifier cannot appear on class elements of this kind.
  // 1183: An implementation cannot be declared in ambient contexts.
  declare declareMethod(): i32 {}

  // ERROR 1042: "'readonly' modifier cannot be used here."
  readonly get name():i32 {}
  // ERROR 1049: "A 'set' accessor must have exactly one parameter."
  // ERROR 1042: "'readonly' modifier cannot be used here."
  // ERROR 1095: "A 'set' accessor cannot have a return type annotation."
  readonly set name():i32 {}

  // ERROR 1042: "'static' modifier cannot be used here."
  static constructor(a: i32) {}

  // ERROR 1042: "'abstract' modifier cannot be used here."
  abstract constructor(a: i32) {}

  // ERROR 1042: "'readonly' modifier cannot be used here."
  readonly constructor(a: i32) {}
}


export abstract class Invalid<T> { 
  // ERROR 1245: "Method 'constructor' cannot have an implementation because it is marked abstract."
  abstract constructor(a: i32) {}
}