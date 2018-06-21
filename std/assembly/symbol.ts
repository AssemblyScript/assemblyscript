import { Map } from "./map";

var nextId: usize = 1;
var stringToId: Map<string, usize>;
var idToString: Map<usize, string>;

export class Symbol {

  static for(key: string): Symbol {
    if (!stringToId) { stringToId = new Map(); idToString = new Map(); }
    else if (stringToId.has(key)) return changetype<Symbol>(stringToId.get(key));
    var id = nextId++;
    stringToId.set(key, id);
    idToString.set(id, key);
    return changetype<Symbol>(id);
  }

  static keyFor(sym: Symbol): string | null {
    return idToString !== null && idToString.has(changetype<usize>(sym))
      ? idToString.get(changetype<usize>(sym))
      : null;
  }

  constructor(description: string | null = null) {
    return changetype<Symbol>(nextId++);
  }
}
