(module
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s\00")
 (data (i32.const 64) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00f\00e\00a\00t\00u\00r\00e\00s\00/\00s\00i\00m\00d\00.\00t\00s\00")
 (table $0 1 funcref)
 (global $~lib/ASC_FEATURE_SIMD i32 (i32.const 0))
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/builtins/i16.MAX_VALUE i32 (i32.const 32767))
 (global $~lib/builtins/i8.MAX_VALUE i32 (i32.const 127))
 (global $~lib/builtins/u8.MAX_VALUE i32 (i32.const 255))
 (global $~lib/builtins/i32.MAX_VALUE i32 (i32.const 2147483647))
 (global $~lib/builtins/u16.MAX_VALUE i32 (i32.const 65535))
 (global $~lib/heap/__heap_base i32 (i32.const 112))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/stub/maybeGrowMemory (; 1 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  memory.size
  local.set $1
  local.get $1
  i32.const 16
  i32.shl
  local.set $2
  local.get $0
  local.get $2
  i32.gt_u
  if
   local.get $0
   local.get $2
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $3
   local.get $1
   local.tee $4
   local.get $3
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
   local.set $4
   local.get $4
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $3
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $0
  global.set $~lib/rt/stub/offset
 )
 (func $~lib/rt/stub/__alloc (; 2 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.set $2
  local.get $0
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.tee $3
  i32.const 16
  local.tee $4
  local.get $3
  local.get $4
  i32.gt_u
  select
  local.set $5
  local.get $2
  local.get $5
  i32.add
  call $~lib/rt/stub/maybeGrowMemory
  local.get $2
  i32.const 16
  i32.sub
  local.set $6
  local.get $6
  local.get $5
  i32.store
  local.get $6
  i32.const 1
  i32.store offset=4
  local.get $6
  local.get $1
  i32.store offset=8
  local.get $6
  local.get $0
  i32.store offset=12
  local.get $2
 )
 (func $~lib/rt/stub/__free (; 3 ;) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.const 0
  i32.ne
  if (result i32)
   local.get $0
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 70
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.sub
  local.set $1
  local.get $1
  i32.load offset=4
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 72
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.load
  i32.add
  global.get $~lib/rt/stub/offset
  i32.eq
  if
   local.get $1
   global.set $~lib/rt/stub/offset
  end
 )
 (func $features/simd/test_v128 (; 4 ;)
  (local $0 i32)
  i32.const 64
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.set $0
  local.get $0
  local.get $0
  v128.load offset=16
  v128.store offset=32
  local.get $0
  call $~lib/rt/stub/__free
 )
 (func $features/simd/test_i8x16 (; 5 ;)
  (local $0 v128)
  (local $1 v128)
  (local $2 v128)
  (local $3 v128)
  (local $4 v128)
  (local $5 v128)
  (local $6 v128)
  v128.const i32x4 0x04030201 0x08070605 0x0c0b0a09 0x7f0f0e0d
  local.set $0
  local.get $0
  v128.const i32x4 0x04030201 0x08070605 0x0c0b0a09 0x7f0f0e0d
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 61
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i8x16.splat
  local.set $1
  local.get $1
  v128.const i32x4 0x01010101 0x01010101 0x01010101 0x01010101
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 63
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i8x16.add
  local.set $2
  local.get $2
  v128.const i32x4 0x05040302 0x09080706 0x0d0c0b0a 0x80100f0e
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 65
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i8x16.sub
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 66
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i8x16.mul
  local.get $2
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 67
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i8x16.neg
  v128.const i32x4 0xfcfdfeff 0xf8f9fafb 0xf4f5f6f7 0x81f1f2f3
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 108
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
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
   i32.const 80
   i32.const 113
   i32.const 2
   call $~lib/builtins/abort
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
   i32.const 80
   i32.const 114
   i32.const 2
   call $~lib/builtins/abort
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
   i32.const 80
   i32.const 115
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 17
  i8x16.replace_lane 15
  v128.const i32x4 0x05040302 0x09080706 0x0d0c0b0a 0x11100f0e
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 116
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  v8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  v128.const i32x4 0x04030201 0x08070605 0x01010101 0x01010101
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 121
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i8x16.splat
  i32.const 1
  i8x16.replace_lane 0
  local.set $3
  i32.const 0
  i8x16.splat
  i32.const -1
  i8x16.replace_lane 0
  local.set $4
  local.get $4
  local.set $5
  local.get $4
  v128.not
  local.set $6
  local.get $4
  local.get $3
  i8x16.eq
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 159
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $3
  i8x16.ne
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 160
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $3
  i8x16.lt_s
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 161
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $4
  i8x16.lt_u
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 162
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $4
  i8x16.le_s
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 163
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $3
  i8x16.le_u
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 164
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $4
  i8x16.gt_s
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 165
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $3
  i8x16.gt_u
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 166
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $3
  i8x16.ge_s
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 167
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $4
  i8x16.ge_u
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 168
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $features/simd/test_i16x8 (; 6 ;)
  (local $0 v128)
  (local $1 v128)
  (local $2 v128)
  (local $3 v128)
  (local $4 v128)
  (local $5 v128)
  (local $6 v128)
  v128.const i32x4 0x00020001 0x00040003 0x00060005 0x7fff0007
  local.set $0
  local.get $0
  v128.const i32x4 0x00020001 0x00040003 0x00060005 0x7fff0007
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 175
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i16x8.splat
  local.set $1
  local.get $1
  v128.const i32x4 0x00010001 0x00010001 0x00010001 0x00010001
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 177
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i16x8.add
  local.set $2
  local.get $2
  v128.const i32x4 0x00030002 0x00050004 0x00070006 0x80000008
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 179
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i16x8.sub
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 180
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i16x8.mul
  local.get $2
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 181
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i16x8.neg
  v128.const i32x4 0xfffeffff 0xfffcfffd 0xfffafffb 0x8001fff9
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 222
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
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
   i32.const 80
   i32.const 227
   i32.const 2
   call $~lib/builtins/abort
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
   i32.const 80
   i32.const 228
   i32.const 2
   call $~lib/builtins/abort
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
   i32.const 80
   i32.const 229
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 9
  i16x8.replace_lane 7
  v128.const i32x4 0x00030002 0x00050004 0x00070006 0x00090008
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 230
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  v8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  v128.const i32x4 0x00020001 0x00040003 0x00010001 0x00010001
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 235
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i16x8.splat
  i32.const 1
  i16x8.replace_lane 0
  local.set $3
  i32.const 0
  i16x8.splat
  i32.const -1
  i16x8.replace_lane 0
  local.set $4
  local.get $4
  local.set $5
  local.get $4
  v128.not
  local.set $6
  local.get $4
  local.get $3
  i16x8.eq
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 273
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $3
  i16x8.ne
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 274
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $3
  i16x8.lt_s
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 275
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $4
  i16x8.lt_u
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 276
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $4
  i16x8.le_s
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 277
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $3
  i16x8.le_u
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 278
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $4
  i16x8.gt_s
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 279
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $3
  i16x8.gt_u
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 280
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $3
  i16x8.ge_s
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 281
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $4
  i16x8.ge_u
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 282
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $features/simd/test_i32x4 (; 7 ;)
  (local $0 v128)
  (local $1 v128)
  (local $2 v128)
  (local $3 v128)
  (local $4 v128)
  (local $5 v128)
  (local $6 v128)
  v128.const i32x4 0x00000001 0x00000002 0x00000003 0x7fffffff
  local.set $0
  local.get $0
  v128.const i32x4 0x00000001 0x00000002 0x00000003 0x7fffffff
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 316
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32x4.splat
  local.set $1
  local.get $1
  v128.const i32x4 0x00000001 0x00000001 0x00000001 0x00000001
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 318
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32x4.add
  local.set $2
  local.get $2
  v128.const i32x4 0x00000002 0x00000003 0x00000004 0x80000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 320
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32x4.sub
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 321
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32x4.mul
  local.get $2
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 322
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32x4.neg
  v128.const i32x4 0xffffffff 0xfffffffe 0xfffffffd 0x80000001
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 363
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32x4.extract_lane 0
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 368
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32x4.extract_lane 3
  i32.const -2147483648
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 369
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 5
  i32x4.replace_lane 3
  v128.const i32x4 0x00000002 0x00000003 0x00000004 0x00000005
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 370
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  v8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  v128.const i32x4 0x00000001 0x00000002 0x00000001 0x00000001
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 375
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32x4.splat
  i32.const 1
  i32x4.replace_lane 0
  local.set $3
  i32.const 0
  i32x4.splat
  i32.const -1
  i32x4.replace_lane 0
  local.set $4
  local.get $4
  local.set $5
  local.get $4
  v128.not
  local.set $6
  local.get $4
  local.get $3
  i32x4.eq
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 389
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $3
  i32x4.ne
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 390
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $3
  i32x4.lt_s
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 391
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $4
  i32x4.lt_u
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 392
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $4
  i32x4.le_s
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 393
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $3
  i32x4.le_u
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 394
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $4
  i32x4.gt_s
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 395
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $3
  i32x4.gt_u
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 396
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $3
  i32x4.ge_s
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 397
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $4
  i32x4.ge_u
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 398
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $features/simd/test_i64x2 (; 8 ;)
  (local $0 v128)
  (local $1 v128)
  (local $2 v128)
  v128.const i32x4 0x00000001 0x00000000 0xffffffff 0x7fffffff
  local.set $0
  local.get $0
  v128.const i32x4 0x00000001 0x00000000 0xffffffff 0x7fffffff
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 436
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 1
  i64x2.splat
  local.set $1
  local.get $1
  v128.const i32x4 0x00000001 0x00000000 0x00000001 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 438
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i64x2.add
  local.set $2
  local.get $2
  v128.const i32x4 0x00000002 0x00000000 0x00000000 0x80000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 440
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i64x2.sub
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 441
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64x2.neg
  v128.const i32x4 0xffffffff 0xffffffff 0x00000001 0x80000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 442
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i64x2.extract_lane 0
  i64.const 2
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 447
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i64x2.extract_lane 1
  i64.const -9223372036854775808
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 448
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i64.const 3
  i64x2.replace_lane 1
  v128.const i32x4 0x00000002 0x00000000 0x00000003 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 449
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  v8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  v128.const i32x4 0x00000001 0x00000000 0x00000001 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 454
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $features/simd/test_f32x4 (; 9 ;)
  (local $0 v128)
  (local $1 v128)
  (local $2 v128)
  (local $3 v128)
  (local $4 v128)
  (local $5 v128)
  (local $6 v128)
  (local $7 v128)
  v128.const i32x4 0x3fc00000 0x40200000 0x40600000 0x40900000
  local.set $0
  local.get $0
  v128.const i32x4 0x3fc00000 0x40200000 0x40600000 0x40900000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 495
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1
  f32x4.splat
  local.set $1
  local.get $1
  v128.const i32x4 0x3f800000 0x3f800000 0x3f800000 0x3f800000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 497
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  f32x4.add
  local.set $2
  local.get $2
  v128.const i32x4 0x40200000 0x40600000 0x40900000 0x40b00000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 499
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  f32x4.sub
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 500
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  f32x4.mul
  local.get $2
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 501
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $0
  f32x4.mul
  local.set $3
  local.get $3
  local.get $0
  f32x4.div
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 503
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $0
  f32x4.mul
  local.get $0
  i8x16.ne
  i8x16.any_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 504
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f32x4.neg
  v128.const i32x4 0xbfc00000 0xc0200000 0xc0600000 0xc0900000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 505
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  f32x4.extract_lane 0
  f32.const 2.5
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 506
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  f32x4.extract_lane 3
  f32.const 5.5
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 507
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  f32.const 6.5
  f32x4.replace_lane 3
  v128.const i32x4 0x40200000 0x40600000 0x40900000 0x40d00000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 508
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  v8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  v128.const i32x4 0x3fc00000 0x40200000 0x3f800000 0x3f800000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 513
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  f32x4.splat
  f32.const 1
  f32x4.replace_lane 0
  local.set $4
  f32.const 0
  f32x4.splat
  f32.const -1
  f32x4.replace_lane 0
  local.set $5
  v128.const i32x4 0xffffffff 0x00000000 0x00000000 0x00000000
  local.set $6
  v128.const i32x4 0x00000000 0xffffffff 0xffffffff 0xffffffff
  local.set $7
  local.get $5
  local.get $4
  f32x4.eq
  local.get $7
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 522
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  local.get $4
  f32x4.ne
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 523
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  local.get $4
  f32x4.lt
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 524
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $5
  f32x4.le
  local.get $7
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 525
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $5
  f32x4.gt
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 526
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  local.get $4
  f32x4.ge
  local.get $7
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 527
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  local.get $4
  f32x4.min
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 528
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  local.get $4
  f32x4.max
  local.get $4
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 529
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  f32x4.abs
  local.get $4
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 530
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $features/simd/test_f64x2 (; 10 ;)
  (local $0 v128)
  (local $1 v128)
  (local $2 v128)
  (local $3 v128)
  (local $4 v128)
  (local $5 v128)
  (local $6 v128)
  (local $7 v128)
  v128.const i32x4 0x00000000 0x3ff80000 0x00000000 0x40040000
  local.set $0
  local.get $0
  v128.const i32x4 0x00000000 0x3ff80000 0x00000000 0x40040000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 557
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1
  f64x2.splat
  local.set $1
  local.get $1
  v128.const i32x4 0x00000000 0x3ff00000 0x00000000 0x3ff00000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 559
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  f64x2.add
  local.set $2
  local.get $2
  v128.const i32x4 0x00000000 0x40040000 0x00000000 0x400c0000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 561
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  f64x2.sub
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 562
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  f64x2.mul
  local.get $2
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 563
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $0
  f64x2.mul
  local.set $3
  local.get $3
  local.get $0
  f64x2.div
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 565
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $0
  f64x2.mul
  local.get $0
  i8x16.ne
  i8x16.any_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 566
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64x2.neg
  v128.const i32x4 0x00000000 0xbff80000 0x00000000 0xc0040000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 567
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  f64x2.extract_lane 0
  f64.const 2.5
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 568
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  f64x2.extract_lane 1
  f64.const 3.5
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 569
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  f64.const 4.5
  f64x2.replace_lane 1
  v128.const i32x4 0x00000000 0x40040000 0x00000000 0x40120000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 570
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  v8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  v128.const i32x4 0x00000000 0x3ff80000 0x00000000 0x3ff00000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 575
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  f64x2.splat
  f64.const 1
  f64x2.replace_lane 0
  local.set $4
  f64.const 0
  f64x2.splat
  f64.const -1
  f64x2.replace_lane 0
  local.set $5
  v128.const i32x4 0xffffffff 0xffffffff 0x00000000 0x00000000
  local.set $6
  v128.const i32x4 0x00000000 0x00000000 0xffffffff 0xffffffff
  local.set $7
  local.get $5
  local.get $4
  f64x2.eq
  local.get $7
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 584
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  local.get $4
  f64x2.ne
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 585
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  local.get $4
  f64x2.lt
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 586
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $5
  f64x2.le
  local.get $7
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 587
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $5
  f64x2.gt
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 588
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  local.get $4
  f64x2.ge
  local.get $7
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 589
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  local.get $4
  f64x2.min
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 590
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  local.get $4
  f64x2.max
  local.get $4
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 591
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  f64x2.abs
  local.get $4
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 592
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $features/simd/test_v8x16 (; 11 ;)
  (local $0 v128)
  (local $1 v128)
  (local $2 v128)
  v128.const i32x4 0x03020100 0x07060504 0x0b0a0908 0x0f0e0d0c
  local.set $0
  v128.const i32x4 0x13121110 0x17161514 0x1b1a1918 0x1f1e1d1c
  local.set $1
  local.get $0
  local.get $1
  v8x16.shuffle 0 17 2 19 4 21 6 23 8 25 10 27 12 29 14 31
  v128.const i32x4 0x13021100 0x17061504 0x1b0a1908 0x1f0e1d0c
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 620
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  v128.const i32x4 0x0c0d0e10 0x08090a0b 0x04050607 0x00010203
  local.set $2
  local.get $0
  local.get $2
  v8x16.swizzle
  v128.const i32x4 0x0c0d0e00 0x08090a0b 0x04050607 0x00010203
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 626
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $features/simd/test_v16x8 (; 12 ;)
  nop
 )
 (func $features/simd/test_v32x4 (; 13 ;)
  nop
 )
 (func $features/simd/test_v64x2 (; 14 ;)
  nop
 )
 (func $start:features/simd (; 15 ;)
  global.get $~lib/heap/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/rt/stub/startOffset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
  call $features/simd/test_v128
  call $features/simd/test_i8x16
  call $features/simd/test_i16x8
  call $features/simd/test_i32x4
  call $features/simd/test_i64x2
  call $features/simd/test_f32x4
  call $features/simd/test_f64x2
  call $features/simd/test_v8x16
  call $features/simd/test_v16x8
  call $features/simd/test_v32x4
  call $features/simd/test_v64x2
 )
 (func $~start (; 16 ;)
  call $start:features/simd
 )
)
