(module
 (type $FUNCSIG$v (func))
 (memory $0 1)
 (data (i32.const 8) "\07\00\00\00s\00i\00m\00d\00.\00t\00s")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start (; 0 ;) (type $FUNCSIG$v)
  i32.const 32
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
 )
 (func $null (; 1 ;) (type $FUNCSIG$v)
  nop
 )
)
