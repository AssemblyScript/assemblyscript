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
public const enum C {};
public enum D {};
public function d(): void {};
public class E {};
public interface F {};
public namespace G {};
public import e from "";
public type H = null;
public export default f;
public export { g };
protected var h = 1;
protected let i = 1;
protected const j = 1;
protected const enum I {};
protected enum J {};
protected function k(): void {};
protected class K {};
protected interface L {};
protected namespace M {};
protected import l from "";
protected type N = null;
protected export default m;
protected export { n };
private var o = 1;
private let p = 1;
private const q = 1;
private const enum O {};
private enum P {};
private function r(): void {};
private class Q {};
private interface R {};
private namespace S {};
private import s from "";
private type T = null;
private export default t;
private export { u };
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
static var v = 1;
static let w = 1;
static const x = 1;
static const enum W {};
static enum X {};
static function y(): void {};
static class Y {};
static interface Z {};
static namespace AB {};
static import z from "";
static type BB = null;
static export default ab;
static export { bb };
// readonly
class CB {
  readonly readonly a: void;
  readonly get b(): boolean { return false; }
  readonly set c(d: void) {}
  readonly e(): void {}
}
// export
export export class DB {};
declare export class EB {};
abstract export class FB {};
class GB {
  export a: void;
  export get b(): boolean { return false; }
  export set c(d: void) {}
  export e(): void {}
  constructor(export f: void) {}
}
// default?
// declare
declare declare class HB {};
class IB {
  constructor(declare a: void) {}
}
// private identifier?
// abstract
abstract abstract class JB {};
abstract var cb = 1;
abstract let db = 1;
abstract const eb = 1;
abstract const enum KB {};
abstract enum LB {};
abstract function fb(): void {};
abstract interface MB {};
abstract namespace NB {};
abstract import gb from "";
abstract type OB = null;
abstract export default hb;
abstract export { ib };
abstract class PB {
  abstract static a: void;
  abstract private b: void;
  constructor(abstract c: void) {}
}
// private identifier?
// async?
class QB {
  static constructor() {}
}
class RB {
  readonly constructor() {}
}
abstract class SB {
  abstract constructor();
}
declare import jb from "";
