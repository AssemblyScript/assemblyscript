(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$dd (func (param f64) (result f64)))
 (type $FUNCSIG$ff (func (param f32) (result f32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00c\00a\00l\00l\00-\00i\00n\00f\00e\00r\00r\00e\00d\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/memory/HEAP_BASE i32 (i32.const 44))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $call-inferred/foo<i32> (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $call-inferred/foo<f64> (; 2 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
 )
 (func $call-inferred/foo<f32> (; 3 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
 )
 (func $call-inferred/bar<f32> (; 4 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
 )
 (func $start:call-inferred (; 5 ;) (type $FUNCSIG$v)
  i32.const 42
  call $call-inferred/foo<i32>
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 5
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const 42
  call $call-inferred/foo<f64>
  f64.const 42
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 6
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f32.const 42
  call $call-inferred/foo<f32>
  f32.const 42
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 7
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f32.const 42
  call $call-inferred/bar<f32>
  f32.const 42
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 13
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start (; 6 ;) (type $FUNCSIG$v)
  call $start:call-inferred
 )
 (func $null (; 7 ;) (type $FUNCSIG$v)
 )
)
