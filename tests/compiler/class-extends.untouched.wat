(module
 (type $i_ (func (param i32)))
 (type $_ (func))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/memory/HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "test" (func $class-extends/test))
 (func $class-extends/test (; 0 ;) (type $i_) (param $0 i32)
  local.get $0
  i32.load
  drop
  local.get $0
  i32.load16_s offset=4
  drop
  local.get $0
  i32.const 2
  i32.store
  local.get $0
  i32.const 3
  i32.store16 offset=4
 )
 (func $null (; 1 ;) (type $_)
 )
)
