(module
 (type $_ (func))
 (type $iiii_ (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\07\00\00\00s\00i\00m\00d\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/ASC_FEATURE_SIMD i32 (i32.const 0))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 28))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start:~lib/allocator/arena (; 1 ;) (type $_)
  global.get $~lib/memory/HEAP_BASE
  i32.const 7
  i32.add
  i32.const 7
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
 )
 (func $simd/test_v128 (; 2 ;) (type $_)
  v128.const i32 0x1 0x2 0x3 0x4 0x5 0x6 0x7 0x8 0x9 0xa 0xb 0xc 0xd 0xe 0xf 0x10
  v128.const i32 0x1 0x2 0x3 0x4 0x5 0x6 0x7 0x8 0x9 0xa 0xb 0xc 0xd 0xe 0xf 0x10
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 13
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  v128.const i32 0x1 0x2 0x3 0x4 0x5 0x6 0x7 0x8 0x9 0xa 0xb 0xc 0xd 0xe 0xf 0x10
  v128.const i32 0x2 0x2 0x3 0x4 0x5 0x6 0x7 0x8 0x9 0xa 0xb 0xc 0xd 0xe 0xf 0x10
  i8x16.ne
  i8x16.any_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 18
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  v128.const i32 0x1 0x2 0x3 0x4 0x5 0x6 0x7 0x8 0x9 0xa 0xb 0xc 0xd 0xe 0xf 0x10
  v128.const i32 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1
  v128.and
  v128.const i32 0x1 0x0 0x1 0x0 0x1 0x0 0x1 0x0 0x1 0x0 0x1 0x0 0x1 0x0 0x1 0x0
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 25
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  v128.const i32 0x1 0x2 0x3 0x4 0x5 0x6 0x7 0x8 0x9 0xa 0xb 0xc 0xd 0xe 0xf 0x10
  v128.const i32 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1
  v128.or
  v128.const i32 0x1 0x3 0x3 0x5 0x5 0x7 0x7 0x9 0x9 0xb 0xb 0xd 0xd 0xf 0xf 0x11
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 32
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  v128.const i32 0x1 0x2 0x3 0x4 0x5 0x6 0x7 0x8 0x9 0xa 0xb 0xc 0xd 0xe 0xf 0x10
  v128.const i32 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1
  v128.xor
  v128.const i32 0x0 0x3 0x2 0x5 0x4 0x7 0x6 0x9 0x8 0xb 0xa 0xd 0xc 0xf 0xe 0x11
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 39
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  v128.const i32 0x1 0x2 0x3 0x4 0x5 0x6 0x7 0x8 0x9 0xa 0xb 0xc 0xd 0xe 0xf 0x10
  v128.not
  v128.const i32 0xfe 0xfd 0xfc 0xfb 0xfa 0xf9 0xf8 0xf7 0xf6 0xf5 0xf4 0xf3 0xf2 0xf1 0xf0 0xef
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 46
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  v128.const i32 0x1 0x2 0x3 0x4 0x5 0x6 0x7 0x8 0x9 0xa 0xb 0xc 0xd 0xe 0xf 0x10
  v128.const i32 0x10 0xf 0xe 0xd 0xc 0xb 0xa 0x9 0x8 0x7 0x6 0x5 0x4 0x3 0x2 0x1
  v128.const i32 0x0 0xff 0x0 0xff 0x0 0xff 0x0 0xff 0x0 0xff 0x0 0xff 0x0 0xff 0x0 0xff
  v128.bitselect
  v128.const i32 0x10 0x2 0xe 0x4 0xc 0x6 0xa 0x8 0x8 0xa 0x6 0xc 0x4 0xe 0x2 0x10
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 52
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $simd/test_i8x16 (; 3 ;) (type $_)
  (local $0 v128)
  (local $1 v128)
  (local $2 v128)
  (local $3 v128)
  v128.const i32 0x1 0x2 0x3 0x4 0x5 0x6 0x7 0x8 0x9 0xa 0xb 0xc 0xd 0xe 0xf 0x7f
  local.set $0
  i32.const 1
  i8x16.splat
  local.set $1
  local.get $0
  local.get $1
  i8x16.add
  local.set $2
  local.get $2
  i8x16.extract_lane_s 0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 66
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i8x16.extract_lane_s 15
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const -128
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 67
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i8x16.extract_lane_u 15
  i32.const 255
  i32.and
  i32.const 128
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 68
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i32.const 16
  i8x16.replace_lane 15
  local.set $3
  local.get $3
  i8x16.extract_lane_u 15
  i32.const 255
  i32.and
  i32.const 16
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 70
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $0
  v8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  drop
 )
 (func $simd/test_i16x8 (; 4 ;) (type $_)
  (local $0 v128)
  (local $1 v128)
  (local $2 v128)
  (local $3 v128)
  v128.const i32 0x1 0x0 0x2 0x0 0x3 0x0 0x4 0x0 0x5 0x0 0x6 0x0 0x7 0x0 0xff 0x7f
  local.set $0
  i32.const 1
  i16x8.splat
  local.set $1
  local.get $0
  local.get $1
  i16x8.add
  local.set $2
  local.get $2
  i16x8.extract_lane_s 0
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 78
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i16x8.extract_lane_s 7
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const -32768
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 79
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i16x8.extract_lane_u 7
  i32.const 65535
  i32.and
  i32.const 32768
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 80
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i32.const 8
  i16x8.replace_lane 7
  local.set $3
  local.get $3
  i16x8.extract_lane_u 7
  i32.const 65535
  i32.and
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 82
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $0
  v8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  drop
 )
 (func $simd/test_i32x4 (; 5 ;) (type $_)
  (local $0 v128)
  (local $1 v128)
  (local $2 v128)
  (local $3 v128)
  v128.const i32 0x1 0x0 0x0 0x0 0x2 0x0 0x0 0x0 0x3 0x0 0x0 0x0 0x4 0x0 0x0 0x0
  local.set $0
  i32.const 1
  i32x4.splat
  local.set $1
  local.get $0
  local.get $1
  i32x4.add
  local.set $2
  local.get $2
  i32x4.extract_lane 0
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 90
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i32x4.extract_lane 3
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 91
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i32.const 4
  i32x4.replace_lane 3
  local.set $3
  local.get $3
  i32x4.extract_lane 3
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 93
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $0
  v8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  drop
 )
 (func $simd/test_i64x2 (; 6 ;) (type $_)
  (local $0 v128)
  (local $1 v128)
  (local $2 v128)
  (local $3 v128)
  v128.const i32 0x1 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x2 0x0 0x0 0x0 0x0 0x0 0x0 0x0
  local.set $0
  i64.const 1
  i64x2.splat
  local.set $1
  local.get $0
  local.get $1
  i64x2.add
  local.set $2
  local.get $2
  i64x2.extract_lane 0
  i64.const 2
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 101
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i64x2.extract_lane 1
  i64.const 3
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 102
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i64.const 2
  i64x2.replace_lane 1
  local.set $3
  local.get $3
  i64x2.extract_lane 1
  i64.const 2
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 104
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $0
  v8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  drop
 )
 (func $simd/test_f32x4 (; 7 ;) (type $_)
  (local $0 v128)
  (local $1 v128)
  (local $2 v128)
  (local $3 v128)
  v128.const i32 0x0 0x0 0xc0 0x3f 0x0 0x0 0x20 0x40 0x0 0x0 0x60 0x40 0x0 0x0 0x90 0x40
  local.set $0
  f32.const 0.25
  f32x4.splat
  local.set $1
  local.get $0
  local.get $1
  f32x4.add
  local.set $2
  local.get $2
  f32x4.extract_lane 0
  f32.const 1.75
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 112
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  f32x4.extract_lane 3
  f32.const 4.75
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 113
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  f32.const 4.5
  f32x4.replace_lane 3
  local.set $3
  local.get $3
  f32x4.extract_lane 3
  f32.const 4.5
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 115
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $0
  v8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  drop
 )
 (func $simd/test_f64x2 (; 8 ;) (type $_)
  (local $0 v128)
  (local $1 v128)
  (local $2 v128)
  (local $3 v128)
  v128.const i32 0x0 0x0 0x0 0x0 0x0 0x0 0xf8 0x3f 0x0 0x0 0x0 0x0 0x0 0x0 0x4 0x40
  local.set $0
  f64.const 0.25
  f64x2.splat
  local.set $1
  local.get $0
  local.get $1
  f64x2.add
  local.set $2
  local.get $2
  f64x2.extract_lane 0
  f64.const 1.75
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 123
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  f64x2.extract_lane 1
  f64.const 2.75
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 124
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  f64.const 2.5
  f64x2.replace_lane 1
  local.set $3
  local.get $3
  f64x2.extract_lane 1
  f64.const 2.5
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 126
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $0
  v8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  drop
 )
 (func $simd/test_v8x16 (; 9 ;) (type $_)
  (local $0 v128)
  (local $1 v128)
  (local $2 v128)
  v128.const i32 0x0 0x1 0x2 0x3 0x4 0x5 0x6 0x7 0x8 0x9 0xa 0xb 0xc 0xd 0xe 0xf
  local.set $0
  v128.const i32 0x10 0x11 0x12 0x13 0x14 0x15 0x16 0x17 0x18 0x19 0x1a 0x1b 0x1c 0x1d 0x1e 0x1f
  local.set $1
  local.get $0
  local.get $1
  v8x16.shuffle 0 17 2 19 4 21 6 23 8 25 10 27 12 29 14 31
  local.set $2
  local.get $2
  i8x16.extract_lane_u 0
  i32.const 255
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 134
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i8x16.extract_lane_u 1
  i32.const 255
  i32.and
  i32.const 17
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 135
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i8x16.extract_lane_u 2
  i32.const 255
  i32.and
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 136
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i8x16.extract_lane_u 3
  i32.const 255
  i32.and
  i32.const 19
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 137
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i8x16.extract_lane_u 4
  i32.const 255
  i32.and
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 138
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i8x16.extract_lane_u 5
  i32.const 255
  i32.and
  i32.const 21
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 139
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i8x16.extract_lane_u 6
  i32.const 255
  i32.and
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 140
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i8x16.extract_lane_u 7
  i32.const 255
  i32.and
  i32.const 23
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 141
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i8x16.extract_lane_u 8
  i32.const 255
  i32.and
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 142
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i8x16.extract_lane_u 9
  i32.const 255
  i32.and
  i32.const 25
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 143
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i8x16.extract_lane_u 10
  i32.const 255
  i32.and
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 144
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i8x16.extract_lane_u 11
  i32.const 255
  i32.and
  i32.const 27
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 145
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i8x16.extract_lane_u 12
  i32.const 255
  i32.and
  i32.const 12
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 146
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i8x16.extract_lane_u 13
  i32.const 255
  i32.and
  i32.const 29
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 147
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i8x16.extract_lane_u 14
  i32.const 255
  i32.and
  i32.const 14
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 148
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i8x16.extract_lane_u 15
  i32.const 255
  i32.and
  i32.const 31
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 149
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start:simd (; 10 ;) (type $_)
  call $start:~lib/allocator/arena
  block
   call $simd/test_v128
   call $simd/test_i8x16
   call $simd/test_i16x8
   call $simd/test_i32x4
   call $simd/test_i64x2
   call $simd/test_f32x4
   call $simd/test_f64x2
   call $simd/test_v8x16
  end
 )
 (func $start (; 11 ;) (type $_)
  call $start:simd
 )
 (func $null (; 12 ;) (type $_)
 )
)
