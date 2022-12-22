(module
 (type $i32_=>_i32 (func_subtype (param i32) (result i32) func))
 (type $i32_i32_=>_none (func_subtype (param i32 i32) func))
 (type $i32_=>_none (func_subtype (param i32) func))
 (type $i32_i32_i32_i32_=>_none (func_subtype (param i32 i32 i32 i32) func))
 (type $none_=>_none (func_subtype func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/memory/__data_end i32 (i32.const 8))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 32776))
 (global $~lib/memory/__heap_base i32 (i32.const 32776))
 (memory $0 0)
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (export "test" (func $export:class-extends/test))
 (func $class-extends/A#get:a (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $class-extends/B#get:b (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load16_s $0 offset=4
 )
 (func $class-extends/A#set:a (type $i32_i32_=>_none) (param $this i32) (param $a i32)
  local.get $this
  local.get $a
  i32.store $0
 )
 (func $class-extends/B#set:b (type $i32_i32_=>_none) (param $this i32) (param $b i32)
  local.get $this
  local.get $b
  i32.store16 $0 offset=4
 )
 (func $~stack_check (type $none_=>_none)
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 32800
   i32.const 32848
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $class-extends/test (type $i32_=>_none) (param $b i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $b
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  call $class-extends/A#get:a
  drop
  local.get $b
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  call $class-extends/B#get:b
  drop
  local.get $b
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  i32.const 2
  call $class-extends/A#set:a
  local.get $b
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  i32.const 3
  call $class-extends/B#set:b
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:class-extends/test (type $i32_=>_none) (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $class-extends/test
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
