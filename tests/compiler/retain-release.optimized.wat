(module
 (type $i32_=>_none (func (param i32)))
 (type $none_=>_none (func))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00e\00r\00r\00o\00r")
 (data (i32.const 48) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00r\00e\00t\00a\00i\00n\00-\00r\00e\00l\00e\00a\00s\00e\00.\00t\00s")
 (table $0 1 funcref)
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $retain-release/REF (mut i32) (i32.const 0))
 (global $retain-release/glo (mut i32) (i32.const 0))
 (global $retain-release/TARGET (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~started (mut i32) (i32.const 0))
 (export "__argumentsLength" (global $~argumentsLength))
 (export "_start" (func $~start))
 (export "memory" (memory $0))
 (export "returnRef" (func $retain-release/returnRef))
 (export "receiveRef" (func $retain-release/receiveRef))
 (export "receiveRefDrop" (func $retain-release/receiveRef))
 (export "receiveRefRetain" (func $retain-release/receiveRef))
 (export "takeRef" (func $retain-release/takeRef))
 (export "provideRef" (func $retain-release/receiveRef))
 (export "takeReturnRef" (func $retain-release/takeReturnRef))
 (export "provideReceiveRef" (func $retain-release/receiveRef))
 (export "newRef" (func $retain-release/newRef))
 (export "assignGlobal" (func $retain-release/assignGlobal))
 (export "assignField" (func $retain-release/assignField))
 (export "scopeBlock" (func $retain-release/receiveRef))
 (export "scopeBlockToUninitialized" (func $retain-release/receiveRef))
 (export "scopeBlockToInitialized" (func $retain-release/receiveRef))
 (export "scopeBlockToConditional" (func $retain-release/takeRef))
 (export "scopeTopLevelUninitialized" (func $retain-release/receiveRef))
 (export "scopeTopLevelInitialized" (func $retain-release/receiveRef))
 (export "scopeTopLevelConditional" (func $retain-release/takeRef))
 (export "scopeIf" (func $retain-release/takeRef))
 (export "scopeIfElse" (func $retain-release/takeRef))
 (export "scopeWhile" (func $retain-release/takeRef))
 (export "scopeDo" (func $retain-release/takeRef))
 (export "scopeFor" (func $retain-release/takeRef))
 (export "scopeForComplex" (func $retain-release/scopeForComplex))
 (export "scopeBreak" (func $retain-release/takeRef))
 (export "scopeBreakNested" (func $retain-release/takeRef))
 (export "scopeContinue" (func $retain-release/takeRef))
 (export "scopeContinueNested" (func $retain-release/takeRef))
 (export "scopeThrow" (func $retain-release/scopeThrow))
 (export "scopeUnreachable" (func $retain-release/scopeUnreachable))
 (export "callInline" (func $retain-release/receiveRef))
 (export "provideRefInline" (func $retain-release/receiveRef))
 (export "receiveRefInline" (func $retain-release/receiveRef))
 (export "receiveRefInlineDrop" (func $retain-release/receiveRef))
 (export "provideRefIndirect" (func $retain-release/provideRefIndirect))
 (export "receiveRefIndirect" (func $retain-release/receiveRefIndirect))
 (export "receiveRefIndirectDrop" (func $retain-release/receiveRefIndirect))
 (func $~lib/rt/stub/maybeGrowMemory (; 1 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  memory.size
  local.tee $2
  i32.const 16
  i32.shl
  local.tee $1
  i32.gt_u
  if
   local.get $2
   local.get $0
   local.get $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $1
   local.get $2
   local.get $1
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $1
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $0
  global.set $~lib/rt/stub/offset
 )
 (func $~lib/rt/stub/__alloc (; 2 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.tee $3
  local.get $0
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $2
  i32.const 16
  local.get $2
  i32.const 16
  i32.gt_u
  select
  local.tee $4
  i32.add
  call $~lib/rt/stub/maybeGrowMemory
  local.get $3
  i32.const 16
  i32.sub
  local.tee $2
  local.get $4
  i32.store
  local.get $2
  i32.const 1
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=12
  local.get $3
 )
 (func $retain-release/Ref#constructor (; 3 ;) (result i32)
  i32.const 0
  i32.const 3
  call $~lib/rt/stub/__alloc
 )
 (func $retain-release/returnRef (; 4 ;) (result i32)
  global.get $retain-release/REF
 )
 (func $retain-release/receiveRef (; 5 ;)
  nop
 )
 (func $retain-release/takeRef (; 6 ;) (param $0 i32)
  nop
 )
 (func $retain-release/takeReturnRef (; 7 ;) (param $0 i32) (result i32)
  local.get $0
 )
 (func $retain-release/newRef (; 8 ;)
  call $retain-release/Ref#constructor
  drop
 )
 (func $retain-release/assignGlobal (; 9 ;)
  global.get $retain-release/REF
  global.set $retain-release/glo
 )
 (func $retain-release/assignField (; 10 ;)
  (local $0 i32)
  (local $1 i32)
  global.get $retain-release/REF
  local.tee $0
  global.get $retain-release/TARGET
  local.tee $1
  i32.load
  i32.ne
  drop
  local.get $1
  local.get $0
  i32.store
 )
 (func $retain-release/scopeForComplex (; 11 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  loop $for-loop|0
   local.get $0
   if
    i32.const 0
    local.set $1
    loop $for-loop|1
     local.get $0
     if
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|1
     end
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
 )
 (func $retain-release/scopeThrow (; 12 ;) (param $0 i32)
  local.get $0
  if
   i32.const 32
   i32.const 64
   i32.const 367
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $retain-release/scopeUnreachable (; 13 ;) (param $0 i32)
  local.get $0
  if
   unreachable
  end
 )
 (func $retain-release/provideRefIndirect (; 14 ;) (param $0 i32)
  i32.const 1
  global.set $~argumentsLength
  global.get $retain-release/REF
  local.get $0
  call_indirect (type $i32_=>_none)
 )
 (func $retain-release/receiveRefIndirect (; 15 ;) (param $0 i32)
  i32.const 0
  global.set $~argumentsLength
  local.get $0
  call_indirect (type $none_=>_i32)
  drop
 )
 (func $~start (; 16 ;)
  (local $0 i32)
  global.get $~started
  if
   return
  else
   i32.const 1
   global.set $~started
  end
  i32.const 112
  global.set $~lib/rt/stub/startOffset
  i32.const 112
  global.set $~lib/rt/stub/offset
  call $retain-release/Ref#constructor
  global.set $retain-release/REF
  i32.const 4
  i32.const 4
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  global.set $retain-release/TARGET
 )
)
