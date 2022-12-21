// @ts-ignore: decorators
@lazy let PREVIOUS_FINALIZER: i32 = 0;

// @ts-ignore: decorators
@lazy let INITIALIZED: boolean = false;

// @ts-ignore: decorators
@lazy let ENTRIES_FOR_PTR: Map<usize, FinalizationEntry> = new Map<usize, FinalizationEntry>();

class FinalizationEntry {
  next: FinalizationEntry | null = null;

  constructor(
    public readonly registry: BaseRegistry,
    public readonly token: usize,
  ) {
  }
}

abstract class BaseRegistry {
  static finalizeAll(ptr: usize): void {
    if (!ENTRIES_FOR_PTR.has(ptr)) { return; }

    const entries = ENTRIES_FOR_PTR.get(ptr);

    for (
      let i: FinalizationEntry | null = entries;
      i !== null;
      i = i.next
    ) {
      i.registry.finalize(i.token);
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

    const newEntry = new FinalizationEntry(this, tokenPtr);
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
