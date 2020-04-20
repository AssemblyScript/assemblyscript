(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) ",\00\00\00\01\00\00\00\01\00\00\00,\00\00\00f\00u\00n\00c\00t\00i\00o\00n\00-\00e\00x\00p\00r\00e\00s\00s\00i\00o\00n\00.\00t\00s\00")
 (table $0 12 funcref)
 (elem (i32.const 1) $start:function-expression~anonymous|0~nonClosure $start:function-expression~anonymous|1~nonClosure $start:function-expression~someName~nonClosure $start:function-expression~anonymous|2~nonClosure $start:function-expression~anonymous|3~nonClosure $start:function-expression~anonymous|4~nonClosure $start:function-expression~anonymous|5~nonClosure $function-expression/testOmittedReturn1~anonymous|0~nonClosure $function-expression/testOmittedReturn2~anonymous|0~nonClosure $function-expression/testOmittedReturn3~anonymous|0~nonClosure $function-expression/testNullable~anonymous|0~nonClosure)
 (global $function-expression/f1 (mut i32) (i32.const 1))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $function-expression/f2 (mut i32) (i32.const 2))
 (global $function-expression/f3 (mut i32) (i32.const 3))
 (global $function-expression/f4 (mut i32) (i32.const 4))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:function-expression~anonymous|0~nonClosure (param $0 i32) (result i32)
  local.get $0
 )
 (func $start:function-expression~anonymous|1~nonClosure (param $0 i32) (result i32)
  local.get $0
 )
 (func $start:function-expression~someName~nonClosure
  nop
 )
 (func $start:function-expression~anonymous|2~nonClosure (result i32)
  i32.const 1
 )
 (func $start:function-expression~anonymous|3~nonClosure (param $0 i32) (param $1 i32) (result i32)
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
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.set $1
  local.get $1
  i32.const -2147483648
  i32.and
  i32.const -2147483648
  i32.eq
  if (result i32)
   local.get $1
   i32.const 4
   i32.shl
  else
   i32.const 0
  end
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  local.set $0
  local.get $0
  local.set $2
  local.get $2
  i32.const -2147483648
  i32.and
  i32.const -2147483648
  i32.eq
  if (result i32)
   local.get $2
   i32.const 4
   i32.shl
   i32.const 1
   i32.const 2
   i32.const 2
   global.set $~argumentsLength
   local.get $2
   i32.const 4
   i32.shl
   i32.load
   call_indirect (type $i32_i32_i32_=>_i32)
  else
   i32.const 1
   i32.const 2
   i32.const 2
   global.set $~argumentsLength
   local.get $2
   call_indirect (type $i32_i32_=>_i32)
  end
  local.set $4
  local.get $0
  local.set $3
  local.get $3
  i32.const -2147483648
  i32.and
  i32.const -2147483648
  i32.eq
  if (result i32)
   local.get $3
   i32.const 4
   i32.shl
  else
   i32.const 0
  end
  call $~lib/rt/stub/__release
  local.get $4
 )
 (func $start:function-expression~anonymous|4~nonClosure (param $0 i32) (param $1 i32) (result i32)
  local.get $0
 )
 (func $start:function-expression~anonymous|5~nonClosure (param $0 i32) (param $1 i32) (result i32)
  i32.const 42
 )
 (func $function-expression/testOmittedReturn1~anonymous|0~nonClosure (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $function-expression/testOmittedReturn1 (result i32)
  (local $0 i32)
  i32.const 8
  local.set $0
  local.get $0
  i32.const -2147483648
  i32.and
  i32.const -2147483648
  i32.eq
  if (result i32)
   local.get $0
   i32.const 4
   i32.shl
  else
   i32.const 0
  end
  call $~lib/rt/stub/__retain
  drop
  local.get $0
 )
 (func $function-expression/testOmittedReturn2~anonymous|0~nonClosure (param $0 i32) (param $1 i32) (result i32)
  local.get $0
 )
 (func $function-expression/testOmittedReturn2 (result i32)
  (local $0 i32)
  i32.const 9
  local.set $0
  local.get $0
  i32.const -2147483648
  i32.and
  i32.const -2147483648
  i32.eq
  if (result i32)
   local.get $0
   i32.const 4
   i32.shl
  else
   i32.const 0
  end
  call $~lib/rt/stub/__retain
  drop
  local.get $0
 )
 (func $function-expression/testOmittedReturn3~anonymous|0~nonClosure (param $0 i32) (param $1 i32) (result i32)
  i32.const 42
 )
 (func $function-expression/testOmittedReturn3 (result i32)
  (local $0 i32)
  i32.const 10
  local.set $0
  local.get $0
  i32.const -2147483648
  i32.and
  i32.const -2147483648
  i32.eq
  if (result i32)
   local.get $0
   i32.const 4
   i32.shl
  else
   i32.const 0
  end
  call $~lib/rt/stub/__retain
  drop
  local.get $0
 )
 (func $function-expression/testNullable~anonymous|0~nonClosure (result i32)
  i32.const 1
 )
 (func $function-expression/testNullable (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  if
   i32.const 11
   local.set $1
   local.get $1
   i32.const -2147483648
   i32.and
   i32.const -2147483648
   i32.eq
   if (result i32)
    local.get $1
    i32.const 4
    i32.shl
   else
    i32.const 0
   end
   call $~lib/rt/stub/__retain
   drop
   local.get $1
   return
  else
   i32.const 0
   local.set $2
   local.get $2
   i32.const -2147483648
   i32.and
   i32.const -2147483648
   i32.eq
   if (result i32)
    local.get $2
    i32.const 4
    i32.shl
   else
    i32.const 0
   end
   call $~lib/rt/stub/__retain
   drop
   local.get $2
   return
  end
  unreachable
 )
 (func $start:function-expression
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  global.get $function-expression/f1
  local.set $0
  local.get $0
  i32.const -2147483648
  i32.and
  i32.const -2147483648
  i32.eq
  if (result i32)
   local.get $0
   i32.const 4
   i32.shl
   i32.const 1
   i32.const 1
   global.set $~argumentsLength
   local.get $0
   i32.const 4
   i32.shl
   i32.load
   call_indirect (type $i32_i32_=>_i32)
  else
   i32.const 1
   i32.const 1
   global.set $~argumentsLength
   local.get $0
   call_indirect (type $i32_=>_i32)
  end
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 4
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $function-expression/f2
  local.set $1
  local.get $1
  i32.const -2147483648
  i32.and
  i32.const -2147483648
  i32.eq
  if (result i32)
   local.get $1
   i32.const 4
   i32.shl
   i32.const 2
   i32.const 1
   global.set $~argumentsLength
   local.get $1
   i32.const 4
   i32.shl
   i32.load
   call_indirect (type $i32_i32_=>_i32)
  else
   i32.const 2
   i32.const 1
   global.set $~argumentsLength
   local.get $1
   call_indirect (type $i32_=>_i32)
  end
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 9
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $function-expression/f3
  local.set $2
  local.get $2
  i32.const -2147483648
  i32.and
  i32.const -2147483648
  i32.eq
  if
   local.get $2
   i32.const 4
   i32.shl
   i32.const 0
   global.set $~argumentsLength
   local.get $2
   i32.const 4
   i32.shl
   i32.load
   call_indirect (type $i32_=>_none)
  else
   i32.const 0
   global.set $~argumentsLength
   local.get $2
   call_indirect (type $none_=>_none)
  end
  global.get $function-expression/f4
  local.set $3
  local.get $3
  i32.const -2147483648
  i32.and
  i32.const -2147483648
  i32.eq
  if (result i32)
   local.get $3
   i32.const 4
   i32.shl
   i32.const 0
   global.set $~argumentsLength
   local.get $3
   i32.const 4
   i32.shl
   i32.load
   call_indirect (type $i32_=>_i32)
  else
   i32.const 0
   global.set $~argumentsLength
   local.get $3
   call_indirect (type $none_=>_i32)
  end
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 16
   i32.const 1
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
   i32.const 1
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
   i32.const 1
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
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $function-expression/testOmittedReturn1
  local.tee $4
  local.set $5
  local.get $5
  i32.const -2147483648
  i32.and
  i32.const -2147483648
  i32.eq
  if (result i32)
   local.get $5
   i32.const 4
   i32.shl
   i32.const 1
   i32.const 2
   i32.const 2
   global.set $~argumentsLength
   local.get $5
   i32.const 4
   i32.shl
   i32.load
   call_indirect (type $i32_i32_i32_=>_i32)
  else
   i32.const 1
   i32.const 2
   i32.const 2
   global.set $~argumentsLength
   local.get $5
   call_indirect (type $i32_i32_=>_i32)
  end
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 34
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $function-expression/testOmittedReturn2
  local.tee $6
  local.set $7
  local.get $7
  i32.const -2147483648
  i32.and
  i32.const -2147483648
  i32.eq
  if (result i32)
   local.get $7
   i32.const 4
   i32.shl
   i32.const 1
   i32.const 2
   i32.const 2
   global.set $~argumentsLength
   local.get $7
   i32.const 4
   i32.shl
   i32.load
   call_indirect (type $i32_i32_i32_=>_i32)
  else
   i32.const 1
   i32.const 2
   i32.const 2
   global.set $~argumentsLength
   local.get $7
   call_indirect (type $i32_i32_=>_i32)
  end
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 35
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $function-expression/testOmittedReturn3
  local.tee $8
  local.set $9
  local.get $9
  i32.const -2147483648
  i32.and
  i32.const -2147483648
  i32.eq
  if (result i32)
   local.get $9
   i32.const 4
   i32.shl
   i32.const 1
   i32.const 2
   i32.const 2
   global.set $~argumentsLength
   local.get $9
   i32.const 4
   i32.shl
   i32.load
   call_indirect (type $i32_i32_i32_=>_i32)
  else
   i32.const 1
   i32.const 2
   i32.const 2
   global.set $~argumentsLength
   local.get $9
   call_indirect (type $i32_i32_=>_i32)
  end
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 36
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $function-expression/testNullable
  local.tee $10
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 45
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.set $11
  local.get $11
  i32.const -2147483648
  i32.and
  i32.const -2147483648
  i32.eq
  if (result i32)
   local.get $11
   i32.const 4
   i32.shl
  else
   i32.const 0
  end
  call $~lib/rt/stub/__release
  local.get $6
  local.set $12
  local.get $12
  i32.const -2147483648
  i32.and
  i32.const -2147483648
  i32.eq
  if (result i32)
   local.get $12
   i32.const 4
   i32.shl
  else
   i32.const 0
  end
  call $~lib/rt/stub/__release
  local.get $8
  local.set $13
  local.get $13
  i32.const -2147483648
  i32.and
  i32.const -2147483648
  i32.eq
  if (result i32)
   local.get $13
   i32.const 4
   i32.shl
  else
   i32.const 0
  end
  call $~lib/rt/stub/__release
  local.get $10
  local.set $14
  local.get $14
  i32.const -2147483648
  i32.and
  i32.const -2147483648
  i32.eq
  if (result i32)
   local.get $14
   i32.const 4
   i32.shl
  else
   i32.const 0
  end
  call $~lib/rt/stub/__release
 )
 (func $~start
  call $start:function-expression
 )
)
