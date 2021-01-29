var expect: usize = 0;
var ran = false;

// @ts-ignore
@global function __finalize(ptr: usize): void {
  assert(ptr == expect);
  ran = true;
}

class Ref {}
expect = changetype<usize>(new Ref());
__collect();
assert(ran);
