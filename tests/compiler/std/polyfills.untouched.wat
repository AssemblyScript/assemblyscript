(module
 (type $ii (func (param i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $II (func (param i64) (result i64)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00s\00t\00d\00/\00p\00o\00l\00y\00f\00i\00l\00l\00s\00.\00t\00s\00")
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $HEAP_BASE i32 (i32.const 44))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/polyfills/bswap<u8> (; 1 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  return
 )
 (func $~lib/polyfills/bswap<i8> (; 2 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  return
 )
 (func $~lib/polyfills/bswap<u16> (; 3 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.const 8
  i32.shl
  get_local $0
  i32.const 65535
  i32.and
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.or
  return
 )
 (func $~lib/polyfills/bswap<i16> (; 4 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.const 8
  i32.shl
  get_local $0
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
 (func $~lib/polyfills/bswap<u32> (; 5 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.const -16711936
  i32.and
  i32.const 8
  i32.rotl
  get_local $0
  i32.const 16711935
  i32.and
  i32.const 8
  i32.rotr
  i32.or
  return
 )
 (func $~lib/polyfills/bswap<i32> (; 6 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.const -16711936
  i32.and
  i32.const 8
  i32.rotl
  get_local $0
  i32.const 16711935
  i32.and
  i32.const 8
  i32.rotr
  i32.or
  return
 )
 (func $~lib/polyfills/bswap<u64> (; 7 ;) (type $II) (param $0 i64) (result i64)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  get_local $0
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  set_local $1
  get_local $0
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  set_local $2
  get_local $1
  get_local $2
  i64.or
  set_local $3
  get_local $3
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  set_local $1
  get_local $3
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  set_local $2
  get_local $1
  get_local $2
  i64.or
  i64.const 32
  i64.rotr
  return
 )
 (func $~lib/polyfills/bswap<i64> (; 8 ;) (type $II) (param $0 i64) (result i64)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  get_local $0
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  set_local $1
  get_local $0
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  set_local $2
  get_local $1
  get_local $2
  i64.or
  set_local $3
  get_local $3
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  set_local $1
  get_local $3
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  set_local $2
  get_local $1
  get_local $2
  i64.or
  i64.const 32
  i64.rotr
  return
 )
 (func $~lib/polyfills/bswap<usize> (; 9 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.const -16711936
  i32.and
  i32.const 8
  i32.rotl
  get_local $0
  i32.const 16711935
  i32.and
  i32.const 8
  i32.rotr
  i32.or
  return
 )
 (func $~lib/polyfills/bswap<isize> (; 10 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.const -16711936
  i32.and
  i32.const 8
  i32.rotl
  get_local $0
  i32.const 16711935
  i32.and
  i32.const 8
  i32.rotr
  i32.or
  return
 )
 (func $start (; 11 ;) (type $v)
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
   set_local $0
   get_local $0
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
   set_local $0
   get_local $0
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
   set_local $0
   get_local $0
   i32.const 8
   i32.shl
   get_local $0
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
   set_local $0
   get_local $0
   i32.const 8
   i32.shl
   get_local $0
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
   set_local $0
   get_local $0
   i32.const 8
   i32.shl
   i32.const 65280
   i32.and
   get_local $0
   i32.const 8
   i32.shr_u
   i32.const 255
   i32.and
   i32.or
   get_local $0
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
   set_local $0
   get_local $0
   i32.const 8
   i32.shl
   i32.const 65280
   i32.and
   get_local $0
   i32.const 8
   i32.shr_s
   i32.const 255
   i32.and
   i32.or
   get_local $0
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
 (func $null (; 12 ;) (type $v)
 )
)
