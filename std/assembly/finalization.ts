/**
 * This method is a global function that works like a finalization
 * callback when a reference is cleaned up.
 *
 * @param {usize} ptr - the pointer being finalized.
 */

// @ts-ignore: global
@global @lazy
export function __finalize(ptr: usize): void {

    // then check to see if a reference is located on a registry
    if (finalizationRegistryMap.has(ptr)) {
        // get the registry associated
        let registry = finalizationRegistryMap.get(ptr);

        // virtual call and handle the pointer
        registry.handle(ptr);

        // remove it from the registry
        finalizationRegistryMap.delete(ptr);
    }
}

/** This map is used to keep track of the callback index used. */
// @ts-ignore: lazy
@lazy let finalizationRegistryMap = new Map<usize, BaseFinalizationRegistry>();


/** Dummy base class to help pin it with the `pinned` `Set`. */
abstract class BaseFinalizationRegistry {
  constructor() {}

  /** Just a virtual call handle for handle(ptr: usize). */
  abstract handle(ptr: usize): void;
}

/** A finalization Registry object that contains targets and held values. */
export class FinalizationRegistry<TTarget, THeldValue> extends BaseFinalizationRegistry {
  private held = new Map<TTarget, THeldValue>();
  private pinned = false;

  constructor(
      /** The callback for the registry */
      public callback: (ref: TTarget, data: THeldValue) => void) {
    // Set the reference registry callback
    super();
  }

  /**
   * Register a cleanup target.
   *
   * @param {TTarget} target - The target to be registered.
   * @param {THeldValue} held - The held value to be given to the registered callback
   * when the reference is cleaned up.
   */
  register(target: TTarget, held: THeldValue): void {
      // the specification requires that target cannot be held
      if (isReference(held)) {
          assert(changetype<usize>(target) != changetype<usize>(held));
      }

      // set the registry map
      finalizationRegistryMap.set(changetype<usize>(target), this);
      // hold the held value
      this.held.set(target, held);
  }

  /**
   * This method is used as an instance method for call_redirect to enable
   * handling registry callbacks.
   *
   * @param {TTarget} ref - The reference passed by the __finalize callback.
   */
  handle(refPtr: usize): void {
    let ref = changetype<TTarget>(refPtr);
    // obtain the held value
    let held = this.held.get(ref);
    // call the callback with the ref and the held value
    this.callback(ref, held);
    // delete the held value
    this.held.delete(ref);
  }
}
