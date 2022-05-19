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
  constructor<T>() {}
  instanceFunction() {}
  get instanceGetter<T>(a: i32) {}
  set instanceSetter<T>() {}
  declare declareField: i32;
  declare declareInitializer: i32 = 0;
  declare declareMethod(): i32 {}
  readonly get name(): i32 {}
  readonly set name() {}
  static constructor(a: i32) {}
  constructor(a: i32) {}
  readonly constructor(a: i32) {}
}
export abstract class Invalid<T> {
  abstract constructor(a: i32) {}
}
// ERROR 1092: "Type parameters cannot appear on a constructor declaration." in class.ts(15,14+3)
// ERROR 1110: "Type expected." in class.ts(18,21+0)
// ERROR 1094: "An accessor cannot have type parameters." in class.ts(23,21+3)
// ERROR 1054: "A 'get' accessor cannot have parameters." in class.ts(23,7+14)
// ERROR 1110: "Type expected." in class.ts(23,32+0)
// ERROR 1094: "An accessor cannot have type parameters." in class.ts(28,21+3)
// ERROR 1049: "A 'set' accessor must have exactly one parameter." in class.ts(28,7+14)
// ERROR 1095: "A 'set' accessor cannot have a return type annotation." in class.ts(28,26+1)
// ERROR 100: "Not implemented: Ambient fields" in class.ts(31,3+7)
// ERROR 100: "Not implemented: Ambient fields" in class.ts(35,3+7)
// ERROR 1039: "Initializers are not allowed in ambient contexts." in class.ts(35,35+1)
// ERROR 1031: "'declare' modifier cannot appear on class elements of this kind." in class.ts(39,3+7)
// ERROR 1183: "An implementation cannot be declared in ambient contexts." in class.ts(39,32+1)
// ERROR 1042: "'readonly' modifier cannot be used here." in class.ts(42,3+8)
// ERROR 1042: "'readonly' modifier cannot be used here." in class.ts(46,3+8)
// ERROR 1049: "A 'set' accessor must have exactly one parameter." in class.ts(46,16+4)
// ERROR 1095: "A 'set' accessor cannot have a return type annotation." in class.ts(46,22+1)
// ERROR 1042: "'static' modifier cannot be used here." in class.ts(49,3+6)
// ERROR 1042: "'abstract' modifier cannot be used here." in class.ts(52,3+8)
// ERROR 1042: "'readonly' modifier cannot be used here." in class.ts(55,3+8)
// ERROR 1042: "'abstract' modifier cannot be used here." in class.ts(61,3+8)
// ERROR 1245: "Method 'constructor' cannot have an implementation because it is marked abstract." in class.ts(61,32+1)
