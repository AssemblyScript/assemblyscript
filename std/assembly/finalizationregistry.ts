// @ts-ignore: decorators
@lazy let PREVIOUS_FINALIZER: i32 = 0;

// @ts-ignore: decorators
@lazy let INITIALIZED: boolean = false;

// @ts-ignore: decorators
@lazy let REGISTRIES_FOR_PTR: Map<usize, BaseRegistry[]> = new Map<usize, BaseRegistry[]>();

abstract class BaseRegistry {
  static finalizeAll(ptr: usize): void {
    if (!REGISTRIES_FOR_PTR.has(ptr)) { return; }

    const registries = REGISTRIES_FOR_PTR.get(ptr);
    for (
      let i = 0, numRegistries = registries.length;
      i < numRegistries;
      ++i
    ) {
      registries[i].finalize(ptr);
    }
    REGISTRIES_FOR_PTR.delete(ptr);

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
    if(!isManaged<U>()) { ERROR("invalid target"); }

    const ptr = changetype<usize>(key);
    if (this.entries.has(ptr)) { return; }

    this.entries.set(ptr, value);

    if (REGISTRIES_FOR_PTR.has(ptr)) {
      REGISTRIES_FOR_PTR.get(ptr).push(this);
    } else {
      const registries: BaseRegistry[] = new Array<BaseRegistry>();
      registries.push(this);
      REGISTRIES_FOR_PTR.set(ptr, registries);
    }
  }

  unregister<U>(key: U): bool {
    if(!isManaged<U>()) { ERROR("invalid target"); }

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
