class Ref {}

declare function getBool(): bool;
function notNullable(a: Ref): void {}

// "TS2322: Type 'nullable/Ref | null' is not assignable to type 'nullable/Ref'.",
notNullable(null);

export function testAssign(v: Ref | null): void {
  if (v != null) {
    v = null;
    // "TS2322: Type 'nullable/Ref | null' is not assignable to type 'nullable/Ref'.",
    notNullable(v);
  }
}
export function testAssignLogicAnd(v: Ref | null): void {
  if (v != null) {
    getBool() && (v = null);
    // "TS2322: Type 'nullable/Ref | null' is not assignable to type 'nullable/Ref'.",
    notNullable(v);
  }
}
export function testAssignLogicOr(v: Ref | null): void {
  if (v != null) {
    getBool() || (v = null);
    // "TS2322: Type 'nullable/Ref | null' is not assignable to type 'nullable/Ref'.",
    notNullable(v);
  }
}

export function testAssignInCondiLogicAnd(v: Ref | null): void {
  if (getBool() && !(v = null)) {
    // "TS2322: Type 'nullable/Ref | null' is not assignable to type 'nullable/Ref'.",
    notNullable(v);
  } else {
    // "TS2322: Type 'nullable/Ref | null' is not assignable to type 'nullable/Ref'.",
    notNullable(v);
  }
  if (getBool() && (v = null)) {
  } else {
    // "TS2322: Type 'nullable/Ref | null' is not assignable to type 'nullable/Ref'.",
    notNullable(v);
  }
}
export function testAssignInCondiLogicOr(v: Ref | null): void {
  if (getBool() || (v = null)) {
    // "TS2322: Type 'nullable/Ref | null' is not assignable to type 'nullable/Ref'.",
    notNullable(v);
  } else {
    // "TS2322: Type 'nullable/Ref | null' is not assignable to type 'nullable/Ref'.",
    notNullable(v);
  }
  if (getBool() || !(v = null)) {
    // "TS2322: Type 'nullable/Ref | null' is not assignable to type 'nullable/Ref'.",
    notNullable(v);
  }
}
