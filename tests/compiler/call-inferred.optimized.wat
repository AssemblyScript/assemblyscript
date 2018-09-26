(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$d (func (result f64)))
 (type $FUNCSIG$f (func (result f32)))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00c\00a\00l\00l\00-\00i\00n\00f\00e\00r\00r\00e\00d\00.\00t\00s")
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (export "memory" (memory $0))
 (start $start)
 (func $call-inferred/foo<i32> (; 1 ;) (; has Stack IR ;) (type $FUNCSIG$i) (result i32)
  (i32.const 42)
 )
 (func $call-inferred/foo<f64> (; 2 ;) (; has Stack IR ;) (type $FUNCSIG$d) (result f64)
  (f64.const 42)
 )
 (func $call-inferred/foo<f32> (; 3 ;) (; has Stack IR ;) (type $FUNCSIG$f) (result f32)
  (f32.const 42)
 )
 (func $start (; 4 ;) (; has Stack IR ;) (type $v)
  (if
   (i32.ne
    (call $call-inferred/foo<i32>)
    (i32.const 42)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 5)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (f64.ne
    (call $call-inferred/foo<f64>)
    (f64.const 42)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 6)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (f32.ne
    (call $call-inferred/foo<f32>)
    (f32.const 42)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 7)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (f32.ne
    (call $call-inferred/foo<f32>)
    (f32.const 42)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 13)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
 (func $null (; 5 ;) (; has Stack IR ;) (type $v)
  (nop)
 )
)
