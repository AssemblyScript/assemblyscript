(module
 (type $i (func (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $static-this/Foo.bar (mut i32) (i32.const 42))
 (global $HEAP_BASE i32 (i32.const 40))
 (memory $0 1)
 (data (i32.const 8) "\0e\00\00\00s\00t\00a\00t\00i\00c\00-\00t\00h\00i\00s\00.\00t\00s\00")
 (export "memory" (memory $0))
 (start $start)
 (func $static-this/Foo.getBar (; 1 ;) (type $i) (result i32)
  (return
   (get_global $static-this/Foo.bar)
  )
 )
 (func $start (; 2 ;) (type $v)
  (if
   (i32.eqz
    (i32.eq
     (call $static-this/Foo.getBar)
     (i32.const 42)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 8)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
