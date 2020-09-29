(module
 (type $none_=>_i32 (func (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1024) "\08\00\00\00\01\00\00\00\03\00\00\00\08\00\00\00\01")
 (data (i32.const 1056) ",\00\00\00\01\00\00\00\01\00\00\00,\00\00\00f\00u\00n\00c\00t\00i\00o\00n\00-\00e\00x\00p\00r\00e\00s\00s\00i\00o\00n\00.\00t\00s")
 (data (i32.const 1120) "\08\00\00\00\01\00\00\00\03\00\00\00\08\00\00\00\02")
 (data (i32.const 1152) "\08\00\00\00\01\00\00\00\04\00\00\00\08\00\00\00\03")
 (data (i32.const 1184) "\08\00\00\00\01\00\00\00\05\00\00\00\08\00\00\00\04")
 (data (i32.const 1216) "\08\00\00\00\01\00\00\00\06\00\00\00\08\00\00\00\05")
 (data (i32.const 1248) "\08\00\00\00\01\00\00\00\06\00\00\00\08\00\00\00\06")
 (data (i32.const 1280) "\08\00\00\00\01\00\00\00\06\00\00\00\08\00\00\00\07")
 (data (i32.const 1312) "\08\00\00\00\01\00\00\00\06\00\00\00\08\00\00\00\08")
 (data (i32.const 1344) "\08\00\00\00\01\00\00\00\06\00\00\00\08\00\00\00\t")
 (data (i32.const 1376) "\08\00\00\00\01\00\00\00\06\00\00\00\08\00\00\00\n")
 (data (i32.const 1408) "\08\00\00\00\01\00\00\00\05\00\00\00\08\00\00\00\0b")
 (data (i32.const 1440) "\08\00\00\00\01\00\00\00\03\00\00\00\08\00\00\00\0c")
 (data (i32.const 1472) "\08\00\00\00\01\00\00\00\07\00\00\00\08\00\00\00\0d")
 (data (i32.const 1504) "\08\00\00\00\01\00\00\00\03\00\00\00\08\00\00\00\0e")
 (data (i32.const 1536) "\08\00\00\00\01\00\00\00\07\00\00\00\08\00\00\00\0f")
 (data (i32.const 1568) "\08\00\00\00\01\00\00\00\03\00\00\00\08\00\00\00\10")
 (data (i32.const 1600) "\08\00\00\00\01\00\00\00\07\00\00\00\08\00\00\00\11")
 (table $0 18 funcref)
 (elem (i32.const 1) $start:function-expression~anonymous|0 $start:function-expression~anonymous|0 $start:function-expression~someName $start:function-expression~anonymous|2 $start:function-expression~anonymous|3 $start:function-expression~anonymous|4 $start:function-expression~anonymous|5 $start:function-expression~anonymous|3 $start:function-expression~anonymous|4 $start:function-expression~anonymous|5 $start:function-expression~anonymous|2 $function-expression/testGlobal~anonymous|0~anonymous|0 $function-expression/testGlobal~anonymous|0 $function-expression/testGlobal~anonymous|0~anonymous|0 $function-expression/testLocal~anonymous|0 $function-expression/testGlobal~anonymous|0~anonymous|0 $function-expression/testField~anonymous|0)
 (export "memory" (memory $0))
 (start $~start)
 (func $start:function-expression~anonymous|0 (param $0 i32) (result i32)
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
 (func $function-expression/testOmitted (param $0 i32) (result i32)
  i32.const 1
  i32.const 2
  local.get $0
  i32.load
  call_indirect (type $i32_i32_=>_i32)
 )
 (func $start:function-expression~anonymous|4 (param $0 i32) (param $1 i32) (result i32)
  local.get $0
 )
 (func $start:function-expression~anonymous|5 (param $0 i32) (param $1 i32) (result i32)
  i32.const 42
 )
 (func $function-expression/testGlobal~anonymous|0~anonymous|0 (param $0 i32) (result i32)
  local.get $0
  i32.const 24
  i32.add
 )
 (func $function-expression/testGlobal~anonymous|0 (result i32)
  i32.const 1456
 )
 (func $function-expression/testLocal~anonymous|0 (result i32)
  i32.const 1520
 )
 (func $function-expression/testField~anonymous|0 (result i32)
  i32.const 1584
 )
 (func $start:function-expression
  (local $0 i32)
  (local $1 i32)
  i32.const 1
  i32.const 1040
  i32.load
  call_indirect (type $i32_=>_i32)
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1072
   i32.const 4
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.const 1136
  i32.load
  call_indirect (type $i32_=>_i32)
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1072
   i32.const 9
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1168
  i32.load
  call_indirect (type $none_=>_none)
  i32.const 1200
  i32.load
  call_indirect (type $none_=>_i32)
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1072
   i32.const 16
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1232
  call $function-expression/testOmitted
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1072
   i32.const 21
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1264
  call $function-expression/testOmitted
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1072
   i32.const 22
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1296
  call $function-expression/testOmitted
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 1072
   i32.const 23
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 2
  i32.const 1328
  i32.load
  call_indirect (type $i32_i32_=>_i32)
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1072
   i32.const 34
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 2
  i32.const 1360
  i32.load
  call_indirect (type $i32_i32_=>_i32)
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1072
   i32.const 35
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 2
  i32.const 1392
  i32.load
  call_indirect (type $i32_i32_=>_i32)
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 1072
   i32.const 36
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 1488
  i32.load
  call_indirect (type $none_=>_i32)
  i32.load
  call_indirect (type $i32_=>_i32)
  i32.const 25
  i32.ne
  if
   i32.const 0
   i32.const 1072
   i32.const 57
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 1552
  i32.load
  call_indirect (type $none_=>_i32)
  i32.load
  call_indirect (type $i32_=>_i32)
  i32.const 25
  i32.ne
  if
   i32.const 0
   i32.const 1072
   i32.const 68
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1664
  memory.size
  local.tee $1
  i32.const 16
  i32.shl
  local.tee $0
  i32.gt_u
  if
   local.get $1
   i32.const 67199
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
  i32.const 1632
  i32.const 16
  i32.store
  i32.const 1636
  i32.const 1
  i32.store
  i32.const 1640
  i32.const 8
  i32.store
  i32.const 1644
  i32.const 4
  i32.store
  i32.const 1648
  i32.const 1616
  i32.store
  i32.const 1
  i32.const 1648
  i32.load
  i32.load
  call_indirect (type $none_=>_i32)
  i32.load
  call_indirect (type $i32_=>_i32)
  i32.const 25
  i32.ne
  if
   i32.const 0
   i32.const 1072
   i32.const 82
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  call $start:function-expression
 )
)
