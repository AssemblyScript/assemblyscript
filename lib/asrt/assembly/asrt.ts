import { __alloc, __realloc, __free } from "rt/tlsf";
import { __retain, __release, __visit, __collect } from "rt/pure";

export {__alloc, __realloc, __free,__retain, __release, __visit, __collect }


@external("env", "__heap_base")
declare const __heap_base: usize;

var rel_mbase: usize;
var rel_visit: (ptr: usize, cookie: u32) => void;

function __visit_members(ptr: usize, cookie: u32): void {
  rel_visit(ptr - rel_mbase, cookie);
}

export function alloc(mbase: usize, size: usize, id: i32): usize {
  return __alloc(size, id);
}

export function realloc(mbase: usize, ptr: usize, size: usize): usize {
  return __realloc(ptr, size);
}

export function free(mbase: usize, ptr: usize): void {
  __free(ptr);
}

export function retain(mbase: usize, ptr: usize): usize {
  return __retain(ptr);
}

export function release(mbase: usize, ptr: usize, visit: (ptr: usize, cookie: u32) => void): void {
  rel_mbase = mbase;
  rel_visit = visit;
  __release(ptr);
}

export function visit(mbase: usize, ptr: usize, cookie: i32, visit: (ptr: usize, cookie: u32) => void): void {
  rel_mbase = mbase;
  rel_visit = visit;
  __visit(ptr, cookie);
}

export function collect(mbase: usize, visit: (ptr: usize, cookie: u32) => void): void {
  rel_mbase = mbase;
  rel_visit = visit;
  __collect();
}
