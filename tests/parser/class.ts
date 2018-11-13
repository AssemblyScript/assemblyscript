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
}
