(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\07\00\00\00s\00i\00m\00d\00.\00t\00s")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start (; 1 ;) (type $FUNCSIG$v)
  i32.const 32
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
  i32.const 0
  i32.const 8
  i32.const 85
  i32.const 2
  call $~lib/env/abort
  unreachable
 )
 (func $null (; 2 ;) (type $FUNCSIG$v)
  nop
 )
)
