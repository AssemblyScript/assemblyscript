(module
 (type $FUNCSIG$v (func))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/memory/HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "foo" (func $inlining-recursive/foo))
 (export "bar" (func $inlining-recursive/bar))
 (export "baz" (func $inlining-recursive/baz))
 (func $inlining-recursive/foo (; 0 ;) (type $FUNCSIG$v)
  call $inlining-recursive/foo
 )
 (func $inlining-recursive/baz (; 1 ;) (type $FUNCSIG$v)
  call $inlining-recursive/bar
 )
 (func $inlining-recursive/bar (; 2 ;) (type $FUNCSIG$v)
  block $inlining-recursive/bar|inlined.0
   call $inlining-recursive/baz
  end
 )
 (func $null (; 3 ;) (type $FUNCSIG$v)
 )
)
