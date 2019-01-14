
import * as asc from "../cli/asc";
import * as assert from "assert";
import * as loader from "../lib/loader";

let source =`
let x = 42;
let y = x + x;

export function getY(): i32 {
  return y;
}
`;
async function main() {
  let mod = await asc.compileString(source)
  if (mod.stderr) console.log(mod.stderr.toString())
  assert(mod.binary);
  let instance: any = loader.instantiateBuffer(mod.binary);
  assert(instance.getY()==84);

}

main();
