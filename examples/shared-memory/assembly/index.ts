import "allocator/arena";

let str: string = "ABCDEFG";

declare const id: i32;

export function getId(): i32 {
  return id;
}

export function read(): string {
  return str;
}

export function talk(): string {
  let _id = "";
  switch (id) {
    case 1: _id = "1";
    break;
    case 2: _id = "2";
    break;
  }
  return "From WASM " + _id + "-> " + str;
}
