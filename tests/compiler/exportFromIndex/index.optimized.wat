(module
 (global $exportFromIndex/x i32 (i32.const 0))
 (global $exportFromIndex/y i32 (i32.const 0))
 (memory $0 0)
 (export "memory" (memory $0))
 (export "x" (global $exportFromIndex/x))
 (export "y" (global $exportFromIndex/y))
)
