(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1036) "\08\00\00\00\01\00\00\00\00\00\00\00\03\00\00\00\08\00\00\00\01")
 (data (i32.const 1068) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00,\00\00\00f\00u\00n\00c\00t\00i\00o\00n\00-\00e\00x\00p\00r\00e\00s\00s\00i\00o\00n\00.\00t\00s")
 (data (i32.const 1132) "\08\00\00\00\01\00\00\00\00\00\00\00\03\00\00\00\08\00\00\00\02")
 (data (i32.const 1164) "\08\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00\03")
 (data (i32.const 1196) "\08\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\08\00\00\00\04")
 (data (i32.const 1228) "\08\00\00\00\01\00\00\00\00\00\00\00\06\00\00\00\08\00\00\00\05")
 (data (i32.const 1260) "\08\00\00\00\01\00\00\00\00\00\00\00\06\00\00\00\08\00\00\00\06")
 (data (i32.const 1292) "\08\00\00\00\01\00\00\00\00\00\00\00\06\00\00\00\08\00\00\00\07")
 (data (i32.const 1324) "\08\00\00\00\01\00\00\00\00\00\00\00\06\00\00\00\08\00\00\00\08")
 (data (i32.const 1356) "\08\00\00\00\01\00\00\00\00\00\00\00\06\00\00\00\08\00\00\00\t")
 (data (i32.const 1388) "\08\00\00\00\01\00\00\00\00\00\00\00\06\00\00\00\08\00\00\00\n")
 (data (i32.const 1420) "\08\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\08\00\00\00\0b")
 (data (i32.const 1452) "\08\00\00\00\01\00\00\00\00\00\00\00\03\00\00\00\08\00\00\00\0c")
 (data (i32.const 1484) "\08\00\00\00\01\00\00\00\00\00\00\00\07\00\00\00\08\00\00\00\0d")
 (data (i32.const 1516) "\08\00\00\00\01\00\00\00\00\00\00\00\03\00\00\00\08\00\00\00\0e")
 (data (i32.const 1548) "\08\00\00\00\01\00\00\00\00\00\00\00\07\00\00\00\08\00\00\00\0f")
 (data (i32.const 1580) "\08\00\00\00\01\00\00\00\00\00\00\00\03\00\00\00\08\00\00\00\10")
 (data (i32.const 1612) "\08\00\00\00\01\00\00\00\00\00\00\00\07\00\00\00\08\00\00\00\11")
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
  i32.const 1472
 )
 (func $function-expression/testLocal~anonymous|0 (result i32)
  i32.const 1536
 )
 (func $function-expression/testField~anonymous|0 (result i32)
  i32.const 1600
 )
 (func $start:function-expression
  (local $0 i32)
  (local $1 i32)
  i32.const 1
  i32.const 1056
  i32.load
  call_indirect (type $i32_=>_i32)
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 4
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.const 1152
  i32.load
  call_indirect (type $i32_=>_i32)
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 9
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1184
  i32.load
  call_indirect (type $none_=>_none)
  i32.const 1216
  i32.load
  call_indirect (type $none_=>_i32)
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 16
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 2
  i32.const 1248
  i32.load
  call_indirect (type $i32_i32_=>_i32)
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 21
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 2
  i32.const 1280
  i32.load
  call_indirect (type $i32_i32_=>_i32)
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 22
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 2
  i32.const 1312
  i32.load
  call_indirect (type $i32_i32_=>_i32)
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 23
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 2
  i32.const 1344
  i32.load
  call_indirect (type $i32_i32_=>_i32)
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 34
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 2
  i32.const 1376
  i32.load
  call_indirect (type $i32_i32_=>_i32)
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 35
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 2
  i32.const 1408
  i32.load
  call_indirect (type $i32_i32_=>_i32)
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 36
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 1504
  i32.load
  call_indirect (type $none_=>_i32)
  i32.load
  call_indirect (type $i32_=>_i32)
  i32.const 25
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 57
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 1568
  i32.load
  call_indirect (type $none_=>_i32)
  i32.load
  call_indirect (type $i32_=>_i32)
  i32.const 25
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 68
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1676
  memory.size
  local.tee $1
  i32.const 16
  i32.shl
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $0
  i32.gt_u
  if
   local.get $1
   i32.const 67211
   local.get $0
   i32.sub
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
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
  i32.const 1644
  i32.const 28
  i32.store
  i32.const 1648
  i32.const 0
  i32.store
  i32.const 1652
  i32.const 0
  i32.store
  i32.const 1656
  i32.const 8
  i32.store
  i32.const 1660
  i32.const 4
  i32.store
  i32.const 1664
  i32.const 1632
  i32.store
  i32.const 1
  i32.const 1664
  i32.load
  i32.load
  call_indirect (type $none_=>_i32)
  i32.load
  call_indirect (type $i32_=>_i32)
  i32.const 25
  i32.ne
  if
   i32.const 0
   i32.const 1088
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
