(module
 (type $0 (func (param i32) (result i32)))
 (type $1 (func))
 (type $2 (func (param i32 i32 i32 i32)))
 (type $3 (func (param i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data $0 (i32.const 1036) "<")
 (data $0.1 (i32.const 1048) "\02\00\00\00,\00\00\00t\00a\00i\00l\00-\00c\00a\00l\00l\00s\00-\00d\00i\00s\00a\00b\00l\00e\00d\00.\00t\00s")
 (data $1 (i32.const 1100) "\1c")
 (data $1.1 (i32.const 1112) "\04\00\00\00\08\00\00\00\01")
 (table $0 2 2 funcref)
 (elem $0 (i32.const 1) $tail-calls-disabled/inc)
 (export "direct" (func $tail-calls-disabled/inc))
 (export "indirect" (func $tail-calls-disabled/indirect))
 (export "ternary" (func $tail-calls-disabled/ternary))
 (export "memory" (memory $0))
 (start $~start)
 (func $~start
  i32.const 40
  i32.const 1120
  i32.load
  call_indirect (type $0)
  i32.const 41
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 10
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $tail-calls-disabled/ternary (param $0 i32) (result i32)
  local.get $0
  i32.const 1
  i32.add
  i32.const 1
  local.get $0
  select
 )
 (func $tail-calls-disabled/indirect (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load
  call_indirect (type $0)
 )
 (func $tail-calls-disabled/inc (param $0 i32) (result i32)
  local.get $0
  i32.const 1
  i32.add
 )
)
