// @ts-ignore: decorators
@lazy
let CURRENT_COOKIE: u32 = 0;

// @ts-ignore: decorators
@lazy
let PREVIOUS_FINALIZER: i32 = 0;

// @ts-ignore: decorators
@lazy
let INITIALIZED: boolean = false;

// @ts-ignore: decorators
@lazy
let ALL_REGISTRIES: BaseRegistry | null = null;

abstract class BaseRegistry {
  private next: BaseRegistry | null;

  constructor() {
    this.next = ALL_REGISTRIES;
    ALL_REGISTRIES = this;
  }

  static finalizeAll(ptr: usize): void {
    for (let i = ALL_REGISTRIES; i !== null; i = i.next) {
      i.finalize(ptr);
    }

    if (PREVIOUS_FINALIZER) {
      call_indirect<void>(PREVIOUS_FINALIZER, ptr);
    }
  }

  protected abstract finalize(ptr: usize): void;
}

export class FinalizationRegistry<T> extends BaseRegistry {
  private entries: Map<usize, T> = new Map<usize, T>();

  constructor(private finalizer: (heldValue: T) => void) {
    super();

    if (!INITIALIZED) {
      PREVIOUS_FINALIZER = __finalize;
      __finalize = BaseRegistry.finalizeAll.index;
      INITIALIZED = true;
    }
  }

  register<U>(key: U, value: T): void {
    this.entries.set(changetype<usize>(key), value);
  }

  unregister<U>(key: U): bool {
    return this.entries.delete(changetype<usize>(key));
  }

  protected finalize(ptr: usize): void {
    if (this.entries.has(ptr)) {
      const value = this.entries.get(ptr);
      this.entries.delete(ptr);

      this.finalizer(value);
    }
  }
}
