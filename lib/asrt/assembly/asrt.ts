import { __alloc, __realloc, __free } from "rt/tlsf";
import { __retain, __release, __visit, __collect } from "rt/pure";

@external("env", "__heap_base")
declare const __heap_base: usize;

var rel_mbase: usize;
var rel_visit: (ptr: usize, cookie: u32) => void;

function __visit_members(ptr: usize, cookie: u32): void {
  rel_visit(ptr - rel_mbase, cookie);
}

export function alloc(mbase: usize, size: usize, id: i32): usize {
  return __alloc(size, id) - mbase;
}

export function realloc(mbase: usize, ptr: usize, size: usize): usize {
  return __realloc(mbase + ptr, size) - mbase;
}

export function free(mbase: usize, ptr: usize): void {
  __free(mbase + ptr);
}

export function retain(mbase: usize, ptr: usize): usize {
  return __retain(mbase + ptr) - mbase;
}

export function release(mbase: usize, ptr: usize, visit: (ptr: usize, cookie: u32) => void): void {
  rel_mbase = mbase;
  rel_visit = visit;
  __release(mbase + ptr);
}

export function visit(mbase: usize, ptr: usize, cookie: i32, visit: (ptr: usize, cookie: u32) => void): void {
  rel_mbase = mbase;
  rel_visit = visit;
  __visit(mbase + ptr, cookie);
}

export function collect(mbase: usize, visit: (ptr: usize, cookie: u32) => void): void {
  rel_mbase = mbase;
  rel_visit = visit;
  __collect();
}
