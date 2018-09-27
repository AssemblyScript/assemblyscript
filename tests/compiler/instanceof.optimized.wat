(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (type $FUNCSIG$i (func (result i32)))
 (memory $0 1)
 (data (i32.const 8) "\0d\00\00\00i\00n\00s\00t\00a\00n\00c\00e\00o\00f\00.\00t\00s")
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $instanceof/an (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $start)
 (func $instanceof/isI32<i32> (; 1 ;) (; has Stack IR ;) (type $FUNCSIG$i) (result i32)
  (i32.const 1)
 )
 (func $instanceof/isI32<f64> (; 2 ;) (; has Stack IR ;) (type $FUNCSIG$i) (result i32)
  (i32.const 0)
 )
 (func $start (; 3 ;) (; has Stack IR ;) (type $v)
  (if
   (i32.eqz
    (call $instanceof/isI32<i32>)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 38)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (call $instanceof/isI32<f64>)
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 39)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (call $instanceof/isI32<f64>)
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 40)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (get_global $instanceof/an)
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 43)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $instanceof/an
   (i32.const 1)
  )
  (if
   (i32.eqz
    (get_global $instanceof/an)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 46)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
 (func $null (; 4 ;) (; has Stack IR ;) (type $v)
  (nop)
 )
)
