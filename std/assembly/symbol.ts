import { Map } from "./map";

@lazy var stringToId: Map<string, usize>;
@lazy var idToString: Map<usize, string>;
@lazy var nextId: usize = 12; // Symbol.unscopables + 1

@unmanaged export class symbol {
  toString(): string {
    var id = changetype<usize>(this);
    var str = "";
    switch (id) {
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

export namespace Symbol {

  // well-known symbols
  @lazy export const hasInstance        = changetype<symbol>(1);
  @lazy export const isConcatSpreadable = changetype<symbol>(2);
  @lazy export const isRegExp           = changetype<symbol>(3);
  @lazy export const iterator           = changetype<symbol>(3);
  @lazy export const match              = changetype<symbol>(4);
  @lazy export const replace            = changetype<symbol>(5);
  @lazy export const search             = changetype<symbol>(6);
  @lazy export const species            = changetype<symbol>(7);
  @lazy export const split              = changetype<symbol>(8);
  @lazy export const toPrimitive        = changetype<symbol>(9);
  @lazy export const toStringTag        = changetype<symbol>(10);
  @lazy export const unscopables        = changetype<symbol>(11);

  /* tslint:disable */// not valid TS
  export function for(key: string): symbol {
    if (!stringToId) { stringToId = new Map(); idToString = new Map(); }
    else if (stringToId.has(key)) return changetype<symbol>(stringToId.get(key));
    var id = nextId++;
    if (!id) unreachable(); // out of ids
    stringToId.set(key, id);
    idToString.set(id, key);
    return changetype<symbol>(id);
  }
  /* tslint:enable */

  export function keyFor(sym: symbol): string | null {
    return idToString !== null && idToString.has(changetype<usize>(sym))
      ? idToString.get(changetype<usize>(sym))
      : null;
  }
}
