(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (memory $0 0)
 (table $0 1 funcref)
 (global $extends-recursive/Child i32 (i32.const 3))
 (export "memory" (memory $0))
 (export "Child" (global $extends-recursive/Child))
 (export "Child#get:child" (func $Child#get:child))
 (export "Child#set:child" (func $Child#set:child))
 (func $~lib/rt/stub/__retain (; 0 ;) (param $0 i32) (result i32)
  local.get $0
 )
 (func $Child#get:child (; 1 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $~lib/rt/stub/__release (; 2 ;) (param $0 i32)
  nop
 )
 (func $Child#set:child (; 3 ;) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.tee $0
  local.get $0
  i32.load
  local.tee $1
  i32.ne
  if
   local.get $0
   call $~lib/rt/stub/__retain
   local.set $0
   local.get $1
   call $~lib/rt/stub/__release
  end
  local.get $0
  i32.store
 )
)
