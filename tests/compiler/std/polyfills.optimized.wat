(module
 (type $ii (func (param i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$j (func (result i64)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\11\00\00\00~\00l\00i\00b\00/\00p\00o\00l\00y\00f\00i\00l\00l\00s\00.\00t\00s")
 (data (i32.const 48) "\10\00\00\00s\00t\00d\00/\00p\00o\00l\00y\00f\00i\00l\00l\00s\00.\00t\00s")
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/polyfills/bswap16<u16> (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 1
  tee_local $1
  i32.eqz
  if
   i32.const 0
   set_local $1
  end
  get_local $1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 27
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  tee_local $1
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
   i32.or
   get_local $0
   i32.const -65536
   i32.and
   i32.or
   return
  end
  get_local $0
 )
 (func $~lib/polyfills/bswap<u16> (; 2 ;) (type $FUNCSIG$i) (result i32)
  i32.const 43707
  call $~lib/polyfills/bswap16<u16>
 )
 (func $~lib/polyfills/bswap16<i16> (; 3 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 1
  tee_local $1
  i32.eqz
  if
   i32.const 0
   set_local $1
  end
  get_local $1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 27
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  tee_local $1
  if
   get_local $0
   i32.const 8
   i32.shl
   i32.const 65280
   i32.and
   get_local $0
   i32.const 16
   i32.shl
   i32.const 24
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
 (func $~lib/polyfills/bswap<i16> (; 4 ;) (type $FUNCSIG$i) (result i32)
  i32.const 43707
  call $~lib/polyfills/bswap16<i16>
 )
 (func $~lib/polyfills/bswap<u32> (; 5 ;) (type $FUNCSIG$i) (result i32)
  i32.const -573785174
 )
 (func $~lib/polyfills/bswap<u64> (; 6 ;) (type $FUNCSIG$j) (result i64)
  i64.const -2464388556401798912
 )
 (func $~lib/polyfills/bswap16<u32> (; 7 ;) (type $FUNCSIG$i) (result i32)
  i32.const -7816278
 )
 (func $start (; 8 ;) (type $v)
  call $~lib/polyfills/bswap<u16>
  i32.const 65535
  i32.and
  i32.const 48042
  i32.ne
  if
   i32.const 0
   i32.const 48
   i32.const 4
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  call $~lib/polyfills/bswap<i16>
  i32.const 65535
  i32.and
  i32.const 48042
  i32.ne
  if
   i32.const 0
   i32.const 48
   i32.const 5
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  call $~lib/polyfills/bswap<u32>
  i32.const -573785174
  i32.ne
  if
   i32.const 0
   i32.const 48
   i32.const 8
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  call $~lib/polyfills/bswap<u32>
  i32.const -573785174
  i32.ne
  if
   i32.const 0
   i32.const 48
   i32.const 9
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  call $~lib/polyfills/bswap<u64>
  i64.const -2464388556401798912
  i64.ne
  if
   i32.const 0
   i32.const 48
   i32.const 12
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  call $~lib/polyfills/bswap<u64>
  i64.const -2464388556401798912
  i64.ne
  if
   i32.const 0
   i32.const 48
   i32.const 13
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  call $~lib/polyfills/bswap<u32>
  i32.const -573785174
  i32.ne
  if
   i32.const 0
   i32.const 48
   i32.const 16
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  call $~lib/polyfills/bswap<u32>
  i32.const -573785174
  i32.ne
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
  i32.ne
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
  i32.const 65535
  i32.and
  i32.const 48042
  i32.ne
  if
   i32.const 0
   i32.const 48
   i32.const 21
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  call $~lib/polyfills/bswap16<u32>
  i32.const -7816278
  i32.ne
  if
   i32.const 0
   i32.const 48
   i32.const 24
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  call $~lib/polyfills/bswap16<u32>
  i32.const -7816278
  i32.ne
  if
   i32.const 0
   i32.const 48
   i32.const 25
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $null (; 9 ;) (type $v)
  nop
 )
)
