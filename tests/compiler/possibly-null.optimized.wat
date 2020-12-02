(module
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 2)
 (data (i32.const 1036) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00s\00t\00a\00c\00k\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 1084) "\14\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (global $~lib/rt/__stackptr (mut i32) (i32.const 1124))
 (export "memory" (memory $0))
 (export "testTrue" (func $possibly-null/testTrue))
 (export "testFalseElse" (func $possibly-null/testFalseElse))
 (export "testFalseContinuation" (func $possibly-null/testFalseElse))
 (export "testNeNull" (func $possibly-null/testTrue))
 (export "testEqNullElse" (func $possibly-null/testFalseElse))
 (export "testEqNullContinuation" (func $possibly-null/testFalseElse))
 (export "testNotEqNull" (func $possibly-null/testTrue))
 (export "testNotNeNullElse" (func $possibly-null/testFalseElse))
 (export "testNotNeNullContinuation" (func $possibly-null/testFalseElse))
 (export "testWhile" (func $possibly-null/testWhile))
 (export "testWhile2" (func $possibly-null/testWhile2))
 (export "testWhile3" (func $possibly-null/testWhile3))
 (export "testLogicalAnd" (func $possibly-null/testLogicalAnd))
 (export "testLogicalOr" (func $possibly-null/testLogicalAnd))
 (export "testLogicalAndMulti" (func $possibly-null/testLogicalAndMulti))
 (export "testLogicalOrMulti" (func $possibly-null/testLogicalAndMulti))
 (export "testAssign" (func $possibly-null/testAssign))
 (export "testNeverNull" (func $possibly-null/testTrue))
 (func $possibly-null/testTrue (param $0 i32)
  (local $1 i32)
  i32.const 4
  call $~lib/rt/__stack_prepare
  local.tee $1
  local.get $0
  i32.store
  local.get $1
  global.set $~lib/rt/__stackptr
 )
 (func $possibly-null/testFalseElse (param $0 i32)
  (local $1 i32)
  i32.const 4
  call $~lib/rt/__stack_prepare
  local.tee $1
  local.get $0
  i32.store
  local.get $0
  i32.eqz
  if
   local.get $1
   global.set $~lib/rt/__stackptr
   return
  end
  local.get $1
  global.set $~lib/rt/__stackptr
 )
 (func $possibly-null/testWhile (param $0 i32)
  (local $1 i32)
  i32.const 4
  call $~lib/rt/__stack_prepare
  local.tee $1
  local.get $0
  i32.store
  loop $while-continue|0
   local.get $0
   if
    local.get $1
    i32.const 0
    i32.store offset=4
    i32.const 0
    local.set $0
    br $while-continue|0
   end
  end
  local.get $1
  global.set $~lib/rt/__stackptr
 )
 (func $possibly-null/testWhile2 (param $0 i32) (param $1 i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/__stack_prepare
  local.tee $2
  local.get $0
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  loop $while-continue|0
   local.get $0
   if
    local.get $2
    local.get $1
    i32.store offset=8
    local.get $1
    local.set $0
    br $while-continue|0
   end
  end
  local.get $2
  global.set $~lib/rt/__stackptr
 )
 (func $possibly-null/testWhile3 (param $0 i32) (param $1 i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/__stack_prepare
  local.tee $2
  local.get $0
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  loop $while-continue|0
   local.get $0
   if
    local.get $1
    if
     local.get $2
     local.get $1
     i32.store offset=8
     local.get $1
     local.set $0
    end
    br $while-continue|0
   end
  end
  local.get $2
  global.set $~lib/rt/__stackptr
 )
 (func $possibly-null/testLogicalAnd (param $0 i32)
  (local $1 i32)
  i32.const 4
  call $~lib/rt/__stack_prepare
  local.tee $1
  local.get $0
  i32.store
  local.get $0
  if
   local.get $0
   call $possibly-null/testTrue
  end
  local.get $1
  global.set $~lib/rt/__stackptr
 )
 (func $possibly-null/testLogicalAndMulti (param $0 i32) (param $1 i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/__stack_prepare
  local.tee $2
  local.get $0
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $2
  global.set $~lib/rt/__stackptr
 )
 (func $possibly-null/testAssign (param $0 i32) (param $1 i32)
  (local $2 i32)
  i32.const 8
  call $~lib/rt/__stack_prepare
  local.tee $2
  local.get $0
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $2
  global.set $~lib/rt/__stackptr
 )
 (func $~lib/rt/__stack_prepare (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  global.get $~lib/rt/__stackptr
  local.tee $1
  i32.add
  local.tee $0
  i32.const 66660
  i32.gt_u
  if
   i32.const 1056
   i32.const 1104
   i32.const 118
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  global.set $~lib/rt/__stackptr
  loop $while-continue|0
   local.get $0
   i32.const 4
   i32.sub
   local.tee $0
   local.get $1
   i32.ge_u
   if
    local.get $0
    i32.const 0
    i32.store
    br $while-continue|0
   end
  end
  local.get $1
 )
)
