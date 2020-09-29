(module
 (type $none_=>_none (func))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
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
 (elem (i32.const 1) $start:function-call~anonymous|0 $start:function-call~anonymous|0 $start:function-call~anonymous|2 $start:function-call~anonymous|2 $start:function-call~fn2 $function-call/Foo#fnVoid $start:function-call~fn2 $function-call/Foo#fnRet)
 (global $function-call/foo (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:function-call~anonymous|0
  nop
 )
 (func $start:function-call~anonymous|2 (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $start:function-call~fn2 (param $0 i32) (result i32)
  local.get $0
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
  (local $1 i32)
  i32.const 1040
  i32.load
  call_indirect (type $none_=>_none)
  i32.const 1072
  i32.load
  call_indirect (type $none_=>_none)
  i32.const 1
  i32.const 2
  i32.const 1104
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
  i32.const 2
  i32.const 3
  i32.const 1184
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
  i32.const 1
  i32.const 1216
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
  i32.const 1360
  memory.size
  local.tee $1
  i32.const 16
  i32.shl
  local.tee $0
  i32.gt_u
  if
   local.get $1
   i32.const 66895
   local.get $0
   i32.sub
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_s
   local.tee $0
   local.get $1
   local.get $0
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $0
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  i32.const 1328
  i32.const 16
  i32.store
  i32.const 1332
  i32.const 1
  i32.store
  i32.const 1336
  i32.const 6
  i32.store
  i32.const 1340
  i32.const 0
  i32.store
  i32.const 1344
  global.set $function-call/foo
  i32.const 1344
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
