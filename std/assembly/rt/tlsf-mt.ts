import {BLOCK_OVERHEAD} from "./common";
import {allocateBlock, freeBlock, reallocateBlock, ROOT, TLSFinitialize, moveBlock, checkUsedBlock} from "./tlsf-base";
import {TlsfMutex_lock, TlsfMutex_unlock} from './tlsf-mutex'

const mutex_ptr = memory.data(4, 16);

// @ts-ignore: decorator
@global @unsafe
export function __alloc(size: usize): usize {
  TlsfMutex_lock(mutex_ptr);

  if (!ROOT) TLSFinitialize();
  let r: usize = changetype<usize>(allocateBlock(ROOT, size)) + BLOCK_OVERHEAD;

  TlsfMutex_unlock(mutex_ptr);
  return r;
}

// @ts-ignore: decorator
@global @unsafe
export function __realloc(ptr: usize, size: usize): usize {
  TlsfMutex_lock(mutex_ptr);

  if (!ROOT) TLSFinitialize();
  let r: usize = (ptr < __heap_base
    ? changetype<usize>(moveBlock(ROOT, checkUsedBlock(ptr), size))
    : changetype<usize>(reallocateBlock(ROOT, checkUsedBlock(ptr), size))
  ) + BLOCK_OVERHEAD;

  TlsfMutex_unlock(mutex_ptr);
  return r;
}

// @ts-ignore: decorator
@global @unsafe
export function __free(ptr: usize): void {
  if (ptr < __heap_base) return;

  TlsfMutex_lock(mutex_ptr);

  if (!ROOT) TLSFinitialize();
  freeBlock(ROOT, checkUsedBlock(ptr));

  TlsfMutex_unlock(mutex_ptr);
}
