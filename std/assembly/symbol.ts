import { Map } from "./map";

// @ts-ignore: decorator
@lazy var stringToId: Map<string, usize>;

// @ts-ignore: decorator
@lazy var idToString: Map<usize, string>;

// @ts-ignore: decorator
@lazy var nextId: usize = 12; // Symbol.unscopables + 1

@unmanaged @final abstract class _Symbol {

  // TODO: all of the following default symbols are unused currently yet add to
  // binary size if #toString becomes compiled. Ultimately we'll most likely want
  // to remove the unsupported ones and only keep what's actually supported.

  // @ts-ignore: decorator
  @lazy
  static readonly hasInstance: symbol = changetype<symbol>(1);

  // @ts-ignore: decorator
  @lazy
  static readonly isConcatSpreadable: symbol = changetype<symbol>(2);

  // @ts-ignore: decorator
  @lazy
  static readonly isRegExp: symbol = changetype<symbol>(3);

  // @ts-ignore: decorator
  @lazy
  static readonly iterator: symbol = changetype<symbol>(3);

  // @ts-ignore: decorator
  @lazy
  static readonly match: symbol = changetype<symbol>(4);

  // @ts-ignore: decorator
  @lazy
  static readonly replace: symbol = changetype<symbol>(5);

  // @ts-ignore: decorator
  @lazy
  static readonly search: symbol = changetype<symbol>(6);

  // @ts-ignore: decorator
  @lazy
  static readonly species: symbol = changetype<symbol>(7);

  // @ts-ignore: decorator
  @lazy
  static readonly split: symbol = changetype<symbol>(8);

  // @ts-ignore: decorator
  @lazy
  static readonly toPrimitive: symbol = changetype<symbol>(9);

  // @ts-ignore: decorator
  @lazy
  static readonly toStringTag: symbol = changetype<symbol>(10);

  // @ts-ignore: decorator
  @lazy
  static readonly unscopables: symbol = changetype<symbol>(11);

  static for(key: string): symbol {
    if (!stringToId) { stringToId = new Map(); idToString = new Map(); }
    else if (stringToId.has(key)) return changetype<symbol>(stringToId.get(key));
    var id = nextId++;
    if (!id) unreachable(); // out of ids
    stringToId.set(key, id);
    idToString.set(id, key);
    return changetype<symbol>(id);
  }

  static keyFor(sym: symbol): string | null {
    return idToString !== null && idToString.has(changetype<usize>(sym))
      ? idToString.get(changetype<usize>(sym))
      : null;
  }

  toString(): string {
    var id = changetype<usize>(this);
    var str = "";
    switch (<u32>id) {
      case 1:  { str = "hasInstance"; break; }
      case 2:  { str = "isConcatSpreadable"; break; }
      case 3:  { str = "isRegExp"; break; }
      case 4:  { str = "match"; break; }
      case 5:  { str = "replace"; break; }
      case 6:  { str = "search"; break; }
      case 7:  { str = "species"; break; }
      case 8:  { str = "split"; break; }
      case 9:  { str = "toPrimitive"; break; }
      case 10: { str = "toStringTag"; break; }
      case 11: { str = "unscopables"; break; }
      default: {
        if (idToString !== null && idToString.has(id)) str = idToString.get(id);
        break;
      }
    }
    return "Symbol(" + str + ")";
  }
}

export function Symbol(description: string | null = null): symbol {
  var id = nextId++;
  if (!id) unreachable(); // out of ids
  return changetype<symbol>(id);
}

export type Symbol = _Symbol;

// @ts-ignore: nolib
export type symbol = _Symbol;
