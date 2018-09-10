import "allocator/atomic";

var threadId: i32;

export function setId(id: i32): void {
  threadId = id;
}

export function getId(): i32 {
  return threadId;
}

class Obj {
  constructor(public id: i32, public name: string) {}
}

export function _alloc(id: i32, name: string): Obj {
  return new Obj(id, name);
}
