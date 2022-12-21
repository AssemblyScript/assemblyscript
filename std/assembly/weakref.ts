// @ts-ignore: decorators
@lazy const COOKIE_FOR_REFERENCE: Map<usize, u32> = new Map<usize, u32>();

// @ts-ignore: decorators
@lazy let CURRENT_COOKIE: u32 = 0;

// @ts-ignore: decorators
@lazy const REGISTRY: FinalizationRegistry<usize> = new FinalizationRegistry<usize>(
  (ptr: usize) => {
    if (COOKIE_FOR_REFERENCE.delete(ptr)) {
      // The memory block could be reused by the allocator after this point
      ++CURRENT_COOKIE;
    }
  }
);

export class WeakRef<T> {
  private ref: usize;
  private cookie: u32;

  constructor(value: T) {
    if(!isManaged<T>()) { ERROR("invalid target"); }

    this.ref = changetype<usize>(value);

    if (COOKIE_FOR_REFERENCE.has(this.ref)) {
      this.cookie = COOKIE_FOR_REFERENCE.get(this.ref);
    } else {
      this.cookie = CURRENT_COOKIE;
      COOKIE_FOR_REFERENCE.set(this.ref, this.cookie);
      REGISTRY.register(value, this.ref, value);
    }
  }

  deref(): T | null {
    const ref = this.ref;
    if (
      COOKIE_FOR_REFERENCE.has(ref)
      && COOKIE_FOR_REFERENCE.get(ref) === this.cookie
    ) {
      return changetype<T>(ref);
    } else {
      return null;
    }
  }
}
