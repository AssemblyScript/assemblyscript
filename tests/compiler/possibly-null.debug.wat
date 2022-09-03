(module
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_none (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/memory/__data_end i32 (i32.const 8))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16392))
 (global $~lib/memory/__heap_base i32 (i32.const 16392))
 (memory $0 0)
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (export "testTrue" (func $export:possibly-null/testTrue))
 (export "testFalseElse" (func $export:possibly-null/testFalseElse))
 (export "testFalseContinuation" (func $export:possibly-null/testFalseContinuation))
 (export "testNeNull" (func $export:possibly-null/testNeNull))
 (export "testEqNullElse" (func $export:possibly-null/testEqNullElse))
 (export "testEqNullContinuation" (func $export:possibly-null/testEqNullContinuation))
 (export "testNotEqNull" (func $export:possibly-null/testNotEqNull))
 (export "testNotNeNullElse" (func $export:possibly-null/testNotNeNullElse))
 (export "testNotNeNullContinuation" (func $export:possibly-null/testNotNeNullContinuation))
 (export "testWhile" (func $export:possibly-null/testWhile))
 (export "testWhile2" (func $export:possibly-null/testWhile2))
 (export "testWhile3" (func $export:possibly-null/testWhile3))
 (export "testLogicalAnd" (func $export:possibly-null/testLogicalAnd))
 (export "testLogicalOr" (func $export:possibly-null/testLogicalOr))
 (export "testLogicalAndMulti" (func $export:possibly-null/testLogicalAndMulti))
 (export "testLogicalOrMulti" (func $export:possibly-null/testLogicalOrMulti))
 (export "testAssign" (func $export:possibly-null/testAssign))
 (export "testAssignInCondi" (func $export:possibly-null/testAssignInCondi))
 (export "testNeverNull" (func $export:possibly-null/testNeverNull))
 (export "testLogicalOrTypeInfer" (func $export:possibly-null/testLogicalOrTypeInfer))
 (export "testInit" (func $export:possibly-null/testInit))
 (func $possibly-null/testTrue (param $a i32)
  local.get $a
  if
   i32.const 0
   drop
  end
 )
 (func $possibly-null/testFalseElse (param $a i32)
  local.get $a
  i32.eqz
  if
   return
  else
   i32.const 0
   drop
  end
 )
 (func $possibly-null/testFalseContinuation (param $a i32)
  local.get $a
  i32.eqz
  if
   return
  end
  i32.const 0
  drop
 )
 (func $possibly-null/testNeNull (param $a i32)
  local.get $a
  i32.const 0
  i32.ne
  if
   i32.const 0
   drop
  end
 )
 (func $possibly-null/testEqNullElse (param $a i32)
  local.get $a
  i32.const 0
  i32.eq
  if
   return
  else
   i32.const 0
   drop
  end
 )
 (func $possibly-null/testEqNullContinuation (param $a i32)
  local.get $a
  i32.const 0
  i32.eq
  if
   return
  end
  i32.const 0
  drop
 )
 (func $possibly-null/testNotEqNull (param $a i32)
  local.get $a
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   drop
  end
 )
 (func $possibly-null/testNotNeNullElse (param $a i32)
  local.get $a
  i32.const 0
  i32.ne
  i32.eqz
  if
   return
  else
   i32.const 0
   drop
  end
 )
 (func $possibly-null/testNotNeNullContinuation (param $a i32)
  local.get $a
  i32.const 0
  i32.ne
  i32.eqz
  if
   return
  end
  i32.const 0
  drop
 )
 (func $possibly-null/testWhile (param $a i32)
  (local $var$1 i32)
  loop $while-continue|0
   local.get $a
   local.set $var$1
   local.get $var$1
   if
    i32.const 0
    drop
    i32.const 0
    local.set $a
    i32.const 1
    i32.eqz
    drop
    br $while-continue|0
   end
  end
 )
 (func $possibly-null/testWhile2 (param $a i32) (param $b i32)
  (local $var$2 i32)
  loop $while-continue|0
   local.get $a
   local.set $var$2
   local.get $var$2
   if
    i32.const 0
    drop
    local.get $b
    local.set $a
    i32.const 1
    i32.eqz
    drop
    br $while-continue|0
   end
  end
 )
 (func $possibly-null/testWhile3 (param $a i32) (param $b i32)
  (local $var$2 i32)
  loop $while-continue|0
   local.get $a
   local.set $var$2
   local.get $var$2
   if
    i32.const 0
    drop
    local.get $b
    if
     local.get $b
     local.set $a
     i32.const 0
     drop
    end
    br $while-continue|0
   end
  end
 )
 (func $possibly-null/requireNonNull (param $a i32) (result i32)
  local.get $a
 )
 (func $possibly-null/testLogicalAnd (param $a i32)
  local.get $a
  if (result i32)
   local.get $a
   call $possibly-null/requireNonNull
  else
   i32.const 0
  end
  drop
 )
 (func $possibly-null/testLogicalOr (param $a i32)
  local.get $a
  i32.eqz
  if (result i32)
   i32.const 1
  else
   local.get $a
   call $possibly-null/requireNonNull
   i32.const 0
   i32.ne
  end
  drop
 )
 (func $possibly-null/testLogicalAndMulti (param $a i32) (param $b i32)
  local.get $a
  if (result i32)
   local.get $b
  else
   i32.const 0
  end
  if
   i32.const 0
   drop
   i32.const 0
   drop
  else
   i32.const 1
   i32.eqz
   drop
   i32.const 1
   i32.eqz
   drop
  end
 )
 (func $possibly-null/testLogicalOrMulti (param $a i32) (param $b i32)
  local.get $a
  i32.eqz
  if (result i32)
   i32.const 1
  else
   local.get $b
   i32.eqz
  end
  if
   i32.const 1
   i32.eqz
   drop
   i32.const 1
   i32.eqz
   drop
  else
   i32.const 0
   drop
   i32.const 0
   drop
  end
 )
 (func $possibly-null/testAssign (param $a i32) (param $b i32)
  local.get $b
  local.set $a
  i32.const 0
  drop
 )
 (func $possibly-null/testAssignInCondi (param $a i32)
  i32.const 0
  local.tee $a
  if
   i32.const 0
   drop
  else
   i32.const 1
   i32.eqz
   drop
  end
 )
 (func $possibly-null/testNeverNull (param $a i32)
  local.get $a
  if
   local.get $a
   drop
  end
 )
 (func $possibly-null/testLogicalOrTypeInfer (param $a i32) (param $b i32)
  (local $c i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $a
  if (result i32)
   local.get $a
  else
   local.get $b
  end
  local.tee $c
  i32.store $0
  i32.const 0
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $possibly-null/testInit (param $a i32)
  (local $b i32)
  (local $c i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $a
  local.set $b
  i32.const 0
  drop
  global.get $~lib/memory/__stack_pointer
  local.get $a
  call $possibly-null/requireNonNull
  local.tee $c
  i32.store $0
  i32.const 0
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
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
 (func $export:possibly-null/testTrue (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $possibly-null/testTrue
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:possibly-null/testFalseElse (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $possibly-null/testFalseElse
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:possibly-null/testFalseContinuation (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $possibly-null/testFalseContinuation
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:possibly-null/testNeNull (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $possibly-null/testNeNull
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:possibly-null/testEqNullElse (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $possibly-null/testEqNullElse
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:possibly-null/testEqNullContinuation (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $possibly-null/testEqNullContinuation
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:possibly-null/testNotEqNull (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $possibly-null/testNotEqNull
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:possibly-null/testNotNeNullElse (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $possibly-null/testNotNeNullElse
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:possibly-null/testNotNeNullContinuation (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $possibly-null/testNotNeNullContinuation
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
  i32.store $0
  local.get $0
  call $possibly-null/testWhile
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
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $0
  local.get $1
  call $possibly-null/testWhile2
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
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $0
  local.get $1
  call $possibly-null/testWhile3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:possibly-null/testLogicalAnd (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $possibly-null/testLogicalAnd
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:possibly-null/testLogicalOr (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $possibly-null/testLogicalOr
  global.get $~lib/memory/__stack_pointer
  i32.const 4
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
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $0
  local.get $1
  call $possibly-null/testLogicalAndMulti
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:possibly-null/testLogicalOrMulti (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $0
  local.get $1
  call $possibly-null/testLogicalOrMulti
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:possibly-null/testAssign (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $0
  local.get $1
  call $possibly-null/testAssign
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:possibly-null/testAssignInCondi (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $possibly-null/testAssignInCondi
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:possibly-null/testNeverNull (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $possibly-null/testNeverNull
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:possibly-null/testLogicalOrTypeInfer (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $0
  local.get $1
  call $possibly-null/testLogicalOrTypeInfer
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:possibly-null/testInit (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $possibly-null/testInit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
