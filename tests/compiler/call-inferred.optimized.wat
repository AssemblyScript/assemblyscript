(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$d (func (result f64)))
 (type $FUNCSIG$f (func (result f32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00c\00a\00l\00l\00-\00i\00n\00f\00e\00r\00r\00e\00d\00.\00t\00s")
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $call-inferred/foo<i32> (; 1 ;) (type $FUNCSIG$i) (result i32)
  i32.const 42
 )
 (func $call-inferred/foo<f64> (; 2 ;) (type $FUNCSIG$d) (result f64)
  f64.const 42
 )
 (func $call-inferred/foo<f32> (; 3 ;) (type $FUNCSIG$f) (result f32)
  f32.const 42
 )
 (func $start (; 4 ;) (type $v)
  call $call-inferred/foo<i32>
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 5
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  call $call-inferred/foo<f64>
  f64.const 42
  f64.ne
  if
   i32.const 0
   i32.const 8
   i32.const 6
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  call $call-inferred/foo<f32>
  f32.const 42
  f32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 7
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  call $call-inferred/foo<f32>
  f32.const 42
  f32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 13
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $null (; 5 ;) (type $v)
  nop
 )
)
