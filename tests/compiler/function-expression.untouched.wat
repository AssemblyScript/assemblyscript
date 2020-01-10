(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) ",\00\00\00\01\00\00\00\01\00\00\00,\00\00\00f\00u\00n\00c\00t\00i\00o\00n\00-\00e\00x\00p\00r\00e\00s\00s\00i\00o\00n\00.\00t\00s\00")
 (table $0 12 funcref)
 (elem (i32.const 1) $start:function-expression~anonymous|0 $start:function-expression~anonymous|1 $start:function-expression~someName $start:function-expression~anonymous|2 $start:function-expression~anonymous|3 $start:function-expression~anonymous|4 $start:function-expression~anonymous|5 $function-expression/testOmittedReturn1~anonymous|0 $function-expression/testOmittedReturn2~anonymous|0 $function-expression/testOmittedReturn3~anonymous|0 $function-expression/testNullable~anonymous|0)
 (global $function-expression/f1 (mut i32) (i32.const 1))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $function-expression/f2 (mut i32) (i32.const 2))
 (global $function-expression/f3 (mut i32) (i32.const 3))
 (global $function-expression/f4 (mut i32) (i32.const 4))
 (export "__argumentsLength" (global $~argumentsLength))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:function-expression~anonymous|0 (; 1 ;) (param $0 i32) (result i32)
  local.get $0
 )
 (func $start:function-expression~anonymous|1 (; 2 ;) (param $0 i32) (result i32)
  local.get $0
 )
 (func $start:function-expression~someName (; 3 ;)
  nop
 )
 (func $start:function-expression~anonymous|2 (; 4 ;) (result i32)
  i32.const 1
 )
 (func $start:function-expression~anonymous|3 (; 5 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $function-expression/testOmitted (; 6 ;) (param $0 i32) (result i32)
  i32.const 2
  global.set $~argumentsLength
  i32.const 1
  i32.const 2
  local.get $0
  call_indirect (type $i32_i32_=>_i32)
 )
 (func $start:function-expression~anonymous|4 (; 7 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
 )
 (func $start:function-expression~anonymous|5 (; 8 ;) (param $0 i32) (param $1 i32) (result i32)
  i32.const 42
 )
 (func $function-expression/testOmittedReturn1~anonymous|0 (; 9 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $function-expression/testOmittedReturn1 (; 10 ;) (result i32)
  i32.const 8
 )
 (func $function-expression/testOmittedReturn2~anonymous|0 (; 11 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
 )
 (func $function-expression/testOmittedReturn2 (; 12 ;) (result i32)
  i32.const 9
 )
 (func $function-expression/testOmittedReturn3~anonymous|0 (; 13 ;) (param $0 i32) (param $1 i32) (result i32)
  i32.const 42
 )
 (func $function-expression/testOmittedReturn3 (; 14 ;) (result i32)
  i32.const 10
 )
 (func $function-expression/testNullable~anonymous|0 (; 15 ;) (result i32)
  i32.const 1
 )
 (func $function-expression/testNullable (; 16 ;) (param $0 i32) (result i32)
  local.get $0
  if
   i32.const 11
   return
  else
   i32.const 0
   return
  end
  unreachable
 )
 (func $start:function-expression (; 17 ;)
  i32.const 1
  global.set $~argumentsLength
  i32.const 1
  global.get $function-expression/f1
  call_indirect (type $i32_=>_i32)
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 4
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  i32.const 2
  global.get $function-expression/f2
  call_indirect (type $i32_=>_i32)
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 9
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $~argumentsLength
  global.get $function-expression/f3
  call_indirect (type $none_=>_none)
  i32.const 0
  global.set $~argumentsLength
  global.get $function-expression/f4
  call_indirect (type $none_=>_i32)
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
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
   i32.const 32
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
   i32.const 32
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
   i32.const 32
   i32.const 23
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  global.set $~argumentsLength
  i32.const 1
  i32.const 2
  call $function-expression/testOmittedReturn1
  call_indirect (type $i32_i32_=>_i32)
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 34
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  global.set $~argumentsLength
  i32.const 1
  i32.const 2
  call $function-expression/testOmittedReturn2
  call_indirect (type $i32_i32_=>_i32)
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 35
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  global.set $~argumentsLength
  i32.const 1
  i32.const 2
  call $function-expression/testOmittedReturn3
  call_indirect (type $i32_i32_=>_i32)
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 36
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $function-expression/testNullable
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 45
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start (; 18 ;)
  call $start:function-expression
 )
)
