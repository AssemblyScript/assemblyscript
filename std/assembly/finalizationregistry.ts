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
  registry: BaseRegistry | null = null;
  token: usize = 0;

  // @ts-ignore: decorators
  @inline
  static alloc(): FinalizationEntry {
    const instance: FinalizationEntry | null = ENTRY_POOL;
    if (instance === null) {
      return new FinalizationEntry;
    } else {
      ENTRY_POOL = instance.next;
      return instance;
    }
  }

  // @ts-ignore: decorators
  @inline
  static recycle(entry: FinalizationEntry): void {
    entry.registry = null; // Allow the registry to be GC-ed
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
      const registry = i.registry;
      assert(registry !== null);

      registry!.finalize(i.token);
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

  register<U, V>(target: U, heldValue: T, token: V): void {
    if(!isManaged<U>()) { ERROR("invalid target"); }

    const targetPtr = changetype<usize>(target);
    const tokenPtr = changetype<usize>(token);

    if (this.entries.has(tokenPtr)) { return; }
    this.entries.set(tokenPtr, heldValue);

    const newEntry = FinalizationEntry.alloc();
    newEntry.registry = this;
    newEntry.token = tokenPtr;
    const head: FinalizationEntry | null = ENTRIES_FOR_PTR.has(targetPtr)
      ? ENTRIES_FOR_PTR.get(targetPtr)
      : null;
    newEntry.next = head;
    ENTRIES_FOR_PTR.set(targetPtr, newEntry);
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
