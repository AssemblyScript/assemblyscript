(module
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\"\00\00\00\01\00\00\00\10\00\00\00\"\00\00\00r\00e\00t\00a\00i\00n\00-\00r\00e\00l\00e\00a\00s\00e\00.\00t\00s")
 (table $0 1 funcref)
 (elem (i32.const 0) $retain-release/receiveRef)
 (global $retain-release/glo (mut i32) (i32.const 0))
 (global $~lib/rt/index-stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/index-stub/offset (mut i32) (i32.const 0))
 (global $~lib/argc (mut i32) (i32.const 0))
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
 (export "scopeBreak" (func $retain-release/takeRef))
 (export "scopeContinue" (func $retain-release/takeRef))
 (export "scopeThrow" (func $retain-release/scopeThrow))
 (export "scopeUnreachable" (func $retain-release/scopeUnreachable))
 (export "callInline" (func $retain-release/receiveRef))
 (export "provideRefInline" (func $retain-release/receiveRef))
 (export "receiveRefInline" (func $retain-release/receiveRef))
 (export "receiveRefInlineDrop" (func $retain-release/receiveRef))
 (export "provideRefIndirect" (func $retain-release/provideRefIndirect))
 (export "receiveRefIndirect" (func $retain-release/receiveRefIndirect))
 (export "receiveRefIndirectDrop" (func $retain-release/receiveRefIndirect))
 (start $start)
 (func $retain-release/returnRef (; 1 ;) (type $FUNCSIG$i) (result i32)
  i32.const 0
 )
 (func $retain-release/receiveRef (; 2 ;) (type $FUNCSIG$v)
  nop
 )
 (func $retain-release/takeRef (; 3 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $retain-release/takeReturnRef (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $~lib/rt/index-stub/__alloc (; 5 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/rt/index-stub/offset
  i32.const 16
  i32.add
  local.tee $1
  i32.const 16
  i32.add
  i32.const -16
  i32.and
  local.tee $0
  current_memory
  local.tee $2
  i32.const 16
  i32.shl
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
   local.tee $3
   local.get $2
   local.get $3
   i32.gt_s
   select
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
  local.get $0
  global.set $~lib/rt/index-stub/offset
  local.get $1
  i32.const 16
  i32.sub
  local.tee $0
  i32.const 17
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $1
 )
 (func $retain-release/newRef (; 6 ;) (type $FUNCSIG$v)
  call $~lib/rt/index-stub/__alloc
  drop
 )
 (func $retain-release/assignGlobal (; 7 ;) (type $FUNCSIG$v)
  i32.const 0
  global.set $retain-release/glo
 )
 (func $retain-release/assignField (; 8 ;) (type $FUNCSIG$v)
  i32.const 0
  i32.load
  drop
  i32.const 0
  i32.const 0
  i32.store
 )
 (func $retain-release/scopeThrow (; 9 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  if
   i32.const 0
   i32.const 24
   i32.const 306
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $retain-release/scopeUnreachable (; 10 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  if
   unreachable
  end
 )
 (func $retain-release/provideRefIndirect (; 11 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 1
  global.set $~lib/argc
  i32.const 0
  local.get $0
  call_indirect (type $FUNCSIG$vi)
 )
 (func $retain-release/receiveRefIndirect (; 12 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 0
  global.set $~lib/argc
  local.get $0
  call_indirect (type $FUNCSIG$i)
  drop
 )
 (func $start (; 13 ;) (type $FUNCSIG$v)
  i32.const 64
  global.set $~lib/rt/index-stub/startOffset
  global.get $~lib/rt/index-stub/startOffset
  global.set $~lib/rt/index-stub/offset
 )
)
