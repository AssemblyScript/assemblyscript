(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (global $~lib/memory/__data_end i32 (i32.const 8))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16392))
 (global $~lib/memory/__heap_base i32 (i32.const 16392))
 (memory $0 0)
 (table $0 1 funcref)
 (elem $0 (i32.const 1))
 (export "alias" (func $typealias/alias))
 (export "memory" (memory $0))
 (func $typealias/alias (param $0 i32) (result i32)
  local.get $0
 )
)
