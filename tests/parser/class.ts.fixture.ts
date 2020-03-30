export class Valid<T> {
  constructor() {}
  instanceFunction(): void {}
  static staticFunction(): void {}
  get instanceGetter(): i32 {}
  static set staticSetter(v: i32) /* {v} */ {/* {v} */}
  instanceField: i32;
  static staticField: i32;
  static void: i32;
  void: i32 = Valid.void;
}
export class Invalid<T> {
  constructor<T>() {}
  instanceFunction() {}
  get instanceGetter<T>(a: i32) /* {a} */ {/* {a} */}
  set instanceSetter<T>() {}
}
// ERROR 1092: "Type parameters cannot appear on a constructor declaration." in class.ts:15:14
// ERROR 1110: "Type expected." in class.ts:18:21
// ERROR 1094: "An accessor cannot have type parameters." in class.ts:23:21
// ERROR 1054: "A 'get' accessor cannot have parameters." in class.ts:23:7
// ERROR 1110: "Type expected." in class.ts:23:32
// ERROR 1094: "An accessor cannot have type parameters." in class.ts:28:21
// ERROR 1049: "A 'set' accessor must have exactly one parameter." in class.ts:28:7
// ERROR 1095: "A 'set' accessor cannot have a return type annotation." in class.ts:28:26
