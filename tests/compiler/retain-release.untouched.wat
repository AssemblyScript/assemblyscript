(module
 (type $i32_=>_none (func (param i32)))
 (type $none_=>_none (func))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 12) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\n\00\00\00e\00r\00r\00o\00r\00\00\00")
 (data (i32.const 44) "<\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\"\00\00\00r\00e\00t\00a\00i\00n\00-\00r\00e\00l\00e\00a\00s\00e\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 1 funcref)
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $retain-release/REF (mut i32) (i32.const 0))
 (global $retain-release/glo (mut i32) (i32.const 0))
 (global $retain-release/TARGET (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~started (mut i32) (i32.const 0))
 (global $~lib/memory/__heap_base i32 (i32.const 108))
 (export "_start" (func $~start))
 (export "memory" (memory $0))
 (export "returnRef" (func $retain-release/returnRef))
 (export "receiveRef" (func $retain-release/receiveRef))
 (export "receiveRefDrop" (func $retain-release/receiveRefDrop))
 (export "receiveRefRetain" (func $retain-release/receiveRefRetain))
 (export "takeRef" (func $retain-release/takeRef))
 (export "provideRef" (func $retain-release/provideRef))
 (export "takeReturnRef" (func $retain-release/takeReturnRef))
 (export "provideReceiveRef" (func $retain-release/provideReceiveRef))
 (export "newRef" (func $retain-release/newRef))
 (export "assignGlobal" (func $retain-release/assignGlobal))
 (export "assignField" (func $retain-release/assignField))
 (export "scopeBlock" (func $retain-release/scopeBlock))
 (export "scopeBlockToUninitialized" (func $retain-release/scopeBlockToUninitialized))
 (export "scopeBlockToInitialized" (func $retain-release/scopeBlockToInitialized))
 (export "scopeBlockToConditional" (func $retain-release/scopeBlockToConditional))
 (export "scopeTopLevelUninitialized" (func $retain-release/scopeTopLevelUninitialized))
 (export "scopeTopLevelInitialized" (func $retain-release/scopeTopLevelInitialized))
 (export "scopeTopLevelConditional" (func $retain-release/scopeTopLevelConditional))
 (export "scopeIf" (func $retain-release/scopeIf))
 (export "scopeIfElse" (func $retain-release/scopeIfElse))
 (export "scopeWhile" (func $retain-release/scopeWhile))
 (export "scopeDo" (func $retain-release/scopeDo))
 (export "scopeFor" (func $retain-release/scopeFor))
 (export "scopeForComplex" (func $retain-release/scopeForComplex))
 (export "scopeBreak" (func $retain-release/scopeBreak))
 (export "scopeBreakNested" (func $retain-release/scopeBreakNested))
 (export "scopeContinue" (func $retain-release/scopeContinue))
 (export "scopeContinueNested" (func $retain-release/scopeContinueNested))
 (export "scopeThrow" (func $retain-release/scopeThrow))
 (export "scopeUnreachable" (func $retain-release/scopeUnreachable))
 (export "callInline" (func $retain-release/callInline))
 (export "provideRefInline" (func $retain-release/provideRefInline))
 (export "receiveRefInline" (func $retain-release/receiveRefInline))
 (export "receiveRefInlineDrop" (func $retain-release/receiveRefInlineDrop))
 (export "provideRefIndirect" (func $retain-release/provideRefIndirect))
 (export "receiveRefIndirect" (func $retain-release/receiveRefIndirect))
 (export "receiveRefIndirectDrop" (func $retain-release/receiveRefIndirectDrop))
 (func $~lib/rt/stub/computeSize (param $0 i32) (result i32)
  local.get $0
  i32.const 4
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  i32.const 4
  i32.sub
 )
 (func $~lib/rt/stub/maybeGrowMemory (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  memory.size
  local.set $1
  local.get $1
  i32.const 16
  i32.shl
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $2
  local.get $0
  local.get $2
  i32.gt_u
  if
   local.get $0
   local.get $2
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $3
   local.get $1
   local.tee $4
   local.get $3
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
   local.set $4
   local.get $4
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $3
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
 (func $~lib/rt/stub/__alloc (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/stub/offset
  local.set $1
  global.get $~lib/rt/stub/offset
  i32.const 4
  i32.add
  local.set $2
  local.get $0
  call $~lib/rt/stub/computeSize
  local.set $3
  local.get $2
  local.get $3
  i32.add
  call $~lib/rt/stub/maybeGrowMemory
  local.get $1
  local.get $3
  i32.store
  local.get $2
 )
 (func $~lib/rt/stub/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741804
  i32.gt_u
  if
   unreachable
  end
  i32.const 16
  local.get $0
  i32.add
  call $~lib/rt/stub/__alloc
  local.set $2
  local.get $2
  i32.const 4
  i32.sub
  local.set $3
  local.get $3
  i32.const 0
  i32.store offset=4
  local.get $3
  i32.const 0
  i32.store offset=8
  local.get $3
  local.get $1
  i32.store offset=12
  local.get $3
  local.get $0
  i32.store offset=16
  local.get $2
  i32.const 16
  i32.add
 )
 (func $~lib/rt/stub/__retain (param $0 i32) (result i32)
  local.get $0
 )
 (func $retain-release/Ref#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 3
   call $~lib/rt/stub/__new
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
 )
 (func $retain-release/Target#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 4
   call $~lib/rt/stub/__new
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
 )
 (func $start:retain-release
  global.get $~lib/memory/__heap_base
  i32.const 4
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  i32.const 4
  i32.sub
  global.set $~lib/rt/stub/startOffset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
  i32.const 0
  call $retain-release/Ref#constructor
  global.set $retain-release/REF
  i32.const 0
  call $retain-release/Target#constructor
  global.set $retain-release/TARGET
 )
 (func $retain-release/returnRef (result i32)
  global.get $retain-release/REF
  call $~lib/rt/stub/__retain
 )
 (func $~lib/rt/stub/__release (param $0 i32)
  nop
 )
 (func $retain-release/receiveRef
  (local $0 i32)
  call $retain-release/returnRef
  local.tee $0
  i32.eqz
  drop
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $retain-release/receiveRefDrop
  call $retain-release/returnRef
  call $~lib/rt/stub/__release
 )
 (func $retain-release/receiveRefRetain
  (local $0 i32)
  call $retain-release/returnRef
  local.set $0
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $retain-release/takeRef (param $0 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $retain-release/provideRef
  global.get $retain-release/REF
  call $retain-release/takeRef
 )
 (func $retain-release/takeReturnRef (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
 )
 (func $retain-release/provideReceiveRef
  (local $0 i32)
  global.get $retain-release/REF
  call $retain-release/takeReturnRef
  local.tee $0
  i32.eqz
  drop
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $retain-release/newRef
  i32.const 0
  call $retain-release/Ref#constructor
  call $~lib/rt/stub/__release
 )
 (func $retain-release/assignGlobal
  (local $0 i32)
  (local $1 i32)
  global.get $retain-release/REF
  local.tee $0
  global.get $retain-release/glo
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
  global.set $retain-release/glo
 )
 (func $retain-release/assignField
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $retain-release/TARGET
  local.tee $0
  global.get $retain-release/REF
  local.tee $1
  local.get $0
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/stub/__retain
   local.set $1
   local.get $2
   call $~lib/rt/stub/__release
  end
  local.get $1
  i32.store
 )
 (func $retain-release/scopeBlock
  (local $0 i32)
  global.get $retain-release/REF
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $retain-release/scopeBlockToUninitialized
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  local.set $0
  global.get $retain-release/REF
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $1
  local.tee $2
  local.get $0
  local.tee $3
  i32.ne
  if
   local.get $2
   call $~lib/rt/stub/__retain
   local.set $2
   local.get $3
   call $~lib/rt/stub/__release
  end
  local.get $2
  local.set $0
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $retain-release/scopeBlockToInitialized
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $retain-release/REF
  call $~lib/rt/stub/__retain
  local.set $0
  global.get $retain-release/REF
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $1
  local.tee $2
  local.get $0
  local.tee $3
  i32.ne
  if
   local.get $2
   call $~lib/rt/stub/__retain
   local.set $2
   local.get $3
   call $~lib/rt/stub/__release
  end
  local.get $2
  local.set $0
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $retain-release/scopeBlockToConditional (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  local.set $1
  local.get $0
  if
   global.get $retain-release/REF
   local.tee $2
   local.get $1
   local.tee $3
   i32.ne
   if
    local.get $2
    call $~lib/rt/stub/__retain
    local.set $2
    local.get $3
    call $~lib/rt/stub/__release
   end
   local.get $2
   local.set $1
  end
  global.get $retain-release/REF
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $2
  local.tee $3
  local.get $1
  local.tee $4
  i32.ne
  if
   local.get $3
   call $~lib/rt/stub/__retain
   local.set $3
   local.get $4
   call $~lib/rt/stub/__release
  end
  local.get $3
  local.set $1
  local.get $2
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $retain-release/scopeTopLevelUninitialized
  (local $0 i32)
  i32.const 0
  local.set $0
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $retain-release/scopeTopLevelInitialized
  (local $0 i32)
  global.get $retain-release/REF
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $retain-release/scopeTopLevelConditional (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  local.set $1
  local.get $0
  if
   global.get $retain-release/REF
   local.tee $2
   local.get $1
   local.tee $3
   i32.ne
   if
    local.get $2
    call $~lib/rt/stub/__retain
    local.set $2
    local.get $3
    call $~lib/rt/stub/__release
   end
   local.get $2
   local.set $1
  end
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $retain-release/scopeIf (param $0 i32)
  (local $1 i32)
  local.get $0
  if
   global.get $retain-release/REF
   call $~lib/rt/stub/__retain
   local.set $1
   local.get $1
   call $~lib/rt/stub/__release
  end
 )
 (func $retain-release/scopeIfElse (param $0 i32)
  (local $1 i32)
  local.get $0
  if
   global.get $retain-release/REF
   call $~lib/rt/stub/__retain
   local.set $1
   local.get $1
   call $~lib/rt/stub/__release
  else
   global.get $retain-release/REF
   call $~lib/rt/stub/__retain
   local.set $1
   local.get $1
   call $~lib/rt/stub/__release
  end
 )
 (func $retain-release/scopeWhile (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  loop $while-continue|0
   local.get $0
   local.set $1
   local.get $1
   if
    global.get $retain-release/REF
    call $~lib/rt/stub/__retain
    local.set $2
    local.get $2
    call $~lib/rt/stub/__release
    br $while-continue|0
   end
  end
 )
 (func $retain-release/scopeDo (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  loop $do-continue|0
   global.get $retain-release/REF
   call $~lib/rt/stub/__retain
   local.set $1
   local.get $1
   call $~lib/rt/stub/__release
   local.get $0
   local.set $2
   local.get $2
   br_if $do-continue|0
  end
 )
 (func $retain-release/scopeFor (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  loop $for-loop|0
   local.get $0
   local.set $1
   local.get $1
   if
    global.get $retain-release/REF
    call $~lib/rt/stub/__retain
    local.set $2
    local.get $2
    call $~lib/rt/stub/__release
    br $for-loop|0
   end
  end
 )
 (func $retain-release/scopeForComplex (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 0
  local.set $1
  loop $for-loop|0
   local.get $0
   local.set $2
   local.get $2
   if
    global.get $retain-release/REF
    call $~lib/rt/stub/__retain
    local.set $3
    i32.const 0
    local.set $4
    loop $for-loop|1
     local.get $0
     local.set $5
     local.get $5
     if
      block $for-continue|1
       global.get $retain-release/REF
       call $~lib/rt/stub/__retain
       local.set $6
       local.get $0
       if
        global.get $retain-release/REF
        call $~lib/rt/stub/__retain
        local.set $7
        local.get $7
        call $~lib/rt/stub/__release
        local.get $6
        call $~lib/rt/stub/__release
        br $for-continue|1
       end
       local.get $6
       call $~lib/rt/stub/__release
      end
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|1
     end
    end
    local.get $3
    call $~lib/rt/stub/__release
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
 )
 (func $retain-release/scopeBreak (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $while-break|0
   loop $while-continue|0
    local.get $0
    local.set $1
    local.get $1
    if
     global.get $retain-release/REF
     call $~lib/rt/stub/__retain
     local.set $2
     local.get $2
     call $~lib/rt/stub/__release
     br $while-break|0
    end
   end
  end
 )
 (func $retain-release/scopeBreakNested (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  loop $while-continue|0
   local.get $0
   local.set $1
   local.get $1
   if
    global.get $retain-release/REF
    call $~lib/rt/stub/__retain
    local.set $2
    block $while-break|1
     loop $while-continue|1
      local.get $0
      local.set $3
      local.get $3
      if
       global.get $retain-release/REF
       call $~lib/rt/stub/__retain
       local.set $4
       local.get $4
       call $~lib/rt/stub/__release
       br $while-break|1
      end
     end
    end
    local.get $2
    call $~lib/rt/stub/__release
    br $while-continue|0
   end
  end
 )
 (func $retain-release/scopeContinue (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  loop $while-continue|0
   local.get $0
   local.set $1
   local.get $1
   if
    global.get $retain-release/REF
    call $~lib/rt/stub/__retain
    local.set $2
    local.get $2
    call $~lib/rt/stub/__release
    br $while-continue|0
   end
  end
 )
 (func $retain-release/scopeContinueNested (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  loop $while-continue|0
   local.get $0
   local.set $1
   local.get $1
   if
    global.get $retain-release/REF
    call $~lib/rt/stub/__retain
    local.set $2
    loop $while-continue|1
     local.get $0
     local.set $3
     local.get $3
     if
      global.get $retain-release/REF
      call $~lib/rt/stub/__retain
      local.set $4
      local.get $4
      call $~lib/rt/stub/__release
      br $while-continue|1
     end
    end
    local.get $2
    call $~lib/rt/stub/__release
    br $while-continue|0
   end
  end
 )
 (func $retain-release/scopeThrow (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  loop $while-continue|0
   local.get $0
   local.set $1
   local.get $1
   if
    global.get $retain-release/REF
    call $~lib/rt/stub/__retain
    local.set $2
    i32.const 32
    i32.const 64
    i32.const 367
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
 )
 (func $retain-release/scopeUnreachable (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  loop $while-continue|0
   local.get $0
   local.set $1
   local.get $1
   if
    global.get $retain-release/REF
    call $~lib/rt/stub/__retain
    local.set $2
    unreachable
   end
  end
 )
 (func $retain-release/callInline
  (local $0 i32)
  global.get $retain-release/REF
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $retain-release/provideRefInline
  (local $0 i32)
  global.get $retain-release/REF
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $retain-release/receiveRefInline
  (local $0 i32)
  global.get $retain-release/REF
  call $~lib/rt/stub/__retain
  local.tee $0
  i32.eqz
  drop
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $retain-release/receiveRefInlineDrop
  global.get $retain-release/REF
  call $~lib/rt/stub/__retain
  call $~lib/rt/stub/__release
 )
 (func $retain-release/provideRefIndirect (param $0 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  global.get $retain-release/REF
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.load
  call_indirect (type $i32_=>_none)
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $retain-release/receiveRefIndirect (param $0 i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  i32.const 0
  global.set $~argumentsLength
  local.get $0
  i32.load
  call_indirect (type $none_=>_i32)
  local.tee $1
  i32.eqz
  drop
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $retain-release/receiveRefIndirectDrop (param $0 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  i32.const 0
  global.set $~argumentsLength
  local.get $0
  i32.load
  call_indirect (type $none_=>_i32)
  call $~lib/rt/stub/__release
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $~start
  global.get $~started
  if
   return
  end
  i32.const 1
  global.set $~started
  call $start:retain-release
 )
)
