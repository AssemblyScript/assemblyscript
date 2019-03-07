(module
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\0b\00\00\00b\00u\00i\00l\00t\00i\00n\00s\00.\00t\00s\00")
 (data (i32.const 40) "\01\00\00\001\00")
 (table $0 2 funcref)
 (elem (i32.const 0) $null $start:builtins~anonymous|0)
 (global $builtins/b (mut i32) (i32.const 0))
 (global $builtins/i (mut i32) (i32.const 0))
 (global $builtins/I (mut i64) (i64.const 0))
 (global $builtins/f (mut f32) (f32.const 0))
 (global $builtins/F (mut f64) (f64.const 0))
 (global $builtins/constantOffset i32 (i32.const 8))
 (global $builtins/u (mut i32) (i32.const 0))
 (global $builtins/U (mut i64) (i64.const 0))
 (global $builtins/s (mut i32) (i32.const 0))
 (global $builtins/fn (mut i32) (i32.const 1))
 (global $~lib/builtins/i8.MIN_VALUE i32 (i32.const -128))
 (global $~lib/builtins/i8.MAX_VALUE i32 (i32.const 127))
 (global $~lib/builtins/i16.MIN_VALUE i32 (i32.const -32768))
 (global $~lib/builtins/i16.MAX_VALUE i32 (i32.const 32767))
 (global $~lib/builtins/i32.MIN_VALUE i32 (i32.const -2147483648))
 (global $~lib/builtins/i32.MAX_VALUE i32 (i32.const 2147483647))
 (global $~lib/builtins/i64.MIN_VALUE i64 (i64.const -9223372036854775808))
 (global $~lib/builtins/i64.MAX_VALUE i64 (i64.const 9223372036854775807))
 (global $~lib/builtins/u8.MIN_VALUE i32 (i32.const 0))
 (global $~lib/builtins/u8.MAX_VALUE i32 (i32.const 255))
 (global $~lib/builtins/u16.MIN_VALUE i32 (i32.const 0))
 (global $~lib/builtins/u16.MAX_VALUE i32 (i32.const 65535))
 (global $~lib/builtins/u32.MIN_VALUE i32 (i32.const 0))
 (global $~lib/builtins/u32.MAX_VALUE i32 (i32.const -1))
 (global $~lib/builtins/u64.MIN_VALUE i64 (i64.const 0))
 (global $~lib/builtins/u64.MAX_VALUE i64 (i64.const -1))
 (global $~lib/builtins/bool.MIN_VALUE i32 (i32.const 0))
 (global $~lib/builtins/bool.MAX_VALUE i32 (i32.const 1))
 (global $~lib/builtins/f32.MIN_NORMAL_VALUE f32 (f32.const 1.1754943508222875e-38))
 (global $~lib/builtins/f32.MIN_VALUE f32 (f32.const 1.401298464324817e-45))
 (global $~lib/builtins/f32.MAX_VALUE f32 (f32.const 3402823466385288598117041e14))
 (global $~lib/builtins/f32.MIN_SAFE_INTEGER f32 (f32.const -16777215))
 (global $~lib/builtins/f32.MAX_SAFE_INTEGER f32 (f32.const 16777215))
 (global $~lib/builtins/f32.EPSILON f32 (f32.const 1.1920928955078125e-07))
 (global $~lib/builtins/f64.MIN_NORMAL_VALUE f64 (f64.const 2.2250738585072014e-308))
 (global $~lib/builtins/f64.MIN_VALUE f64 (f64.const 5e-324))
 (global $~lib/builtins/f64.MAX_VALUE f64 (f64.const 1797693134862315708145274e284))
 (global $~lib/builtins/f64.MIN_SAFE_INTEGER f64 (f64.const -9007199254740991))
 (global $~lib/builtins/f64.MAX_SAFE_INTEGER f64 (f64.const 9007199254740991))
 (global $~lib/builtins/f64.EPSILON f64 (f64.const 2.220446049250313e-16))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 48))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "test" (func $builtins/test))
 (start $start)
 (func $start:builtins~anonymous|0 (; 1 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $start:builtins (; 2 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 f32)
  (local $5 f64)
  i32.const 1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 6
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 7
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 8
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 9
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 10
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 11
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 12
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 13
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 14
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 15
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 16
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 17
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 18
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 19
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 20
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 21
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 23
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 24
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 25
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 26
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 27
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 28
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 29
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 30
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 31
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 32
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 33
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 34
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 35
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 36
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 37
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 38
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 39
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 43
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 44
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 45
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 46
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.clz
  drop
  i32.const 1
  i32.ctz
  drop
  i32.const 1
  i32.popcnt
  drop
  i32.const 1
  i32.const 1
  i32.rotl
  drop
  i32.const 1
  i32.const 1
  i32.rotr
  drop
  i32.const -42
  local.tee $0
  i32.const 31
  i32.shr_s
  local.tee $1
  local.get $0
  i32.add
  local.get $1
  i32.xor
  drop
  i32.const 1
  local.tee $0
  i32.const 2
  local.tee $1
  local.get $0
  local.get $1
  i32.gt_s
  select
  drop
  i32.const 1
  local.tee $0
  i32.const 2
  local.tee $1
  local.get $0
  local.get $1
  i32.lt_s
  select
  drop
  i32.const 1
  i32.clz
  global.set $builtins/i
  i32.const 1
  i32.ctz
  global.set $builtins/i
  i32.const 1
  i32.popcnt
  global.set $builtins/i
  i32.const 1
  i32.const 1
  i32.rotl
  global.set $builtins/i
  i32.const 1
  i32.const 1
  i32.rotr
  global.set $builtins/i
  i32.const -42
  local.tee $0
  i32.const 31
  i32.shr_s
  local.tee $1
  local.get $0
  i32.add
  local.get $1
  i32.xor
  global.set $builtins/i
  global.get $builtins/i
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 66
   i32.const 19
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  local.tee $0
  i32.const 2
  local.tee $1
  local.get $0
  local.get $1
  i32.gt_s
  select
  global.set $builtins/i
  global.get $builtins/i
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 67
   i32.const 20
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  local.tee $0
  i32.const 2
  local.tee $1
  local.get $0
  local.get $1
  i32.lt_s
  select
  global.set $builtins/i
  global.get $builtins/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 68
   i32.const 20
   call $~lib/env/abort
   unreachable
  end
  i64.const 1
  i64.clz
  drop
  i64.const 1
  i64.ctz
  drop
  i64.const 1
  i64.popcnt
  drop
  i64.const 1
  i64.const 1
  i64.rotl
  drop
  i64.const 1
  i64.const 1
  i64.rotr
  drop
  i64.const -42
  local.tee $2
  i64.const 63
  i64.shr_s
  local.tee $3
  local.get $2
  i64.add
  local.get $3
  i64.xor
  drop
  i64.const 1
  i64.clz
  global.set $builtins/I
  i64.const 1
  i64.ctz
  global.set $builtins/I
  i64.const 1
  i64.popcnt
  global.set $builtins/I
  i64.const 1
  i64.const 1
  i64.rotl
  global.set $builtins/I
  i64.const 1
  i64.const 1
  i64.rotr
  global.set $builtins/I
  i64.const -42
  local.tee $2
  i64.const 63
  i64.shr_s
  local.tee $3
  local.get $2
  i64.add
  local.get $3
  i64.xor
  global.set $builtins/I
  global.get $builtins/I
  i64.const 42
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 84
   i32.const 19
   call $~lib/env/abort
   unreachable
  end
  i64.const 1
  local.tee $2
  i64.const 2
  local.tee $3
  local.get $2
  local.get $3
  i64.gt_s
  select
  global.set $builtins/I
  global.get $builtins/I
  i64.const 2
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 85
   i32.const 20
   call $~lib/env/abort
   unreachable
  end
  i64.const 1
  local.tee $2
  i64.const 2
  local.tee $3
  local.get $2
  local.get $3
  i64.lt_s
  select
  global.set $builtins/I
  global.get $builtins/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 86
   i32.const 20
   call $~lib/env/abort
   unreachable
  end
  f32.const nan:0x400000
  drop
  f32.const inf
  drop
  f32.const 1.25
  f32.abs
  drop
  f32.const 1.25
  f32.ceil
  drop
  f32.const 1.25
  f32.const 2.5
  f32.copysign
  drop
  f32.const 1.25
  f32.floor
  drop
  f32.const 1.25
  f32.const 2.5
  f32.max
  drop
  f32.const 1.25
  f32.const 2.5
  f32.min
  drop
  f32.const 1.25
  f32.nearest
  drop
  f32.const 1.25
  f32.sqrt
  drop
  f32.const 1.25
  f32.trunc
  drop
  block $~lib/builtins/isNaN<f32>|inlined.0 (result i32)
   f32.const 1.25
   local.set $4
   local.get $4
   local.get $4
   f32.ne
  end
  i32.const 0
  i32.ne
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 103
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/builtins/isNaN<f32>|inlined.1 (result i32)
   f32.const nan:0x400000
   local.set $4
   local.get $4
   local.get $4
   f32.ne
  end
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 104
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/builtins/isFinite<f32>|inlined.0 (result i32)
   f32.const 1.25
   local.set $4
   local.get $4
   local.get $4
   f32.sub
   f32.const 0
   f32.eq
  end
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 105
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/builtins/isFinite<f32>|inlined.1 (result i32)
   f32.const inf
   local.set $4
   local.get $4
   local.get $4
   f32.sub
   f32.const 0
   f32.eq
  end
  i32.const 0
  i32.ne
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 106
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/builtins/isFinite<f32>|inlined.2 (result i32)
   f32.const inf
   f32.neg
   local.set $4
   local.get $4
   local.get $4
   f32.sub
   f32.const 0
   f32.eq
  end
  i32.const 0
  i32.ne
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 107
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/builtins/isFinite<f32>|inlined.3 (result i32)
   f32.const nan:0x400000
   local.set $4
   local.get $4
   local.get $4
   f32.sub
   f32.const 0
   f32.eq
  end
  i32.const 0
  i32.ne
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 108
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f32.const nan:0x400000
  global.set $builtins/f
  f32.const inf
  global.set $builtins/f
  f32.const 1.25
  f32.abs
  global.set $builtins/f
  f32.const 1.25
  f32.ceil
  global.set $builtins/f
  f32.const 1.25
  f32.const 2.5
  f32.copysign
  global.set $builtins/f
  f32.const 1.25
  f32.floor
  global.set $builtins/f
  f32.const 1.25
  f32.const 2.5
  f32.max
  global.set $builtins/f
  f32.const 1.25
  f32.const 2.5
  f32.min
  global.set $builtins/f
  f32.const 1.25
  f32.nearest
  global.set $builtins/f
  f32.const 1.25
  f32.sqrt
  global.set $builtins/f
  f32.const 1.25
  f32.trunc
  global.set $builtins/f
  block $~lib/builtins/isNaN<f32>|inlined.2 (result i32)
   f32.const 1.25
   local.set $4
   local.get $4
   local.get $4
   f32.ne
  end
  i32.const 0
  i32.ne
  global.set $builtins/b
  block $~lib/builtins/isFinite<f32>|inlined.4 (result i32)
   f32.const 1.25
   local.set $4
   local.get $4
   local.get $4
   f32.sub
   f32.const 0
   f32.eq
  end
  i32.const 0
  i32.ne
  global.set $builtins/b
  f64.const nan:0x8000000000000
  drop
  f64.const inf
  drop
  f64.const nan:0x8000000000000
  drop
  f64.const inf
  drop
  f64.const 1.25
  f64.abs
  drop
  f64.const 1.25
  f64.ceil
  drop
  f64.const 1.25
  f64.const 2.5
  f64.copysign
  drop
  f64.const 1.25
  f64.floor
  drop
  f64.const 1.25
  f64.const 2.5
  f64.max
  drop
  f64.const 1.25
  f64.const 2.5
  f64.min
  drop
  f64.const 1.25
  f64.nearest
  drop
  f64.const 1.25
  f64.sqrt
  drop
  f64.const 1.25
  f64.trunc
  drop
  block $~lib/builtins/isNaN<f64>|inlined.0 (result i32)
   f64.const 1.25
   local.set $5
   local.get $5
   local.get $5
   f64.ne
  end
  i32.const 0
  i32.ne
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 139
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/builtins/isNaN<f64>|inlined.1 (result i32)
   f64.const nan:0x8000000000000
   local.set $5
   local.get $5
   local.get $5
   f64.ne
  end
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 140
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/builtins/isFinite<f64>|inlined.0 (result i32)
   f64.const 1.25
   local.set $5
   local.get $5
   local.get $5
   f64.sub
   f64.const 0
   f64.eq
  end
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 141
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/builtins/isFinite<f64>|inlined.1 (result i32)
   f64.const inf
   local.set $5
   local.get $5
   local.get $5
   f64.sub
   f64.const 0
   f64.eq
  end
  i32.const 0
  i32.ne
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 142
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/builtins/isFinite<f64>|inlined.2 (result i32)
   f64.const inf
   f64.neg
   local.set $5
   local.get $5
   local.get $5
   f64.sub
   f64.const 0
   f64.eq
  end
  i32.const 0
  i32.ne
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 143
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/builtins/isFinite<f64>|inlined.3 (result i32)
   f64.const nan:0x8000000000000
   local.set $5
   local.get $5
   local.get $5
   f64.sub
   f64.const 0
   f64.eq
  end
  i32.const 0
  i32.ne
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 144
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  global.set $builtins/F
  f64.const inf
  global.set $builtins/F
  f64.const 1.25
  f64.abs
  global.set $builtins/F
  f64.const 1.25
  f64.ceil
  global.set $builtins/F
  f64.const 1.25
  f64.const 2.5
  f64.copysign
  global.set $builtins/F
  f64.const 1.25
  f64.floor
  global.set $builtins/F
  f64.const 1.25
  f64.const 2.5
  f64.max
  global.set $builtins/F
  f64.const 1.25
  f64.const 2.5
  f64.min
  global.set $builtins/F
  f64.const 1.25
  f64.nearest
  global.set $builtins/F
  f64.const 1.25
  f64.sqrt
  global.set $builtins/F
  f64.const 1.25
  f64.trunc
  global.set $builtins/F
  block $~lib/builtins/isNaN<f64>|inlined.2 (result i32)
   f64.const 1.25
   local.set $5
   local.get $5
   local.get $5
   f64.ne
  end
  i32.const 0
  i32.ne
  global.set $builtins/b
  block $~lib/builtins/isFinite<f64>|inlined.4 (result i32)
   f64.const 1.25
   local.set $5
   local.get $5
   local.get $5
   f64.sub
   f64.const 0
   f64.eq
  end
  i32.const 0
  i32.ne
  global.set $builtins/b
  i32.const 8
  i32.load
  global.set $builtins/i
  i32.const 8
  global.get $builtins/i
  i32.store
  i32.const 8
  i32.const 8
  i32.load
  i32.store
  i32.const 8
  i64.load
  global.set $builtins/I
  i32.const 8
  global.get $builtins/I
  i64.store
  i32.const 8
  i32.const 8
  i64.load
  i64.store
  i32.const 8
  f32.load
  global.set $builtins/f
  i32.const 8
  global.get $builtins/f
  f32.store
  i32.const 8
  i32.const 8
  f32.load
  f32.store
  i32.const 8
  f64.load
  global.set $builtins/F
  i32.const 8
  global.get $builtins/F
  f64.store
  i32.const 8
  i32.const 8
  f64.load
  f64.store
  i32.const 0
  i32.load offset=8
  global.set $builtins/i
  i32.const 0
  global.get $builtins/i
  i32.store offset=8
  i32.const 0
  i32.const 0
  i32.load offset=8
  i32.store offset=8
  i32.const 0
  i64.load offset=8
  global.set $builtins/I
  i32.const 0
  global.get $builtins/I
  i64.store offset=8
  i32.const 0
  i32.const 0
  i64.load offset=8
  i64.store offset=8
  i32.const 0
  f32.load offset=8
  global.set $builtins/f
  i32.const 0
  global.get $builtins/f
  f32.store offset=8
  i32.const 0
  i32.const 0
  f32.load offset=8
  f32.store offset=8
  i32.const 0
  f64.load offset=8
  global.set $builtins/F
  i32.const 0
  global.get $builtins/F
  f64.store offset=8
  i32.const 0
  i32.const 0
  f64.load offset=8
  f64.store offset=8
  i32.const 8
  i32.load8_s
  global.set $builtins/i
  i32.const 8
  i32.load16_s
  global.set $builtins/i
  i32.const 8
  i32.load
  global.set $builtins/i
  i32.const 8
  i32.load8_u
  global.set $builtins/i
  i32.const 8
  i32.load16_u
  global.set $builtins/i
  i32.const 8
  i32.load
  global.set $builtins/i
  i32.const 8
  i32.load8_u
  global.set $builtins/u
  i32.const 8
  i32.load16_u
  global.set $builtins/u
  i32.const 8
  i32.load
  global.set $builtins/u
  i32.const 8
  i32.load8_s
  global.set $builtins/u
  i32.const 8
  i32.load16_s
  global.set $builtins/u
  i32.const 8
  i32.load
  global.set $builtins/u
  i32.const 8
  i64.load8_s
  global.set $builtins/I
  i32.const 8
  i64.load16_s
  global.set $builtins/I
  i32.const 8
  i64.load32_s
  global.set $builtins/I
  i32.const 8
  i64.load
  global.set $builtins/I
  i32.const 8
  i64.load8_u
  global.set $builtins/U
  i32.const 8
  i64.load16_u
  global.set $builtins/U
  i32.const 8
  i64.load32_u
  global.set $builtins/U
  i32.const 8
  i64.load
  global.set $builtins/U
  i32.const 8
  i32.const 1
  i32.store8
  i32.const 8
  i32.const 1
  i32.store16
  i32.const 8
  i32.const 1
  i32.store
  i32.const 8
  i64.const 1
  i64.store8
  i32.const 8
  i64.const 1
  i64.store16
  i32.const 8
  i64.const 1
  i64.store32
  i32.const 8
  i64.const 1
  i64.store
  i32.const 8
  i32.const 1
  i64.extend_i32_s
  i64.store
  f32.const 1.25
  i32.reinterpret_f32
  drop
  i32.const 25
  f32.reinterpret_i32
  drop
  f64.const 1.25
  i64.reinterpret_f64
  drop
  i64.const 25
  f64.reinterpret_i64
  drop
  f32.const 1.25
  i32.reinterpret_f32
  global.set $builtins/i
  i32.const 25
  f32.reinterpret_i32
  global.set $builtins/f
  f64.const 1.25
  i64.reinterpret_f64
  global.set $builtins/I
  i64.const 25
  f64.reinterpret_i64
  global.set $builtins/F
  current_memory
  drop
  i32.const 1
  grow_memory
  drop
  current_memory
  global.set $builtins/s
  i32.const 1
  grow_memory
  global.set $builtins/s
  i32.const 10
  i32.const 20
  i32.const 1
  select
  drop
  i64.const 100
  i64.const 200
  i32.const 0
  select
  drop
  f32.const 1.25
  f32.const 2.5
  i32.const 1
  select
  drop
  f64.const 12.5
  f64.const 25
  i32.const 0
  select
  drop
  i32.const 10
  i32.const 20
  i32.const 1
  select
  global.set $builtins/i
  i64.const 100
  i64.const 200
  i32.const 0
  select
  global.set $builtins/I
  f32.const 1.25
  f32.const 2.5
  i32.const 1
  select
  global.set $builtins/f
  f64.const 12.5
  f64.const 25
  i32.const 0
  select
  global.set $builtins/F
  global.get $builtins/i
  i32.eqz
  if
   unreachable
  end
  i32.const 1
  i32.const 2
  global.get $builtins/fn
  call_indirect (type $FUNCSIG$vii)
  i32.const 1
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 263
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 264
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 4
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 265
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 8
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 266
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 4
  drop
  i32.const 1
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 268
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 269
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 270
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 4
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 271
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 8
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 272
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 4
  drop
  i32.const 4
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 274
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 8
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 275
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 277
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 278
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 279
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 3
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 280
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 281
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 284
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 4
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 285
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 286
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 287
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 289
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 8
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 290
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  f64.const nan:0x8000000000000
  f64.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 292
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/builtins/isNaN<f32>|inlined.3 (result i32)
   f32.const nan:0x400000
   local.set $4
   local.get $4
   local.get $4
   f32.ne
  end
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 293
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/builtins/isNaN<f64>|inlined.3 (result i32)
   f64.const nan:0x8000000000000
   local.set $5
   local.get $5
   local.get $5
   f64.ne
  end
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 294
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/builtins/isFinite<f32>|inlined.5 (result i32)
   f32.const nan:0x400000
   local.set $4
   local.get $4
   local.get $4
   f32.sub
   f32.const 0
   f32.eq
  end
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 295
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/builtins/isFinite<f32>|inlined.6 (result i32)
   f32.const inf
   local.set $4
   local.get $4
   local.get $4
   f32.sub
   f32.const 0
   f32.eq
  end
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 296
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/builtins/isFinite<f64>|inlined.5 (result i32)
   f64.const nan:0x8000000000000
   local.set $5
   local.get $5
   local.get $5
   f64.sub
   f64.const 0
   f64.eq
  end
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 297
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/builtins/isFinite<f64>|inlined.6 (result i32)
   f64.const inf
   local.set $5
   local.get $5
   local.get $5
   f64.sub
   f64.const 0
   f64.eq
  end
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 298
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/builtins/isFinite<f32>|inlined.7 (result i32)
   f32.const 0
   local.set $4
   local.get $4
   local.get $4
   f32.sub
   f32.const 0
   f32.eq
  end
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 299
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/builtins/isFinite<f64>|inlined.7 (result i32)
   f64.const 0
   local.set $5
   local.get $5
   local.get $5
   f64.sub
   f64.const 0
   f64.eq
  end
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 300
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/builtins/i8.MIN_VALUE
  i32.const 128
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 313
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/builtins/i8.MAX_VALUE
  i32.const 127
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 314
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/builtins/i16.MIN_VALUE
  i32.const 32768
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 315
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/builtins/i16.MAX_VALUE
  i32.const 32767
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 316
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/builtins/i32.MIN_VALUE
  i32.const -2147483648
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 317
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/builtins/i32.MAX_VALUE
  i32.const 2147483647
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 318
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/builtins/i64.MIN_VALUE
  i64.const -9223372036854775808
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 319
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/builtins/i64.MAX_VALUE
  i64.const 9223372036854775807
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 320
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/builtins/u8.MIN_VALUE
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 322
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/builtins/u8.MAX_VALUE
  i32.const 255
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 323
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/builtins/u16.MIN_VALUE
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 324
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/builtins/u16.MAX_VALUE
  i32.const 65535
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 325
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/builtins/u32.MIN_VALUE
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 326
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/builtins/u32.MAX_VALUE
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 327
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/builtins/u64.MIN_VALUE
  i64.const 0
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 328
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/builtins/u64.MAX_VALUE
  i64.const -1
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 329
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/builtins/bool.MIN_VALUE
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 330
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/builtins/bool.MIN_VALUE
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 330
   i32.const 29
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/builtins/bool.MAX_VALUE
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 331
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/builtins/bool.MAX_VALUE
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 331
   i32.const 29
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/builtins/f32.MIN_NORMAL_VALUE
  f32.const 1.1754943508222875e-38
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 333
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/builtins/f32.MIN_VALUE
  f32.const 1.401298464324817e-45
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 334
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/builtins/f32.MAX_VALUE
  f32.const 3402823466385288598117041e14
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 335
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/builtins/f32.MIN_SAFE_INTEGER
  f32.const -16777215
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 336
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/builtins/f32.MAX_SAFE_INTEGER
  f32.const 16777215
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 337
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/builtins/f32.EPSILON
  f32.const 1.1920928955078125e-07
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 338
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/builtins/f64.MIN_NORMAL_VALUE
  f64.const 2.2250738585072014e-308
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 340
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/builtins/f64.MIN_VALUE
  f64.const 5e-324
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 341
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/builtins/f64.MAX_VALUE
  f64.const 1797693134862315708145274e284
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 342
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/builtins/f64.MIN_SAFE_INTEGER
  f64.const -9007199254740991
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 343
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/builtins/f64.MAX_SAFE_INTEGER
  f64.const 9007199254740991
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 344
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/builtins/f64.EPSILON
  f64.const 2.220446049250313e-16
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 345
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f32.const 1
  f32.abs
  drop
  f64.const 1
  f64.abs
  drop
  f32.const 1
  f32.ceil
  drop
  f64.const 1
  f64.ceil
  drop
  i32.const 1
  i32.clz
  drop
  i64.const 1
  i64.clz
  drop
  f32.const 1
  f32.const 2
  f32.copysign
  drop
  f64.const 1
  f64.const 2
  f64.copysign
  drop
  i32.const 1
  i32.ctz
  drop
  i64.const 1
  i64.ctz
  drop
  f32.const 1
  f32.floor
  drop
  f64.const 1
  f64.floor
  drop
  f32.const 1
  f32.nearest
  drop
  f64.const 1
  f64.nearest
  drop
  i32.const 1
  i32.popcnt
  drop
  i64.const 1
  i64.popcnt
  drop
  i32.const 8
  i32.load8_s
  drop
  i32.const 8
  i32.load8_u
  drop
  i32.const 8
  i32.load16_s
  drop
  i32.const 8
  i32.load16_u
  drop
  i32.const 8
  i32.load
  drop
  i32.const 8
  i64.load8_s
  drop
  i32.const 8
  i64.load8_u
  drop
  i32.const 8
  i64.load16_s
  drop
  i32.const 8
  i64.load16_u
  drop
  i32.const 8
  i64.load32_s
  drop
  i32.const 8
  i64.load32_u
  drop
  i32.const 8
  i64.load
  drop
  i32.const 8
  f32.load
  drop
  i32.const 8
  f64.load
  drop
  f32.const 1
  f32.const 2
  f32.max
  drop
  f64.const 1
  f64.const 2
  f64.max
  drop
  f32.const 1
  f32.const 2
  f32.min
  drop
  f64.const 1
  f64.const 2
  f64.min
  drop
  f32.const 1
  i32.reinterpret_f32
  drop
  f64.const 1
  i64.reinterpret_f64
  drop
  i32.const 1
  f32.reinterpret_i32
  drop
  i64.const 1
  f64.reinterpret_i64
  drop
  i32.const 1
  i32.const 2
  i32.rotl
  drop
  i64.const 1
  i64.const 2
  i64.rotl
  drop
  i32.const 1
  i32.const 2
  i32.rotr
  drop
  i64.const 1
  i64.const 2
  i64.rotr
  drop
  f32.const 1
  f32.sqrt
  drop
  f64.const 1
  f64.sqrt
  drop
  i32.const 8
  i32.const 1
  i32.store8
  i32.const 8
  i32.const 1
  i32.store16
  i32.const 8
  i32.const 1
  i32.store
  i32.const 8
  i64.const 1
  i64.store8
  i32.const 8
  i64.const 1
  i64.store16
  i32.const 8
  i64.const 1
  i64.store32
  i32.const 8
  i64.const 1
  i64.store
  i32.const 8
  f32.const 1
  f32.store
  i32.const 8
  f64.const 1
  f64.store
  f32.const 1
  f32.trunc
  drop
  f64.const 1
  f64.trunc
  drop
  block $~lib/builtins/isNaN<f64>|inlined.4 (result i32)
   f64.const 1
   local.set $5
   local.get $5
   local.get $5
   f64.ne
  end
  drop
 )
 (func $builtins/test (; 3 ;) (type $FUNCSIG$v)
  nop
 )
 (func $start (; 4 ;) (type $FUNCSIG$v)
  call $start:builtins
 )
 (func $null (; 5 ;) (type $FUNCSIG$v)
 )
)
