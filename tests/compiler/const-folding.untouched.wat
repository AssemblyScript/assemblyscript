(module
 (type $i64_=>_i64 (func (param i64) (result i64)))
 (memory $0 0)
 (table $0 1 funcref)
 (global $~lib/memory/__data_end i32 (i32.const 8))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16392))
 (global $~lib/memory/__heap_base i32 (i32.const 16392))
 (export "test" (func $const-folding/test))
 (export "memory" (memory $0))
 (func $const-folding/test (param $0 i64) (result i64)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  i64.const -1
  local.set $1
  i64.const -1
  local.set $2
  local.get $0
  i64.const 1
  i64.shl
  local.set $3
  local.get $3
  local.get $2
  i64.const -1
  i64.xor
  i64.and
  local.set $4
  local.get $4
  local.get $4
  i64.const 1
  i64.shl
  i64.or
  local.set $4
  local.get $4
  local.get $0
  i64.const 63
  i64.shr_u
  local.get $1
  i64.and
  i64.or
  local.set $4
  local.get $3
  local.get $4
  i64.add
 )
)
