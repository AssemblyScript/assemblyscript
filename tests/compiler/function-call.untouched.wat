(module
 (type $none_=>_none (func))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) "\08\00\00\00\01\00\00\00\03\00\00\00\08\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 48) "\08\00\00\00\01\00\00\00\03\00\00\00\08\00\00\00\02\00\00\00\00\00\00\00")
 (data (i32.const 80) "\08\00\00\00\01\00\00\00\04\00\00\00\08\00\00\00\03\00\00\00\00\00\00\00")
 (data (i32.const 112) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00f\00u\00n\00c\00t\00i\00o\00n\00-\00c\00a\00l\00l\00.\00t\00s\00")
 (data (i32.const 160) "\08\00\00\00\01\00\00\00\04\00\00\00\08\00\00\00\04\00\00\00\00\00\00\00")
 (data (i32.const 192) "\08\00\00\00\01\00\00\00\05\00\00\00\08\00\00\00\05\00\00\00\00\00\00\00")
 (data (i32.const 224) "\08\00\00\00\01\00\00\00\07\00\00\00\08\00\00\00\06\00\00\00\00\00\00\00")
 (data (i32.const 256) "\08\00\00\00\01\00\00\00\05\00\00\00\08\00\00\00\07\00\00\00\00\00\00\00")
 (data (i32.const 288) "\08\00\00\00\01\00\00\00\08\00\00\00\08\00\00\00\08\00\00\00\00\00\00\00")
 (table $0 9 funcref)
 (elem (i32.const 1) $start:function-call~anonymous|0 $start:function-call~anonymous|1 $start:function-call~anonymous|2 $start:function-call~anonymous|3 $start:function-call~fn2 $function-call/Foo#fnVoid $function-call/Foo#fnThis $function-call/Foo#fnRet)
 (global $function-call/fnVoid (mut i32) (i32.const 32))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $function-call/faVoid (mut i32) (i32.const 64))
 (global $function-call/fnRet (mut i32) (i32.const 96))
 (global $function-call/faRet (mut i32) (i32.const 176))
 (global $function-call/fnThis (mut i32) (i32.const 208))
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $function-call/foo (mut i32) (i32.const 0))
 (global $~lib/heap/__heap_base i32 (i32.const 312))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:function-call~anonymous|0
  nop
 )
 (func $start:function-call~anonymous|1
  nop
 )
 (func $start:function-call~anonymous|2 (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $start:function-call~anonymous|3 (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $start:function-call~fn2 (param $0 i32) (result i32)
  local.get $0
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
   i32.shr_s
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
 (func $~lib/rt/stub/__alloc (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
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
  local.get $0
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.tee $3
  i32.const 16
  local.tee $4
  local.get $3
  local.get $4
  i32.gt_u
  select
  local.set $5
  local.get $2
  local.get $5
  i32.add
  call $~lib/rt/stub/maybeGrowMemory
  local.get $2
  i32.const 16
  i32.sub
  local.set $6
  local.get $6
  local.get $5
  i32.store
  i32.const 1
  drop
  local.get $6
  i32.const 1
  i32.store offset=4
  local.get $6
  local.get $1
  i32.store offset=8
  local.get $6
  local.get $0
  i32.store offset=12
  local.get $2
 )
 (func $~lib/rt/stub/__retain (param $0 i32) (result i32)
  local.get $0
 )
 (func $function-call/Foo#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 6
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
 )
 (func $function-call/Foo#fnVoid (param $0 i32)
  nop
 )
 (func $function-call/Foo#fnThis (param $0 i32) (result i32)
  local.get $0
 )
 (func $function-call/Foo#fnRet (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  local.get $2
  i32.add
 )
 (func $start:function-call
  i32.const 0
  global.set $~argumentsLength
  global.get $function-call/fnVoid
  i32.load
  call_indirect (type $none_=>_none)
  i32.const 0
  global.set $~argumentsLength
  global.get $function-call/faVoid
  i32.load
  call_indirect (type $none_=>_none)
  i32.const 1
  i32.const 2
  i32.const 2
  global.set $~argumentsLength
  global.get $function-call/fnRet
  i32.load
  call_indirect (type $i32_i32_=>_i32)
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 10
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.const 3
  i32.const 2
  global.set $~argumentsLength
  global.get $function-call/faRet
  i32.load
  call_indirect (type $i32_i32_=>_i32)
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 15
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 0
  global.set $~argumentsLength
  global.get $function-call/fnThis
  i32.load
  call_indirect (type $i32_=>_i32)
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 20
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
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
  call $function-call/Foo#constructor
  global.set $function-call/foo
  global.get $function-call/foo
  i32.const 0
  global.set $~argumentsLength
  i32.const 240
  i32.load
  call_indirect (type $i32_=>_none)
  i32.const 1
  i32.const 0
  global.set $~argumentsLength
  i32.const 272
  i32.load
  call_indirect (type $i32_=>_i32)
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 33
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $function-call/foo
  i32.const 1
  i32.const 2
  i32.const 2
  global.set $~argumentsLength
  i32.const 304
  i32.load
  call_indirect (type $i32_i32_i32_=>_i32)
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 34
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  call $start:function-call
 )
)
