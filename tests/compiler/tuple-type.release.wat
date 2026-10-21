(module
 (type $0 (func (param i32 i64) (result i32 i64)))
 (type $1 (func (result i32 i64)))
 (type $2 (func (result i32)))
 (type $3 (func (param i32 i32 i32 i32)))
 (type $4 (func (param f32 f64) (result f32 f64)))
 (type $5 (func (param i32 i64)))
 (type $6 (func (param i32 i32 i64) (result i32 i64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $tuple-type/order (mut i32) (i32.const 0))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 33836))
 (memory $0 1)
 (data $0 (i32.const 1036) "\1c")
 (data $0.1 (i32.const 1048) "\04\00\00\00\08\00\00\00\01")
 (table $0 2 2 funcref)
 (elem $0 (i32.const 1) $tuple-type/pair)
 (export "pair" (func $tuple-type/pair))
 (export "floats" (func $tuple-type/floats))
 (export "forward" (func $tuple-type/pair))
 (export "named" (func $tuple-type/pair))
 (export "dropCall" (func $tuple-type/dropCall))
 (export "indirectOrder" (func $tuple-type/indirectOrder))
 (export "evaluationOrder" (func $tuple-type/evaluationOrder))
 (export "stackPointer" (func $tuple-type/stackPointer))
 (export "memory" (memory $0))
 (export "indirect" (func $export:tuple-type/indirect))
 (func $tuple-type/pair (param $0 i32) (param $1 i64) (result i32 i64)
  local.get $0
  local.get $1
  tuple.make 2
 )
 (func $tuple-type/stackPointer (result i32)
  global.get $~lib/memory/__stack_pointer
 )
 (func $tuple-type/indirectOrder (result i32 i64)
  (local $0 (tuple i32 i64))
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1068
  i32.lt_s
  if
   i32.const 33856
   i32.const 33904
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  global.set $tuple-type/order
  i32.const 1
  global.set $tuple-type/order
  global.get $~lib/memory/__stack_pointer
  i32.const 1056
  i32.store
  i32.const 12
  global.set $tuple-type/order
  i32.const 7
  i64.const 9
  i32.const 1056
  i32.load
  call_indirect (type $0)
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $tuple-type/floats (param $0 f32) (param $1 f64) (result f32 f64)
  local.get $0
  local.get $1
  tuple.make 2
 )
 (func $tuple-type/evaluationOrder (result i32)
  global.get $tuple-type/order
 )
 (func $tuple-type/dropCall (param $0 i32) (param $1 i64)
 )
 (func $export:tuple-type/indirect (param $0 i32) (param $1 i32) (param $2 i64) (result i32 i64)
  (local $3 (tuple i32 i64))
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1068
  i32.lt_s
  if
   i32.const 33856
   i32.const 33904
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.get $2
  local.get $0
  i32.load
  call_indirect (type $0)
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
)
