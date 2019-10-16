import * as asrt from "../bindings/asrt";



function visit(ptr: usize, cookie: u32): void {
  __visit_members(ptr, cookie);
}

// @ts-ignore: decorator
@unsafe @global
export function __alloc(size: usize, id: u32): usize {
  let t=asrt.alloc(__memory_base, size, id);
  return t;
}

// @ts-ignore: decorator
@unsafe @global
export function __realloc(ptr: usize, size: usize): usize {
  let t= asrt.realloc(__memory_base, ptr, size);
  return t
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
