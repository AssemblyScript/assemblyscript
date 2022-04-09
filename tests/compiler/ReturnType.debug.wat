(module
 (type $none_=>_none (func))
 (global $~lib/memory/__data_end i32 (i32.const 8))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16392))
 (global $~lib/memory/__heap_base i32 (i32.const 16392))
 (memory $0 0)
 (table $0 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:ReturnType
  i32.const 1
  drop
  i32.const 1
  drop
  i32.const 1
  i32.const 1
  i32.eq
  drop
  i32.const 1
  drop
  i32.const 8
  i32.const 8
  i32.eq
  drop
  i32.const 1
  drop
  i32.const 16
  i32.const 16
  i32.eq
  drop
 )
 (func $~start
  call $start:ReturnType
 )
)
