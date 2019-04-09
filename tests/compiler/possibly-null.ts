class Ref {}

// the following makes use of the fact that branches that can be eliminated statically
// won't become compiled, hence the ERROR statement is never executed.

export function testTrue(a: Ref | null): void {
  if (a) {
    if (isNullable(a)) ERROR("should be non-nullable");
  }
}

export function testFalseElse(a: Ref | null): void {
  if (!a) return;
  else {
    if (isNullable(a)) ERROR("should be non-nullable");
  }
}

export function testFalseContinuation(a: Ref | null): void {
  if (!a) return;
  if (isNullable(a)) ERROR("should be non-nullable");
}

export function testNeNull(a: Ref | null): void {
  if (a != null) {
    if (isNullable(a)) ERROR("should be non-nullable");
  }
}

export function testEqNullElse(a: Ref | null): void {
  if (a == null) return;
  else {
    if (isNullable(a)) ERROR("should be non-nullable");
  }
}

export function testEqNullContinuation(a: Ref | null): void {
  if (a == null) return;
  if (isNullable(a)) ERROR("should be non-nullable");
}

export function testNotEqNull(a: Ref | null): void {
  if (!(a == null)) {
    if (isNullable(a)) ERROR("should be non-nullable");
  }
}

export function testNotNeNullElse(a: Ref | null): void {
  if (!(a != null)) return;
  else {
    if (isNullable(a)) ERROR("should be non-nullable");
  }
}

export function testNotNeNullContinuation(a: Ref | null): void {
  if (!(a != null)) return;
  if (isNullable(a)) ERROR("should be non-nullable");
}

export function testWhile(a: Ref | null): void {
  while (a) {
    if (isNullable(a)) ERROR("should be non-nullable");
    a = null;
    if (!isNullable(a)) ERROR("should be nullable again");
  }
}

export function testWhile2(a: Ref | null, b: Ref | null): void {
  while (a) {
    if (isNullable(a)) ERROR("should be non-nullable");
    a = b;
    if (!isNullable(a)) ERROR("should be nullable again");
  }
}

export function testWhile3(a: Ref | null, b: Ref | null): void {
  while (a) {
    if (isNullable(a)) ERROR("should be non-nullable");
    if (b) {
      a = b;
      if (isNullable(a)) ERROR("should be non-nullable still");
    }
  }
}

function requireNonNull(a: Ref): Ref {
  return a;
}

export function testLogicalAnd(a: Ref | null): void {
  a && requireNonNull(a);
}

export function testLogicalOr(a: Ref | null): void {
  !a || requireNonNull(a) != null;
}

export function testLogicalAndMulti(a: Ref | null, b: Ref | null): void {
  if (a && b) {
    if (isNullable(a)) ERROR("should be non-nullable");
    if (isNullable(b)) ERROR("should be non-nullable");
  } else {
    if (!isNullable(a)) ERROR("should be nullable");
    if (!isNullable(b)) ERROR("should be nullable");
  }
}

export function testLogicalOrMulti(a: Ref | null, b: Ref | null): void {
  if (!a || !b) {
    if (!isNullable(a)) ERROR("should be nullable");
    if (!isNullable(b)) ERROR("should be nullable");
  } else {
    if (isNullable(a)) ERROR("should be non-nullable");
    if (isNullable(b)) ERROR("should be non-nullable");
  }
}

export function testAssign(a: Ref | null, b: Ref): void {
  a = b;
  if (isNullable(a)) ERROR("should be non-nullable");
}

export function testNeverNull(a: Ref | null): void {
  if (a) {
    a!; // INFO AS225: Expression is never 'null'.
  }
}
