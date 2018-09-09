(module
 (global $exportFromIndex/index/x i32 (i32.const 0))
 (global $exportFromIndex/index/y i32 (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 8))
 (memory $0 0)
 (export "memory" (memory $0))
 (export "x" (global $exportFromIndex/index/x))
 (export "y" (global $exportFromIndex/index/y))
)
