(module
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
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
 (func $start:logical (; 1 ;) (type $FUNCSIG$v)
  (local $0 f32)
  (local $1 f64)
  i32.const 2
  global.set $logical/i
  i32.const 1
  global.set $logical/i
  i64.const 2
  global.set $logical/I
  i64.const 1
  global.set $logical/I
  f32.const 2
  global.set $logical/f
  f32.const 1
  global.set $logical/f
  f64.const 2
  global.set $logical/F
  f64.const 1
  global.set $logical/F
  f32.const 1
  global.set $logical/f
  f32.const 1
  global.set $logical/f
  f64.const 1
  global.set $logical/F
  f64.const 1
  global.set $logical/F
  f32.const nan:0x400000
  global.set $logical/f
  f32.const nan:0x400000
  local.tee $0
  local.get $0
  f32.eq
  if
   i32.const 0
   i32.const 24
   i32.const 56
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const nan:0x400000
  global.set $logical/f
  f32.const nan:0x400000
  local.tee $0
  local.get $0
  f32.eq
  if
   i32.const 0
   i32.const 24
   i32.const 59
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  global.set $logical/F
  f64.const nan:0x8000000000000
  local.tee $1
  local.get $1
  f64.eq
  if
   i32.const 0
   i32.const 24
   i32.const 62
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  global.set $logical/F
  f64.const nan:0x8000000000000
  local.tee $1
  local.get $1
  f64.eq
  if
   i32.const 0
   i32.const 24
   i32.const 65
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start (; 2 ;) (type $FUNCSIG$v)
  call $start:logical
 )
 (func $null (; 3 ;) (type $FUNCSIG$v)
  nop
 )
)
