(module
 (type $none_=>_none (func_subtype func))
 (type $none_=>_i32 (func_subtype (result i32) func))
 (type $none_=>_i64 (func_subtype (result i64) func))
 (type $none_=>_f32 (func_subtype (result f32) func))
 (type $none_=>_f64 (func_subtype (result f64) func))
 (global $infer-type/i i32 (i32.const 10))
 (global $infer-type/I i64 (i64.const 4294967296))
 (global $infer-type/F f64 (f64.const 1.5))
 (global $infer-type/ri (mut i32) (i32.const 0))
 (global $infer-type/rI (mut i64) (i64.const 0))
 (global $infer-type/rf (mut f32) (f32.const 0))
 (global $infer-type/rF (mut f64) (f64.const 0))
 (global $infer-type/inferi (mut i32) (i32.const -2147483648))
 (global $infer-type/inferu (mut i32) (i32.const 2147483647))
 (global $~lib/memory/__data_end i32 (i32.const 8))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 32776))
 (global $~lib/memory/__heap_base i32 (i32.const 32776))
 (memory $0 0)
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
 (func $infer-type/locals (type $none_=>_none)
  (local $li i32)
  (local $lI i64)
  (local $lF f64)
  (local $ai i32)
  (local $aI i64)
  (local $aF f64)
  i32.const 10
  local.set $li
  i64.const 4294967296
  local.set $lI
  f64.const 1.5
  local.set $lF
  global.get $infer-type/i
  local.set $ai
  global.get $infer-type/I
  local.set $aI
  global.get $infer-type/F
  local.set $aF
 )
 (func $infer-type/reti (type $none_=>_i32) (result i32)
  i32.const 0
  return
 )
 (func $infer-type/retI (type $none_=>_i64) (result i64)
  i64.const 0
  return
 )
 (func $infer-type/retf (type $none_=>_f32) (result f32)
  f32.const 0
  return
 )
 (func $infer-type/refF (type $none_=>_f64) (result f64)
  f64.const 0
  return
 )
 (func $start:infer-type (type $none_=>_none)
  (local $a i32)
  (local $b i32)
  global.get $infer-type/i
  drop
  global.get $infer-type/I
  drop
  global.get $infer-type/F
  drop
  call $infer-type/locals
  call $infer-type/reti
  global.set $infer-type/ri
  global.get $infer-type/ri
  drop
  call $infer-type/retI
  global.set $infer-type/rI
  global.get $infer-type/rI
  drop
  call $infer-type/retf
  global.set $infer-type/rf
  global.get $infer-type/rf
  drop
  call $infer-type/refF
  global.set $infer-type/rF
  global.get $infer-type/rF
  drop
  i32.const 0
  local.set $a
  i32.const 10
  local.set $b
  loop $for-loop|0
   local.get $a
   local.get $b
   i32.lt_s
   if
    local.get $a
    i32.const 1
    i32.add
    local.set $a
    br $for-loop|0
   end
  end
  i32.const 0
  i32.eqz
  drop
  i32.const 1
  drop
 )
 (func $~start (type $none_=>_none)
  call $start:infer-type
 )
)
