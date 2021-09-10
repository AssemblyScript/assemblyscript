// see: https://github.com/AssemblyScript/assemblyscript/issues/2006

class NoStaticConflict {
  a: string[] = [];
  static a(v: NoStaticConflict): void {}
}
function testNoStaticConflict(): void {
  var inst = new NoStaticConflict();
  NoStaticConflict.a(inst);
}
testNoStaticConflict();

__collect();
