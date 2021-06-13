// this test skips rtrace because of an unavoidable memory leak

declare function putint(i: i32): void;
class TestIterator {
  next(): i32 {
    return ++this.index;
  }
  done(): bool {
    return this.index == 3;
  }
  index: i32 = 0
}
class TestIterable {
  @iterator
  private iter(): TestIterator {
    return new TestIterator();
  }
}
function test(): void {
  let sum = 0;
  // @ts-ignore
  for (let a of new TestIterable()) {
    sum += a;
  }

  assert(sum == 6);
}
test();