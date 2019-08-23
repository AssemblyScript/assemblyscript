(module
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$if (func (param f32) (result i32)))
 (type $FUNCSIG$id (func (param f64) (result i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00l\00o\00g\00i\00c\00a\00l\00.\00t\00s")
 (global $logical/i (mut i32) (i32.const 0))
 (global $logical/I (mut i64) (i64.const 0))
 (global $logical/f (mut f32) (f32.const 0))
 (global $logical/F (mut f64) (f64.const 0))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/number/isNaN<f32> (; 1 ;) (type $FUNCSIG$if) (param $0 f32) (result i32)
  local.get $0
  local.get $0
  f32.ne
 )
 (func $~lib/number/isNaN<f64> (; 2 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  local.get $0
  local.get $0
  f64.ne
 )
 (func $start:logical (; 3 ;) (type $FUNCSIG$v)
  (local $0 f64)
  f64.const 2
  local.tee $0
  f64.const 0
  f64.eq
  if
   unreachable
  end
  i32.const 2
  global.set $logical/i
  global.get $logical/i
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 12
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $logical/i
  global.get $logical/i
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 15
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 2
  global.set $logical/I
  global.get $logical/I
  i64.const 2
  i64.ne
  if
   i32.const 0
   i32.const 24
   i32.const 20
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 1
  global.set $logical/I
  global.get $logical/I
  i64.const 1
  i64.ne
  if
   i32.const 0
   i32.const 24
   i32.const 23
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 2
  global.set $logical/f
  global.get $logical/f
  f32.const 2
  f32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 28
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1
  global.set $logical/f
  global.get $logical/f
  f32.const 1
  f32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 31
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 2
  global.set $logical/F
  global.get $logical/F
  f64.const 2
  f64.ne
  if
   i32.const 0
   i32.const 24
   i32.const 36
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1
  global.set $logical/F
  global.get $logical/F
  f64.const 1
  f64.ne
  if
   i32.const 0
   i32.const 24
   i32.const 39
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1
  global.set $logical/f
  global.get $logical/f
  f32.const 1
  f32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 42
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1
  global.set $logical/f
  global.get $logical/f
  f32.const 1
  f32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 45
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1
  global.set $logical/F
  global.get $logical/F
  f64.const 1
  f64.ne
  if
   i32.const 0
   i32.const 24
   i32.const 48
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1
  global.set $logical/F
  global.get $logical/F
  f64.const 1
  f64.ne
  if
   i32.const 0
   i32.const 24
   i32.const 51
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const nan:0x400000
  global.set $logical/f
  global.get $logical/f
  call $~lib/number/isNaN<f32>
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 54
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const nan:0x400000
  global.set $logical/f
  global.get $logical/f
  call $~lib/number/isNaN<f32>
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 57
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  global.set $logical/F
  global.get $logical/F
  call $~lib/number/isNaN<f64>
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 60
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  global.set $logical/F
  global.get $logical/F
  call $~lib/number/isNaN<f64>
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 63
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start (; 4 ;) (type $FUNCSIG$v)
  call $start:logical
 )
 (func $null (; 5 ;) (type $FUNCSIG$v)
  nop
 )
)
