class A {
  [key: i32]: f64;
}
class B {
  [key: i32]: f64;
}
class C {}
class D {}
class E {}
class F {}
class G {}
class H {}
class I {}
class J {}
class K {}
class L {}
class M {}
class N {}
class O {}
// ERROR 1206: "Decorators are not valid here." in index-declaration.ts(6,3+6)
// ERROR 1005: "':' expected." in index-declaration.ts(10,4+3)
// ERROR 1110: "Type expected." in index-declaration.ts(14,13+4)
// ERROR 1110: "Type expected." in index-declaration.ts(18,13+4)
// ERROR 1003: "Identifier expected." in index-declaration.ts(22,15+8)
// ERROR 1005: "':' expected." in index-declaration.ts(26,12+1)
// ERROR 1005: "'key' expected." in index-declaration.ts(30,4+4)
// ERROR 1003: "Identifier expected." in index-declaration.ts(34,3+1)
// ERROR 1042: "'public' modifier cannot be used here." in index-declaration.ts(39,3+6)
// ERROR 1003: "Identifier expected." in index-declaration.ts(39,10+1)
// ERROR 1042: "'protected' modifier cannot be used here." in index-declaration.ts(43,3+9)
// ERROR 1003: "Identifier expected." in index-declaration.ts(43,13+1)
// ERROR 1042: "'protected' modifier cannot be used here." in index-declaration.ts(47,3+7)
// ERROR 1003: "Identifier expected." in index-declaration.ts(47,11+1)
// ERROR 1042: "'static' modifier cannot be used here." in index-declaration.ts(51,3+6)
// ERROR 1003: "Identifier expected." in index-declaration.ts(51,10+1)
// ERROR 1042: "'abstract' modifier cannot be used here." in index-declaration.ts(55,3+8)
// ERROR 1003: "Identifier expected." in index-declaration.ts(55,12+1)
// ERROR 1003: "Identifier expected." in index-declaration.ts(59,12+1)
// ERROR 1042: "'readonly' modifier cannot be used here." in index-declaration.ts(59,3+8)
