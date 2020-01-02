(module
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (memory $0 0)
 (global $extends-recursive/Child i32 (i32.const 3))
 (export "memory" (memory $0))
 (export "Child" (global $extends-recursive/Child))
 (export "Child#get:child" (func $Child#get:child))
 (export "Child#set:child" (func $Child#set:child))
 (func $Child#get:child (; 0 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $Child#set:child (; 1 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.tee $0
  i32.load
  drop
  local.get $0
  i32.store
 )
)
