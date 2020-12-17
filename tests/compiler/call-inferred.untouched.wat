(module
 (type $f32_=>_f32 (func (param f32) (result f32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $f64_=>_f64 (func (param f64) (result f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 12) "<\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00 \00\00\00c\00a\00l\00l\00-\00i\00n\00f\00e\00r\00r\00e\00d\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 1 funcref)
 (global $~argumentsLength (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $~start)
 (func $call-inferred/foo<i32> (param $0 i32) (result i32)
  local.get $0
 )
 (func $call-inferred/foo<f64> (param $0 f64) (result f64)
  local.get $0
 )
 (func $call-inferred/foo<f32> (param $0 f32) (result f32)
  local.get $0
 )
 (func $call-inferred/bar<f32> (param $0 f32) (result f32)
  local.get $0
 )
 (func $call-inferred/bar<f32>@varargs (param $0 f32) (result f32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
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
 (func $start:call-inferred
  i32.const 42
  call $call-inferred/foo<i32>
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 5
   i32.const 1
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
   i32.const 32
   i32.const 6
   i32.const 1
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
   i32.const 32
   i32.const 7
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $~argumentsLength
  f32.const 0
  call $call-inferred/bar<f32>@varargs
  f32.const 42
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 13
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  call $start:call-inferred
 )
)
