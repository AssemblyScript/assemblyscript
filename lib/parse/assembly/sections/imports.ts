

export class Import {

  constructor(public index: u32, public kind: u32, public moduleOff: u32, public moduleLen: u32, public fieldOff: u32, public fieldLen: u32){}
}

export function onImport(index: u32, kind: u32, moduleOff: u32, moduleLen: u32, fieldOff: u32, fieldLen: u32): Import {
  return new Import(index, kind, moduleOff, moduleLen, fieldOff, fieldLen);
}
