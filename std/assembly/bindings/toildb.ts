// Host-import declarations for the ToilDB data API. The production edge
// (toil-backend `src/wasm/host/import_functions/db`) and the toiljs dev server
// both provide these under the `env` namespace. All byte regions are passed as
// a (pointer, length) pair into guest linear memory.
//
// Collections are resolved by name ONCE at module init (`resolveCollection`),
// which returns an opaque numeric handle; request-time ops pass the handle.
//
// Return convention (see toildb/ABI.md):
//   >= 0  success: a length (a value stashed for `takeResult`), a count, a
//         boolean (0/1), a tag, or 0 (ok).
//   -1    output buffer too small (retry `takeResult` with a bigger buffer).
//   -2    absent (a normal null / not-found).
//   <= -1000  a typed failure; the diagnostic is TDL(|v| - 1000).
//
// Variable-length results (a fetched value, a patched record, a claim owner)
// use the two-step pull: the op returns the stashed length, then the guest
// allocates a buffer and calls `takeResult` to copy the bytes out.
//
// `idemPtr` is 0 for none, otherwise a pointer to a 16-byte idempotency key.
//
// This is the guest half of the ABI contract; the byte framing of keys/values
// is the `@data` binary codec (`DataWriter`/`DataReader`).

export namespace toildbHost {
  // Resolve a collection by its "<db>/<collection>" name; writes the u32 handle
  // to outHandlePtr. Returns 0 on success or a negative TDL code.
  // @ts-ignore: decorator
  @external("env", "data.resolve_collection")
  export declare function resolveCollection(namePtr: usize, nameLen: i32, outHandlePtr: usize): i32;

  // record.get -> value length (stashed) | -2 absent | negative error.
  // @ts-ignore: decorator
  @external("env", "data.get")
  export declare function get(handle: u32, keyPtr: usize, keyLen: i32): i32;

  // record bounded multi-get. Input at keysPtr: u32 count + per key (u32 len +
  // bytes). Result (stashed): u32 count + per item u8 present (+ u32 len + bytes
  // when present), in request order. Returns the stashed length | negative error.
  // @ts-ignore: decorator
  @external("env", "data.get_many")
  export declare function getMany(handle: u32, keysPtr: usize, keysLen: i32): i32;

  // record.exists -> 1 | 0 | negative error.
  // @ts-ignore: decorator
  @external("env", "data.exists")
  export declare function exists(handle: u32, keyPtr: usize, keyLen: i32): i32;

  // record.create -> 0 ok | AlreadyExists/typed code.
  // @ts-ignore: decorator
  @external("env", "data.create")
  export declare function create(
    handle: u32,
    keyPtr: usize,
    keyLen: i32,
    valPtr: usize,
    valLen: i32,
    idemPtr: usize
  ): i32;

  // record.patch -> length of the new record (stashed) | negative error.
  // @ts-ignore: decorator
  @external("env", "data.patch")
  export declare function patch(
    handle: u32,
    keyPtr: usize,
    keyLen: i32,
    patchPtr: usize,
    patchLen: i32,
    idemPtr: usize
  ): i32;

  // record.delete -> 0 ok | negative error.
  // @ts-ignore: decorator
  @external("env", "data.delete")
  export declare function del(handle: u32, keyPtr: usize, keyLen: i32, idemPtr: usize): i32;

  // record consume-once fetch-and-delete -> prior value length (stashed) | -2.
  // @ts-ignore: decorator
  @external("env", "data.get_delete")
  export declare function getDelete(handle: u32, keyPtr: usize, keyLen: i32, idemPtr: usize): i32;

  // unique.lookup -> owner value length (stashed) | -2 absent.
  // @ts-ignore: decorator
  @external("env", "data.unique_lookup")
  export declare function uniqueLookup(handle: u32, keyPtr: usize, keyLen: i32): i32;

  // unique.claim -> 0 Claimed | 1 AlreadyClaimed (owner stashed) | 2 owned-by-caller | neg.
  // @ts-ignore: decorator
  @external("env", "data.unique_claim")
  export declare function uniqueClaim(
    handle: u32,
    keyPtr: usize,
    keyLen: i32,
    valPtr: usize,
    valLen: i32,
    idemPtr: usize
  ): i32;

  // unique.release -> 0 ok | neg (Conflict if not the owner).
  // @ts-ignore: decorator
  @external("env", "data.unique_release")
  export declare function uniqueRelease(
    handle: u32,
    keyPtr: usize,
    keyLen: i32,
    valPtr: usize,
    valLen: i32,
    idemPtr: usize
  ): i32;

  // view.get -> view value length (stashed) | -2 absent | negative error.
  // @ts-ignore: decorator
  @external("env", "data.view_get")
  export declare function viewGet(handle: u32, keyPtr: usize, keyLen: i32): i32;

  // view.publish -> 0 ok | negative error (derive/job only; the host gate enforces).
  // @ts-ignore: decorator
  @external("env", "data.view_publish")
  export declare function viewPublish(
    handle: u32,
    keyPtr: usize,
    keyLen: i32,
    valPtr: usize,
    valLen: i32,
    idemPtr: usize
  ): i32;

  // membership.contains -> 1 present | 0 absent | negative error.
  // @ts-ignore: decorator
  @external("env", "data.membership_contains")
  export declare function membershipContains(
    handle: u32, setPtr: usize, setLen: i32, memberPtr: usize, memberLen: i32
  ): i32;

  // membership.add -> 0 ok | negative error.
  // @ts-ignore: decorator
  @external("env", "data.membership_add")
  export declare function membershipAdd(
    handle: u32, setPtr: usize, setLen: i32, memberPtr: usize, memberLen: i32, idemPtr: usize
  ): i32;

  // membership.remove -> 0 ok | negative error.
  // @ts-ignore: decorator
  @external("env", "data.membership_remove")
  export declare function membershipRemove(
    handle: u32, setPtr: usize, setLen: i32, memberPtr: usize, memberLen: i32, idemPtr: usize
  ): i32;

  // membership.list(limit) -> framed-list length (stashed) | negative error.
  // The blob is `u32 count` then per member `u32 len + bytes`.
  // @ts-ignore: decorator
  @external("env", "data.membership_list")
  export declare function membershipList(handle: u32, setPtr: usize, setLen: i32, limit: i32): i32;

  // capacity.set_total(total: i64) -> 0 ok | negative error (job/derive only).
  // @ts-ignore: decorator
  @external("env", "data.capacity_set_total")
  export declare function capacitySetTotal(
    handle: u32, keyPtr: usize, keyLen: i32, total: i64, idemPtr: usize
  ): i32;

  // capacity.available -> 8 (the i64 available stashed as 8 LE bytes) | neg.
  // @ts-ignore: decorator
  @external("env", "data.capacity_available")
  export declare function capacityAvailable(handle: u32, keyPtr: usize, keyLen: i32): i32;

  // capacity.reserve(amount: i64, ttl_ms: i64) -> 8 (the u64 reservation id
  // stashed) | -2 insufficient | negative error.
  // @ts-ignore: decorator
  @external("env", "data.capacity_reserve")
  export declare function capacityReserve(
    handle: u32, keyPtr: usize, keyLen: i32, amount: i64, ttlMs: i64, idemPtr: usize
  ): i32;

  // capacity.confirm(reservationId: i64) -> 1 confirmed | 0 unknown | neg.
  // @ts-ignore: decorator
  @external("env", "data.capacity_confirm")
  export declare function capacityConfirm(
    handle: u32, keyPtr: usize, keyLen: i32, reservationId: i64, idemPtr: usize
  ): i32;

  // capacity.cancel(reservationId: i64) -> 1 cancelled | 0 unknown/confirmed | neg.
  // @ts-ignore: decorator
  @external("env", "data.capacity_cancel")
  export declare function capacityCancel(
    handle: u32, keyPtr: usize, keyLen: i32, reservationId: i64, idemPtr: usize
  ): i32;

  // counter.get -> 8 (the i64 sum stashed as 8 LE bytes) | negative error.
  // @ts-ignore: decorator
  @external("env", "data.counter_get")
  export declare function counterGet(handle: u32, keyPtr: usize, keyLen: i32): i32;

  // counter.add(delta: i64) -> 0 ok | negative error.
  // @ts-ignore: decorator
  @external("env", "data.counter_add")
  export declare function counterAdd(
    handle: u32,
    keyPtr: usize,
    keyLen: i32,
    delta: i64,
    idemPtr: usize
  ): i32;

  // events.append -> 0 ok | negative error.
  // @ts-ignore: decorator
  @external("env", "data.append")
  export declare function append(
    handle: u32,
    keyPtr: usize,
    keyLen: i32,
    evPtr: usize,
    evLen: i32,
    idemPtr: usize
  ): i32;

  // events.latest(limit) -> framed-list length (stashed) | negative error.
  // The blob is `u32 count` then per event `u32 len + bytes`, newest first.
  // @ts-ignore: decorator
  @external("env", "data.latest")
  export declare function latest(handle: u32, keyPtr: usize, keyLen: i32, limit: i32): i32;

  // Copy the last stashed variable-length result into outPtr (outLen must equal
  // the length the producing op returned). Returns bytes written, or -1 if the
  // buffer is too small.
  // @ts-ignore: decorator
  @external("env", "data.take_result")
  export declare function takeResult(outPtr: usize, outLen: i32): i32;

  // The schema version the LAST value-returning read's row was written under, so
  // the generated decoder can default fields added since / reject an unknown
  // layout. A u32 version rides in the non-negative range; -1 means the last op
  // returned no value (or the host does not track a version). Does not drain the
  // result stash, so it may be read before or after `takeResult`.
  // @ts-ignore: decorator
  @external("env", "data.result_schema_version")
  export declare function resultSchemaVersion(): i64;
}
