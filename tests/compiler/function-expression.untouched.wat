(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\16\00\00\00f\00u\00n\00c\00t\00i\00o\00n\00-\00e\00x\00p\00r\00e\00s\00s\00i\00o\00n\00.\00t\00s\00")
 (table $0 11 funcref)
 (elem (i32.const 0) $null $start:function-expression~anonymous|0 $start:function-expression~anonymous|1 $start:function-expression~someName $start:function-expression~anonymous|2 $start:function-expression~anonymous|3 $start:function-expression~anonymous|4 $start:function-expression~anonymous|5 $function-expression/testOmittedReturn1~anonymous|0 $function-expression/testOmittedReturn2~anonymous|0 $function-expression/testOmittedReturn3~anonymous|0)
 (global $function-expression/f1 (mut i32) (i32.const 1))
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $function-expression/f2 (mut i32) (i32.const 2))
 (global $function-expression/f3 (mut i32) (i32.const 3))
 (global $function-expression/f4 (mut i32) (i32.const 4))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 56))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start:function-expression~anonymous|0 (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $start:function-expression~anonymous|1 (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $start:function-expression~someName (; 3 ;) (type $FUNCSIG$v)
  nop
 )
 (func $start:function-expression~anonymous|2 (; 4 ;) (type $FUNCSIG$i) (result i32)
  i32.const 1
 )
 (func $start:function-expression~anonymous|3 (; 5 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $function-expression/testOmitted (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 2
  global.set $~lib/argc
  i32.const 1
  i32.const 2
  local.get $0
  call_indirect (type $FUNCSIG$iii)
 )
 (func $start:function-expression~anonymous|4 (; 7 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
 )
 (func $start:function-expression~anonymous|5 (; 8 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  i32.const 42
 )
 (func $function-expression/testOmittedReturn1~anonymous|0 (; 9 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $function-expression/testOmittedReturn1 (; 10 ;) (type $FUNCSIG$i) (result i32)
  i32.const 8
 )
 (func $function-expression/testOmittedReturn2~anonymous|0 (; 11 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
 )
 (func $function-expression/testOmittedReturn2 (; 12 ;) (type $FUNCSIG$i) (result i32)
  i32.const 9
 )
 (func $function-expression/testOmittedReturn3~anonymous|0 (; 13 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  i32.const 42
 )
 (func $function-expression/testOmittedReturn3 (; 14 ;) (type $FUNCSIG$i) (result i32)
  i32.const 10
 )
 (func $start:function-expression (; 15 ;) (type $FUNCSIG$v)
  block (result i32)
   i32.const 1
   global.set $~lib/argc
   i32.const 1
   global.get $function-expression/f1
   call_indirect (type $FUNCSIG$ii)
  end
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 4
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 1
   global.set $~lib/argc
   i32.const 2
   global.get $function-expression/f2
   call_indirect (type $FUNCSIG$ii)
  end
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 9
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block
   i32.const 0
   global.set $~lib/argc
   global.get $function-expression/f3
   call_indirect (type $FUNCSIG$v)
  end
  block (result i32)
   i32.const 0
   global.set $~lib/argc
   global.get $function-expression/f4
   call_indirect (type $FUNCSIG$i)
  end
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 16
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 5
  call $function-expression/testOmitted
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 21
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 6
  call $function-expression/testOmitted
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 22
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 7
  call $function-expression/testOmitted
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 23
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 2
   global.set $~lib/argc
   i32.const 1
   i32.const 2
   call $function-expression/testOmittedReturn1
   call_indirect (type $FUNCSIG$iii)
  end
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 34
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 2
   global.set $~lib/argc
   i32.const 1
   i32.const 2
   call $function-expression/testOmittedReturn2
   call_indirect (type $FUNCSIG$iii)
  end
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 35
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 2
   global.set $~lib/argc
   i32.const 1
   i32.const 2
   call $function-expression/testOmittedReturn3
   call_indirect (type $FUNCSIG$iii)
  end
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 36
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start (; 16 ;) (type $FUNCSIG$v)
  call $start:function-expression
 )
 (func $null (; 17 ;) (type $FUNCSIG$v)
 )
)
