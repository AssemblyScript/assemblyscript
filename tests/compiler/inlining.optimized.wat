(module
 (type $i (func (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (type $ii (func (param i32) (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $~argc (mut i32) (i32.const 0))
 (table 1 1 anyfunc)
 (elem (i32.const 0) $inlining/test_funcs~anonymous|0)
 (memory $0 1)
 (data (i32.const 8) "\0b\00\00\00i\00n\00l\00i\00n\00i\00n\00g\00.\00t\00s")
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "test" (func $inlining/test))
 (start $start)
 (func $inlining/test (; 1 ;) (type $i) (result i32)
  (i32.const 3)
 )
 (func $inlining/test_funcs~anonymous|0 (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (get_local $0)
 )
 (func $inlining/test_funcs (; 3 ;) (type $v)
  (set_global $~argc
   (i32.const 1)
  )
  (if
   (i32.ne
    (call_indirect (type $ii)
     (i32.const 2)
     (i32.const 0)
    )
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 68)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $start (; 4 ;) (type $v)
  (if
   (i32.ne
    (call $inlining/test)
    (i32.const 3)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 10)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call $inlining/test_funcs)
 )
)
