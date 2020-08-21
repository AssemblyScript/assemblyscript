namespace Namespace {
  export const member = 1;
  @lazy export const lazyMember = 11;
}

assert(
  (Namespace.member).toString()
  ==
  "1"
);

assert(
  (Namespace.lazyMember).toString()
  ==
  "11"
);

function MergedNamespace(): i32 { return 0; }
namespace MergedNamespace {
  export const member = 2;
  @lazy export const lazyMember = 22;
}

assert(
  (MergedNamespace.member).toString()
  ==
  "2"
);

assert(
  (MergedNamespace.lazyMember).toString()
  ==
  "22"
);

namespace TypedNamespace {
  export const member = 3;
  @lazy export const lazyMember = 33;
}
type TypedNamespace = string;

assert(
  (TypedNamespace.member).toString()
  ==
  "3"
);

assert(
  (TypedNamespace.lazyMember).toString()
  ==
  "33"
);

enum Enum {
  VALUE = 4
}

assert(
  (Enum.VALUE).toString()
  ==
  "4"
);

class Class {
  static staticField: i32 = 5;
  @lazy static lazyStaticField: i32 = 55;
  instanceField: i32 = 6;
  static get staticProperty(): i32 { return 7; }
  get instanceProperty(): i32 { return 8; }
}

assert(
  (Class.staticField).toString()
  ==
  "5"
);

assert(
  (Class.lazyStaticField).toString()
  ==
  "55"
);

assert(
  (Class.staticProperty).toString()
  ==
  "7"
);

{
  let instance = new Class();
  assert(
    (instance.instanceField).toString()
    ==
    "6"
  );
  assert(
    (instance.instanceProperty).toString()
    ==
    "8"
  );
}
