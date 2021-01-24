(module
 (type $none_=>_none (func))
 (memory $0 0)
 (table $0 1 funcref)
 (global $~lib/memory/__data_end i32 (i32.const 8))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16392))
 (global $~lib/memory/__heap_base i32 (i32.const 16392))
 (export "foo" (func $inlining-recursive/foo))
 (export "bar" (func $inlining-recursive/bar))
 (export "baz" (func $inlining-recursive/baz))
 (export "memory" (memory $0))
 (func $inlining-recursive/foo
  call $inlining-recursive/foo
 )
 (func $inlining-recursive/baz
  call $inlining-recursive/bar
 )
 (func $inlining-recursive/bar
  call $inlining-recursive/baz
 )
)
