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
 (func $logical/testShortcutAnd (param $0 i64) (param $1 i32) (result i32)
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
 (func $logical/testShortcutOr (param $0 i64) (param $1 i32) (result i32)
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
 (func $start:logical
  (local $0 f64)
  (local $1 f64)
  (local $2 f64)
  (local $3 f64)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f32)
  (local $8 f32)
  (local $9 f64)
  (local $10 f64)
  (local $11 f32)
  (local $12 f32)
  (local $13 f64)
  (local $14 f64)
  (local $15 f32)
  (local $16 f32)
  (local $17 f32)
  (local $18 f32)
  (local $19 f64)
  (local $20 f64)
  (local $21 f64)
  (local $22 f64)
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
  local.tee $2
  f64.const 0
  f64.ne
  local.get $2
  local.get $2
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
  local.tee $4
  f64.const 0
  f64.ne
  local.get $4
  local.get $4
  f64.eq
  i32.and
  if (result f64)
   f64.const 2
  else
   f64.const 1
  end
  local.tee $5
  f64.const 0
  f64.ne
  local.get $5
  local.get $5
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
   i32.const 1
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
   i32.const 1
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
   i32.const 1
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
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1
  local.tee $7
  f32.const 0
  f32.ne
  local.get $7
  local.get $7
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
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  local.tee $8
  f32.const 0
  f32.ne
  local.get $8
  local.get $8
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
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1
  local.tee $9
  f64.const 0
  f64.ne
  local.get $9
  local.get $9
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
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  local.tee $10
  f64.const 0
  f64.ne
  local.get $10
  local.get $10
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
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const nan:0x400000
  local.tee $11
  f32.const 0
  f32.ne
  local.get $11
  local.get $11
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
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1
  local.tee $12
  f32.const 0
  f32.ne
  local.get $12
  local.get $12
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
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  local.tee $13
  f64.const 0
  f64.ne
  local.get $13
  local.get $13
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
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1
  local.tee $14
  f64.const 0
  f64.ne
  local.get $14
  local.get $14
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
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1
  local.tee $15
  f32.const 0
  f32.ne
  local.get $15
  local.get $15
  f32.eq
  i32.and
  if (result f32)
   f32.const nan:0x400000
  else
   f32.const 1
  end
  global.set $logical/f
  global.get $logical/f
  local.tee $16
  local.get $16
  f32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 56
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const nan:0x400000
  local.tee $17
  f32.const 0
  f32.ne
  local.get $17
  local.get $17
  f32.eq
  i32.and
  if (result f32)
   f32.const 1
  else
   f32.const nan:0x400000
  end
  global.set $logical/f
  global.get $logical/f
  local.tee $18
  local.get $18
  f32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 59
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1
  local.tee $19
  f64.const 0
  f64.ne
  local.get $19
  local.get $19
  f64.eq
  i32.and
  if (result f64)
   f64.const nan:0x8000000000000
  else
   f64.const 1
  end
  global.set $logical/F
  global.get $logical/F
  local.tee $20
  local.get $20
  f64.ne
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 62
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  local.tee $21
  f64.const 0
  f64.ne
  local.get $21
  local.get $21
  f64.eq
  i32.and
  if (result f64)
   f64.const 1
  else
   f64.const nan:0x8000000000000
  end
  global.set $logical/F
  global.get $logical/F
  local.tee $22
  local.get $22
  f64.ne
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 65
   i32.const 1
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
   i32.const 1
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
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  call $start:logical
 )
)
