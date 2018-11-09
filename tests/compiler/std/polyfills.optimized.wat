(module
 (type $ii (func (param i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
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
 (func $~lib/polyfills/bswap16<i16> (; 2 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $start (; 3 ;) (type $v)
  i32.const 43707
  call $~lib/polyfills/bswap16<u16>
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
  i32.const 43707
  call $~lib/polyfills/bswap16<i16>
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
 )
 (func $null (; 4 ;) (type $v)
  nop
 )
)
