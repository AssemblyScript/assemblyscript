namespace Namespace {
  export const member = 1;
}

assert(
  (Namespace.member).toString()
  ==
  "1"
);

function MergedNamespace(): i32 { return 0; }
namespace MergedNamespace {
  export const member = 2;
}

assert(
  (MergedNamespace.member).toString()
  ==
  "2"
);

namespace TypedNamespace {
  export const member = 3;
}
type TypedNamespace = string;

assert(
  (TypedNamespace.member).toString()
  ==
  "3"
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
  instanceField: i32 = 6;
}

assert(
  (Class.staticField).toString()
  ==
  "5"
);

{
  let instance = new Class();
  assert(
    (instance.instanceField).toString()
    ==
    "6"
  );
}
