(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i64_=>_i64 (func (param i64) (result i64)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00s\00t\00d\00/\00p\00o\00l\00y\00f\00i\00l\00l\00s\00.\00t\00s\00")
 (data (i32.const 64) "\00\80@\c0 \a0`\e0\10\90P\d00\b0p\f0\08\88H\c8(\a8h\e8\18\98X\d88\b8x\f8\04\84D\c4$\a4d\e4\14\94T\d44\b4t\f4\0c\8cL\cc,\acl\ec\1c\9c\\\dc<\bc|\fc\02\82B\c2\"\a2b\e2\12\92R\d22\b2r\f2\n\8aJ\ca*\aaj\ea\1a\9aZ\da:\baz\fa\06\86F\c6&\a6f\e6\16\96V\d66\b6v\f6\0e\8eN\ce.\aen\ee\1e\9e^\de>\be~\fe\01\81A\c1!\a1a\e1\11\91Q\d11\b1q\f1\t\89I\c9)\a9i\e9\19\99Y\d99\b9y\f9\05\85E\c5%\a5e\e5\15\95U\d55\b5u\f5\0d\8dM\cd-\adm\ed\1d\9d]\dd=\bd}\fd\03\83C\c3#\a3c\e3\13\93S\d33\b3s\f3\0b\8bK\cb+\abk\eb\1b\9b[\db;\bb{\fb\07\87G\c7\'\a7g\e7\17\97W\d77\b7w\f7\0f\8fO\cf/\afo\ef\1f\9f_\df?\bf\7f\ff")
 (table $0 1 funcref)
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/polyfills/REV_LUT i32 (i32.const 64))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/polyfills/bswap<u8> (param $0 i32) (result i32)
  i32.const 1
  drop
  i32.const 1
  i32.const 1
  i32.eq
  drop
  local.get $0
  return
 )
 (func $~lib/polyfills/bswap<i8> (param $0 i32) (result i32)
  i32.const 1
  drop
  i32.const 1
  i32.const 1
  i32.eq
  drop
  local.get $0
  return
 )
 (func $~lib/polyfills/bswap<u16> (param $0 i32) (result i32)
  i32.const 1
  drop
  i32.const 2
  i32.const 1
  i32.eq
  drop
  i32.const 2
  i32.const 2
  i32.eq
  drop
  local.get $0
  i32.const 8
  i32.shl
  local.get $0
  i32.const 65535
  i32.and
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.or
  return
 )
 (func $~lib/polyfills/bswap<i16> (param $0 i32) (result i32)
  i32.const 1
  drop
  i32.const 2
  i32.const 1
  i32.eq
  drop
  i32.const 2
  i32.const 2
  i32.eq
  drop
  local.get $0
  i32.const 8
  i32.shl
  local.get $0
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.or
  return
 )
 (func $~lib/polyfills/bswap<u32> (param $0 i32) (result i32)
  i32.const 1
  drop
  i32.const 4
  i32.const 1
  i32.eq
  drop
  i32.const 4
  i32.const 2
  i32.eq
  drop
  i32.const 4
  i32.const 4
  i32.eq
  drop
  local.get $0
  i32.const -16711936
  i32.and
  i32.const 8
  i32.rotl
  local.get $0
  i32.const 16711935
  i32.and
  i32.const 8
  i32.rotr
  i32.or
  return
 )
 (func $~lib/polyfills/bswap<i32> (param $0 i32) (result i32)
  i32.const 1
  drop
  i32.const 4
  i32.const 1
  i32.eq
  drop
  i32.const 4
  i32.const 2
  i32.eq
  drop
  i32.const 4
  i32.const 4
  i32.eq
  drop
  local.get $0
  i32.const -16711936
  i32.and
  i32.const 8
  i32.rotl
  local.get $0
  i32.const 16711935
  i32.and
  i32.const 8
  i32.rotr
  i32.or
  return
 )
 (func $~lib/polyfills/bswap<u64> (param $0 i64) (result i64)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  i32.const 1
  drop
  i32.const 8
  i32.const 1
  i32.eq
  drop
  i32.const 8
  i32.const 2
  i32.eq
  drop
  i32.const 8
  i32.const 4
  i32.eq
  drop
  i32.const 8
  i32.const 8
  i32.eq
  drop
  local.get $0
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.set $1
  local.get $0
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  local.set $2
  local.get $1
  local.get $2
  i64.or
  local.set $3
  local.get $3
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.set $1
  local.get $3
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  local.set $2
  local.get $1
  local.get $2
  i64.or
  i64.const 32
  i64.rotr
  return
 )
 (func $~lib/polyfills/bswap<i64> (param $0 i64) (result i64)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  i32.const 1
  drop
  i32.const 8
  i32.const 1
  i32.eq
  drop
  i32.const 8
  i32.const 2
  i32.eq
  drop
  i32.const 8
  i32.const 4
  i32.eq
  drop
  i32.const 8
  i32.const 8
  i32.eq
  drop
  local.get $0
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.set $1
  local.get $0
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  local.set $2
  local.get $1
  local.get $2
  i64.or
  local.set $3
  local.get $3
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.set $1
  local.get $3
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  local.set $2
  local.get $1
  local.get $2
  i64.or
  i64.const 32
  i64.rotr
  return
 )
 (func $~lib/polyfills/bswap<usize> (param $0 i32) (result i32)
  i32.const 1
  drop
  i32.const 4
  i32.const 1
  i32.eq
  drop
  i32.const 4
  i32.const 2
  i32.eq
  drop
  i32.const 4
  i32.const 4
  i32.eq
  drop
  local.get $0
  i32.const -16711936
  i32.and
  i32.const 8
  i32.rotl
  local.get $0
  i32.const 16711935
  i32.and
  i32.const 8
  i32.rotr
  i32.or
  return
 )
 (func $~lib/polyfills/bswap<isize> (param $0 i32) (result i32)
  i32.const 1
  drop
  i32.const 4
  i32.const 1
  i32.eq
  drop
  i32.const 4
  i32.const 2
  i32.eq
  drop
  i32.const 4
  i32.const 4
  i32.eq
  drop
  local.get $0
  i32.const -16711936
  i32.and
  i32.const 8
  i32.rotl
  local.get $0
  i32.const 16711935
  i32.and
  i32.const 8
  i32.rotr
  i32.or
  return
 )
 (func $~lib/polyfills/bswap16<u8> (param $0 i32) (result i32)
  i32.const 1
  if (result i32)
   i32.const 1
   i32.const 4
   i32.le_u
  else
   i32.const 0
  end
  drop
  i32.const 1
  i32.const 1
  i32.eq
  drop
  local.get $0
  return
 )
 (func $~lib/polyfills/bswap16<i8> (param $0 i32) (result i32)
  i32.const 1
  if (result i32)
   i32.const 1
   i32.const 4
   i32.le_u
  else
   i32.const 0
  end
  drop
  i32.const 1
  i32.const 1
  i32.eq
  drop
  local.get $0
  return
 )
 (func $~lib/polyfills/bswap16<u16> (param $0 i32) (result i32)
  i32.const 1
  if (result i32)
   i32.const 2
   i32.const 4
   i32.le_u
  else
   i32.const 0
  end
  drop
  i32.const 2
  i32.const 1
  i32.eq
  drop
  i32.const 2
  i32.const 2
  i32.eq
  drop
  local.get $0
  i32.const 8
  i32.shl
  local.get $0
  i32.const 65535
  i32.and
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.or
  return
 )
 (func $~lib/polyfills/bswap16<i16> (param $0 i32) (result i32)
  i32.const 1
  if (result i32)
   i32.const 2
   i32.const 4
   i32.le_u
  else
   i32.const 0
  end
  drop
  i32.const 2
  i32.const 1
  i32.eq
  drop
  i32.const 2
  i32.const 2
  i32.eq
  drop
  local.get $0
  i32.const 8
  i32.shl
  local.get $0
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.or
  return
 )
 (func $~lib/polyfills/bswap16<u32> (param $0 i32) (result i32)
  i32.const 1
  if (result i32)
   i32.const 4
   i32.const 4
   i32.le_u
  else
   i32.const 0
  end
  drop
  i32.const 4
  i32.const 1
  i32.eq
  drop
  i32.const 4
  i32.const 2
  i32.eq
  drop
  i32.const 4
  i32.const 4
  i32.eq
  drop
  local.get $0
  i32.const 8
  i32.shl
  i32.const 65280
  i32.and
  local.get $0
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.or
  local.get $0
  i32.const -65536
  i32.and
  i32.or
  return
 )
 (func $~lib/polyfills/bswap16<i32> (param $0 i32) (result i32)
  i32.const 1
  if (result i32)
   i32.const 4
   i32.const 4
   i32.le_u
  else
   i32.const 0
  end
  drop
  i32.const 4
  i32.const 1
  i32.eq
  drop
  i32.const 4
  i32.const 2
  i32.eq
  drop
  i32.const 4
  i32.const 4
  i32.eq
  drop
  local.get $0
  i32.const 8
  i32.shl
  i32.const 65280
  i32.and
  local.get $0
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.or
  local.get $0
  i32.const -65536
  i32.and
  i32.or
  return
 )
 (func $~lib/polyfills/bitrev<u8> (param $0 i32) (result i32)
  i32.const 1
  drop
  i32.const 0
  i32.const 0
  i32.gt_s
  drop
  i32.const 1
  i32.const 1
  i32.eq
  drop
  global.get $~lib/polyfills/REV_LUT
  local.get $0
  i32.const 255
  i32.and
  i32.add
  i32.load8_u
  return
 )
 (func $~lib/polyfills/bitrev<i8> (param $0 i32) (result i32)
  i32.const 1
  drop
  i32.const 0
  i32.const 0
  i32.gt_s
  drop
  i32.const 1
  i32.const 1
  i32.eq
  drop
  global.get $~lib/polyfills/REV_LUT
  local.get $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 255
  i32.and
  i32.add
  i32.load8_u
  return
 )
 (func $~lib/polyfills/bitrev<u16> (param $0 i32) (result i32)
  i32.const 1
  drop
  i32.const 0
  i32.const 0
  i32.gt_s
  drop
  i32.const 2
  i32.const 1
  i32.eq
  drop
  i32.const 2
  i32.const 2
  i32.eq
  drop
  global.get $~lib/polyfills/REV_LUT
  local.get $0
  i32.const 255
  i32.and
  i32.add
  i32.load8_u
  i32.const 8
  i32.shl
  global.get $~lib/polyfills/REV_LUT
  local.get $0
  i32.const 65535
  i32.and
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.add
  i32.load8_u
  i32.or
  return
 )
 (func $~lib/polyfills/bitrev<i16> (param $0 i32) (result i32)
  i32.const 1
  drop
  i32.const 0
  i32.const 0
  i32.gt_s
  drop
  i32.const 2
  i32.const 1
  i32.eq
  drop
  i32.const 2
  i32.const 2
  i32.eq
  drop
  global.get $~lib/polyfills/REV_LUT
  local.get $0
  i32.const 255
  i32.and
  i32.add
  i32.load8_u
  i32.const 8
  i32.shl
  global.get $~lib/polyfills/REV_LUT
  local.get $0
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.add
  i32.load8_u
  i32.or
  return
 )
 (func $~lib/polyfills/bitrev<u32> (param $0 i32) (result i32)
  i32.const 1
  drop
  i32.const 0
  i32.const 0
  i32.gt_s
  drop
  i32.const 4
  i32.const 1
  i32.eq
  drop
  i32.const 4
  i32.const 2
  i32.eq
  drop
  i32.const 4
  i32.const 4
  i32.eq
  drop
  global.get $~lib/polyfills/REV_LUT
  local.get $0
  i32.const 255
  i32.and
  i32.add
  i32.load8_u
  i32.const 24
  i32.shl
  global.get $~lib/polyfills/REV_LUT
  local.get $0
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.add
  i32.load8_u
  i32.const 16
  i32.shl
  i32.or
  global.get $~lib/polyfills/REV_LUT
  local.get $0
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.add
  i32.load8_u
  i32.const 8
  i32.shl
  i32.or
  global.get $~lib/polyfills/REV_LUT
  local.get $0
  i32.const 24
  i32.shr_u
  i32.add
  i32.load8_u
  i32.or
  return
 )
 (func $~lib/polyfills/bitrev<i32> (param $0 i32) (result i32)
  i32.const 1
  drop
  i32.const 0
  i32.const 0
  i32.gt_s
  drop
  i32.const 4
  i32.const 1
  i32.eq
  drop
  i32.const 4
  i32.const 2
  i32.eq
  drop
  i32.const 4
  i32.const 4
  i32.eq
  drop
  global.get $~lib/polyfills/REV_LUT
  local.get $0
  i32.const 255
  i32.and
  i32.add
  i32.load8_u
  i32.const 24
  i32.shl
  global.get $~lib/polyfills/REV_LUT
  local.get $0
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.add
  i32.load8_u
  i32.const 16
  i32.shl
  i32.or
  global.get $~lib/polyfills/REV_LUT
  local.get $0
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.add
  i32.load8_u
  i32.const 8
  i32.shl
  i32.or
  global.get $~lib/polyfills/REV_LUT
  local.get $0
  i32.const 24
  i32.shr_u
  i32.add
  i32.load8_u
  i32.or
  return
 )
 (func $~lib/polyfills/bitrev<u64> (param $0 i64) (result i64)
  (local $1 i64)
  (local $2 i64)
  i32.const 1
  drop
  i32.const 0
  i32.const 0
  i32.gt_s
  drop
  i32.const 8
  i32.const 1
  i32.eq
  drop
  i32.const 8
  i32.const 2
  i32.eq
  drop
  i32.const 8
  i32.const 4
  i32.eq
  drop
  i32.const 8
  i32.const 8
  i32.eq
  drop
  local.get $0
  local.set $2
  local.get $2
  i64.const 32
  i64.rotr
  local.set $2
  local.get $2
  i64.const 562945658585087
  i64.and
  i64.const 15
  i64.shl
  local.get $2
  i64.const -562945658585088
  i64.and
  i64.const 17
  i64.shr_u
  i64.or
  local.set $2
  local.get $2
  local.get $2
  i64.const 10
  i64.shr_u
  i64.xor
  i64.const 17873794169274399
  i64.and
  local.set $1
  local.get $1
  local.get $1
  i64.const 10
  i64.shl
  i64.or
  local.get $2
  i64.xor
  local.set $2
  local.get $2
  local.get $2
  i64.const 4
  i64.shr_u
  i64.xor
  i64.const 1009796018965021729
  i64.and
  local.set $1
  local.get $1
  local.get $1
  i64.const 4
  i64.shl
  i64.or
  local.get $2
  i64.xor
  local.set $2
  local.get $2
  local.get $2
  i64.const 2
  i64.shr_u
  i64.xor
  i64.const 2470374213237114946
  i64.and
  local.set $1
  local.get $1
  local.get $1
  i64.const 2
  i64.shl
  i64.or
  local.get $2
  i64.xor
  local.set $2
  local.get $2
  return
 )
 (func $~lib/polyfills/bitrev<i64> (param $0 i64) (result i64)
  (local $1 i64)
  (local $2 i64)
  i32.const 1
  drop
  i32.const 0
  i32.const 0
  i32.gt_s
  drop
  i32.const 8
  i32.const 1
  i32.eq
  drop
  i32.const 8
  i32.const 2
  i32.eq
  drop
  i32.const 8
  i32.const 4
  i32.eq
  drop
  i32.const 8
  i32.const 8
  i32.eq
  drop
  local.get $0
  local.set $2
  local.get $2
  i64.const 32
  i64.rotr
  local.set $2
  local.get $2
  i64.const 562945658585087
  i64.and
  i64.const 15
  i64.shl
  local.get $2
  i64.const -562945658585088
  i64.and
  i64.const 17
  i64.shr_u
  i64.or
  local.set $2
  local.get $2
  local.get $2
  i64.const 10
  i64.shr_u
  i64.xor
  i64.const 17873794169274399
  i64.and
  local.set $1
  local.get $1
  local.get $1
  i64.const 10
  i64.shl
  i64.or
  local.get $2
  i64.xor
  local.set $2
  local.get $2
  local.get $2
  i64.const 4
  i64.shr_u
  i64.xor
  i64.const 1009796018965021729
  i64.and
  local.set $1
  local.get $1
  local.get $1
  i64.const 4
  i64.shl
  i64.or
  local.get $2
  i64.xor
  local.set $2
  local.get $2
  local.get $2
  i64.const 2
  i64.shr_u
  i64.xor
  i64.const 2470374213237114946
  i64.and
  local.set $1
  local.get $1
  local.get $1
  i64.const 2
  i64.shl
  i64.or
  local.get $2
  i64.xor
  local.set $2
  local.get $2
  return
 )
 (func $start:std/polyfills
  i32.const 170
  call $~lib/polyfills/bswap<u8>
  i32.const 255
  i32.and
  i32.const 170
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
  i32.const 170
  call $~lib/polyfills/bswap<i8>
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 170
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 5
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 43707
  call $~lib/polyfills/bswap<u16>
  i32.const 65535
  i32.and
  i32.const 48042
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
  i32.const 43707
  call $~lib/polyfills/bswap<i16>
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 48042
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 9
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const -1430532899
  call $~lib/polyfills/bswap<u32>
  i32.const -573785174
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
  i32.const -1430532899
  call $~lib/polyfills/bswap<i32>
  i32.const -573785174
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
  i64.const 4822679907192029
  call $~lib/polyfills/bswap<u64>
  i64.const -2464388556401798912
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 16
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 4822679907192029
  call $~lib/polyfills/bswap<i64>
  i64.const -2464388556401798912
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 17
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const -1430532899
  call $~lib/polyfills/bswap<usize>
  i32.const -573785174
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 20
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const -1430532899
  call $~lib/polyfills/bswap<isize>
  i32.const -573785174
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
  i32.const 170
  call $~lib/polyfills/bswap16<u8>
  i32.const 255
  i32.and
  i32.const 170
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 24
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 170
  call $~lib/polyfills/bswap16<i8>
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 170
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
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
  i32.const 43707
  call $~lib/polyfills/bswap16<u16>
  i32.const 65535
  i32.and
  i32.const 48042
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 28
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 43707
  call $~lib/polyfills/bswap16<i16>
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 48042
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
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
  i32.const -7820613
  call $~lib/polyfills/bswap16<u32>
  i32.const -7816278
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 32
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const -7820613
  call $~lib/polyfills/bswap16<i32>
  i32.const -7816278
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
  i32.const 0
  call $~lib/polyfills/bitrev<u8>
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
  i32.const 0
  call $~lib/polyfills/bitrev<i8>
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 38
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $~lib/polyfills/bitrev<u8>
  i32.const 128
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
  i32.const 1
  call $~lib/polyfills/bitrev<i8>
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 128
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 40
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  call $~lib/polyfills/bitrev<u8>
  i32.const 64
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 41
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  call $~lib/polyfills/bitrev<i8>
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 64
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
  i32.const 51
  call $~lib/polyfills/bitrev<u8>
  i32.const 204
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 43
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 51
  call $~lib/polyfills/bitrev<i8>
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 204
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
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
  i32.const 127
  call $~lib/polyfills/bitrev<u8>
  i32.const 254
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 45
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 127
  call $~lib/polyfills/bitrev<i8>
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 254
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
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
  i32.const 129
  call $~lib/polyfills/bitrev<u8>
  i32.const 129
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 47
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 129
  call $~lib/polyfills/bitrev<i8>
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 129
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
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
  i32.const 255
  call $~lib/polyfills/bitrev<u8>
  i32.const 255
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 49
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 255
  call $~lib/polyfills/bitrev<i8>
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 255
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
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
  i32.const 0
  call $~lib/polyfills/bitrev<u16>
  i32.const 65535
  i32.and
  i32.const 0
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
  i32.const 0
  call $~lib/polyfills/bitrev<i16>
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 53
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $~lib/polyfills/bitrev<u16>
  i32.const 65535
  i32.and
  i32.const 32768
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
  i32.const 1
  call $~lib/polyfills/bitrev<i16>
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 32768
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 55
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  call $~lib/polyfills/bitrev<u16>
  i32.const 65535
  i32.and
  i32.const 16384
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
  i32.const 2
  call $~lib/polyfills/bitrev<i16>
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 16384
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 57
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 13107
  call $~lib/polyfills/bitrev<u16>
  i32.const 65535
  i32.and
  i32.const 52428
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
  i32.const 13107
  call $~lib/polyfills/bitrev<i16>
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 52428
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 59
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32767
  call $~lib/polyfills/bitrev<u16>
  i32.const 65535
  i32.and
  i32.const 65534
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
  i32.const 32767
  call $~lib/polyfills/bitrev<i16>
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 65534
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 61
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 34097
  call $~lib/polyfills/bitrev<u16>
  i32.const 65535
  i32.and
  i32.const 36001
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
  i32.const 34097
  call $~lib/polyfills/bitrev<i16>
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 36001
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 63
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 65535
  call $~lib/polyfills/bitrev<u16>
  i32.const 65535
  i32.and
  i32.const 65535
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
  i32.const 65535
  call $~lib/polyfills/bitrev<i16>
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 65535
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 65
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/polyfills/bitrev<u32>
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 67
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/polyfills/bitrev<i32>
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
  i32.const 1
  call $~lib/polyfills/bitrev<u32>
  i32.const -2147483648
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 69
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $~lib/polyfills/bitrev<i32>
  i32.const -2147483648
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
  i32.const 2
  call $~lib/polyfills/bitrev<u32>
  i32.const 1073741824
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 71
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  call $~lib/polyfills/bitrev<i32>
  i32.const 1073741824
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 72
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 128
  call $~lib/polyfills/bitrev<u32>
  i32.const 16777216
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
  i32.const 128
  call $~lib/polyfills/bitrev<i32>
  i32.const 16777216
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 74
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 858993459
  call $~lib/polyfills/bitrev<u32>
  i32.const -858993460
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 75
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 858993459
  call $~lib/polyfills/bitrev<i32>
  i32.const -858993460
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 76
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2147483647
  call $~lib/polyfills/bitrev<u32>
  i32.const -2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 77
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2147483647
  call $~lib/polyfills/bitrev<i32>
  i32.const -2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 78
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const -2023406815
  call $~lib/polyfills/bitrev<u32>
  i32.const -2067618079
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 79
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const -2023406815
  call $~lib/polyfills/bitrev<i32>
  i32.const -2067618079
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 80
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const -1
  call $~lib/polyfills/bitrev<u32>
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 81
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const -1
  call $~lib/polyfills/bitrev<i32>
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 82
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 0
  call $~lib/polyfills/bitrev<u64>
  i64.const 0
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 84
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 0
  call $~lib/polyfills/bitrev<i64>
  i64.const 0
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 85
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 1
  call $~lib/polyfills/bitrev<u64>
  i64.const -9223372036854775808
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 86
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 1
  call $~lib/polyfills/bitrev<i64>
  i64.const -9223372036854775808
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 87
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 2
  call $~lib/polyfills/bitrev<u64>
  i64.const 4611686018427387904
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 88
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 2
  call $~lib/polyfills/bitrev<i64>
  i64.const 4611686018427387904
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 89
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 128
  call $~lib/polyfills/bitrev<u64>
  i64.const 72057594037927936
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 90
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 128
  call $~lib/polyfills/bitrev<i64>
  i64.const 72057594037927936
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 91
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 1311768467407717153
  call $~lib/polyfills/bitrev<u64>
  i64.const -8880351995053331384
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 92
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 1311768467407717153
  call $~lib/polyfills/bitrev<i64>
  i64.const -8880351995053331384
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 93
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i64.const -9223372036854775808
  call $~lib/polyfills/bitrev<u64>
  i64.const 1
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 94
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i64.const -9223372036854775808
  call $~lib/polyfills/bitrev<i64>
  i64.const 1
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 95
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i64.const -1
  call $~lib/polyfills/bitrev<u64>
  i64.const -1
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 96
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i64.const -1
  call $~lib/polyfills/bitrev<i64>
  i64.const -1
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 97
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  call $start:std/polyfills
 )
)
