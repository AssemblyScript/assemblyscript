(module
 (type $0 (func))
 (memory $0 0)
 (export "foo" (func $inlining-recursive/foo))
 (export "bar" (func $inlining-recursive/baz))
 (export "baz" (func $inlining-recursive/baz))
 (export "memory" (memory $0))
 (func $inlining-recursive/foo
  call $inlining-recursive/foo
 )
 (func $inlining-recursive/baz
  call $inlining-recursive/baz
 )
)
