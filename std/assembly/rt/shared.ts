import * as asrt from "../bindings/asrt";

function visit(ptr: usize, cookie: u32): void {
  __visit_members(ptr, cookie);
}

// @ts-ignore: decorator
@unsafe @global
export function __alloc(size: usize, id: u32): usize {
  return asrt.alloc(__memory_base, size, id);
}

// @ts-ignore: decorator
@unsafe @global
export function __realloc(ptr: usize, size: usize): usize {
  return asrt.realloc(__memory_base, ptr, size);
}

// @ts-ignore: decorator
@unsafe @global
export function __free(ptr: usize): void {
  asrt.free(__memory_base, ptr);
}

// @ts-ignore: decorator
@global @unsafe
export function __retain(ptr: usize): usize {
  return asrt.retain(__memory_base, ptr);
}

// @ts-ignore: decorator
@global @unsafe
export function __release(ptr: usize): void {
  asrt.release(__memory_base, ptr, __table_base + changetype<u32>(visit));
}

// @ts-ignore: decorator
@global @unsafe
export function __visit(ptr: usize, cookie: u32): void {
  asrt.visit(__memory_base, ptr, cookie, __table_base + changetype<u32>(visit));
}

// @ts-ignore: decorator
@global @unsafe
export function __collect(): void {
  asrt.collect(__memory_base, __table_base + changetype<u32>(visit));
}
