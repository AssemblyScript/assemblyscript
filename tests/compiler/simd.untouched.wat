(module
 (type $_ (func))
 (type $ii (func (param i32) (result i32)))
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
 (func $~lib/allocator/arena/__memory_allocate (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741824
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/allocator/arena/offset
  local.set $1
  local.get $1
  local.get $0
  local.tee $2
  i32.const 1
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.add
  i32.const 7
  i32.add
  i32.const 7
  i32.const -1
  i32.xor
  i32.and
  local.set $4
  current_memory
  local.set $5
  local.get $4
  local.get $5
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $4
   local.get $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $2
   local.get $5
   local.tee $3
   local.get $2
   local.tee $6
   local.get $3
   local.get $6
   i32.gt_s
   select
   local.set $3
   local.get $3
   grow_memory
   i32.const 0
   i32.lt_s
   if
    local.get $2
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $4
  global.set $~lib/allocator/arena/offset
  local.get $1
 )
 (func $simd/test_v128 (; 3 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  block $~lib/memory/memory.allocate|inlined.0 (result i32)
   i32.const 256
   local.set $0
   local.get $0
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.0
  end
  local.set $1
  local.get $1
  local.get $1
  i32.const 16
  i32.add
  v128.load offset=32
  v128.store offset=64
 )
 (func $simd/test_i8x16 (; 4 ;) (type $_)
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
   i32.const 15
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
   i32.const 16
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
   i32.const 17
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
   i32.const 19
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $0
  v8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  drop
 )
 (func $simd/test_i16x8 (; 5 ;) (type $_)
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
   i32.const 27
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
   i32.const 28
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
   i32.const 29
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
   i32.const 31
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $0
  v8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  drop
 )
 (func $simd/test_i32x4 (; 6 ;) (type $_)
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
   i32.const 39
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
   i32.const 40
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
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $0
  v8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  drop
 )
 (func $simd/test_i64x2 (; 7 ;) (type $_)
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
   i32.const 50
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
   i32.const 51
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
   i32.const 53
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $0
  v8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  drop
 )
 (func $simd/test_f32x4 (; 8 ;) (type $_)
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
   i32.const 61
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
   i32.const 62
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
   i32.const 64
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $0
  v8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  drop
 )
 (func $simd/test_f64x2 (; 9 ;) (type $_)
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
   i32.const 72
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
   i32.const 73
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
   i32.const 75
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $0
  v8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  drop
 )
 (func $simd/test_v8x16 (; 10 ;) (type $_)
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
   i32.const 83
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
   i32.const 84
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
   i32.const 85
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
   i32.const 86
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
   i32.const 87
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
   i32.const 88
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
   i32.const 89
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
   i32.const 90
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
   i32.const 91
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
   i32.const 92
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
   i32.const 93
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
   i32.const 94
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
   i32.const 95
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
   i32.const 96
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
   i32.const 97
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
   i32.const 98
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start:simd (; 11 ;) (type $_)
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
 (func $start (; 12 ;) (type $_)
  call $start:simd
 )
 (func $null (; 13 ;) (type $_)
 )
)
