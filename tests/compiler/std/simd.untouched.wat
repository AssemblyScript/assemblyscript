(module
 (type $none_=>_none (func))
 (memory $0 0)
 (table $0 1 funcref)
 (global $~lib/ASC_FEATURE_SIMD i32 (i32.const 0))
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
