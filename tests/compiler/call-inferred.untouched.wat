(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$dd (func (param f64) (result f64)))
 (type $FUNCSIG$ff (func (param f32) (result f32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00c\00a\00l\00l\00-\00i\00n\00f\00e\00r\00r\00e\00d\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/argc (mut i32) (i32.const 0))
 (export "memory" (memory $0))
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
 (func $call-inferred/bar<f32>|trampoline (; 5 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   f32.const 42
   local.set $0
  end
  local.get $0
  call $call-inferred/bar<f32>
 )
 (func $start:call-inferred (; 6 ;) (type $FUNCSIG$v)
  i32.const 42
  call $call-inferred/foo<i32>
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 42
  call $call-inferred/foo<f64>
  f64.const 42
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 6
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 42
  call $call-inferred/foo<f32>
  f32.const 42
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 7
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $~lib/argc
  f32.const 0
  call $call-inferred/bar<f32>|trampoline
  f32.const 42
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 13
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start (; 7 ;) (type $FUNCSIG$v)
  call $start:call-inferred
 )
 (func $null (; 8 ;) (type $FUNCSIG$v)
 )
)
