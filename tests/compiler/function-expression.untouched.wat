(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) ",\00\00\00\01\00\00\00\01\00\00\00,\00\00\00f\00u\00n\00c\00t\00i\00o\00n\00-\00e\00x\00p\00r\00e\00s\00s\00i\00o\00n\00.\00t\00s\00")
 (table $0 12 funcref)
 (elem (i32.const 0) $null $start:function-expression~anonymous|0 $start:function-expression~anonymous|1 $start:function-expression~someName $start:function-expression~anonymous|2 $start:function-expression~anonymous|3 $start:function-expression~anonymous|4 $start:function-expression~anonymous|5 $function-expression/testOmittedReturn1~anonymous|0 $function-expression/testOmittedReturn2~anonymous|0 $function-expression/testOmittedReturn3~anonymous|0 $function-expression/testNullable~anonymous|0)
 (global $function-expression/f1 (mut i32) (i32.const 1))
 (global $~lib/closure (mut i32) (i32.const 0))
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $function-expression/f2 (mut i32) (i32.const 2))
 (global $function-expression/f3 (mut i32) (i32.const 3))
 (global $function-expression/f4 (mut i32) (i32.const 4))
 (export "memory" (memory $0))
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
 (func $~lib/rt/stub/__retain (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $~lib/rt/stub/__release (; 7 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $function-expression/testOmitted (; 8 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  local.tee $1
  i32.const 15
  i32.and
  i32.eqz
  if
   local.get $1
   global.set $~lib/closure
   local.get $1
   i32.load
   local.set $1
  end
  i32.const 2
  global.set $~lib/argc
  i32.const 1
  i32.const 2
  local.get $1
  call_indirect (type $FUNCSIG$iii)
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $start:function-expression~anonymous|4 (; 9 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
 )
 (func $start:function-expression~anonymous|5 (; 10 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  i32.const 42
 )
 (func $function-expression/testOmittedReturn1~anonymous|0 (; 11 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $function-expression/testOmittedReturn1 (; 12 ;) (type $FUNCSIG$i) (result i32)
  i32.const 8
  call $~lib/rt/stub/__retain
 )
 (func $function-expression/testOmittedReturn2~anonymous|0 (; 13 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
 )
 (func $function-expression/testOmittedReturn2 (; 14 ;) (type $FUNCSIG$i) (result i32)
  i32.const 9
  call $~lib/rt/stub/__retain
 )
 (func $function-expression/testOmittedReturn3~anonymous|0 (; 15 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  i32.const 42
 )
 (func $function-expression/testOmittedReturn3 (; 16 ;) (type $FUNCSIG$i) (result i32)
  i32.const 10
  call $~lib/rt/stub/__retain
 )
 (func $function-expression/testNullable~anonymous|0 (; 17 ;) (type $FUNCSIG$i) (result i32)
  i32.const 1
 )
 (func $function-expression/testNullable (; 18 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  if
   i32.const 11
   call $~lib/rt/stub/__retain
   return
  else
   i32.const 0
   call $~lib/rt/stub/__retain
   return
  end
  unreachable
 )
 (func $start:function-expression (; 19 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $function-expression/f1
  local.tee $0
  i32.const 15
  i32.and
  i32.eqz
  if
   local.get $0
   global.set $~lib/closure
   local.get $0
   i32.load
   local.set $0
  end
  i32.const 1
  global.set $~lib/argc
  i32.const 1
  local.get $0
  call_indirect (type $FUNCSIG$ii)
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 4
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $function-expression/f2
  local.tee $0
  i32.const 15
  i32.and
  i32.eqz
  if
   local.get $0
   global.set $~lib/closure
   local.get $0
   i32.load
   local.set $0
  end
  i32.const 1
  global.set $~lib/argc
  i32.const 2
  local.get $0
  call_indirect (type $FUNCSIG$ii)
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 9
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $function-expression/f3
  local.tee $0
  i32.const 15
  i32.and
  i32.eqz
  if
   local.get $0
   global.set $~lib/closure
   local.get $0
   i32.load
   local.set $0
  end
  i32.const 0
  global.set $~lib/argc
  local.get $0
  call_indirect (type $FUNCSIG$v)
  global.get $function-expression/f4
  local.tee $0
  i32.const 15
  i32.and
  i32.eqz
  if
   local.get $0
   global.set $~lib/closure
   local.get $0
   i32.load
   local.set $0
  end
  i32.const 0
  global.set $~lib/argc
  local.get $0
  call_indirect (type $FUNCSIG$i)
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 16
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  call $function-expression/testOmitted
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 21
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 6
  call $function-expression/testOmitted
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 22
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 7
  call $function-expression/testOmitted
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 23
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  call $function-expression/testOmittedReturn1
  local.tee $0
  local.tee $1
  i32.const 15
  i32.and
  i32.eqz
  if
   local.get $1
   global.set $~lib/closure
   local.get $1
   i32.load
   local.set $1
  end
  i32.const 2
  global.set $~lib/argc
  i32.const 1
  i32.const 2
  local.get $1
  call_indirect (type $FUNCSIG$iii)
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 34
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  call $function-expression/testOmittedReturn2
  local.tee $1
  local.tee $2
  i32.const 15
  i32.and
  i32.eqz
  if
   local.get $2
   global.set $~lib/closure
   local.get $2
   i32.load
   local.set $2
  end
  i32.const 2
  global.set $~lib/argc
  i32.const 1
  i32.const 2
  local.get $2
  call_indirect (type $FUNCSIG$iii)
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 35
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  call $function-expression/testOmittedReturn3
  local.tee $2
  local.tee $3
  i32.const 15
  i32.and
  i32.eqz
  if
   local.get $3
   global.set $~lib/closure
   local.get $3
   i32.load
   local.set $3
  end
  i32.const 2
  global.set $~lib/argc
  i32.const 1
  i32.const 2
  local.get $3
  call_indirect (type $FUNCSIG$iii)
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 36
   i32.const 0
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
   i32.const 24
   i32.const 45
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
 )
 (func $start (; 20 ;) (type $FUNCSIG$v)
  call $start:function-expression
 )
 (func $null (; 21 ;) (type $FUNCSIG$v)
  unreachable
 )
)
