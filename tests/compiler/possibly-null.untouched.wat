(module
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 2)
 (data (i32.const 12) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00s\00t\00a\00c\00k\00 \00o\00v\00e\00r\00f\00l\00o\00w\00")
 (data (i32.const 60) "\14\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00")
 (table $0 1 funcref)
 (global $~lib/ASC_FEATURE_BULK_MEMORY i32 (i32.const 0))
 (global $~lib/rt/__stack_base i32 (i32.const 100))
 (global $~lib/rt/__stack_size i32 (i32.const 65536))
 (global $~lib/rt/__stackptr (mut i32) (i32.const 100))
 (export "memory" (memory $0))
 (export "testTrue" (func $possibly-null/testTrue))
 (export "testFalseElse" (func $possibly-null/testFalseElse))
 (export "testFalseContinuation" (func $possibly-null/testFalseContinuation))
 (export "testNeNull" (func $possibly-null/testNeNull))
 (export "testEqNullElse" (func $possibly-null/testEqNullElse))
 (export "testEqNullContinuation" (func $possibly-null/testEqNullContinuation))
 (export "testNotEqNull" (func $possibly-null/testNotEqNull))
 (export "testNotNeNullElse" (func $possibly-null/testNotNeNullElse))
 (export "testNotNeNullContinuation" (func $possibly-null/testNotNeNullContinuation))
 (export "testWhile" (func $possibly-null/testWhile))
 (export "testWhile2" (func $possibly-null/testWhile2))
 (export "testWhile3" (func $possibly-null/testWhile3))
 (export "testLogicalAnd" (func $possibly-null/testLogicalAnd))
 (export "testLogicalOr" (func $possibly-null/testLogicalOr))
 (export "testLogicalAndMulti" (func $possibly-null/testLogicalAndMulti))
 (export "testLogicalOrMulti" (func $possibly-null/testLogicalOrMulti))
 (export "testAssign" (func $possibly-null/testAssign))
 (export "testNeverNull" (func $possibly-null/testNeverNull))
 (func $~lib/rt/__stackify (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.store
  local.get $0
 )
 (func $possibly-null/testTrue (param $0 i32)
  (local $1 i32)
  i32.const 4
  call $~lib/rt/__stack_prepare
  local.set $1
  local.get $0
  local.get $1
  i32.const 0
  i32.add
  call $~lib/rt/__stackify
  local.set $0
  local.get $0
  if
   i32.const 0
   drop
  end
  local.get $1
  call $~lib/rt/__stack_restore
 )
 (func $possibly-null/testFalseElse (param $0 i32)
  (local $1 i32)
  i32.const 4
  call $~lib/rt/__stack_prepare
  local.set $1
  local.get $0
  local.get $1
  i32.const 0
  i32.add
  call $~lib/rt/__stackify
  local.set $0
  local.get $0
  i32.eqz
  if
   local.get $1
   call $~lib/rt/__stack_restore
   return
  else
   i32.const 0
   drop
  end
  local.get $1
  call $~lib/rt/__stack_restore
 )
 (func $possibly-null/testFalseContinuation (param $0 i32)
  (local $1 i32)
  i32.const 4
  call $~lib/rt/__stack_prepare
  local.set $1
  local.get $0
  local.get $1
  i32.const 0
  i32.add
  call $~lib/rt/__stackify
  local.set $0
  local.get $0
  i32.eqz
  if
   local.get $1
   call $~lib/rt/__stack_restore
   return
  end
  i32.const 0
  drop
  local.get $1
  call $~lib/rt/__stack_restore
 )
 (func $possibly-null/testNeNull (param $0 i32)
  (local $1 i32)
  i32.const 4
  call $~lib/rt/__stack_prepare
  local.set $1
  local.get $0
  local.get $1
  i32.const 0
  i32.add
  call $~lib/rt/__stackify
  local.set $0
  local.get $0
  i32.const 0
  i32.ne
  if
   i32.const 0
   drop
  end
  local.get $1
  call $~lib/rt/__stack_restore
 )
 (func $possibly-null/testEqNullElse (param $0 i32)
  (local $1 i32)
  i32.const 4
  call $~lib/rt/__stack_prepare
  local.set $1
  local.get $0
  local.get $1
  i32.const 0
  i32.add
  call $~lib/rt/__stackify
  local.set $0
  local.get $0
  i32.const 0
  i32.eq
  if
   local.get $1
   call $~lib/rt/__stack_restore
   return
  else
   i32.const 0
   drop
  end
  local.get $1
  call $~lib/rt/__stack_restore
 )
 (func $possibly-null/testEqNullContinuation (param $0 i32)
  (local $1 i32)
  i32.const 4
  call $~lib/rt/__stack_prepare
  local.set $1
  local.get $0
  local.get $1
  i32.const 0
  i32.add
  call $~lib/rt/__stackify
  local.set $0
  local.get $0
  i32.const 0
  i32.eq
  if
   local.get $1
   call $~lib/rt/__stack_restore
   return
  end
  i32.const 0
  drop
  local.get $1
  call $~lib/rt/__stack_restore
 )
 (func $possibly-null/testNotEqNull (param $0 i32)
  (local $1 i32)
  i32.const 4
  call $~lib/rt/__stack_prepare
  local.set $1
  local.get $0
  local.get $1
  i32.const 0
  i32.add
  call $~lib/rt/__stackify
  local.set $0
  local.get $0
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   drop
  end
  local.get $1
  call $~lib/rt/__stack_restore
 )
 (func $possibly-null/testNotNeNullElse (param $0 i32)
  (local $1 i32)
  i32.const 4
  call $~lib/rt/__stack_prepare
  local.set $1
  local.get $0
  local.get $1
  i32.const 0
  i32.add
  call $~lib/rt/__stackify
  local.set $0
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   local.get $1
   call $~lib/rt/__stack_restore
   return
  else
   i32.const 0
   drop
  end
  local.get $1
  call $~lib/rt/__stack_restore
 )
 (func $possibly-null/testNotNeNullContinuation (param $0 i32)
  (local $1 i32)
  i32.const 4
  call $~lib/rt/__stack_prepare
  local.set $1
  local.get $0
  local.get $1
  i32.const 0
  i32.add
  call $~lib/rt/__stackify
  local.set $0
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   local.get $1
   call $~lib/rt/__stack_restore
   return
  end
  i32.const 0
  drop
  local.get $1
  call $~lib/rt/__stack_restore
 )
 (func $possibly-null/testWhile (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 4
  call $~lib/rt/__stack_prepare
  local.set $2
  local.get $0
  local.get $2
  i32.const 0
  i32.add
  call $~lib/rt/__stackify
  local.set $0
  loop $while-continue|0
   local.get $0
   local.set $1
   local.get $1
   if
    i32.const 0
    drop
    i32.const 0
    local.get $2
    i32.const 4
    i32.add
    call $~lib/rt/__stackify
    local.set $0
    i32.const 1
    i32.eqz
    drop
    br $while-continue|0
   end
  end
  local.get $2
  call $~lib/rt/__stack_restore
 )
 (func $possibly-null/testWhile2 (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 8
  call $~lib/rt/__stack_prepare
  local.set $3
  local.get $0
  local.get $3
  i32.const 0
  i32.add
  call $~lib/rt/__stackify
  local.set $0
  local.get $1
  local.get $3
  i32.const 4
  i32.add
  call $~lib/rt/__stackify
  local.set $1
  loop $while-continue|0
   local.get $0
   local.set $2
   local.get $2
   if
    i32.const 0
    drop
    local.get $1
    local.get $3
    i32.const 8
    i32.add
    call $~lib/rt/__stackify
    local.set $0
    i32.const 1
    i32.eqz
    drop
    br $while-continue|0
   end
  end
  local.get $3
  call $~lib/rt/__stack_restore
 )
 (func $possibly-null/testWhile3 (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 8
  call $~lib/rt/__stack_prepare
  local.set $3
  local.get $0
  local.get $3
  i32.const 0
  i32.add
  call $~lib/rt/__stackify
  local.set $0
  local.get $1
  local.get $3
  i32.const 4
  i32.add
  call $~lib/rt/__stackify
  local.set $1
  loop $while-continue|0
   local.get $0
   local.set $2
   local.get $2
   if
    i32.const 0
    drop
    local.get $1
    if
     local.get $1
     local.get $3
     i32.const 8
     i32.add
     call $~lib/rt/__stackify
     local.set $0
     i32.const 0
     drop
    end
    br $while-continue|0
   end
  end
  local.get $3
  call $~lib/rt/__stack_restore
 )
 (func $possibly-null/requireNonNull (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 4
  call $~lib/rt/__stack_prepare
  local.set $1
  local.get $0
  local.get $1
  i32.const 0
  i32.add
  call $~lib/rt/__stackify
  local.set $0
  local.get $0
  local.set $2
  local.get $1
  call $~lib/rt/__stack_restore
  local.get $2
 )
 (func $possibly-null/testLogicalAnd (param $0 i32)
  (local $1 i32)
  i32.const 4
  call $~lib/rt/__stack_prepare
  local.set $1
  local.get $0
  local.get $1
  i32.const 0
  i32.add
  call $~lib/rt/__stackify
  local.set $0
  local.get $0
  if (result i32)
   local.get $0
   call $possibly-null/requireNonNull
  else
   i32.const 0
  end
  drop
  local.get $1
  call $~lib/rt/__stack_restore
 )
 (func $possibly-null/testLogicalOr (param $0 i32)
  (local $1 i32)
  i32.const 4
  call $~lib/rt/__stack_prepare
  local.set $1
  local.get $0
  local.get $1
  i32.const 0
  i32.add
  call $~lib/rt/__stackify
  local.set $0
  local.get $0
  i32.eqz
  if (result i32)
   i32.const 1
  else
   local.get $0
   call $possibly-null/requireNonNull
   i32.const 0
   i32.ne
  end
  drop
  local.get $1
  call $~lib/rt/__stack_restore
 )
 (func $possibly-null/testLogicalAndMulti (param $0 i32) (param $1 i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/__stack_prepare
  local.set $2
  local.get $0
  local.get $2
  i32.const 0
  i32.add
  call $~lib/rt/__stackify
  local.set $0
  local.get $1
  local.get $2
  i32.const 4
  i32.add
  call $~lib/rt/__stackify
  local.set $1
  local.get $0
  if (result i32)
   local.get $1
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
  local.get $2
  call $~lib/rt/__stack_restore
 )
 (func $possibly-null/testLogicalOrMulti (param $0 i32) (param $1 i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/__stack_prepare
  local.set $2
  local.get $0
  local.get $2
  i32.const 0
  i32.add
  call $~lib/rt/__stackify
  local.set $0
  local.get $1
  local.get $2
  i32.const 4
  i32.add
  call $~lib/rt/__stackify
  local.set $1
  local.get $0
  i32.eqz
  if (result i32)
   i32.const 1
  else
   local.get $1
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
  local.get $2
  call $~lib/rt/__stack_restore
 )
 (func $possibly-null/testAssign (param $0 i32) (param $1 i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/__stack_prepare
  local.set $2
  local.get $0
  local.get $2
  i32.const 0
  i32.add
  call $~lib/rt/__stackify
  local.set $0
  local.get $1
  local.get $2
  i32.const 4
  i32.add
  call $~lib/rt/__stackify
  local.set $1
  local.get $1
  local.get $2
  i32.const 8
  i32.add
  call $~lib/rt/__stackify
  local.set $0
  i32.const 0
  drop
  local.get $2
  call $~lib/rt/__stack_restore
 )
 (func $possibly-null/testNeverNull (param $0 i32)
  (local $1 i32)
  i32.const 4
  call $~lib/rt/__stack_prepare
  local.set $1
  local.get $0
  local.get $1
  i32.const 0
  i32.add
  call $~lib/rt/__stackify
  local.set $0
  local.get $0
  if
   local.get $0
   drop
  end
  local.get $1
  call $~lib/rt/__stack_restore
 )
 (func $~lib/rt/__stack_prepare (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/rt/__stackptr
  local.set $1
  local.get $1
  local.get $0
  i32.add
  local.set $2
  local.get $2
  global.get $~lib/rt/__stack_base
  global.get $~lib/rt/__stack_size
  i32.add
  i32.le_u
  i32.eqz
  if
   i32.const 32
   i32.const 80
   i32.const 118
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  global.set $~lib/rt/__stackptr
  i32.const 0
  drop
  loop $while-continue|0
   local.get $2
   i32.const 4
   i32.sub
   local.tee $2
   local.get $1
   i32.ge_u
   local.set $3
   local.get $3
   if
    local.get $2
    i32.const 0
    i32.store
    br $while-continue|0
   end
  end
  local.get $1
 )
 (func $~lib/rt/__stack_restore (param $0 i32)
  local.get $0
  global.set $~lib/rt/__stackptr
 )
)
