(module
 (type $none_=>_none (func))
 (type $i64_i32_=>_i32 (func (param i64 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00l\00o\00g\00i\00c\00a\00l\00.\00t\00s\00")
 (table $0 1 funcref)
 (global $logical/i (mut i32) (i32.const 0))
 (global $logical/I (mut i64) (i64.const 0))
 (global $logical/f (mut f32) (f32.const 0))
 (global $logical/F (mut f64) (f64.const 0))
 (export "memory" (memory $0))
 (start $~start)
 (func $logical/testShortcutAnd (; 1 ;) (param $0 i64) (param $1 i32) (result i32)
  local.get $0
  i64.const 0
  i64.ne
  if (result i32)
   local.get $1
   i64.extend_i32_s
   i64.const 0
   i64.ne
  else
   i32.const 0
  end
 )
 (func $logical/testShortcutOr (; 2 ;) (param $0 i64) (param $1 i32) (result i32)
  local.get $0
  i64.const 0
  i64.ne
  if (result i32)
   i32.const 1
  else
   local.get $1
   i64.extend_i32_s
   i64.const 0
   i64.ne
  end
 )
 (func $start:logical (; 3 ;)
  (local $0 f64)
  (local $1 f32)
  i32.const 0
  if (result i32)
   unreachable
  else
   i32.const 0
  end
  drop
  f64.const 0
  local.tee $0
  f64.const 0
  f64.ne
  local.get $0
  local.get $0
  f64.eq
  i32.and
  if (result i32)
   unreachable
  else
   i32.const 0
  end
  drop
  i32.const 1
  if (result i32)
   i32.const 1
  else
   unreachable
  end
  drop
  f64.const 1
  local.tee $0
  f64.const 0
  f64.ne
  local.get $0
  local.get $0
  f64.eq
  i32.and
  if (result i32)
   i32.const 1
  else
   unreachable
  end
  drop
  i32.const 1
  if (result i32)
   i32.const 2
  else
   i32.const 1
  end
  if (result i32)
   i32.const 1
  else
   unreachable
  end
  drop
  f64.const 1
  local.tee $0
  f64.const 0
  f64.ne
  local.get $0
  local.get $0
  f64.eq
  i32.and
  if (result f64)
   f64.const 2
  else
   f64.const 1
  end
  local.tee $0
  f64.const 0
  f64.ne
  local.get $0
  local.get $0
  f64.eq
  i32.and
  if (result i32)
   i32.const 1
  else
   unreachable
  end
  drop
  i32.const 1
  if (result i32)
   i32.const 2
  else
   i32.const 1
  end
  global.set $logical/i
  global.get $logical/i
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 12
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  if (result i32)
   i32.const 0
  else
   i32.const 1
  end
  global.set $logical/i
  global.get $logical/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 15
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 1
  i64.const 0
  i64.ne
  if (result i64)
   i64.const 2
  else
   i64.const 1
  end
  global.set $logical/I
  global.get $logical/I
  i64.const 2
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 20
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 0
  i64.const 0
  i64.ne
  if (result i64)
   i64.const 0
  else
   i64.const 1
  end
  global.set $logical/I
  global.get $logical/I
  i64.const 1
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 23
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1
  local.tee $1
  f32.const 0
  f32.ne
  local.get $1
  local.get $1
  f32.eq
  i32.and
  if (result f32)
   f32.const 2
  else
   f32.const 1
  end
  global.set $logical/f
  global.get $logical/f
  f32.const 2
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 28
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  local.tee $1
  f32.const 0
  f32.ne
  local.get $1
  local.get $1
  f32.eq
  i32.and
  if (result f32)
   f32.const 0
  else
   f32.const 1
  end
  global.set $logical/f
  global.get $logical/f
  f32.const 1
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 31
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1
  local.tee $0
  f64.const 0
  f64.ne
  local.get $0
  local.get $0
  f64.eq
  i32.and
  if (result f64)
   f64.const 2
  else
   f64.const 1
  end
  global.set $logical/F
  global.get $logical/F
  f64.const 2
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 36
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  local.tee $0
  f64.const 0
  f64.ne
  local.get $0
  local.get $0
  f64.eq
  i32.and
  if (result f64)
   f64.const 0
  else
   f64.const 1
  end
  global.set $logical/F
  global.get $logical/F
  f64.const 1
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 39
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const nan:0x400000
  local.tee $1
  f32.const 0
  f32.ne
  local.get $1
  local.get $1
  f32.eq
  i32.and
  if (result f32)
   f32.const nan:0x400000
  else
   f32.const 1
  end
  global.set $logical/f
  global.get $logical/f
  f32.const 1
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 44
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1
  local.tee $1
  f32.const 0
  f32.ne
  local.get $1
  local.get $1
  f32.eq
  i32.and
  if (result f32)
   f32.const 1
  else
   f32.const nan:0x400000
  end
  global.set $logical/f
  global.get $logical/f
  f32.const 1
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 47
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  local.tee $0
  f64.const 0
  f64.ne
  local.get $0
  local.get $0
  f64.eq
  i32.and
  if (result f64)
   f64.const nan:0x8000000000000
  else
   f64.const 1
  end
  global.set $logical/F
  global.get $logical/F
  f64.const 1
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 50
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1
  local.tee $0
  f64.const 0
  f64.ne
  local.get $0
  local.get $0
  f64.eq
  i32.and
  if (result f64)
   f64.const 1
  else
   f64.const nan:0x8000000000000
  end
  global.set $logical/F
  global.get $logical/F
  f64.const 1
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 53
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1
  local.tee $1
  f32.const 0
  f32.ne
  local.get $1
  local.get $1
  f32.eq
  i32.and
  if (result f32)
   f32.const nan:0x400000
  else
   f32.const 1
  end
  global.set $logical/f
  global.get $logical/f
  local.tee $1
  local.get $1
  f32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 56
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const nan:0x400000
  local.tee $1
  f32.const 0
  f32.ne
  local.get $1
  local.get $1
  f32.eq
  i32.and
  if (result f32)
   f32.const 1
  else
   f32.const nan:0x400000
  end
  global.set $logical/f
  global.get $logical/f
  local.tee $1
  local.get $1
  f32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 59
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1
  local.tee $0
  f64.const 0
  f64.ne
  local.get $0
  local.get $0
  f64.eq
  i32.and
  if (result f64)
   f64.const nan:0x8000000000000
  else
   f64.const 1
  end
  global.set $logical/F
  global.get $logical/F
  local.tee $0
  local.get $0
  f64.ne
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 62
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  local.tee $0
  f64.const 0
  f64.ne
  local.get $0
  local.get $0
  f64.eq
  i32.and
  if (result f64)
   f64.const 1
  else
   f64.const nan:0x8000000000000
  end
  global.set $logical/F
  global.get $logical/F
  local.tee $0
  local.get $0
  f64.ne
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 65
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 1
  i32.const 1
  call $logical/testShortcutAnd
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 76
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 0
  i32.const 1
  call $logical/testShortcutOr
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 77
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start (; 4 ;)
  call $start:logical
 )
)
