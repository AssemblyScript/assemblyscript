/**
 * This method is a global function that works like a finalization
 * callback when a reference is cleaned up.
 *
 * @param {usize} ptr - the pointer being finalized.
 */

// @ts-ignore: decorators
@global @lazy
export function __finalize(ptr: usize): void {
  // check to see if this pointer has any registries associated with it
  if (finalizationRegistryMap.has(ptr)) {

    // loop over each one and call the handle callback
    let registries = finalizationRegistryMap.get(ptr);
    let length = registries.length;
    for (let i = 0; i < length; i++) {
      let registry = unchecked(registries[i]);

      // let the registry handle it with a virtual call
      registry.__handle(ptr);
    }

    // remove it from the registry
    finalizationRegistryMap.delete(ptr);
  }
}

/** This map is used to keep track of the callback index used. */
// @ts-ignore: lazy
@lazy let finalizationRegistryMap = new Map<usize, BaseFinalizationRegistry[]>();


/** Dummy base class to help pin it with the `pinned` `Set`. */
abstract class BaseFinalizationRegistry {

  /** Just a virtual call handle for handle(ptr: usize). */
  abstract __handle(ptr: usize): void;
}

/** A finalization Registry object that contains targets and held values. */
export class FinalizationRegistry<TTarget, THeldValue> extends BaseFinalizationRegistry {
  /**
   * This holds the held references by pointer. It cannot be by reference because
   * references won't be cleaned up, and it causes a memory leak.
   */
  private held: Map<usize, THeldValue> = new Map<usize, THeldValue>();

  constructor(
    /** The callback for the registry */
    public callback: (data: THeldValue) => void
  ) {
    // Set the reference registry callback
    super();
  }

  /** Register a cleanup target. */
  register(
    /** The target to be registered. */
    target: TTarget,
    /** The held value to be given to the registered callback */
    held: THeldValue
  ): void {
    let ptr = changetype<usize>(target);
    // the specification requires that target cannot be held
    if (isReference(held)) {
      assert(ptr != changetype<usize>(held));
    }

    // references can belong to multiple registries
    if (!finalizationRegistryMap.has(ptr)) {
      finalizationRegistryMap.set(ptr, [this]);
    } else {
      let registryList = finalizationRegistryMap.get(ptr);
      if (!registryList.includes(this)) registryList.push(this);
    }

    // hold the held value
    this.held.set(ptr, held);
  }

  /**
   * This method is used as an instance method for call_redirect to enable
   * handling registry callbacks.
   */
  @unsafe __handle(
    /**  The reference passed by the __finalize callback. */
    refPtr: usize
  ): void {
    // obtain the held value
    let held = this.held.get(refPtr);
    // call the callback with the ref and the held value
    this.callback(held);
    // delete the held value
    this.held.delete(refPtr);
  }
}
