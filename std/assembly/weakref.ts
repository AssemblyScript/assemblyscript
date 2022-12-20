// @ts-ignore: decorators
@lazy
const ALL_REFERENCES: Map<usize, u32> = new Map<usize, u32>();

// @ts-ignore: decorators
@lazy
let CURRENT_COOKIE: u32 = 0;

// @ts-ignore: decorators
@lazy
let PREVIOUS_FINALIZER: i32 = 0;

// @ts-ignore: decorators
@lazy
let INITIALIZED: boolean = false;

export class WeakRef<T> {
  private ref: usize;
  private cookie: u32;

  constructor(value: T) {
    assert(isReference<T>() && !isNullable<T>());

    if (!INITIALIZED) {
      PREVIOUS_FINALIZER = __finalize;
      __finalize = WeakRef.finalize.index;
      INITIALIZED = true;
    }

    const ref = changetype<usize>(value);
    const cookie = CURRENT_COOKIE;
    ALL_REFERENCES.set(ref, cookie);

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

  static finalize(ptr: usize): void {
    if (ALL_REFERENCES.delete(ptr)) {
      ++CURRENT_COOKIE;
    }

    if (PREVIOUS_FINALIZER) {
      call_indirect<void>(PREVIOUS_FINALIZER, ptr);
    }
  }
}
