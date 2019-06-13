(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) ",\00\00\00\01\00\00\00\01\00\00\00,\00\00\00f\00u\00n\00c\00t\00i\00o\00n\00-\00e\00x\00p\00r\00e\00s\00s\00i\00o\00n\00.\00t\00s")
 (data (i32.const 72) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00u\00n\00c\00a\00u\00g\00h\00t\00 \00e\00r\00r\00o\00r")
 (table $0 11 funcref)
 (elem (i32.const 0) $start:function-expression~someName $start:function-expression~anonymous|0 $start:function-expression~anonymous|0 $start:function-expression~someName $start:function-expression~anonymous|2 $start:function-expression~anonymous|3 $start:function-expression~anonymous|4 $start:function-expression~anonymous|5 $start:function-expression~anonymous|3 $start:function-expression~anonymous|4 $start:function-expression~anonymous|5)
 (global $~lib/error i32 (i32.const 0))
 (global $function-expression/f1 i32 (i32.const 1))
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $function-expression/f2 i32 (i32.const 2))
 (global $function-expression/f3 i32 (i32.const 3))
 (global $function-expression/f4 i32 (i32.const 4))
 (export "memory" (memory $0))
 (start $start)
 (func $start:function-expression~anonymous|0 (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $start:function-expression~someName (; 2 ;) (type $FUNCSIG$v)
  nop
 )
 (func $start:function-expression~anonymous|2 (; 3 ;) (type $FUNCSIG$i) (result i32)
  i32.const 1
 )
 (func $start:function-expression~anonymous|3 (; 4 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $function-expression/testOmitted (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 2
  global.set $~lib/argc
  i32.const 1
  i32.const 2
  local.get $0
  call_indirect (type $FUNCSIG$iii)
  global.get $~lib/error
  if
   i32.const 0
   return
  end
 )
 (func $start:function-expression~anonymous|4 (; 6 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
 )
 (func $start:function-expression~anonymous|5 (; 7 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  i32.const 42
 )
 (func $start:function-expression (; 8 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 1
  global.set $~lib/argc
  i32.const 1
  global.get $function-expression/f1
  call_indirect (type $FUNCSIG$ii)
  local.set $0
  block $uncaughtError
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 24
    i32.const 4
    i32.const 0
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1
   global.set $~lib/argc
   i32.const 2
   global.get $function-expression/f2
   call_indirect (type $FUNCSIG$ii)
   global.get $~lib/error
   br_if $uncaughtError
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 24
    i32.const 9
    i32.const 0
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   global.set $~lib/argc
   global.get $function-expression/f3
   call_indirect (type $FUNCSIG$v)
   global.get $~lib/error
   br_if $uncaughtError
   i32.const 0
   global.set $~lib/argc
   global.get $function-expression/f4
   call_indirect (type $FUNCSIG$i)
   global.get $~lib/error
   br_if $uncaughtError
   i32.const 1
   i32.ne
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
   global.get $~lib/error
   br_if $uncaughtError
   i32.const 3
   i32.ne
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
   global.get $~lib/error
   br_if $uncaughtError
   i32.const 1
   i32.ne
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
   global.get $~lib/error
   br_if $uncaughtError
   i32.const 42
   i32.ne
   if
    i32.const 0
    i32.const 24
    i32.const 23
    i32.const 0
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 2
   global.set $~lib/argc
   i32.const 1
   i32.const 2
   call $start:function-expression~anonymous|3
   global.get $~lib/error
   br_if $uncaughtError
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 24
    i32.const 34
    i32.const 0
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 2
   global.set $~lib/argc
   i32.const 1
   i32.const 2
   call $start:function-expression~anonymous|4
   global.get $~lib/error
   br_if $uncaughtError
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 24
    i32.const 35
    i32.const 0
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 2
   global.set $~lib/argc
   i32.const 1
   i32.const 2
   call $start:function-expression~anonymous|5
   global.get $~lib/error
   br_if $uncaughtError
   i32.const 42
   i32.ne
   if
    i32.const 0
    i32.const 24
    i32.const 36
    i32.const 0
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  i32.const 88
  i32.const 24
  i32.const 1
  i32.const 0
  call $~lib/builtins/abort
  unreachable
 )
 (func $start (; 9 ;) (type $FUNCSIG$v)
  call $start:function-expression
 )
)
