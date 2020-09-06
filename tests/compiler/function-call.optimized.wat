(module
 (type $none_=>_none (func))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1024) "\08\00\00\00\01\00\00\00\03\00\00\00\08\00\00\00\01")
 (data (i32.const 1056) "\08\00\00\00\01\00\00\00\03\00\00\00\08\00\00\00\02")
 (data (i32.const 1088) "\08\00\00\00\01\00\00\00\04\00\00\00\08\00\00\00\03")
 (data (i32.const 1120) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00f\00u\00n\00c\00t\00i\00o\00n\00-\00c\00a\00l\00l\00.\00t\00s")
 (data (i32.const 1168) "\08\00\00\00\01\00\00\00\04\00\00\00\08\00\00\00\04")
 (data (i32.const 1200) "\08\00\00\00\01\00\00\00\05\00\00\00\08\00\00\00\05")
 (data (i32.const 1232) "\08\00\00\00\01\00\00\00\07\00\00\00\08\00\00\00\06")
 (data (i32.const 1264) "\08\00\00\00\01\00\00\00\05\00\00\00\08\00\00\00\07")
 (data (i32.const 1296) "\08\00\00\00\01\00\00\00\08\00\00\00\08\00\00\00\08")
 (table $0 9 funcref)
 (elem (i32.const 1) $start:function-call~anonymous|0 $start:function-call~anonymous|0 $start:function-call~anonymous|2 $start:function-call~anonymous|2 $~lib/rt/stub/__retain $function-call/Foo#fnVoid $~lib/rt/stub/__retain $function-call/Foo#fnRet)
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $function-call/fnVoid (mut i32) (i32.const 0))
 (global $function-call/faVoid (mut i32) (i32.const 0))
 (global $function-call/fnRet (mut i32) (i32.const 0))
 (global $function-call/faRet (mut i32) (i32.const 0))
 (global $function-call/fnThis (mut i32) (i32.const 0))
 (global $function-call/foo (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:function-call~anonymous|0
  nop
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
  local.tee $4
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
  local.tee $6
  i32.add
  local.tee $2
  memory.size
  local.tee $5
  i32.const 16
  i32.shl
  local.tee $3
  i32.gt_u
  if
   local.get $5
   local.get $2
   local.get $3
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $3
   local.get $5
   local.get $3
   i32.gt_s
   select
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
  local.get $2
  global.set $~lib/rt/stub/offset
  local.get $4
  i32.const 16
  i32.sub
  local.tee $2
  local.get $6
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
  local.get $4
 )
 (func $~lib/rt/stub/__retain (param $0 i32) (result i32)
  local.get $0
 )
 (func $start:function-call~anonymous|2 (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $function-call/Foo#fnVoid (param $0 i32)
  nop
 )
 (func $function-call/Foo#fnRet (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  local.get $2
  i32.add
 )
 (func $start:function-call
  (local $0 i32)
  i32.const 1328
  global.set $~lib/rt/stub/offset
  i32.const 8
  i32.const 3
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 1040
  i32.load
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  global.set $function-call/fnVoid
  global.get $function-call/fnVoid
  i32.load
  call_indirect (type $none_=>_none)
  i32.const 8
  i32.const 3
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 1072
  i32.load
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  global.set $function-call/faVoid
  global.get $function-call/faVoid
  i32.load
  call_indirect (type $none_=>_none)
  i32.const 8
  i32.const 4
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 1104
  i32.load
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  global.set $function-call/fnRet
  i32.const 1
  i32.const 2
  global.get $function-call/fnRet
  i32.load
  call_indirect (type $i32_i32_=>_i32)
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1136
   i32.const 10
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  i32.const 4
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 1184
  i32.load
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  global.set $function-call/faRet
  i32.const 2
  i32.const 3
  global.get $function-call/faRet
  i32.load
  call_indirect (type $i32_i32_=>_i32)
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 1136
   i32.const 15
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  i32.const 5
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 1216
  i32.load
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  global.set $function-call/fnThis
  i32.const 1
  global.get $function-call/fnThis
  i32.load
  call_indirect (type $i32_=>_i32)
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1136
   i32.const 20
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 6
  call $~lib/rt/stub/__alloc
  global.set $function-call/foo
  global.get $function-call/foo
  i32.const 1248
  i32.load
  call_indirect (type $i32_=>_none)
  i32.const 1
  i32.const 1280
  i32.load
  call_indirect (type $i32_=>_i32)
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1136
   i32.const 33
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $function-call/foo
  i32.const 1
  i32.const 2
  i32.const 1312
  i32.load
  call_indirect (type $i32_i32_i32_=>_i32)
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1136
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
