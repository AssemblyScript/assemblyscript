(module
 (type $none_=>_none (func))
 (global $~lib/native/ASC_TARGET i32 (i32.const 1))
 (global $~lib/native/ASC_RUNTIME i32 (i32.const 2))
 (global $~lib/native/ASC_NO_ASSERT i32 (i32.const 0))
 (global $~lib/native/ASC_MEMORY_BASE i32 (i32.const 0))
 (global $~lib/native/ASC_OPTIMIZE_LEVEL i32 (i32.const 0))
 (global $~lib/native/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/native/ASC_FEATURE_SIGN_EXTENSION i32 (i32.const 1))
 (global $~lib/native/ASC_FEATURE_MUTABLE_GLOBALS i32 (i32.const 1))
 (global $~lib/native/ASC_FEATURE_NONTRAPPING_F2I i32 (i32.const 1))
 (global $~lib/native/ASC_FEATURE_BULK_MEMORY i32 (i32.const 1))
 (global $~lib/native/ASC_FEATURE_SIMD i32 (i32.const 0))
 (global $~lib/native/ASC_FEATURE_THREADS i32 (i32.const 0))
 (global $~lib/native/ASC_FEATURE_EXCEPTION_HANDLING i32 (i32.const 0))
 (global $~lib/native/ASC_FEATURE_TAIL_CALLS i32 (i32.const 0))
 (global $~lib/native/ASC_FEATURE_REFERENCE_TYPES i32 (i32.const 0))
 (global $~lib/native/ASC_FEATURE_MULTI_VALUE i32 (i32.const 0))
 (global $~lib/native/ASC_FEATURE_GC i32 (i32.const 0))
 (global $~lib/native/ASC_FEATURE_MEMORY64 i32 (i32.const 0))
 (global $~lib/native/ASC_FEATURE_RELAXED_SIMD i32 (i32.const 0))
 (global $~lib/native/ASC_FEATURE_EXTENDED_CONST i32 (i32.const 0))
 (global $~lib/native/ASC_FEATURE_STRINGREF i32 (i32.const 0))
 (global $~lib/memory/__data_end i32 (i32.const 8))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 32776))
 (global $~lib/memory/__heap_base i32 (i32.const 32776))
 (memory $0 0)
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:asc-constants
  i32.const 1
  drop
  i32.const 2
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 1
  drop
  i32.const 1
  drop
  i32.const 1
  drop
  i32.const 1
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 1
  drop
  i32.const 1
  drop
  i32.const 1
  drop
 )
 (func $~start
  call $start:asc-constants
 )
)
