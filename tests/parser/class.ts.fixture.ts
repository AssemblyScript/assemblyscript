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
  declare declareField: i32;
}
export class Invalid<T> {
  constructor<T>() {}
  instanceFunction() {}
  get instanceGetter<T>(a: i32) {}
  set instanceSetter<T>() {}
  declare declareInitializer: i32 = 1;
  declare declareMethod(): i32 {}
}
// ERROR 1092: "Type parameters cannot appear on a constructor declaration." in class.ts(16,14+3)
// ERROR 1110: "Type expected." in class.ts(19,21+0)
// ERROR 1094: "An accessor cannot have type parameters." in class.ts(24,21+3)
// ERROR 1054: "A 'get' accessor cannot have parameters." in class.ts(24,7+14)
// ERROR 1110: "Type expected." in class.ts(24,32+0)
// ERROR 1094: "An accessor cannot have type parameters." in class.ts(29,21+3)
// ERROR 1049: "A 'set' accessor must have exactly one parameter." in class.ts(29,7+14)
// ERROR 1095: "A 'set' accessor cannot have a return type annotation." in class.ts(29,26+1)
// ERROR 1039: "Initializers are not allowed in ambient contexts." in class.ts(31,35+1)
// ERROR 1042: "'declare' modifier cannot be used here." in class.ts(32,3+7)
// ERROR 1183: "An implementation cannot be declared in ambient contexts." in class.ts(32,32+1)
