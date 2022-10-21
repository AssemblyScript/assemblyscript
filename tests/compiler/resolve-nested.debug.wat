(module
 (type $i32_i32_i32_=>_none (func_subtype (param i32 i32 i32) func))
 (type $i32_i32_i32_i32_=>_none (func_subtype (param i32 i32 i32 i32) func))
 (type $none_=>_none (func_subtype func))
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
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 65544))
 (global $~lib/memory/__heap_base i32 (i32.const 65544))
 (memory $0 0)
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (export "outer" (func $export:resolve-nested/outer))
 (func $resolve-nested/outer (type $i32_i32_i32_=>_none) (param $a i32) (param $b i32) (param $c i32)
  nop
 )
 (func $~stack_check (type $none_=>_none)
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 65568
   i32.const 65616
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $export:resolve-nested/outer (type $i32_i32_i32_=>_none) (param $0 i32) (param $1 i32) (param $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
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
