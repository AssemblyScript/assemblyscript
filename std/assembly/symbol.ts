import { Map } from "./map";

var stringToId: Map<string, usize>;
var idToString: Map<usize, string>;
var nextId: usize = 12; // Symbol.unscopables + 1

@unmanaged export class symbol {}

type Symbol = symbol;

export function Symbol(description: string | null = null): symbol {
  var id = nextId++;
  if (!id) unreachable(); // out of ids
  return changetype<symbol>(id);
}

export namespace Symbol {

  // well-known symbols
  export const hasInstance      = changetype<symbol>(1);
  export const concatSpreadable = changetype<symbol>(2);
  export const isRegExp         = changetype<symbol>(3);
  export const iterator         = changetype<symbol>(3);
  export const match            = changetype<symbol>(4);
  export const replace          = changetype<symbol>(5);
  export const search           = changetype<symbol>(6);
  export const species          = changetype<symbol>(7);
  export const split            = changetype<symbol>(8);
  export const toPrimitive      = changetype<symbol>(9);
  export const toStringTag      = changetype<symbol>(10);
  export const unscopables      = changetype<symbol>(11);

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
