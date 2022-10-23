(module
 (type $i32_i32_i32_i32_=>_none (func_subtype (param i32 i32 i32 i32) func))
 (type $i32_=>_none (func_subtype (param i32) func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 33792))
 (memory $0 0)
 (export "memory" (memory $0))
 (export "test" (func $export:class-extends/test))
 (func $export:class-extends/test (type $i32_=>_none) (param $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1024
  i32.lt_s
  if
   i32.const 33824
   i32.const 33872
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0
  drop
  local.get $0
  i32.load16_s $0 offset=4
  drop
  local.get $0
  i32.const 2
  i32.store $0
  local.get $0
  i32.const 3
  i32.store16 $0 offset=4
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
