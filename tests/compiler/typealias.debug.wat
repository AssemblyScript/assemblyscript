(module
 (type $f32_=>_f64 (func (param f32) (result f64)))
 (global $~lib/memory/__data_end i32 (i32.const 8))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16392))
 (global $~lib/memory/__heap_base i32 (i32.const 16392))
 (memory $0 0)
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "alias" (func $typealias/alias))
 (export "memory" (memory $0))
 (func $typealias/alias (param $alias f32) (result f64)
  local.get $alias
  f64.promote_f32
 )
)
