// @ts-ignore: decorators
@lazy let PREVIOUS_FINALIZER: i32 = 0;

// @ts-ignore: decorators
@lazy let INITIALIZED: boolean = false;

// @ts-ignore: decorators
@lazy const ENTRIES_FOR_PTR: Map<usize, FinalizationEntry> = new Map<usize, FinalizationEntry>();

// @ts-ignore: decorators
@lazy let ENTRY_POOL: FinalizationEntry | null = null;

class FinalizationEntry {
  next: FinalizationEntry | null = null;

  private constructor(
    public registry: BaseRegistry,
    public token: usize,
  ) {
  }

  // @ts-ignore: decorators
  @inline
  static alloc(registry: BaseRegistry, token: usize): FinalizationEntry {
    const instance: FinalizationEntry | null = ENTRY_POOL;
    if (instance === null) {
      return new FinalizationEntry(registry, token);
    } else {
      ENTRY_POOL = instance.next;
      instance.registry = registry;
      instance.token = token;
      return instance;
    }
  }

  // @ts-ignore: decorators
  @inline
  static recycle(entry: FinalizationEntry): void {
    entry.next = ENTRY_POOL;
    ENTRY_POOL = entry;
  }
}

abstract class BaseRegistry {
  static finalizeAll(ptr: usize): void {
    if (!ENTRIES_FOR_PTR.has(ptr)) { return; }

    const entries = ENTRIES_FOR_PTR.get(ptr);

    for (
      let i: FinalizationEntry | null = entries;
      i !== null;
    ) {
      i.registry.finalize(i.token);
      const next: FinalizationEntry | null = i.next;
      FinalizationEntry.recycle(i);
      i = next;
    }

    ENTRIES_FOR_PTR.delete(ptr);

    if (PREVIOUS_FINALIZER) {
      call_indirect<void>(PREVIOUS_FINALIZER, ptr);
    }
  }

  protected abstract finalize(token: usize): void;
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

  register<U, V>(key: U, value: T, token: V): void {
    if(!isManaged<U>()) { ERROR("invalid target"); }

    const keyPtr = changetype<usize>(key);
    if (this.entries.has(keyPtr)) { return; }

    const tokenPtr = changetype<usize>(token);
    this.entries.set(tokenPtr, value);

    const newEntry = FinalizationEntry.alloc(this, tokenPtr);
    const head: FinalizationEntry | null = ENTRIES_FOR_PTR.has(keyPtr)
      ? ENTRIES_FOR_PTR.get(keyPtr)
      : null;
    newEntry.next = head;
    ENTRIES_FOR_PTR.set(keyPtr, newEntry);
  }

  unregister<V>(token: V): bool {
    return this.entries.delete(changetype<usize>(token));
  }

  protected finalize(token: usize): void {
    if (this.entries.has(token)) {
      const value = this.entries.get(token);
      this.entries.delete(token);

      this.finalizer(value);
    }
  }
}
