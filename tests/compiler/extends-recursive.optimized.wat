(module
 (type $none_=>_none (func))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (memory $0 0)
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $extends-recursive/Child i32 (i32.const 3))
 (export "memory" (memory $0))
 (export "Child" (global $extends-recursive/Child))
 (export "Child#get:child" (func $extends-recursive/Parent#get:child))
 (export "Child#set:child" (func $extends-recursive/Parent#set:child))
 (start $~start)
 (func $extends-recursive/Parent#get:child (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $extends-recursive/Parent#set:child (param $0 i32) (param $1 i32)
  local.get $0
  i32.load
  drop
  local.get $0
  local.get $1
  i32.store
 )
 (func $~start
  i32.const 1024
  global.set $~lib/rt/stub/offset
 )
)
