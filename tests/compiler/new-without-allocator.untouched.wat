(module
 (type $i (func (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $v (func))
 (memory $0 0)
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "test" (func $new-without-allocator/test))
 (func $~lib/memory/memory.allocate (; 0 ;) (type $ii) (param $0 i32) (result i32)
  unreachable
 )
 (func $new-without-allocator/test (; 1 ;) (type $i) (result i32)
  (local $0 i32)
  (local $1 i32)
  block (result i32)
   i32.const 0
   call $~lib/memory/memory.allocate
   set_local $0
   get_local $0
  end
  set_local $1
  i32.const 3
 )
 (func $null (; 2 ;) (type $v)
 )
)
