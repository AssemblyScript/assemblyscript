export class Valid<T> {
  constructor() {}
  instanceFunction(): void {}
  static staticFunction(): void {}
  get instanceGetter(): i32 {}
  static set staticSetter(v: i32) {}
  instanceField: i32;
  static staticField: i32;
}
export class Invalid<T> {
  constructor<T>() {}
  instanceFunction() {}
  get instanceGetter<T>(a: i32) {}
  set instanceSetter<T>() {}
}
// ERROR 1092: "Type parameters cannot appear on a constructor declaration." in class.ts:13:13
// ERROR 1110: "Type expected." in class.ts:16:20
// ERROR 1094: "An accessor cannot have type parameters." in class.ts:21:20
// ERROR 1054: "A 'get' accessor cannot have parameters." in class.ts:21:6
// ERROR 1110: "Type expected." in class.ts:21:31
// ERROR 1094: "An accessor cannot have type parameters." in class.ts:26:20
// ERROR 1049: "A 'set' accessor must have exactly one parameter." in class.ts:26:6
// ERROR 1095: "A 'set' accessor cannot have a return type annotation." in class.ts:26:25
