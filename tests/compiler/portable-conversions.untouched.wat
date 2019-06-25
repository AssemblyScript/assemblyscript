(module
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\17\00\00\00p\00o\00r\00t\00a\00b\00l\00e\00-\00c\00o\00n\00v\00e\00r\00s\00i\00o\00n\00s\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $portable-conversions/i (mut i32) (i32.const 1))
 (global $portable-conversions/I (mut i64) (i64.const 1))
 (global $portable-conversions/f (mut f32) (f32.const 1))
 (global $portable-conversions/F (mut f64) (f64.const 1))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 60))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start:portable-conversions (; 1 ;) (type $FUNCSIG$v)
  global.get $portable-conversions/i
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 6
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/I
  i32.wrap_i64
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 7
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/f
  i32.trunc_f32_s
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 8
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/F
  i32.trunc_f64_s
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 9
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/i
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 11
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/I
  i32.wrap_i64
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 12
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/f
  i32.trunc_f32_s
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 13
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/F
  i32.trunc_f64_s
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 14
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/i
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 16
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/I
  i32.wrap_i64
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 17
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/f
  i32.trunc_f32_s
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 18
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/F
  i32.trunc_f64_s
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 19
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/i
  i64.extend_i32_s
  i64.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 21
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/I
  i64.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 22
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/f
  i64.trunc_f32_s
  i64.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 23
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/F
  i64.trunc_f64_s
  i64.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 24
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/i
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 26
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/I
  i32.wrap_i64
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 27
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/f
  i32.trunc_f32_s
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 28
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/F
  i32.trunc_f64_s
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 29
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/i
  i32.const 255
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 31
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/I
  i32.wrap_i64
  i32.const 255
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 32
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/f
  i32.trunc_f32_u
  i32.const 255
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 33
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/F
  i32.trunc_f64_u
  i32.const 255
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 34
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/i
  i32.const 65535
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 36
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/I
  i32.wrap_i64
  i32.const 65535
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 37
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/f
  i32.trunc_f32_u
  i32.const 65535
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 38
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/F
  i32.trunc_f64_u
  i32.const 65535
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 39
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/i
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 41
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/I
  i32.wrap_i64
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 42
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/f
  i32.trunc_f32_u
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 43
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/F
  i32.trunc_f64_u
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 44
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/i
  i64.extend_i32_s
  i64.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 46
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/I
  i64.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 47
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/f
  i64.trunc_f32_u
  i64.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 48
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/F
  i64.trunc_f64_u
  i64.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 49
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/i
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 51
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/I
  i32.wrap_i64
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 52
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/f
  i32.trunc_f32_u
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 53
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/F
  i32.trunc_f64_u
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 54
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/i
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 56
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/I
  i64.const 0
  i64.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 57
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/f
  f32.const 0
  f32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 58
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/F
  f64.const 0
  f64.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 59
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/i
  f32.convert_i32_s
  f32.const 0
  f32.eq
  if
   i32.const 0
   i32.const 8
   i32.const 61
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/I
  f32.convert_i64_s
  f32.const 0
  f32.eq
  if
   i32.const 0
   i32.const 8
   i32.const 62
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/f
  f32.const 0
  f32.eq
  if
   i32.const 0
   i32.const 8
   i32.const 63
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/F
  f32.demote_f64
  f32.const 0
  f32.eq
  if
   i32.const 0
   i32.const 8
   i32.const 64
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/i
  f64.convert_i32_s
  f64.const 0
  f64.eq
  if
   i32.const 0
   i32.const 8
   i32.const 66
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/I
  f64.convert_i64_s
  f64.const 0
  f64.eq
  if
   i32.const 0
   i32.const 8
   i32.const 67
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/f
  f64.promote_f32
  f64.const 0
  f64.eq
  if
   i32.const 0
   i32.const 8
   i32.const 68
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $portable-conversions/F
  f64.const 0
  f64.eq
  if
   i32.const 0
   i32.const 8
   i32.const 69
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start (; 2 ;) (type $FUNCSIG$v)
  call $start:portable-conversions
 )
 (func $null (; 3 ;) (type $FUNCSIG$v)
 )
)
