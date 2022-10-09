(module
 (global $~lib/rt/lm/freeListPtr i32 (i32.const 16))
 (memory $0 1)
 (data (i32.const 16) "\00\00\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
)
