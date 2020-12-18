export function returnObj(): string {
  return "1";
}

var r = returnObj();
assert(__returnee == changetype<usize>(r));

class Bar {}

export class Foo extends Bar {
  returnObj(): string {
    return "3";
  }
  get getObj(): string {
    return "2";
  }
}

var foo = new Foo();
assert(__returnee == changetype<usize>(foo));
r = foo.returnObj();
assert(__returnee == changetype<usize>(r));
r = foo.getObj;
assert(__returnee == changetype<usize>(r));
