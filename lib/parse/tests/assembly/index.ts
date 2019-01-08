import {log} from "../../assembly/host";
import "allocator/arena";
export {memory}


let str = "This is a string";
export function startUp(): void{
  str = "Now the string has changed."
  log(str);
}


export function overwrite(): void{
  i32.store(changetype<i32>(str) + 2, 0)
  i32.store(changetype<i32>(str) + 3, 0)
  i32.store(changetype<i32>(str) + 4, 0)
  log(str);
}

export function getStr(): string {
  return str;
}
