(module
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_none (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $resolve-nested/Outer.Inner.a (mut i32) (i32.const 0))
 (global $resolve-nested/Outer.Inner.b (mut i32) (i32.const 0))
 (global $resolve-nested/Outer.Inner.c (mut i32) (i32.const 0))
 (global $resolve-nested/Outer.Inner.d (mut i32) (i32.const 0))
 (global $resolve-nested/Outer.Inner.e (mut i32) (i32.const 0))
 (global $resolve-nested/Outer.Inner.f (mut i32) (i32.const 0))
 (global $resolve-nested/Outer.a (mut i32) (i32.const 0))
 (global $resolve-nested/Outer.b (mut i32) (i32.const 0))
 (global $resolve-nested/Outer.c (mut i32) (i32.const 0))
 (global $resolve-nested/Outer.d (mut i32) (i32.const 0))
 (global $resolve-nested/Outer.e (mut i32) (i32.const 0))
 (global $resolve-nested/a (mut i32) (i32.const 0))
 (global $resolve-nested/b (mut i32) (i32.const 0))
 (global $resolve-nested/c (mut i32) (i32.const 0))
 (global $~lib/memory/__data_end i32 (i32.const 8))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16392))
 (global $~lib/memory/__heap_base i32 (i32.const 16392))
 (memory $0 0)
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (export "outer" (func $export:resolve-nested/outer))
 (func $resolve-nested/outer (param $0 i32) (param $1 i32) (param $2 i32)
  nop
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 16416
   i32.const 16464
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $export:resolve-nested/outer (param $0 i32) (param $1 i32) (param $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $1
  local.get $2
  call $resolve-nested/outer
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
