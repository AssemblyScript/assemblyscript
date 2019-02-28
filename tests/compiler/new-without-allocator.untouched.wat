(module
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$v (func))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/memory/HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "test" (func $new-without-allocator/test))
 (func $~lib/memory/memory.allocate (; 0 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  unreachable
 )
 (func $new-without-allocator/A#constructor (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   call $~lib/memory/memory.allocate
   local.set $0
  end
  local.get $0
 )
 (func $new-without-allocator/test (; 2 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  i32.const 0
  call $new-without-allocator/A#constructor
  local.set $0
  i32.const 3
 )
 (func $null (; 3 ;) (type $FUNCSIG$v)
 )
)
