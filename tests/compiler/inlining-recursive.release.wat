(module
 (type $none_=>_none (func_subtype func))
 (memory $0 0)
 (export "foo" (func $inlining-recursive/foo))
 (export "bar" (func $inlining-recursive/baz))
 (export "baz" (func $inlining-recursive/baz))
 (export "memory" (memory $0))
 (func $inlining-recursive/foo (type $none_=>_none)
  call $inlining-recursive/foo
 )
 (func $inlining-recursive/baz (type $none_=>_none)
  call $inlining-recursive/baz
 )
)
