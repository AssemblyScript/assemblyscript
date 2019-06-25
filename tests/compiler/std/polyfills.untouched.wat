(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$jj (func (param i64) (result i64)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00s\00t\00d\00/\00p\00o\00l\00y\00f\00i\00l\00l\00s\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/memory/HEAP_BASE i32 (i32.const 44))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/polyfills/bswap<u8> (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  return
 )
 (func $~lib/polyfills/bswap<i8> (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  return
 )
 (func $~lib/polyfills/bswap<u16> (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/polyfills/bswap<i16> (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 8
  i32.shl
  local.get $0
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 8
  i32.shr_s
  i32.const 255
  i32.and
  i32.or
  return
 )
 (func $~lib/polyfills/bswap<u32> (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/polyfills/bswap<i32> (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/polyfills/bswap<u64> (; 7 ;) (type $FUNCSIG$jj) (param $0 i64) (result i64)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
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
 (func $~lib/polyfills/bswap<i64> (; 8 ;) (type $FUNCSIG$jj) (param $0 i64) (result i64)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
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
 (func $~lib/polyfills/bswap<usize> (; 9 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/polyfills/bswap<isize> (; 10 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $start:std/polyfills (; 11 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 170
  call $~lib/polyfills/bswap<u8>
  i32.const 255
  i32.and
  i32.const 170
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 4
   i32.const 0
   call $~lib/env/abort
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
   i32.const 8
   i32.const 5
   i32.const 0
   call $~lib/env/abort
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
   i32.const 8
   i32.const 8
   i32.const 0
   call $~lib/env/abort
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
   i32.const 8
   i32.const 9
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const -1430532899
  call $~lib/polyfills/bswap<u32>
  i32.const -573785174
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 12
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const -1430532899
  call $~lib/polyfills/bswap<i32>
  i32.const -573785174
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 13
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i64.const 4822679907192029
  call $~lib/polyfills/bswap<u64>
  i64.const -2464388556401798912
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 16
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i64.const 4822679907192029
  call $~lib/polyfills/bswap<i64>
  i64.const -2464388556401798912
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 17
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const -1430532899
  call $~lib/polyfills/bswap<usize>
  i32.const -573785174
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 20
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const -1430532899
  call $~lib/polyfills/bswap<isize>
  i32.const -573785174
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 21
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/polyfills/bswap16<u8>|inlined.0 (result i32)
   i32.const 170
   local.set $0
   local.get $0
   br $~lib/polyfills/bswap16<u8>|inlined.0
  end
  i32.const 255
  i32.and
  i32.const 170
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 24
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/polyfills/bswap16<i8>|inlined.0 (result i32)
   i32.const 170
   local.set $0
   local.get $0
   br $~lib/polyfills/bswap16<i8>|inlined.0
  end
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
   i32.const 8
   i32.const 25
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/polyfills/bswap16<u16>|inlined.0 (result i32)
   i32.const 43707
   local.set $0
   local.get $0
   i32.const 8
   i32.shl
   local.get $0
   i32.const 8
   i32.shr_u
   i32.const 255
   i32.and
   i32.or
   br $~lib/polyfills/bswap16<u16>|inlined.0
  end
  i32.const 65535
  i32.and
  i32.const 48042
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 28
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/polyfills/bswap16<i16>|inlined.0 (result i32)
   i32.const 43707
   local.set $0
   local.get $0
   i32.const 8
   i32.shl
   local.get $0
   i32.const 16
   i32.shl
   i32.const 16
   i32.shr_s
   i32.const 8
   i32.shr_s
   i32.const 255
   i32.and
   i32.or
   br $~lib/polyfills/bswap16<i16>|inlined.0
  end
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
   i32.const 8
   i32.const 29
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/polyfills/bswap16<u32>|inlined.0 (result i32)
   i32.const -7820613
   local.set $0
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
   br $~lib/polyfills/bswap16<u32>|inlined.0
  end
  i32.const -7816278
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 32
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/polyfills/bswap16<i32>|inlined.0 (result i32)
   i32.const -7820613
   local.set $0
   local.get $0
   i32.const 8
   i32.shl
   i32.const 65280
   i32.and
   local.get $0
   i32.const 8
   i32.shr_s
   i32.const 255
   i32.and
   i32.or
   local.get $0
   i32.const -65536
   i32.and
   i32.or
   br $~lib/polyfills/bswap16<i32>|inlined.0
  end
  i32.const -7816278
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 33
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start (; 12 ;) (type $FUNCSIG$v)
  call $start:std/polyfills
 )
 (func $null (; 13 ;) (type $FUNCSIG$v)
 )
)
