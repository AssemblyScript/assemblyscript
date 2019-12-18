(module
 (type $none_=>_none (func))
 (memory $0 0)
 (export "memory" (memory $0))
 (export "foo" (func $inlining-recursive/foo))
 (export "bar" (func $inlining-recursive/baz))
 (export "baz" (func $inlining-recursive/baz))
 (func $inlining-recursive/foo (; 0 ;)
  call $inlining-recursive/foo
 )
 (func $inlining-recursive/baz (; 1 ;)
  call $inlining-recursive/baz
 )
)
