class A {
  [key: i32]: f64;
}
// ERROR 1206: "Decorators are not valid here."
class B {
  @final [key: i32]: f64;
}
// ERROR 1005: "':' expected."
class C {
  [key extends i32]: f64;
}
// ERROR 1110: "Type expected."
class D {
  [key: ()=>void]: f64;
}
// ERROR 1110: "Type expected."
class E {
  [key: ()=>void: f64;
}
// ERROR 1003: "Identifier expected."
class F {
  [key: i32]: ()=>void;
}
// ERROR 1005: "':' expected."
class G {
  [key: i32]| f64;
}
// ERROR 1005: "'key' expected."
class H {
  [keys: i32]: f64;
}
// ERROR 1003: "Identifier expected."
class I {
  [()=>string: i32]: f64;
}

// ERROR 1042: "'public' modifier cannot be used here."
class J {
  public [()=>string: i32]: f64;
}
// ERROR 1042: "'protected' modifier cannot be used here."
class K {
  protected [()=>string: i32]: f64;
}
// ERROR 1042: "'private' modifier cannot be used here."
class L {
  private [()=>string: i32]: f64;
}
// ERROR 1042: "'static' modifier cannot be used here."
class M {
  static [()=>string: i32]: f64;
}
// ERROR 1042: "'abstract' modifier cannot be used here."
class N {
  abstract [()=>string: i32]: f64;
}
// ERROR 1042: "'readonly' modifier cannot be used here."
class O {
  readonly [()=>string: i32]: f64;
}
// ERROR 1005: "']' expected."
class P {
  [key: i32 : f64;
}
