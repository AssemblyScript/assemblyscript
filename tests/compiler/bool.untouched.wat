(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 12) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\0e\00\00\00b\00o\00o\00l\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 1 funcref)
 (global $bool/i (mut i32) (i32.const 2))
 (global $bool/I (mut i64) (i64.const 2))
 (global $bool/u (mut i32) (i32.const 2))
 (global $bool/U (mut i64) (i64.const 2))
 (global $bool/f (mut f32) (f32.const 2))
 (global $bool/f0 (mut f32) (f32.const 0))
 (global $bool/f1 (mut f32) (f32.const -0))
 (global $bool/f2 (mut f32) (f32.const nan:0x400000))
 (global $bool/f3 (mut f32) (f32.const 0))
 (global $~lib/builtins/f32.MAX_VALUE f32 (f32.const 3402823466385288598117041e14))
 (global $bool/f4 (mut f32) (f32.const 0))
 (global $bool/f5 (mut f32) (f32.const 0))
 (global $bool/f6 (mut f32) (f32.const inf))
 (global $bool/f7 (mut f32) (f32.const 0))
 (global $~lib/builtins/f32.MIN_VALUE f32 (f32.const 1.401298464324817e-45))
 (global $bool/f8 (mut f32) (f32.const 0))
 (global $bool/f9 (mut f32) (f32.const 0))
 (global $bool/f10 (mut f32) (f32.const 0))
 (global $bool/f11 (mut f32) (f32.const 0))
 (global $bool/f12 (mut f32) (f32.const 0))
 (global $bool/f13 (mut f32) (f32.const 0))
 (global $bool/F (mut f64) (f64.const 2))
 (global $bool/F0 (mut f64) (f64.const 0))
 (global $bool/F1 (mut f64) (f64.const -0))
 (global $bool/F2 (mut f64) (f64.const nan:0x8000000000000))
 (global $bool/F3 (mut f64) (f64.const 0))
 (global $~lib/builtins/f64.MAX_VALUE f64 (f64.const 1797693134862315708145274e284))
 (global $bool/F4 (mut f64) (f64.const 0))
 (global $bool/F5 (mut f64) (f64.const 0))
 (global $bool/F6 (mut f64) (f64.const inf))
 (global $bool/F7 (mut f64) (f64.const 0))
 (global $~lib/builtins/f64.MIN_VALUE f64 (f64.const 5e-324))
 (global $bool/F8 (mut f64) (f64.const 0))
 (global $bool/F9 (mut f64) (f64.const 0))
 (global $bool/F10 (mut f64) (f64.const 0))
 (global $bool/F11 (mut f64) (f64.const 0))
 (global $bool/F12 (mut f64) (f64.const 0))
 (global $bool/F13 (mut f64) (f64.const 0))
 (global $bool/uu (mut i32) (i32.const 2))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:bool
  global.get $bool/i
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 2
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $bool/I
  i64.const 0
  i64.ne
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 4
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $bool/u
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 6
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $bool/U
  i64.const 0
  i64.ne
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 8
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $bool/f
  i32.reinterpret_f32
  i32.const 1
  i32.shl
  i32.const 2
  i32.sub
  i32.const -16777218
  i32.le_u
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 11
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $bool/f0
  i32.reinterpret_f32
  i32.const 1
  i32.shl
  i32.const 2
  i32.sub
  i32.const -16777218
  i32.le_u
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 13
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $bool/f1
  i32.reinterpret_f32
  i32.const 1
  i32.shl
  i32.const 2
  i32.sub
  i32.const -16777218
  i32.le_u
  i32.const 0
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
  global.get $bool/f2
  i32.reinterpret_f32
  i32.const 1
  i32.shl
  i32.const 2
  i32.sub
  i32.const -16777218
  i32.le_u
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 17
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const nan:0x400000
  f32.neg
  global.set $bool/f3
  global.get $bool/f3
  i32.reinterpret_f32
  i32.const 1
  i32.shl
  i32.const 2
  i32.sub
  i32.const -16777218
  i32.le_u
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 19
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/builtins/f32.MAX_VALUE
  global.set $bool/f4
  global.get $bool/f4
  i32.reinterpret_f32
  i32.const 1
  i32.shl
  i32.const 2
  i32.sub
  i32.const -16777218
  i32.le_u
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 21
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/builtins/f32.MAX_VALUE
  f32.neg
  global.set $bool/f5
  global.get $bool/f5
  i32.reinterpret_f32
  i32.const 1
  i32.shl
  i32.const 2
  i32.sub
  i32.const -16777218
  i32.le_u
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 23
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $bool/f6
  i32.reinterpret_f32
  i32.const 1
  i32.shl
  i32.const 2
  i32.sub
  i32.const -16777218
  i32.le_u
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 25
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const inf
  f32.neg
  global.set $bool/f7
  global.get $bool/f7
  i32.reinterpret_f32
  i32.const 1
  i32.shl
  i32.const 2
  i32.sub
  i32.const -16777218
  i32.le_u
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 27
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/builtins/f32.MIN_VALUE
  global.set $bool/f8
  global.get $bool/f8
  i32.reinterpret_f32
  i32.const 1
  i32.shl
  i32.const 2
  i32.sub
  i32.const -16777218
  i32.le_u
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 29
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/builtins/f32.MIN_VALUE
  f32.neg
  global.set $bool/f9
  global.get $bool/f9
  i32.reinterpret_f32
  i32.const 1
  i32.shl
  i32.const 2
  i32.sub
  i32.const -16777218
  i32.le_u
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 31
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  f32.reinterpret_i32
  global.set $bool/f10
  global.get $bool/f10
  i32.reinterpret_f32
  i32.const 1
  i32.shl
  i32.const 2
  i32.sub
  i32.const -16777218
  i32.le_u
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 33
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2139095040
  i32.const 1
  i32.sub
  f32.reinterpret_i32
  global.set $bool/f11
  global.get $bool/f11
  i32.reinterpret_f32
  i32.const 1
  i32.shl
  i32.const 2
  i32.sub
  i32.const -16777218
  i32.le_u
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 35
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2139095040
  i32.const 1
  i32.add
  f32.reinterpret_i32
  global.set $bool/f12
  global.get $bool/f12
  i32.reinterpret_f32
  i32.const 1
  i32.shl
  i32.const 2
  i32.sub
  i32.const -16777218
  i32.le_u
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 37
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const -8388608
  i32.const 1
  i32.add
  f32.reinterpret_i32
  global.set $bool/f13
  global.get $bool/f13
  i32.reinterpret_f32
  i32.const 1
  i32.shl
  i32.const 2
  i32.sub
  i32.const -16777218
  i32.le_u
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 39
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $bool/F
  i64.reinterpret_f64
  i64.const 1
  i64.shl
  i64.const 2
  i64.sub
  i64.const -9007199254740994
  i64.le_u
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 42
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $bool/F0
  i64.reinterpret_f64
  i64.const 1
  i64.shl
  i64.const 2
  i64.sub
  i64.const -9007199254740994
  i64.le_u
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 44
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $bool/F1
  i64.reinterpret_f64
  i64.const 1
  i64.shl
  i64.const 2
  i64.sub
  i64.const -9007199254740994
  i64.le_u
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 46
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $bool/F2
  i64.reinterpret_f64
  i64.const 1
  i64.shl
  i64.const 2
  i64.sub
  i64.const -9007199254740994
  i64.le_u
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 48
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  f64.neg
  global.set $bool/F3
  global.get $bool/F3
  i64.reinterpret_f64
  i64.const 1
  i64.shl
  i64.const 2
  i64.sub
  i64.const -9007199254740994
  i64.le_u
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 50
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/builtins/f64.MAX_VALUE
  global.set $bool/F4
  global.get $bool/F4
  i64.reinterpret_f64
  i64.const 1
  i64.shl
  i64.const 2
  i64.sub
  i64.const -9007199254740994
  i64.le_u
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 52
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/builtins/f64.MAX_VALUE
  f64.neg
  global.set $bool/F5
  global.get $bool/F5
  i64.reinterpret_f64
  i64.const 1
  i64.shl
  i64.const 2
  i64.sub
  i64.const -9007199254740994
  i64.le_u
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 54
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $bool/F6
  i64.reinterpret_f64
  i64.const 1
  i64.shl
  i64.const 2
  i64.sub
  i64.const -9007199254740994
  i64.le_u
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 56
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  f64.neg
  global.set $bool/F7
  global.get $bool/F7
  i64.reinterpret_f64
  i64.const 1
  i64.shl
  i64.const 2
  i64.sub
  i64.const -9007199254740994
  i64.le_u
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 58
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/builtins/f64.MIN_VALUE
  global.set $bool/F8
  global.get $bool/F8
  i64.reinterpret_f64
  i64.const 1
  i64.shl
  i64.const 2
  i64.sub
  i64.const -9007199254740994
  i64.le_u
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 60
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/builtins/f64.MIN_VALUE
  f64.neg
  global.set $bool/F9
  global.get $bool/F9
  i64.reinterpret_f64
  i64.const 1
  i64.shl
  i64.const 2
  i64.sub
  i64.const -9007199254740994
  i64.le_u
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 62
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 1
  f64.reinterpret_i64
  global.set $bool/F10
  global.get $bool/F10
  i64.reinterpret_f64
  i64.const 1
  i64.shl
  i64.const 2
  i64.sub
  i64.const -9007199254740994
  i64.le_u
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 64
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 9218868437227405312
  i64.const 1
  i64.sub
  f64.reinterpret_i64
  global.set $bool/F11
  global.get $bool/F11
  i64.reinterpret_f64
  i64.const 1
  i64.shl
  i64.const 2
  i64.sub
  i64.const -9007199254740994
  i64.le_u
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 66
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 9218868437227405312
  i64.const 1
  i64.add
  f64.reinterpret_i64
  global.set $bool/F12
  global.get $bool/F12
  i64.reinterpret_f64
  i64.const 1
  i64.shl
  i64.const 2
  i64.sub
  i64.const -9007199254740994
  i64.le_u
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 68
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i64.const -4503599627370496
  i64.const 1
  i64.add
  f64.reinterpret_i64
  global.set $bool/F13
  global.get $bool/F13
  i64.reinterpret_f64
  i64.const 1
  i64.shl
  i64.const 2
  i64.sub
  i64.const -9007199254740994
  i64.le_u
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 70
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $bool/uu
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 73
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  call $start:bool
 )
)
