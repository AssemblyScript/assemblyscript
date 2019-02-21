import "allocator/arena";
import "collector/itcm";

class Base {
}

class Custom extends Base {
  a: Custom;
  b: Base;
}

var obj: Custom | null = new Custom();

gc.collect();

obj.a = <Custom>obj;

gc.collect();

obj = null;

gc.collect();

@start
export function main(): void {}
