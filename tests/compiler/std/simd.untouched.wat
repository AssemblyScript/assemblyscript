(module
 (type $none_=>_none (func))
 (memory $0 0)
 (table $0 1 funcref)
 (global $~lib/ASC_FEATURE_SIMD i32 (i32.const 0))
 (global $~lib/memory/__data_end i32 (i32.const 8))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16392))
 (global $~lib/memory/__heap_base i32 (i32.const 16392))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:std/simd
  i32.const 0
  drop
 )
 (func $~start
  call $start:std/simd
 )
)
