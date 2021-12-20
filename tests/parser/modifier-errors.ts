// override?
// visibility
class A {
  public public a: void;
  protected public b: void;
  private public c: void;
  static public d: void;
  readonly public e: void;
  public protected f: void;
  protected protected g: void;
  private protected h: void;
  static protected i: void;
  readonly protected j: void;
  public private k: void;
  protected private l: void;
  private private m: void;
  static private n: void;
  readonly private o: void;
}
abstract class B {
  abstract public a: void;
  abstract protected b: void;
  abstract private c: void;
}
public var a = 1;
public let b = 1;
public const c = 1;
public const enum C {}
public enum D {}
public function d(): void {}
public class E {}
public interface F {}
public namespace G {}
public type H = null;
public export default e;
public export { f };
protected var g = 1;
protected let h = 1;
protected const i = 1;
protected const enum I {}
protected enum J {}
protected function j(): void {}
protected class K {}
protected interface L {}
protected namespace M {}
protected type N = null;
protected export default k;
protected export { l };
private var m = 1;
private let n = 1;
private const o = 1;
private const enum O {}
private enum P {}
private function p(): void {}
private class Q {}
private interface R {}
private namespace S {}
private type T = null;
private export default q;
private export { r };
// private identifier?
// static
class U {
  static static a: void;
  readonly static b: void;
  constructor(static c: void) {}
}
abstract class V {
  abstract static a: void;
  static abstract b: void;
}
static var s = 1;
static let t = 1;
static const u = 1;
static const enum W {}
static enum X {}
static function v(): void {}
static class Y {}
static interface Z {}
static namespace AB {}
static type BB = null;
static export default w;
static export { x };
// readonly
class CB {
  readonly readonly a: void;
  readonly get b(): boolean { return false; }
  readonly set c(d: void) {}
  readonly e(): void {}
}
readonly var y = 1;
readonly let z = 1;
readonly const ab = 1;
readonly const enum DB {}
readonly enum EB {}
readonly function bb(): void {}
readonly class FB {}
readonly interface GB {}
readonly namespace HB {}
readonly type IB = null;
readonly export default cb;
readonly export { db };
// export
export export class JB {}
declare export class KB {}
abstract export class LB {}
class MB {
  export a: void;
  export get b(): boolean { return false; }
  export set c(d: void) {}
  export e(): void {}
  constructor(export f: void) {}
}
// default?
// declare
declare declare class NB {}
class OB {
  constructor(declare a: void) {}
}
// private identifier?
// abstract
abstract abstract class PB {}
abstract var eb = 1;
abstract let fb = 1;
abstract const gb = 1;
abstract const enum QB {}
abstract enum RB {}
abstract function hb(): void {}
abstract interface SB {}
abstract namespace TB {}
abstract type UB = null;
abstract export default ib;
abstract export { jb };
abstract class VB {
  abstract static a: void;
  abstract private b: void;
  constructor(abstract c: void) {}
}
// private identifier?
// async?
class WB {
  static constructor() {}
}
class XB {
  readonly constructor() {}
}
abstract class YB {
  abstract constructor();
}
declare import kb from "";
export if (true) {}
export while (true) {}
