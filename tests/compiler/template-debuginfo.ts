class AA {
  length: i32 = 1;
}

function testFoo<T>(v: T): i32 {
  if (isNullable(v) && v == null) {
    return 1;
  }
  if (v instanceof AA) {
    if (v.length > 10) {
      return 2;
    } else {
      return 3;
    }
  }
}

export function testExport(): void {
  testFoo<AA | null>(null);
  const a = new AA();
  testFoo(a);
}


