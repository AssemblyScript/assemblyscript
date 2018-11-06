(module
 (type $ii (func (param i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $II (func (param i64) (result i64)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\11\00\00\00~\00l\00i\00b\00/\00p\00o\00l\00y\00f\00i\00l\00l\00s\00.\00t\00s\00")
 (data (i32.const 48) "\10\00\00\00s\00t\00d\00/\00p\00o\00l\00y\00f\00i\00l\00l\00s\00.\00t\00s\00")
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $HEAP_BASE i32 (i32.const 84))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/polyfills/bswap16<u16> (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 2
  i32.const 1
  i32.eq
  tee_local $1
  if (result i32)
   get_local $1
  else   
   i32.const 2
   i32.const 2
   i32.eq
  end
  tee_local $1
  if (result i32)
   get_local $1
  else   
   i32.const 2
   i32.const 4
   i32.eq
  end
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 27
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 2
  i32.const 2
  i32.eq
  tee_local $1
  if (result i32)
   get_local $1
  else   
   i32.const 2
   i32.const 4
   i32.eq
  end
  if
   get_local $0
   i32.const 8
   i32.shl
   i32.const 65280
   i32.and
   get_local $0
   i32.const 65535
   i32.and
   i32.const 8
   i32.shr_u
   i32.const 255
   i32.and
   i32.or
   get_local $0
   i32.const -65536
   i32.and
   i32.or
   return
  end
  get_local $0
 )
 (func $~lib/polyfills/bswap<u16> (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 2
  i32.const 1
  i32.eq
  tee_local $1
  if (result i32)
   get_local $1
  else   
   i32.const 2
   i32.const 2
   i32.eq
  end
  tee_local $1
  if (result i32)
   get_local $1
  else   
   i32.const 2
   i32.const 4
   i32.eq
  end
  tee_local $1
  if (result i32)
   get_local $1
  else   
   i32.const 2
   i32.const 8
   i32.eq
  end
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 2
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  call $~lib/polyfills/bswap16<u16>
  return
 )
 (func $~lib/polyfills/bswap16<i16> (; 3 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 2
  i32.const 1
  i32.eq
  tee_local $1
  if (result i32)
   get_local $1
  else   
   i32.const 2
   i32.const 2
   i32.eq
  end
  tee_local $1
  if (result i32)
   get_local $1
  else   
   i32.const 2
   i32.const 4
   i32.eq
  end
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 27
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 2
  i32.const 2
  i32.eq
  tee_local $1
  if (result i32)
   get_local $1
  else   
   i32.const 2
   i32.const 4
   i32.eq
  end
  if
   get_local $0
   i32.const 8
   i32.shl
   i32.const 65280
   i32.and
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
   get_local $0
   i32.const -65536
   i32.and
   i32.or
   return
  end
  get_local $0
 )
 (func $~lib/polyfills/bswap<i16> (; 4 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 2
  i32.const 1
  i32.eq
  tee_local $1
  if (result i32)
   get_local $1
  else   
   i32.const 2
   i32.const 2
   i32.eq
  end
  tee_local $1
  if (result i32)
   get_local $1
  else   
   i32.const 2
   i32.const 4
   i32.eq
  end
  tee_local $1
  if (result i32)
   get_local $1
  else   
   i32.const 2
   i32.const 8
   i32.eq
  end
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 2
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  call $~lib/polyfills/bswap16<i16>
  return
 )
 (func $~lib/polyfills/bswap<u32> (; 5 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 4
  i32.const 1
  i32.eq
  tee_local $1
  if (result i32)
   get_local $1
  else   
   i32.const 4
   i32.const 2
   i32.eq
  end
  tee_local $1
  if (result i32)
   get_local $1
  else   
   i32.const 4
   i32.const 4
   i32.eq
  end
  tee_local $1
  if (result i32)
   get_local $1
  else   
   i32.const 4
   i32.const 8
   i32.eq
  end
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 2
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
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
  (local $1 i32)
  i32.const 4
  i32.const 1
  i32.eq
  tee_local $1
  if (result i32)
   get_local $1
  else   
   i32.const 4
   i32.const 2
   i32.eq
  end
  tee_local $1
  if (result i32)
   get_local $1
  else   
   i32.const 4
   i32.const 4
   i32.eq
  end
  tee_local $1
  if (result i32)
   get_local $1
  else   
   i32.const 4
   i32.const 8
   i32.eq
  end
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 2
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
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
  (local $1 i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  i32.const 8
  i32.const 1
  i32.eq
  tee_local $1
  if (result i32)
   get_local $1
  else   
   i32.const 8
   i32.const 2
   i32.eq
  end
  tee_local $1
  if (result i32)
   get_local $1
  else   
   i32.const 8
   i32.const 4
   i32.eq
  end
  tee_local $1
  if (result i32)
   get_local $1
  else   
   i32.const 8
   i32.const 8
   i32.eq
  end
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 2
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  set_local $2
  get_local $0
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  set_local $3
  get_local $2
  get_local $3
  i64.or
  set_local $4
  get_local $4
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  set_local $2
  get_local $4
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  set_local $3
  get_local $2
  get_local $3
  i64.or
  i64.const 32
  i64.rotr
  return
 )
 (func $~lib/polyfills/bswap<i64> (; 8 ;) (type $II) (param $0 i64) (result i64)
  (local $1 i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  i32.const 8
  i32.const 1
  i32.eq
  tee_local $1
  if (result i32)
   get_local $1
  else   
   i32.const 8
   i32.const 2
   i32.eq
  end
  tee_local $1
  if (result i32)
   get_local $1
  else   
   i32.const 8
   i32.const 4
   i32.eq
  end
  tee_local $1
  if (result i32)
   get_local $1
  else   
   i32.const 8
   i32.const 8
   i32.eq
  end
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 2
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  set_local $2
  get_local $0
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  set_local $3
  get_local $2
  get_local $3
  i64.or
  set_local $4
  get_local $4
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  set_local $2
  get_local $4
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  set_local $3
  get_local $2
  get_local $3
  i64.or
  i64.const 32
  i64.rotr
  return
 )
 (func $~lib/polyfills/bswap<usize> (; 9 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 4
  i32.const 1
  i32.eq
  tee_local $1
  if (result i32)
   get_local $1
  else   
   i32.const 4
   i32.const 2
   i32.eq
  end
  tee_local $1
  if (result i32)
   get_local $1
  else   
   i32.const 4
   i32.const 4
   i32.eq
  end
  tee_local $1
  if (result i32)
   get_local $1
  else   
   i32.const 4
   i32.const 8
   i32.eq
  end
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 2
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
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
  (local $1 i32)
  i32.const 4
  i32.const 1
  i32.eq
  tee_local $1
  if (result i32)
   get_local $1
  else   
   i32.const 4
   i32.const 2
   i32.eq
  end
  tee_local $1
  if (result i32)
   get_local $1
  else   
   i32.const 4
   i32.const 4
   i32.eq
  end
  tee_local $1
  if (result i32)
   get_local $1
  else   
   i32.const 4
   i32.const 8
   i32.eq
  end
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 2
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
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
 (func $~lib/polyfills/bswap16<u32> (; 11 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 4
  i32.const 1
  i32.eq
  tee_local $1
  if (result i32)
   get_local $1
  else   
   i32.const 4
   i32.const 2
   i32.eq
  end
  tee_local $1
  if (result i32)
   get_local $1
  else   
   i32.const 4
   i32.const 4
   i32.eq
  end
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 27
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 4
  i32.const 2
  i32.eq
  tee_local $1
  if (result i32)
   get_local $1
  else   
   i32.const 4
   i32.const 4
   i32.eq
  end
  if
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
   return
  end
  get_local $0
 )
 (func $~lib/polyfills/bswap16<i32> (; 12 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 4
  i32.const 1
  i32.eq
  tee_local $1
  if (result i32)
   get_local $1
  else   
   i32.const 4
   i32.const 2
   i32.eq
  end
  tee_local $1
  if (result i32)
   get_local $1
  else   
   i32.const 4
   i32.const 4
   i32.eq
  end
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 27
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 4
  i32.const 2
  i32.eq
  tee_local $1
  if (result i32)
   get_local $1
  else   
   i32.const 4
   i32.const 4
   i32.eq
  end
  if
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
   return
  end
  get_local $0
 )
 (func $start (; 13 ;) (type $v)
  i32.const 43707
  call $~lib/polyfills/bswap<u16>
  i32.const 65535
  i32.and
  i32.const 48042
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 48
   i32.const 4
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
   i32.const 48
   i32.const 5
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
   i32.const 48
   i32.const 8
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
   i32.const 48
   i32.const 9
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
   i32.const 48
   i32.const 12
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
   i32.const 48
   i32.const 13
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
   i32.const 48
   i32.const 16
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
   i32.const 48
   i32.const 17
   i32.const 0
   call $~lib/env/abort
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
   i32.const 48
   i32.const 20
   i32.const 0
   call $~lib/env/abort
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
   i32.const 48
   i32.const 21
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const -7820613
  call $~lib/polyfills/bswap16<u32>
  i32.const -7816278
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 48
   i32.const 24
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const -7820613
  call $~lib/polyfills/bswap16<i32>
  i32.const -7816278
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 48
   i32.const 25
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $null (; 14 ;) (type $v)
 )
)
