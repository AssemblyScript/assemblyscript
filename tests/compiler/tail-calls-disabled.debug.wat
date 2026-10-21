(module
 (type $0 (func (param i32) (result i32)))
 (type $1 (func))
 (type $2 (func (param i32 i32 i32 i32)))
 (type $3 (func (param i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (memory $0 1)
 (data $0 (i32.const 12) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00,\00\00\00t\00a\00i\00l\00-\00c\00a\00l\00l\00s\00-\00d\00i\00s\00a\00b\00l\00e\00d\00.\00t\00s\00")
 (data $1 (i32.const 76) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 2 2 funcref)
 (elem $0 (i32.const 1) $tail-calls-disabled/inc)
 (export "direct" (func $tail-calls-disabled/direct))
 (export "indirect" (func $tail-calls-disabled/indirect))
 (export "ternary" (func $tail-calls-disabled/ternary))
 (export "memory" (memory $0))
 (start $~start)
 (func $tail-calls-disabled/inc (param $x i32) (result i32)
  local.get $x
  i32.const 1
  i32.add
  return
 )
 (func $tail-calls-disabled/direct (param $x i32) (result i32)
  local.get $x
  call $tail-calls-disabled/inc
  return
 )
 (func $tail-calls-disabled/indirect (param $fn i32) (param $x i32) (result i32)
  local.get $x
  i32.const 1
  global.set $~argumentsLength
  local.get $fn
  i32.load
  call_indirect (type $0)
  return
 )
 (func $tail-calls-disabled/ternary (param $x i32) (result i32)
  local.get $x
  if (result i32)
   local.get $x
   call $tail-calls-disabled/inc
  else
   i32.const 0
   call $tail-calls-disabled/inc
  end
  return
 )
 (func $start:tail-calls-disabled
  i32.const 40
  call $tail-calls-disabled/direct
  i32.const 41
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
  i32.const 96
  i32.const 40
  call $tail-calls-disabled/indirect
  i32.const 41
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 10
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $tail-calls-disabled/ternary
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 11
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 40
  call $tail-calls-disabled/ternary
  i32.const 41
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 12
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  call $start:tail-calls-disabled
 )
)
