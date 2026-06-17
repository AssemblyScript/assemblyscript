// ToilDB: the developer-facing edge-database API.
//
// `@database class App { @collection(...) users!: Record<User, UserId>; ... }`
// declares logical collections; the compiler (see parser `injectDatabaseBinding`)
// synthesizes a `@global App` singleton whose fields are these typed handles,
// resolved to numeric host handles once at module init.
//
// The handles marshal `@data` keys/values to the `env.data.*` host imports
// (`bindings/toildb`). Keys and values are `@data` types (they have the injected
// `encode(): Uint8Array` + `decodeInto(buf): void` instance methods). Both
// encode and decode go through INSTANCE methods on the generic type parameter,
// which AssemblyScript resolves at specialization (it cannot call the `decode`
// static through a type parameter, but `instantiate<V>()` + `v.decodeInto(buf)`
// works). Value types must be default-constructible.

import { toildbHost } from "bindings/toildb";

/// Resolve a `"<db>/<collection>"` name to its numeric host handle. Called once
/// per collection at module init by the generated `App` binding.
export function __toildbResolve(name: string): u32 {
  const nb = Uint8Array.wrap(String.UTF8.encode(name));
  const out = new Uint8Array(4);
  toildbHost.resolveCollection(nb.dataStart, nb.byteLength, out.dataStart);
  return load<u32>(out.dataStart);
}

/// Pull the last stashed variable-length result of `len` bytes into a buffer.
function __toildbTake(len: i32): Uint8Array {
  const buf = new Uint8Array(len);
  toildbHost.takeResult(buf.dataStart, len);
  return buf;
}

/// Pull a stashed result whose length is NOT known up front (e.g. the owner
/// returned by a failed `claim`): grow the buffer until `take_result` fits.
function __toildbTakeGrow(): Uint8Array {
  let cap = 256;
  let buf = new Uint8Array(cap);
  let n = toildbHost.takeResult(buf.dataStart, cap);
  while (n == -1) {
    cap = cap * 2;
    buf = new Uint8Array(cap);
    n = toildbHost.takeResult(buf.dataStart, cap);
  }
  return buf.subarray(0, n);
}

/// A mutable keyed-entity collection (spec 7.1). `V` is the `@data` value type,
/// `K` the `@data` key type.
export class Record<V, K> {
  private __handle: u32;

  constructor(handle: u32) {
    this.__handle = handle;
  }

  /// Return the record, or `null` if it does not exist.
  get(key: K): V | null {
    const kb = key.encode();
    const status = toildbHost.get(this.__handle, kb.dataStart, kb.byteLength);
    if (status < 0) return null;
    const v = instantiate<V>();
    v.decodeInto(__toildbTake(status));
    return v;
  }

  /// Like `get`, but traps if the record is absent.
  require(key: K): V {
    const v = this.get(key);
    if (v == null) unreachable();
    return v!;
  }

  /// Whether the record exists.
  exists(key: K): bool {
    const kb = key.encode();
    return toildbHost.exists(this.__handle, kb.dataStart, kb.byteLength) == 1;
  }

  /// Create the record if absent. Returns false if it already existed.
  create(key: K, value: V): bool {
    const kb = key.encode();
    const vb = value.encode();
    return toildbHost.create(
      this.__handle, kb.dataStart, kb.byteLength, vb.dataStart, vb.byteLength, 0
    ) == 0;
  }

  /// Apply a write through the key's home cell; returns the stored record.
  patch(key: K, value: V): V {
    const kb = key.encode();
    const vb = value.encode();
    const status = toildbHost.patch(
      this.__handle, kb.dataStart, kb.byteLength, vb.dataStart, vb.byteLength, 0
    );
    if (status < 0) unreachable();
    const v = instantiate<V>();
    v.decodeInto(__toildbTake(status));
    return v;
  }

  /// Delete the record (idempotent).
  delete(key: K): void {
    const kb = key.encode();
    toildbHost.del(this.__handle, kb.dataStart, kb.byteLength, 0);
  }

  /// Atomic fetch-and-delete (consume-once); returns the prior value or `null`.
  getDelete(key: K): V | null {
    const kb = key.encode();
    const status = toildbHost.getDelete(this.__handle, kb.dataStart, kb.byteLength, 0);
    if (status < 0) return null;
    const v = instantiate<V>();
    v.decodeInto(__toildbTake(status));
    return v;
  }
}

/// The result of a `unique.claim` (spec 8.6). `claimed` is true when the caller
/// owns the key (a fresh claim or an idempotent re-claim of its own); when
/// false, `owner` is the value that currently holds the key.
export class ClaimResult<V> {
  constructor(public claimed: bool, public owner: V | null) {}
}

/// A globally-unique claim collection (spec 7.6): username, email, slug, ...
/// `V` is the `@data` OWNER value type, `K` the `@data` claim-key type.
export class Unique<V, K> {
  private __handle: u32;

  constructor(handle: u32) {
    this.__handle = handle;
  }

  /// The value that owns `key`, or `null` if unclaimed.
  lookup(key: K): V | null {
    const kb = key.encode();
    const status = toildbHost.uniqueLookup(this.__handle, kb.dataStart, kb.byteLength);
    if (status < 0) return null;
    const v = instantiate<V>();
    v.decodeInto(__toildbTake(status));
    return v;
  }

  /// Claim `key` for `value`. Returns whether the caller owns it, and (when
  /// another owns it) who.
  claim(key: K, value: V): ClaimResult<V> {
    const kb = key.encode();
    const vb = value.encode();
    const tag = toildbHost.uniqueClaim(
      this.__handle, kb.dataStart, kb.byteLength, vb.dataStart, vb.byteLength, 0
    );
    if (tag < 0) unreachable();
    if (tag == 1) {
      // AlreadyClaimed: the current owner is stashed.
      const owner = instantiate<V>();
      owner.decodeInto(__toildbTakeGrow());
      return new ClaimResult<V>(false, owner);
    }
    // 0 Claimed, 2 AlreadyOwnedByCaller -> the caller owns it.
    return new ClaimResult<V>(true, null);
  }

  /// Release `key` (only the current owner may; a non-owner release traps).
  release(key: K, value: V): void {
    const kb = key.encode();
    const vb = value.encode();
    toildbHost.uniqueRelease(
      this.__handle, kb.dataStart, kb.byteLength, vb.dataStart, vb.byteLength, 0
    );
  }
}

/// A commutative integer counter (spec 7.4): likes, view counts, inventory.
/// `K` is the `@data` key type; the value is a host-aggregated i64 rollup (there
/// is no `set`, only `add` and `get`, so concurrent deltas never lose writes).
export class Counter<K> {
  private __handle: u32;

  constructor(handle: u32) {
    this.__handle = handle;
  }

  /// The current sum (0 if no deltas have been applied).
  get(key: K): i64 {
    const kb = key.encode();
    const status = toildbHost.counterGet(this.__handle, kb.dataStart, kb.byteLength);
    if (status < 0) unreachable();
    const buf = __toildbTake(status);
    return load<i64>(buf.dataStart);
  }

  /// Apply a (possibly negative) delta; saturates at the i64 bounds.
  add(key: K, delta: i64): void {
    const kb = key.encode();
    toildbHost.counterAdd(this.__handle, kb.dataStart, kb.byteLength, delta, 0);
  }
}

/// An append-only event log (spec 7.5): activity feeds, audit trails, the
/// fact stream a `@derive` consumes. `V` is the `@data` event type, `K` the
/// `@data` stream-key type.
export class Events<V, K> {
  private __handle: u32;

  constructor(handle: u32) {
    this.__handle = handle;
  }

  /// Append an event to the stream.
  append(key: K, event: V): void {
    const kb = key.encode();
    const eb = event.encode();
    toildbHost.append(this.__handle, kb.dataStart, kb.byteLength, eb.dataStart, eb.byteLength, 0);
  }

  /// The newest `limit` events, newest first. Decodes each framed event into a
  /// `V`. The host frames them as `u32 count` then per event `u32 len + bytes`.
  latest(key: K, limit: i32): V[] {
    const kb = key.encode();
    const status = toildbHost.latest(this.__handle, kb.dataStart, kb.byteLength, limit);
    if (status < 0) unreachable();
    const blob = __toildbTake(status);
    const out = new Array<V>();
    let off: i32 = 0;
    const count = load<u32>(blob.dataStart + off);
    off += 4;
    for (let i: u32 = 0; i < count; i++) {
      const len = <i32>load<u32>(blob.dataStart + off);
      off += 4;
      const ev = instantiate<V>();
      ev.decodeInto(blob.subarray(off, off + len));
      out.push(ev);
      off += len;
    }
    return out;
  }
}
