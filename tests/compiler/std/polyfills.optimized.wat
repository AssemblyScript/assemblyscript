(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$j (func (result i64)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00s\00t\00d\00/\00p\00o\00l\00y\00f\00i\00l\00l\00s\00.\00t\00s")
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/polyfills/bswap<u8> (; 1 ;) (type $FUNCSIG$i) (result i32)
  i32.const 170
 )
 (func $~lib/polyfills/bswap<u16> (; 2 ;) (type $FUNCSIG$i) (result i32)
  i32.const 11189162
 )
 (func $~lib/polyfills/bswap<u32> (; 3 ;) (type $FUNCSIG$i) (result i32)
  i32.const -573785174
 )
 (func $~lib/polyfills/bswap<u64> (; 4 ;) (type $FUNCSIG$j) (result i64)
  i64.const -2464388556401798912
 )
 (func $start (; 5 ;) (type $v)
  call $~lib/polyfills/bswap<u8>
  i32.const 255
  i32.and
  i32.const 170
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 4
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  call $~lib/polyfills/bswap<u8>
  i32.const 255
  i32.and
  i32.const 170
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 5
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  call $~lib/polyfills/bswap<u16>
  i32.const 65535
  i32.and
  i32.const 48042
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 8
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  call $~lib/polyfills/bswap<u16>
  i32.const 65535
  i32.and
  i32.const 48042
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 9
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  call $~lib/polyfills/bswap<u32>
  i32.const -573785174
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 12
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  call $~lib/polyfills/bswap<u32>
  i32.const -573785174
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 13
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  call $~lib/polyfills/bswap<u64>
  i64.const -2464388556401798912
  i64.ne
  if
   i32.const 0
   i32.const 8
   i32.const 16
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  call $~lib/polyfills/bswap<u64>
  i64.const -2464388556401798912
  i64.ne
  if
   i32.const 0
   i32.const 8
   i32.const 17
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  call $~lib/polyfills/bswap<u32>
  i32.const -573785174
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 20
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  call $~lib/polyfills/bswap<u32>
  i32.const -573785174
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 21
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $null (; 6 ;) (type $v)
  nop
 )
)
