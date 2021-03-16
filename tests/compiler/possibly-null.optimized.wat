(module
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_none (func (param i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 0)
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 17408))
 (export "memory" (memory $0))
 (export "testTrue" (func $export:possibly-null/testTrue))
 (export "testFalseElse" (func $export:possibly-null/testTrue))
 (export "testFalseContinuation" (func $export:possibly-null/testTrue))
 (export "testNeNull" (func $export:possibly-null/testTrue))
 (export "testEqNullElse" (func $export:possibly-null/testTrue))
 (export "testEqNullContinuation" (func $export:possibly-null/testTrue))
 (export "testNotEqNull" (func $export:possibly-null/testTrue))
 (export "testNotNeNullElse" (func $export:possibly-null/testTrue))
 (export "testNotNeNullContinuation" (func $export:possibly-null/testTrue))
 (export "testWhile" (func $export:possibly-null/testWhile))
 (export "testWhile2" (func $export:possibly-null/testWhile2))
 (export "testWhile3" (func $export:possibly-null/testWhile3))
 (export "testLogicalAnd" (func $export:possibly-null/testTrue))
 (export "testLogicalOr" (func $export:possibly-null/testTrue))
 (export "testLogicalAndMulti" (func $export:possibly-null/testLogicalAndMulti))
 (export "testLogicalOrMulti" (func $export:possibly-null/testLogicalAndMulti))
 (export "testAssign" (func $export:possibly-null/testLogicalAndMulti))
 (export "testNeverNull" (func $export:possibly-null/testTrue))
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 1024
  i32.lt_s
  if
   i32.const 17440
   i32.const 17488
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $export:possibly-null/testTrue (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:possibly-null/testWhile (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  loop $while-continue|0
   local.get $0
   if
    i32.const 0
    local.set $0
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:possibly-null/testWhile2 (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  loop $while-continue|0
   local.get $0
   if
    local.get $1
    local.set $0
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:possibly-null/testWhile3 (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  loop $while-continue|0
   local.get $0
   if
    local.get $1
    local.get $0
    local.get $1
    select
    local.set $0
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:possibly-null/testLogicalAndMulti (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
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
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
