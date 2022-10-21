(module
 (type $none_=>_none (func_subtype func))
 (type $i64_=>_i64 (func_subtype (param i64) (result i64) func))
 (global $const-folding/w (mut i32) (i32.const 0))
 (global $const-folding/x (mut i32) (i32.const 0))
 (global $~lib/memory/__data_end i32 (i32.const 8))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 32776))
 (global $~lib/memory/__heap_base i32 (i32.const 32776))
 (memory $0 0)
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "x" (global $const-folding/x))
 (export "test" (func $const-folding/test))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:const-folding (type $none_=>_none)
  i32.const 42
  i32.const 1
  i32.shr_s
  global.set $const-folding/w
  global.get $const-folding/w
  i32.const 252
  i32.and
  global.get $const-folding/w
  i32.const 1
  i32.shr_s
  i32.or
  global.set $const-folding/w
  global.get $const-folding/w
  global.set $const-folding/x
 )
 (func $const-folding/test (type $i64_=>_i64) (param $value i64) (result i64)
  (local $mod1 i64)
  (local $mod2 i64)
  (local $rlo i64)
  (local $rhi i64)
  i64.const -1
  local.set $mod1
  i64.const -1
  local.set $mod2
  local.get $value
  i64.const 1
  i64.shl
  local.set $rlo
  local.get $rlo
  local.get $mod2
  i64.const -1
  i64.xor
  i64.and
  local.set $rhi
  local.get $rhi
  local.get $rhi
  i64.const 1
  i64.shl
  i64.or
  local.set $rhi
  local.get $rhi
  local.get $value
  i64.const 63
  i64.shr_u
  local.get $mod1
  i64.and
  i64.or
  local.set $rhi
  local.get $rlo
  local.get $rhi
  i64.add
 )
 (func $~start (type $none_=>_none)
  call $start:const-folding
 )
)
