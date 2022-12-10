import {BLOCK_OVERHEAD} from "./common";
import {allocateBlock, freeBlock, reallocateBlock, ROOT, TLSFinitialize, moveBlock, checkUsedBlock} from "./tlsf-base";

// @ts-ignore: decorator
@global @unsafe
export function __alloc(size: usize): usize {
  if (!ROOT) TLSFinitialize();

  return changetype<usize>(allocateBlock(ROOT, size)) + BLOCK_OVERHEAD;
}

// @ts-ignore: decorator
@global @unsafe
export function __realloc(ptr: usize, size: usize): usize {
  if (!ROOT) TLSFinitialize();
  return (ptr < __heap_base
    ? changetype<usize>(moveBlock(ROOT, checkUsedBlock(ptr), size))
    : changetype<usize>(reallocateBlock(ROOT, checkUsedBlock(ptr), size))
  ) + BLOCK_OVERHEAD;
}

// @ts-ignore: decorator
@global @unsafe
export function __free(ptr: usize): void {
  if (ptr < __heap_base) return;
  if (!ROOT) TLSFinitialize();
  freeBlock(ROOT, checkUsedBlock(ptr));
}
