(module
 (type $i (func (result i32)))
 (type $v (func))
 (type $FUNCSIG$i (func (result i32)))
 (memory $0 0)
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "test" (func $new-without-allocator/test))
 (func $~lib/memory/memory.allocate (; 0 ;) (type $FUNCSIG$i) (result i32)
  unreachable
 )
 (func $new-without-allocator/test (; 1 ;) (type $i) (result i32)
  call $~lib/memory/memory.allocate
  drop
  i32.const 3
 )
 (func $null (; 2 ;) (type $v)
  nop
 )
)
