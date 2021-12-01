/**
 * This method is a global function that works like a finalization
 * callback when a reference is cleaned up.
 *
 * @param {usize} ptr - the pointer being finalized.
 */

// @ts-ignore: global
@global @lazy
export function __finalize(ptr: usize): void {

    // first check to see if a finalization map is currently being cleaned up
    if (finalizationRegistryMap.has(ptr)) {
        finalizationRegistryMap.delete(ptr);
        referenceRegistryCallbackMap.delete(ptr);
    }

    // then check to see if a reference is located on a registry
    if (referenceRegistryMap.has(ptr)) {
        // get the registry associated
        let registryPointer = finalizationRegistryMap.get(ptr);
        // find the callback
        let callbackPointer = referenceRegistryCallbackMap.get(registryPointer);
        // call the correct version
        call_indirect(callbackPointer, ptr);
        finalizationRegistryMap.delete(ptr);
    }
}

/** This map is used to keep track of the callback index used. */
// @ts-ignore: lazy
@lazy let finalizationRegistryMap = new Map<usize, u32>();
/** This map is used to keep track of references to registries. */
// @ts-ignore: lazy
@lazy let referenceRegistryMap = new Map<usize, usize>();
/** This map is used to obtain the callback index for the registry itself. */
// @ts-ignore: lazy
@lazy let referenceRegistryCallbackMap = new Map<usize, u32>();

/** Dummy base class to help pin it with the `pinned` `Set`. */
class BaseFinalizationRegistry { constructor() {} }

let pinned = new Set<BaseFinalizationRegistry>()


/** A finalization Registry object that contains targets and held values. */
export class FinalizationRegistry<TTarget, THeldValue> extends BaseFinalizationRegistry {
  private held = new Map<TTarget, THeldValue>();
  private pinned = false;

  constructor(
      /** The callback for the registry */
      public callback: (ref: TTarget, data: THeldValue) => void) {
    // Set the reference registry callback
    super();
    referenceRegistryCallbackMap.set(changetype<usize>(this), this.handle.index);
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
      referenceRegistryMap.set(changetype<usize>(target), changetype<usize>(this));
      // hold the held value
      this.held.set(target, held);

      // then pin the registry to prevent garbage collection
      if (!this.pinned) pinned.add(this);
  }

  /**
   * This method is used as an instance method for call_redirect to enable
   * handling registry callbacks.
   *
   * @param {TTarget} ref - The reference passed by the __finalize callback.
   */
  handle(ref: TTarget): void {
    // obtain the held value
    let held = this.held.get(ref);
    // call the callback with the ref and the held value
    this.callback(ref, held);
    // delete the held value
    this.held.delete(ref);
    // if this value has no more held objects, then unpin this registry
    if (this.pinned && this.held.size == 0) pinned.delete(this);
  }
}
