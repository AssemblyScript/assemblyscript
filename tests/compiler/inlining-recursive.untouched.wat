(module
 (type $none_=>_none (func))
 (memory $0 0)
 (table $0 1 funcref)
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
