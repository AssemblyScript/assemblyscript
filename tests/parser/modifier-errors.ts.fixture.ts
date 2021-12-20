class A {
  public a: void;
  public b: void;
  public c: void;
  static d: void;
  readonly e: void;
  public f: void;
  protected g: void;
  private h: void;
  static i: void;
  readonly j: void;
  public k: void;
  private l: void;
  private m: void;
  static n: void;
  readonly o: void;
}
abstract class B {
  abstract a: void;
  abstract b: void;
  abstract c: void;
}
var a = 1;
let b = 1;
const c = 1;
const enum C {}
enum D {}
function d(): void {}
class E {}
;
interface F {
}
;
namespace G {}
import {
  default as e
} from "";
type H = null;
export {
  f as default
};
export {
  g
};
var h = 1;
let i = 1;
const j = 1;
const enum I {}
enum J {}
function k(): void {}
class K {}
;
interface L {
}
;
namespace M {}
import {
  default as l
} from "";
type N = null;
export {
  m as default
};
export {
  n
};
var o = 1;
let p = 1;
const q = 1;
const enum O {}
enum P {}
function r(): void {}
class Q {}
;
interface R {
}
;
namespace S {}
import {
  default as s
} from "";
type T = null;
export {
  t as default
};
export {
  u
};
class U {
  static a: void;
  readonly b: void;
  constructor(c: void) {}
}
abstract class V {
  abstract a: void;
  static b: void;
}
var v = 1;
let w = 1;
const x = 1;
const enum W {}
enum X {}
function y(): void {}
class Y {}
;
interface Z {
}
;
namespace AB {}
import {
  default as z
} from "";
type BB = null;
export {
  ab as default
};
export {
  bb
};
class CB {
  readonly a: void;
  readonly get b(): boolean {
    return false;
  }
  readonly set c(d: void) {}
  readonly e(): void {}
}
export class DB {}
;
declare class EB {}
;
abstract class FB {}
;
class GB {
  a: void;
  get b(): boolean {
    return false;
  }
  set c(d: void) {}
  e(): void {}
  constructor(f: void) {}
}
declare class HB {}
;
class IB {
  constructor(a: void) {}
}
abstract class JB {}
;
var cb = 1;
let db = 1;
const eb = 1;
const enum KB {}
enum LB {}
abstract function fb(): void {}
interface MB {
}
;
namespace NB {}
import {
  default as gb
} from "";
type OB = null;
export {
  hb as default
};
export {
  ib
};
abstract class PB {
  abstract a: void;
  abstract b: void;
  constructor(c: void) {}
}
class QB {
  static constructor() {}
}
class RB {
  readonly constructor() {}
}
abstract class SB {
  abstract constructor();
}
import {
  default as jb
} from "";
// ERROR 1028: "Accessibility modifier already seen." in modifier-errors.ts(4,10+6)
// ERROR 1028: "Accessibility modifier already seen." in modifier-errors.ts(5,13+6)
// ERROR 1028: "Accessibility modifier already seen." in modifier-errors.ts(6,11+6)
// ERROR 1029: "'public' modifier must precede 'static' modifier." in modifier-errors.ts(7,10+6)
// ERROR 1029: "'public' modifier must precede 'readonly' modifier." in modifier-errors.ts(8,12+6)
// ERROR 1028: "Accessibility modifier already seen." in modifier-errors.ts(9,10+9)
// ERROR 1028: "Accessibility modifier already seen." in modifier-errors.ts(10,13+9)
// ERROR 1028: "Accessibility modifier already seen." in modifier-errors.ts(11,11+9)
// ERROR 1029: "'protected' modifier must precede 'static' modifier." in modifier-errors.ts(12,10+9)
// ERROR 1029: "'protected' modifier must precede 'readonly' modifier." in modifier-errors.ts(13,12+9)
// ERROR 1028: "Accessibility modifier already seen." in modifier-errors.ts(14,10+7)
// ERROR 1028: "Accessibility modifier already seen." in modifier-errors.ts(15,13+7)
// ERROR 1028: "Accessibility modifier already seen." in modifier-errors.ts(16,11+7)
// ERROR 1029: "'private' modifier must precede 'static' modifier." in modifier-errors.ts(17,10+7)
// ERROR 1029: "'private' modifier must precede 'readonly' modifier." in modifier-errors.ts(18,12+7)
// ERROR 1029: "'public' modifier must precede 'abstract' modifier." in modifier-errors.ts(21,12+6)
// ERROR 100: "Not implemented: Abstract fields" in modifier-errors.ts(21,19+1)
// ERROR 1029: "'protected' modifier must precede 'abstract' modifier." in modifier-errors.ts(22,12+9)
// ERROR 100: "Not implemented: Abstract fields" in modifier-errors.ts(22,22+1)
// ERROR 1243: "'private' modifier cannot be used with 'abstract' modifier." in modifier-errors.ts(23,12+7)
// ERROR 100: "Not implemented: Abstract fields" in modifier-errors.ts(23,20+1)
// ERROR 1044: "'public' modifier cannot appear on a module or namespace element." in modifier-errors.ts(25,1+6)
// ERROR 1044: "'public' modifier cannot appear on a module or namespace element." in modifier-errors.ts(26,1+6)
// ERROR 1044: "'public' modifier cannot appear on a module or namespace element." in modifier-errors.ts(27,1+6)
// ERROR 1044: "'public' modifier cannot appear on a module or namespace element." in modifier-errors.ts(28,1+6)
// ERROR 1044: "'public' modifier cannot appear on a module or namespace element." in modifier-errors.ts(29,1+6)
// ERROR 1044: "'public' modifier cannot appear on a module or namespace element." in modifier-errors.ts(30,1+6)
// ERROR 1044: "'public' modifier cannot appear on a module or namespace element." in modifier-errors.ts(31,1+6)
// ERROR 1044: "'public' modifier cannot appear on a module or namespace element." in modifier-errors.ts(32,1+6)
// ERROR 1044: "'public' modifier cannot appear on a module or namespace element." in modifier-errors.ts(33,1+6)
// ERROR 1044: "'public' modifier cannot appear on a module or namespace element." in modifier-errors.ts(34,1+6)
// ERROR 1044: "'public' modifier cannot appear on a module or namespace element." in modifier-errors.ts(35,1+6)
// ERROR 1044: "'public' modifier cannot appear on a module or namespace element." in modifier-errors.ts(36,1+6)
// ERROR 1044: "'public' modifier cannot appear on a module or namespace element." in modifier-errors.ts(37,1+6)
// ERROR 1044: "'protected' modifier cannot appear on a module or namespace element." in modifier-errors.ts(38,1+9)
// ERROR 1044: "'protected' modifier cannot appear on a module or namespace element." in modifier-errors.ts(39,1+9)
// ERROR 1044: "'protected' modifier cannot appear on a module or namespace element." in modifier-errors.ts(40,1+9)
// ERROR 1044: "'protected' modifier cannot appear on a module or namespace element." in modifier-errors.ts(41,1+9)
// ERROR 1044: "'protected' modifier cannot appear on a module or namespace element." in modifier-errors.ts(42,1+9)
// ERROR 1044: "'protected' modifier cannot appear on a module or namespace element." in modifier-errors.ts(43,1+9)
// ERROR 1044: "'protected' modifier cannot appear on a module or namespace element." in modifier-errors.ts(44,1+9)
// ERROR 1044: "'protected' modifier cannot appear on a module or namespace element." in modifier-errors.ts(45,1+9)
// ERROR 1044: "'protected' modifier cannot appear on a module or namespace element." in modifier-errors.ts(46,1+9)
// ERROR 1044: "'protected' modifier cannot appear on a module or namespace element." in modifier-errors.ts(47,1+9)
// ERROR 1044: "'protected' modifier cannot appear on a module or namespace element." in modifier-errors.ts(48,1+9)
// ERROR 1044: "'protected' modifier cannot appear on a module or namespace element." in modifier-errors.ts(49,1+9)
// ERROR 1044: "'protected' modifier cannot appear on a module or namespace element." in modifier-errors.ts(50,1+9)
// ERROR 1044: "'private' modifier cannot appear on a module or namespace element." in modifier-errors.ts(51,1+7)
// ERROR 1044: "'private' modifier cannot appear on a module or namespace element." in modifier-errors.ts(52,1+7)
// ERROR 1044: "'private' modifier cannot appear on a module or namespace element." in modifier-errors.ts(53,1+7)
// ERROR 1044: "'private' modifier cannot appear on a module or namespace element." in modifier-errors.ts(54,1+7)
// ERROR 1044: "'private' modifier cannot appear on a module or namespace element." in modifier-errors.ts(55,1+7)
// ERROR 1044: "'private' modifier cannot appear on a module or namespace element." in modifier-errors.ts(56,1+7)
// ERROR 1044: "'private' modifier cannot appear on a module or namespace element." in modifier-errors.ts(57,1+7)
// ERROR 1044: "'private' modifier cannot appear on a module or namespace element." in modifier-errors.ts(58,1+7)
// ERROR 1044: "'private' modifier cannot appear on a module or namespace element." in modifier-errors.ts(59,1+7)
// ERROR 1044: "'private' modifier cannot appear on a module or namespace element." in modifier-errors.ts(60,1+7)
// ERROR 1044: "'private' modifier cannot appear on a module or namespace element." in modifier-errors.ts(61,1+7)
// ERROR 1044: "'private' modifier cannot appear on a module or namespace element." in modifier-errors.ts(62,1+7)
// ERROR 1044: "'private' modifier cannot appear on a module or namespace element." in modifier-errors.ts(63,1+7)
// ERROR 1030: "'static' modifier already seen." in modifier-errors.ts(67,10+6)
// ERROR 1029: "'static' modifier must precede 'readonly' modifier." in modifier-errors.ts(68,12+6)
// ERROR 1090: "'static' modifier cannot appear on a parameter." in modifier-errors.ts(69,15+6)
// ERROR 1243: "'static' modifier cannot be used with 'abstract' modifier." in modifier-errors.ts(72,12+6)
// ERROR 100: "Not implemented: Abstract fields" in modifier-errors.ts(72,19+1)
// ERROR 1243: "'static' modifier cannot be used with 'abstract' modifier." in modifier-errors.ts(73,10+8)
// ERROR 100: "Not implemented: Abstract fields" in modifier-errors.ts(73,19+1)
// ERROR 1044: "'static' modifier cannot appear on a module or namespace element." in modifier-errors.ts(75,1+6)
// ERROR 1044: "'static' modifier cannot appear on a module or namespace element." in modifier-errors.ts(76,1+6)
// ERROR 1044: "'static' modifier cannot appear on a module or namespace element." in modifier-errors.ts(77,1+6)
// ERROR 1044: "'static' modifier cannot appear on a module or namespace element." in modifier-errors.ts(78,1+6)
// ERROR 1044: "'static' modifier cannot appear on a module or namespace element." in modifier-errors.ts(79,1+6)
// ERROR 1044: "'static' modifier cannot appear on a module or namespace element." in modifier-errors.ts(80,1+6)
// ERROR 1044: "'static' modifier cannot appear on a module or namespace element." in modifier-errors.ts(81,1+6)
// ERROR 1044: "'static' modifier cannot appear on a module or namespace element." in modifier-errors.ts(82,1+6)
// ERROR 1044: "'static' modifier cannot appear on a module or namespace element." in modifier-errors.ts(83,1+6)
// ERROR 1044: "'static' modifier cannot appear on a module or namespace element." in modifier-errors.ts(84,1+6)
// ERROR 1044: "'static' modifier cannot appear on a module or namespace element." in modifier-errors.ts(85,1+6)
// ERROR 1044: "'static' modifier cannot appear on a module or namespace element." in modifier-errors.ts(86,1+6)
// ERROR 1044: "'static' modifier cannot appear on a module or namespace element." in modifier-errors.ts(87,1+6)
// ERROR 1030: "'readonly' modifier already seen." in modifier-errors.ts(90,12+8)
// ERROR 1024: "'readonly' modifier can only appear on a property declaration or index signature." in modifier-errors.ts(91,3+8)
// ERROR 1024: "'readonly' modifier can only appear on a property declaration or index signature." in modifier-errors.ts(92,3+8)
// ERROR 1024: "'readonly' modifier can only appear on a property declaration or index signature." in modifier-errors.ts(93,3+8)
// ERROR 1030: "'export' modifier already seen." in modifier-errors.ts(96,8+6)
// ERROR 1029: "'export' modifier must precede 'declare' modifier." in modifier-errors.ts(97,9+6)
// ERROR 1029: "'export' modifier must precede 'abstract' modifier." in modifier-errors.ts(98,10+6)
// ERROR 1031: "'export' modifier cannot appear on class elements of this kind." in modifier-errors.ts(100,3+6)
// ERROR 1031: "'export' modifier cannot appear on class elements of this kind." in modifier-errors.ts(101,3+6)
// ERROR 1031: "'export' modifier cannot appear on class elements of this kind." in modifier-errors.ts(102,3+6)
// ERROR 1031: "'export' modifier cannot appear on class elements of this kind." in modifier-errors.ts(103,3+6)
// ERROR 1090: "'export' modifier cannot appear on a parameter." in modifier-errors.ts(104,15+6)
// ERROR 1030: "'declare' modifier already seen." in modifier-errors.ts(108,9+7)
// ERROR 1090: "'declare' modifier cannot appear on a parameter." in modifier-errors.ts(110,15+7)
// ERROR 1030: "'abstract' modifier already seen." in modifier-errors.ts(114,10+8)
// ERROR 1242: "'abstract' modifier can only appear on a class, method, or property declaration." in modifier-errors.ts(115,1+8)
// ERROR 1242: "'abstract' modifier can only appear on a class, method, or property declaration." in modifier-errors.ts(116,1+8)
// ERROR 1242: "'abstract' modifier can only appear on a class, method, or property declaration." in modifier-errors.ts(117,1+8)
// ERROR 1242: "'abstract' modifier can only appear on a class, method, or property declaration." in modifier-errors.ts(118,1+8)
// ERROR 1242: "'abstract' modifier can only appear on a class, method, or property declaration." in modifier-errors.ts(119,1+8)
// ERROR 1242: "'abstract' modifier can only appear on a class, method, or property declaration." in modifier-errors.ts(120,1+8)
// ERROR 1242: "'abstract' modifier can only appear on a class, method, or property declaration." in modifier-errors.ts(121,1+8)
// ERROR 1242: "'abstract' modifier can only appear on a class, method, or property declaration." in modifier-errors.ts(122,1+8)
// ERROR 1242: "'abstract' modifier can only appear on a class, method, or property declaration." in modifier-errors.ts(123,1+8)
// ERROR 1242: "'abstract' modifier can only appear on a class, method, or property declaration." in modifier-errors.ts(124,1+8)
// ERROR 1242: "'abstract' modifier can only appear on a class, method, or property declaration." in modifier-errors.ts(125,1+8)
// ERROR 1242: "'abstract' modifier can only appear on a class, method, or property declaration." in modifier-errors.ts(126,1+8)
// ERROR 1243: "'static' modifier cannot be used with 'abstract' modifier." in modifier-errors.ts(128,12+6)
// ERROR 100: "Not implemented: Abstract fields" in modifier-errors.ts(108,1+7)
// ERROR 1243: "'private' modifier cannot be used with 'abstract' modifier." in modifier-errors.ts(129,12+7)
// ERROR 100: "Not implemented: Abstract fields" in modifier-errors.ts(108,1+7)
// ERROR 1242: "'abstract' modifier can only appear on a class, method, or property declaration." in modifier-errors.ts(130,15+8)
// ERROR 1089: "'static' modifier cannot appear on a constructor declaration." in modifier-errors.ts(135,3+6)
// ERROR 1024: "'readonly' modifier can only appear on a property declaration or index signature." in modifier-errors.ts(138,3+8)
// ERROR 1089: "'abstract' modifier cannot appear on a constructor declaration." in modifier-errors.ts(141,3+8)
