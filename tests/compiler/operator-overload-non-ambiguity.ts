class Base {
  @operator("==") __eq(other: Base): bool {
    return true;
  }
}

class P1 extends Base {}
class P2 extends Base {}

export function compare_extends(v1: P1, v2: P2): void {
  v1 == v2;
}
