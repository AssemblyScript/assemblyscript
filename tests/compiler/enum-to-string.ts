enum Enum {
  E0,
  E1,
  E2,
}

assert(Enum[Enum.E0] === "E0");
assert(Enum[Enum.E1] === "E1");
assert(Enum[Enum.E2] === "E2");

let v = Enum.E2;
assert(Enum[v] === "E2");

@inline
enum InlineEnum {
  CE0,
  CE1,
  CE2,
}

assert(InlineEnum[InlineEnum.CE0] === "CE0");
assert(InlineEnum[InlineEnum.CE1] === "CE1");
assert(InlineEnum[InlineEnum.CE2] === "CE2");

enum EnumWithInit {
  E0 = 1,
  E1 = 2,
  E2 = 4,
}

assert(EnumWithInit[EnumWithInit.E0] === "E0");
assert(EnumWithInit[EnumWithInit.E1] === "E1");
assert(EnumWithInit[EnumWithInit.E2] === "E2");

enum EnumWithDup {
  E0 = 1,
  E1 = 2,
  E2 = 1,
}

assert(EnumWithDup[EnumWithDup.E0] === "E2");
assert(EnumWithDup[EnumWithDup.E1] === "E1");
assert(EnumWithDup[EnumWithDup.E2] === "E2");
