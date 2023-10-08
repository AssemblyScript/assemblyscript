class A {
  @operator("==") __eq(other: B): bool {
    return true;
  }
}
class B {
  @operator("==") __eq(other: A): bool {
    return true;
  }
}
export function compare_nonnull(compare_nonnull_a: A, compare_nonnull_b: B): void {
  compare_nonnull_a == compare_nonnull_b;
  compare_nonnull_b == compare_nonnull_a;
}

class C {
  @operator("==") static __eq(self: C | null, other: D | null): bool {
    return true;
  }
}
class D {
  @operator("==") __eq(other: i32): bool {
    return true;
  }
}
export function compare_null(compare_nonnull_c: C | null, compare_nonnull_d: D | null): void {
  compare_nonnull_c == compare_nonnull_d;
}

class PA extends A {}
class PB extends B {}
export function compare_extend(compare_extend_1: PA, compare_extend_2: PB): void {
  compare_extend_1 == compare_extend_2;
}

export function end(): void {
  ERROR("EOF");
}
