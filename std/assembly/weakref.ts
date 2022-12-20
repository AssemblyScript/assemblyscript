// @ts-ignore: decorators
@lazy
const ALL_REFERENCES: Map<usize, u32> = new Map<usize, u32>();

// @ts-ignore: decorators
@lazy
let CURRENT_COOKIE: u32 = 0;

// @ts-ignore: decorators
@lazy
const REGISTRY: FinalizationRegistry<usize> = new FinalizationRegistry<usize>(
  (ptr: usize) => {
    if (ALL_REFERENCES.delete(ptr)) {
      // The memory block could be reused by the allocator after this point
      ++CURRENT_COOKIE;
    }
  }
);

export class WeakRef<T> {
  private ref: usize;
  private cookie: u32;

  constructor(value: T) {
    assert(isReference<T>() && !isNullable<T>());

    const ref = changetype<usize>(value);
    const cookie = CURRENT_COOKIE;
    ALL_REFERENCES.set(ref, cookie);
    REGISTRY.register(ref, ref);

    this.ref = ref;
    this.cookie = cookie;
  }

  deref(): T | null {
    const ref = this.ref;
    if (ALL_REFERENCES.has(ref) && ALL_REFERENCES.get(ref) === this.cookie) {
      return changetype<T>(ref);
    } else {
      return null;
    }
  }
}
