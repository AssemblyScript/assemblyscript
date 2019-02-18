(module
 (type $_ (func))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/ASC_TARGET i32 (i32.const 0))
 (global $~lib/ASC_NO_TREESHAKING i32 (i32.const 0))
 (global $~lib/ASC_NO_ASSERT i32 (i32.const 0))
 (global $~lib/ASC_MEMORY_BASE i32 (i32.const 0))
 (global $~lib/ASC_OPTIMIZE_LEVEL i32 (i32.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/ASC_FEATURE_MUTABLE_GLOBAL i32 (i32.const 0))
 (global $~lib/ASC_FEATURE_SIGN_EXTENSION i32 (i32.const 0))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start:asc-constants (; 0 ;) (type $_)
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
 )
 (func $start (; 1 ;) (type $_)
  call $start:asc-constants
 )
 (func $null (; 2 ;) (type $_)
 )
)
