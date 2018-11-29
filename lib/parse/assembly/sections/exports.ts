

export class Export {
  name: String;

  constructor(public index: u32, public kind: u32, public kindIndex: u32, public nameOffset: u32, nameLength: u32){
    this.name = String.fromUTF8(nameOffset, nameLength);

  }
}

export function onExport(index: u32, kind: u32, kindIndex: u32, nameOffset: u32, nameLength: u32): Export {
  return new Export(index, kind, kindIndex, nameOffset, nameLength);
}
