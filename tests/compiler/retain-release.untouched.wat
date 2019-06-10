(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00e\00r\00r\00o\00r\00")
 (data (i32.const 40) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00r\00e\00t\00a\00i\00n\00-\00r\00e\00l\00e\00a\00s\00e\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $retain-release/REF (mut i32) (i32.const 0))
 (global $retain-release/glo (mut i32) (i32.const 0))
 (global $retain-release/TARGET (mut i32) (i32.const 0))
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $~lib/started (mut i32) (i32.const 0))
 (global $~lib/heap/__heap_base i32 (i32.const 92))
 (export "__start" (func $start))
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
 (func $~lib/rt/stub/__alloc (; 1 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  global.get $~lib/rt/stub/offset
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
  memory.size
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
  local.get $5
  global.set $~lib/rt/stub/offset
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
 (func $~lib/rt/stub/__retain (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $retain-release/Ref#constructor (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 3
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
 )
 (func $retain-release/Target#constructor (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 4
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
 )
 (func $start:retain-release (; 5 ;) (type $FUNCSIG$v)
  global.get $~lib/heap/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
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
 (func $retain-release/returnRef (; 6 ;) (type $FUNCSIG$i) (result i32)
  global.get $retain-release/REF
  call $~lib/rt/stub/__retain
 )
 (func $~lib/rt/stub/__release (; 7 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $retain-release/receiveRef (; 8 ;) (type $FUNCSIG$v)
  (local $0 i32)
  call $retain-release/returnRef
  local.tee $0
  i32.eqz
  drop
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $retain-release/receiveRefDrop (; 9 ;) (type $FUNCSIG$v)
  call $retain-release/returnRef
  call $~lib/rt/stub/__release
 )
 (func $retain-release/receiveRefRetain (; 10 ;) (type $FUNCSIG$v)
  (local $0 i32)
  call $retain-release/returnRef
  local.set $0
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $retain-release/takeRef (; 11 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $retain-release/provideRef (; 12 ;) (type $FUNCSIG$v)
  global.get $retain-release/REF
  call $retain-release/takeRef
 )
 (func $retain-release/takeReturnRef (; 13 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
 )
 (func $retain-release/provideReceiveRef (; 14 ;) (type $FUNCSIG$v)
  (local $0 i32)
  global.get $retain-release/REF
  call $retain-release/takeReturnRef
  local.tee $0
  i32.eqz
  drop
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $retain-release/newRef (; 15 ;) (type $FUNCSIG$v)
  i32.const 0
  call $retain-release/Ref#constructor
  call $~lib/rt/stub/__release
 )
 (func $retain-release/assignGlobal (; 16 ;) (type $FUNCSIG$v)
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
   drop
   local.get $1
   call $~lib/rt/stub/__release
  end
  local.get $0
  global.set $retain-release/glo
 )
 (func $retain-release/assignField (; 17 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  global.get $retain-release/TARGET
  local.tee $0
  global.get $retain-release/REF
  local.tee $1
  local.get $0
  i32.load
  local.tee $0
  i32.ne
  if
   local.get $1
   call $~lib/rt/stub/__retain
   drop
   local.get $0
   call $~lib/rt/stub/__release
  end
  local.get $1
  i32.store
 )
 (func $retain-release/scopeBlock (; 18 ;) (type $FUNCSIG$v)
  (local $0 i32)
  global.get $retain-release/REF
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $retain-release/scopeBlockToUninitialized (; 19 ;) (type $FUNCSIG$v)
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
   drop
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
 (func $retain-release/scopeBlockToInitialized (; 20 ;) (type $FUNCSIG$v)
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
   drop
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
 (func $retain-release/scopeBlockToConditional (; 21 ;) (type $FUNCSIG$vi) (param $0 i32)
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
    drop
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
   drop
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
 (func $retain-release/scopeTopLevelUninitialized (; 22 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  local.set $0
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $retain-release/scopeTopLevelInitialized (; 23 ;) (type $FUNCSIG$v)
  (local $0 i32)
  global.get $retain-release/REF
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $retain-release/scopeTopLevelConditional (; 24 ;) (type $FUNCSIG$vi) (param $0 i32)
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
    drop
    local.get $3
    call $~lib/rt/stub/__release
   end
   local.get $2
   local.set $1
  end
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $retain-release/scopeIf (; 25 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $retain-release/scopeIfElse (; 26 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $retain-release/scopeWhile (; 27 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  block $break|0
   loop $continue|0
    local.get $0
    i32.eqz
    br_if $break|0
    global.get $retain-release/REF
    call $~lib/rt/stub/__retain
    local.set $1
    local.get $1
    call $~lib/rt/stub/__release
    br $continue|0
   end
   unreachable
  end
 )
 (func $retain-release/scopeDo (; 28 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  loop $continue|0
   global.get $retain-release/REF
   call $~lib/rt/stub/__retain
   local.set $1
   local.get $0
   br_if $continue|0
  end
 )
 (func $retain-release/scopeFor (; 29 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  block $break|0
   loop $loop|0
    local.get $0
    i32.eqz
    br_if $break|0
    global.get $retain-release/REF
    call $~lib/rt/stub/__retain
    local.set $1
    local.get $1
    call $~lib/rt/stub/__release
    br $loop|0
   end
   unreachable
  end
 )
 (func $retain-release/scopeBreak (; 30 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  block $break|0
   local.get $0
   i32.eqz
   br_if $break|0
   global.get $retain-release/REF
   call $~lib/rt/stub/__retain
   local.set $1
   local.get $1
   call $~lib/rt/stub/__release
   br $break|0
  end
 )
 (func $retain-release/scopeContinue (; 31 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  block $break|0
   loop $continue|0
    local.get $0
    i32.eqz
    br_if $break|0
    global.get $retain-release/REF
    call $~lib/rt/stub/__retain
    local.set $1
    local.get $1
    call $~lib/rt/stub/__release
    br $continue|0
   end
   unreachable
  end
 )
 (func $retain-release/scopeThrow (; 32 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  block $break|0
   local.get $0
   i32.eqz
   br_if $break|0
   global.get $retain-release/REF
   call $~lib/rt/stub/__retain
   local.set $1
   local.get $1
   call $~lib/rt/stub/__release
   i32.const 24
   i32.const 56
   i32.const 313
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $retain-release/scopeUnreachable (; 33 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  block $break|0
   loop $continue|0
    local.get $0
    i32.eqz
    br_if $break|0
    global.get $retain-release/REF
    call $~lib/rt/stub/__retain
    local.set $1
    unreachable
   end
   unreachable
  end
 )
 (func $retain-release/callInline (; 34 ;) (type $FUNCSIG$v)
  (local $0 i32)
  global.get $retain-release/REF
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $retain-release/provideRefInline (; 35 ;) (type $FUNCSIG$v)
  (local $0 i32)
  global.get $retain-release/REF
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $retain-release/receiveRefInline (; 36 ;) (type $FUNCSIG$v)
  (local $0 i32)
  global.get $retain-release/REF
  call $~lib/rt/stub/__retain
  local.tee $0
  i32.eqz
  drop
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $retain-release/receiveRefInlineDrop (; 37 ;) (type $FUNCSIG$v)
  global.get $retain-release/REF
  call $~lib/rt/stub/__retain
  call $~lib/rt/stub/__release
 )
 (func $retain-release/provideRefIndirect (; 38 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 1
  global.set $~lib/argc
  global.get $retain-release/REF
  local.get $0
  call_indirect (type $FUNCSIG$vi)
 )
 (func $retain-release/receiveRefIndirect (; 39 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  i32.const 0
  global.set $~lib/argc
  local.get $0
  call_indirect (type $FUNCSIG$i)
  local.tee $1
  i32.eqz
  drop
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $retain-release/receiveRefIndirectDrop (; 40 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 0
  global.set $~lib/argc
  local.get $0
  call_indirect (type $FUNCSIG$i)
  call $~lib/rt/stub/__release
 )
 (func $start (; 41 ;) (type $FUNCSIG$v)
  global.get $~lib/started
  if
   return
  else   
   i32.const 1
   global.set $~lib/started
  end
  call $start:retain-release
 )
 (func $null (; 42 ;) (type $FUNCSIG$v)
 )
)
