(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 12) "\1c\00\00\00\01\00\00\00\00\00\00\00\03\00\00\00\08\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 44) "<\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00,\00\00\00f\00u\00n\00c\00t\00i\00o\00n\00-\00e\00x\00p\00r\00e\00s\00s\00i\00o\00n\00.\00t\00s\00")
 (data (i32.const 108) "\1c\00\00\00\01\00\00\00\00\00\00\00\03\00\00\00\08\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 140) "\1c\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 172) "\1c\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\08\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 204) "\1c\00\00\00\01\00\00\00\00\00\00\00\06\00\00\00\08\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 236) "\1c\00\00\00\01\00\00\00\00\00\00\00\06\00\00\00\08\00\00\00\06\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 268) "\1c\00\00\00\01\00\00\00\00\00\00\00\06\00\00\00\08\00\00\00\07\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 300) "\1c\00\00\00\01\00\00\00\00\00\00\00\06\00\00\00\08\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 332) "\1c\00\00\00\01\00\00\00\00\00\00\00\06\00\00\00\08\00\00\00\t\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 364) "\1c\00\00\00\01\00\00\00\00\00\00\00\06\00\00\00\08\00\00\00\n\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 396) "\1c\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\08\00\00\00\0b\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 428) "\1c\00\00\00\01\00\00\00\00\00\00\00\03\00\00\00\08\00\00\00\0c\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 460) "\1c\00\00\00\01\00\00\00\00\00\00\00\07\00\00\00\08\00\00\00\0d\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 492) "\1c\00\00\00\01\00\00\00\00\00\00\00\03\00\00\00\08\00\00\00\0e\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 524) "\1c\00\00\00\01\00\00\00\00\00\00\00\07\00\00\00\08\00\00\00\0f\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 556) "\1c\00\00\00\01\00\00\00\00\00\00\00\03\00\00\00\08\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 588) "\1c\00\00\00\01\00\00\00\00\00\00\00\07\00\00\00\08\00\00\00\11\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 18 funcref)
 (elem (i32.const 1) $start:function-expression~anonymous|0 $start:function-expression~anonymous|1 $start:function-expression~someName $start:function-expression~anonymous|2 $start:function-expression~anonymous|3 $start:function-expression~anonymous|4 $start:function-expression~anonymous|5 $function-expression/testOmittedReturn1~anonymous|0 $function-expression/testOmittedReturn2~anonymous|0 $function-expression/testOmittedReturn3~anonymous|0 $function-expression/testNullable~anonymous|0 $function-expression/testGlobal~anonymous|0~anonymous|0 $function-expression/testGlobal~anonymous|0 $function-expression/testLocal~anonymous|0~anonymous|0 $function-expression/testLocal~anonymous|0 $function-expression/testField~anonymous|0~anonymous|0 $function-expression/testField~anonymous|0)
 (global $function-expression/f1 (mut i32) (i32.const 32))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $function-expression/f2 (mut i32) (i32.const 128))
 (global $function-expression/f3 (mut i32) (i32.const 160))
 (global $function-expression/f4 (mut i32) (i32.const 192))
 (global $function-expression/globalFunc (mut i32) (i32.const 0))
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/memory/__heap_base i32 (i32.const 620))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:function-expression~anonymous|0 (param $0 i32) (result i32)
  local.get $0
 )
 (func $start:function-expression~anonymous|1 (param $0 i32) (result i32)
  local.get $0
 )
 (func $start:function-expression~someName
  nop
 )
 (func $start:function-expression~anonymous|2 (result i32)
  i32.const 1
 )
 (func $start:function-expression~anonymous|3 (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $~lib/rt/stub/__retain (param $0 i32) (result i32)
  local.get $0
 )
 (func $~lib/rt/stub/__release (param $0 i32)
  nop
 )
 (func $function-expression/testOmitted (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  i32.const 1
  i32.const 2
  i32.const 2
  global.set $~argumentsLength
  local.get $0
  i32.load
  call_indirect (type $i32_i32_=>_i32)
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $start:function-expression~anonymous|4 (param $0 i32) (param $1 i32) (result i32)
  local.get $0
 )
 (func $start:function-expression~anonymous|5 (param $0 i32) (param $1 i32) (result i32)
  i32.const 42
 )
 (func $function-expression/testOmittedReturn1~anonymous|0 (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $function-expression/testOmittedReturn1 (result i32)
  i32.const 320
  call $~lib/rt/stub/__retain
 )
 (func $function-expression/testOmittedReturn2~anonymous|0 (param $0 i32) (param $1 i32) (result i32)
  local.get $0
 )
 (func $function-expression/testOmittedReturn2 (result i32)
  i32.const 352
  call $~lib/rt/stub/__retain
 )
 (func $function-expression/testOmittedReturn3~anonymous|0 (param $0 i32) (param $1 i32) (result i32)
  i32.const 42
 )
 (func $function-expression/testOmittedReturn3 (result i32)
  i32.const 384
  call $~lib/rt/stub/__retain
 )
 (func $function-expression/testNullable~anonymous|0 (result i32)
  i32.const 1
 )
 (func $function-expression/testNullable (param $0 i32) (result i32)
  local.get $0
  if
   i32.const 416
   call $~lib/rt/stub/__retain
   return
  else
   i32.const 0
   call $~lib/rt/stub/__retain
   return
  end
  unreachable
 )
 (func $function-expression/testGlobal~anonymous|0~anonymous|0 (param $0 i32) (result i32)
  i32.const 24
  local.get $0
  i32.add
 )
 (func $function-expression/testGlobal~anonymous|0 (result i32)
  (local $0 i32)
  i32.const 448
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
 )
 (func $function-expression/testGlobal
  (local $0 i32)
  (local $1 i32)
  i32.const 480
  local.tee $0
  global.get $function-expression/globalFunc
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
  global.set $function-expression/globalFunc
  i32.const 1
  i32.const 0
  global.set $~argumentsLength
  global.get $function-expression/globalFunc
  i32.load
  call_indirect (type $none_=>_i32)
  local.tee $0
  local.set $1
  i32.const 1
  global.set $~argumentsLength
  local.get $1
  i32.load
  call_indirect (type $i32_=>_i32)
  i32.const 25
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 57
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $function-expression/testLocal~anonymous|0~anonymous|0 (param $0 i32) (result i32)
  i32.const 24
  local.get $0
  i32.add
 )
 (func $function-expression/testLocal~anonymous|0 (result i32)
  (local $0 i32)
  i32.const 512
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
 )
 (func $function-expression/testLocal
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 544
  call $~lib/rt/stub/__retain
  local.set $0
  i32.const 1
  i32.const 0
  global.set $~argumentsLength
  local.get $0
  i32.load
  call_indirect (type $none_=>_i32)
  local.tee $1
  local.set $2
  i32.const 1
  global.set $~argumentsLength
  local.get $2
  i32.load
  call_indirect (type $i32_=>_i32)
  i32.const 25
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 68
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
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
 (func $function-expression/FieldClass#constructor (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 8
   call $~lib/rt/stub/__new
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  local.get $1
  call $~lib/rt/stub/__retain
  i32.store
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $function-expression/testField~anonymous|0~anonymous|0 (param $0 i32) (result i32)
  i32.const 24
  local.get $0
  i32.add
 )
 (func $function-expression/testField~anonymous|0 (result i32)
  (local $0 i32)
  i32.const 576
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
 )
 (func $function-expression/testField
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 608
  call $function-expression/FieldClass#constructor
  local.set $0
  i32.const 1
  i32.const 0
  global.set $~argumentsLength
  local.get $0
  i32.load
  i32.load
  call_indirect (type $none_=>_i32)
  local.tee $1
  local.set $2
  i32.const 1
  global.set $~argumentsLength
  local.get $2
  i32.load
  call_indirect (type $i32_=>_i32)
  i32.const 25
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 82
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $start:function-expression
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 1
  i32.const 1
  global.set $~argumentsLength
  global.get $function-expression/f1
  i32.load
  call_indirect (type $i32_=>_i32)
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 4
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.const 1
  global.set $~argumentsLength
  global.get $function-expression/f2
  i32.load
  call_indirect (type $i32_=>_i32)
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 9
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $~argumentsLength
  global.get $function-expression/f3
  i32.load
  call_indirect (type $none_=>_none)
  i32.const 0
  global.set $~argumentsLength
  global.get $function-expression/f4
  i32.load
  call_indirect (type $none_=>_i32)
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 16
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 224
  call $function-expression/testOmitted
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 21
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 256
  call $function-expression/testOmitted
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 22
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 288
  call $function-expression/testOmitted
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 23
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 2
  i32.const 2
  global.set $~argumentsLength
  call $function-expression/testOmittedReturn1
  local.tee $0
  i32.load
  call_indirect (type $i32_i32_=>_i32)
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 34
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 2
  i32.const 2
  global.set $~argumentsLength
  call $function-expression/testOmittedReturn2
  local.tee $1
  i32.load
  call_indirect (type $i32_i32_=>_i32)
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 35
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 2
  i32.const 2
  global.set $~argumentsLength
  call $function-expression/testOmittedReturn3
  local.tee $2
  i32.load
  call_indirect (type $i32_i32_=>_i32)
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 36
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $function-expression/testNullable
  local.tee $3
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 45
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $function-expression/testGlobal
  call $function-expression/testLocal
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
  call $function-expression/testField
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
 )
 (func $~start
  call $start:function-expression
 )
)
