import { AL_MASK, MAX_SIZE_32 } from "./allocator";

/**
 * The common runtime object header prepended to all managed objects. Has a size of 16 bytes in
 * WASM32 and contains a classId (e.g. for instanceof checks), the allocation size (e.g. for
 * .byteLength and .length computation) and additional reserved fields to be used by GC. If no
 * GC is present, the HEADER is cut into half excluding the reserved fields, as indicated by
 * HEADER_SIZE.
*/
@unmanaged export class HEADER {
  /** Unique id of the respective class or a magic value if not yet registered.*/
  classId: u32;
  /** Size of the allocated payload. */
  payloadSize: u32;
  /** Reserved field for use by GC. Only present if GC is. */
  reserved1: usize; // itcm: tagged next
  /** Reserved field for use by GC. Only present if GC is. */
  reserved2: usize; // itcm: prev
}

/** Common runtime header size. */
// @ts-ignore: decorator
@lazy
export const HEADER_SIZE: usize = isDefined(__ref_collect)
  ? (offsetof<HEADER>(           ) + AL_MASK) & ~AL_MASK  // full header if GC is present
  : (offsetof<HEADER>("reserved1") + AL_MASK) & ~AL_MASK; // half header if GC is absent

/** Common runtime header magic. Used to assert registered/unregistered status. */
// @ts-ignore: decorator
@lazy
export const HEADER_MAGIC: u32 = 0xA55E4B17;

/** Maximum byte length of any buffer-like object. */
// @ts-ignore
@lazy
export const MAX_BYTELENGTH: i32 = MAX_SIZE_32 - HEADER_SIZE;

/** Adjusts an allocation to actual block size. Primarily targets TLSF. */
export function adjust(payloadSize: usize): usize {
  // round up to power of 2, e.g. with HEADER_SIZE=8:
  // 0            -> 2^3  = 8
  // 1..8         -> 2^4  = 16
  // 9..24        -> 2^5  = 32
  // ...
  // MAX_LENGTH   -> 2^30 = 0x40000000 (MAX_SIZE_32)
  return <usize>1 << <usize>(<u32>32 - clz<u32>(payloadSize + HEADER_SIZE - 1));
}
