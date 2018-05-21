(module
 (type $ii (func (param i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\0e\00\00\00m\00a\00n\00y\00-\00l\00o\00c\00a\00l\00s\00.\00t\00s")
 (export "testI32" (func $many-locals/testI32))
 (export "testI8" (func $many-locals/testI8))
 (export "memory" (memory $0))
 (start $start)
 (func $many-locals/testI32 (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (get_local $0)
 )
 (func $many-locals/testI8 (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (i32.shr_s
   (i32.shl
    (get_local $0)
    (i32.const 24)
   )
   (i32.const 24)
  )
 )
 (func $start (; 3 ;) (type $v)
  (if
   (i32.ne
    (call $many-locals/testI32
     (i32.const 42)
    )
    (i32.const 42)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 133)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $many-locals/testI8
     (i32.const 42)
    )
    (i32.const 42)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 267)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
