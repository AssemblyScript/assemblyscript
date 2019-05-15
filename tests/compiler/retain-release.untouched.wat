(module
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\"\00\00\00\01\00\00\00\10\00\00\00\"\00\00\00r\00e\00t\00a\00i\00n\00-\00r\00e\00l\00e\00a\00s\00e\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $retain-release/glo (mut i32) (i32.const 0))
 (global $~lib/rt/index-stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/index-stub/offset (mut i32) (i32.const 0))
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $~lib/builtins/HEAP_BASE i32 (i32.const 60))
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
 (export "scopeBreak" (func $retain-release/scopeBreak))
 (export "scopeContinue" (func $retain-release/scopeContinue))
 (export "scopeThrow" (func $retain-release/scopeThrow))
 (export "scopeUnreachable" (func $retain-release/scopeUnreachable))
 (export "callInline" (func $retain-release/callInline))
 (export "provideRefInline" (func $retain-release/provideRefInline))
 (export "receiveRefInline" (func $retain-release/receiveRefInline))
 (export "receiveRefInlineDrop" (func $retain-release/receiveRefInlineDrop))
 (export "provideRefIndirect" (func $retain-release/provideRefIndirect))
 (export "receiveRefIndirect" (func $retain-release/receiveRefIndirect))
 (export "receiveRefIndirectDrop" (func $retain-release/receiveRefIndirectDrop))
 (start $start)
 (func $~lib/rt/index-stub/__retain (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $retain-release/returnRef (; 2 ;) (type $FUNCSIG$i) (result i32)
  i32.const 0
  call $~lib/rt/index-stub/__retain
 )
 (func $~lib/rt/index-stub/__release (; 3 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $retain-release/receiveRef (; 4 ;) (type $FUNCSIG$v)
  (local $0 i32)
  call $retain-release/returnRef
  local.tee $0
  i32.eqz
  drop
  local.get $0
  call $~lib/rt/index-stub/__release
 )
 (func $retain-release/receiveRefDrop (; 5 ;) (type $FUNCSIG$v)
  call $retain-release/returnRef
  call $~lib/rt/index-stub/__release
 )
 (func $retain-release/receiveRefRetain (; 6 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  call $retain-release/returnRef
  local.tee $0
  call $~lib/rt/index-stub/__retain
  local.set $1
  local.get $0
  call $~lib/rt/index-stub/__release
  local.get $1
  call $~lib/rt/index-stub/__release
 )
 (func $retain-release/takeRef (; 7 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  call $~lib/rt/index-stub/__retain
  drop
  local.get $0
  call $~lib/rt/index-stub/__release
 )
 (func $retain-release/provideRef (; 8 ;) (type $FUNCSIG$v)
  i32.const 0
  call $retain-release/takeRef
 )
 (func $retain-release/takeReturnRef (; 9 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/index-stub/__retain
  drop
  local.get $0
 )
 (func $retain-release/provideReceiveRef (; 10 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  call $retain-release/takeReturnRef
  local.tee $0
  i32.eqz
  drop
  local.get $0
  call $~lib/rt/index-stub/__release
 )
 (func $~lib/rt/index-stub/__alloc (; 11 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/index-stub/offset
  i32.const 16
  i32.add
  local.set $2
  local.get $2
  local.get $0
  local.tee $3
  i32.const 1
  local.tee $4
  local.get $3
  local.get $4
  i32.gt_u
  select
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $5
  current_memory
  local.set $6
  local.get $5
  local.get $6
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $5
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
   local.get $6
   local.tee $4
   local.get $3
   local.tee $7
   local.get $4
   local.get $7
   i32.gt_s
   select
   local.set $4
   local.get $4
   grow_memory
   i32.const 0
   i32.lt_s
   if
    local.get $3
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $5
  global.set $~lib/rt/index-stub/offset
  local.get $2
  i32.const 16
  i32.sub
  local.set $8
  local.get $8
  local.get $1
  i32.store offset=8
  local.get $8
  local.get $0
  i32.store offset=12
  local.get $2
 )
 (func $retain-release/Ref#constructor (; 12 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 17
   call $~lib/rt/index-stub/__alloc
   local.set $0
  end
  local.get $0
 )
 (func $retain-release/newRef (; 13 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  call $retain-release/Ref#constructor
  local.tee $0
  drop
  local.get $0
  call $~lib/rt/index-stub/__release
 )
 (func $~lib/rt/index-stub/__retainRelease (; 14 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
 )
 (func $retain-release/assignGlobal (; 15 ;) (type $FUNCSIG$v)
  i32.const 0
  global.get $retain-release/glo
  call $~lib/rt/index-stub/__retainRelease
  global.set $retain-release/glo
 )
 (func $retain-release/assignField (; 16 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  local.tee $0
  i32.const 0
  local.get $0
  i32.load
  call $~lib/rt/index-stub/__retainRelease
  i32.store
 )
 (func $retain-release/scopeBlock (; 17 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  call $~lib/rt/index-stub/__retain
  local.set $0
  local.get $0
  call $~lib/rt/index-stub/__release
 )
 (func $retain-release/scopeBlockToUninitialized (; 18 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  call $~lib/rt/index-stub/__retain
  local.set $1
  local.get $1
  call $~lib/rt/index-stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/index-stub/__release
  local.get $0
  call $~lib/rt/index-stub/__release
 )
 (func $retain-release/scopeBlockToInitialized (; 19 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  call $~lib/rt/index-stub/__retain
  local.set $0
  i32.const 0
  call $~lib/rt/index-stub/__retain
  local.set $1
  local.get $1
  local.get $0
  call $~lib/rt/index-stub/__retainRelease
  local.set $0
  local.get $1
  call $~lib/rt/index-stub/__release
  local.get $0
  call $~lib/rt/index-stub/__release
 )
 (func $retain-release/scopeBlockToConditional (; 20 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  if
   i32.const 0
   call $~lib/rt/index-stub/__retain
   local.set $1
  end
  i32.const 0
  call $~lib/rt/index-stub/__retain
  local.set $2
  local.get $2
  local.get $1
  call $~lib/rt/index-stub/__retainRelease
  local.set $1
  local.get $2
  call $~lib/rt/index-stub/__release
  local.get $1
  call $~lib/rt/index-stub/__release
 )
 (func $retain-release/scopeTopLevelUninitialized (; 21 ;) (type $FUNCSIG$v)
  (local $0 i32)
  nop
 )
 (func $retain-release/scopeTopLevelInitialized (; 22 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  call $~lib/rt/index-stub/__retain
  local.set $0
  local.get $0
  call $~lib/rt/index-stub/__release
 )
 (func $retain-release/scopeTopLevelConditional (; 23 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  if
   i32.const 0
   call $~lib/rt/index-stub/__retain
   local.set $1
  end
  local.get $1
  call $~lib/rt/index-stub/__release
 )
 (func $retain-release/scopeIf (; 24 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  if
   i32.const 0
   call $~lib/rt/index-stub/__retain
   local.set $1
   local.get $1
   call $~lib/rt/index-stub/__release
  end
 )
 (func $retain-release/scopeIfElse (; 25 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  if
   i32.const 0
   call $~lib/rt/index-stub/__retain
   local.set $1
   local.get $1
   call $~lib/rt/index-stub/__release
  else   
   i32.const 0
   call $~lib/rt/index-stub/__retain
   local.set $1
   local.get $1
   call $~lib/rt/index-stub/__release
  end
 )
 (func $retain-release/scopeWhile (; 26 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  loop $continue|0
   local.get $0
   if
    i32.const 0
    call $~lib/rt/index-stub/__retain
    local.set $1
    local.get $1
    call $~lib/rt/index-stub/__release
    br $continue|0
   end
  end
 )
 (func $retain-release/scopeDo (; 27 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  loop $continue|0
   block
    i32.const 0
    call $~lib/rt/index-stub/__retain
    local.set $1
    local.get $1
    call $~lib/rt/index-stub/__release
   end
   local.get $0
   br_if $continue|0
  end
 )
 (func $retain-release/scopeFor (; 28 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  block $break|0
   loop $repeat|0
    local.get $0
    i32.eqz
    br_if $break|0
    i32.const 0
    call $~lib/rt/index-stub/__retain
    local.set $1
    local.get $1
    call $~lib/rt/index-stub/__release
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $retain-release/scopeBreak (; 29 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  block $break|0
   loop $continue|0
    local.get $0
    if
     i32.const 0
     call $~lib/rt/index-stub/__retain
     local.set $1
     local.get $1
     call $~lib/rt/index-stub/__release
     br $break|0
    end
   end
  end
 )
 (func $retain-release/scopeContinue (; 30 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  loop $continue|0
   local.get $0
   if
    i32.const 0
    call $~lib/rt/index-stub/__retain
    local.set $1
    local.get $1
    call $~lib/rt/index-stub/__release
    br $continue|0
   end
  end
 )
 (func $retain-release/scopeThrow (; 31 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  loop $continue|0
   local.get $0
   if
    i32.const 0
    call $~lib/rt/index-stub/__retain
    local.set $1
    local.get $1
    call $~lib/rt/index-stub/__release
    block
     i32.const 0
     i32.const 24
     i32.const 306
     i32.const 4
     call $~lib/builtins/abort
     unreachable
     unreachable
    end
    unreachable
   end
  end
 )
 (func $retain-release/scopeUnreachable (; 32 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  loop $continue|0
   local.get $0
   if
    i32.const 0
    call $~lib/rt/index-stub/__retain
    local.set $1
    unreachable
    local.get $1
    call $~lib/rt/index-stub/__release
    br $continue|0
   end
  end
 )
 (func $retain-release/callInline (; 33 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  call $~lib/rt/index-stub/__retain
  local.set $0
  local.get $0
  call $~lib/rt/index-stub/__release
 )
 (func $retain-release/provideRefInline (; 34 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  call $~lib/rt/index-stub/__retain
  local.set $0
  local.get $0
  call $~lib/rt/index-stub/__release
 )
 (func $retain-release/receiveRefInline (; 35 ;) (type $FUNCSIG$v)
  (local $0 i32)
  block $retain-release/returnRefInline|inlined.0 (result i32)
   i32.const 0
   call $~lib/rt/index-stub/__retain
  end
  local.tee $0
  i32.eqz
  drop
  local.get $0
  call $~lib/rt/index-stub/__release
 )
 (func $retain-release/receiveRefInlineDrop (; 36 ;) (type $FUNCSIG$v)
  block $retain-release/returnRefInline|inlined.1 (result i32)
   i32.const 0
   call $~lib/rt/index-stub/__retain
  end
  call $~lib/rt/index-stub/__release
 )
 (func $retain-release/provideRefIndirect (; 37 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 1
  global.set $~lib/argc
  i32.const 0
  local.get $0
  call_indirect (type $FUNCSIG$vi)
 )
 (func $retain-release/receiveRefIndirect (; 38 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  block (result i32)
   i32.const 0
   global.set $~lib/argc
   local.get $0
   call_indirect (type $FUNCSIG$i)
   local.tee $1
  end
  i32.eqz
  drop
  local.get $1
  call $~lib/rt/index-stub/__release
 )
 (func $retain-release/receiveRefIndirectDrop (; 39 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 0
  global.set $~lib/argc
  local.get $0
  call_indirect (type $FUNCSIG$i)
  call $~lib/rt/index-stub/__release
 )
 (func $start (; 40 ;) (type $FUNCSIG$v)
  global.get $~lib/builtins/HEAP_BASE
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/rt/index-stub/startOffset
  global.get $~lib/rt/index-stub/startOffset
  global.set $~lib/rt/index-stub/offset
 )
 (func $null (; 41 ;) (type $FUNCSIG$v)
 )
)
