class Ref {
  get ref(): Ref { return this; }
}

var ref: Ref;
ref = new Ref();
ref = new Ref;
ref = new Ref().ref;

class Gen<T> {
  get gen(): Gen<T> { return this; }
}

var gen: Gen<i32>;
gen = new Gen();
gen = new Gen<i32>();
gen = new Gen<i32>().gen;

namespace ns {
  export class Ref {
    get ref(): Ref { return this; }
  }
}

var ref2: ns.Ref;
ref2 = new ns.Ref();
ref2 = new ns.Ref;
ref2 = new ns.Ref().ref;

class GenExt extends Gen<i32> {
}

var genext = new GenExt();
var genext2: GenExt = new GenExt();
var genext3: Gen<i32> = new GenExt();
