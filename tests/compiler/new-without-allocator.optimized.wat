(module
 (type $i (func (result i32)))
 (type $v (func))
 (memory $0 0)
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "test" (func $new-without-allocator/test))
 (func $new-without-allocator/test (; 0 ;) (type $i) (result i32)
  unreachable
 )
 (func $null (; 1 ;) (type $v)
  nop
 )
)
