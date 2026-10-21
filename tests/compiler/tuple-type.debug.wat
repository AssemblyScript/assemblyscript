(module
 (type $0 (func (param i32 i64) (result i32 i64)))
 (type $1 (func (result i32)))
 (type $2 (func (result i32 i64)))
 (type $3 (func (param i32 i32 i64) (result i32 i64)))
 (type $4 (func (param f32 f64) (result f32 f64)))
 (type $5 (func (param i32 i64)))
 (type $6 (func (param i32 i32 i32 i32)))
 (type $7 (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $tuple-type/order (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/memory/__data_end i32 (i32.const 44))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 32812))
 (global $~lib/memory/__heap_base i32 (i32.const 32812))
 (memory $0 1)
 (data $0 (i32.const 12) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 2 2 funcref)
 (elem $0 (i32.const 1) $tuple-type/pair)
 (export "pair" (func $tuple-type/pair))
 (export "floats" (func $tuple-type/floats))
 (export "forward" (func $tuple-type/forward))
 (export "named" (func $tuple-type/named))
 (export "dropCall" (func $tuple-type/dropCall))
 (export "indirectOrder" (func $tuple-type/indirectOrder))
 (export "evaluationOrder" (func $tuple-type/evaluationOrder))
 (export "stackPointer" (func $tuple-type/stackPointer))
 (export "memory" (memory $0))
 (export "indirect" (func $export:tuple-type/indirect))
 (func $tuple-type/pair (param $a i32) (param $b i64) (result i32 i64)
  local.get $a
  local.get $b
  tuple.make 2
  return
 )
 (func $tuple-type/floats (param $a f32) (param $b f64) (result f32 f64)
  local.get $a
  local.get $b
  tuple.make 2
  return
 )
 (func $tuple-type/forward (param $a i32) (param $b i64) (result i32 i64)
  local.get $a
  local.get $b
  call $tuple-type/pair
  return
 )
 (func $tuple-type/named (param $a i32) (param $b i64) (result i32 i64)
  local.get $a
  local.get $b
  tuple.make 2
  return
 )
 (func $tuple-type/indirect (param $fn i32) (param $a i32) (param $b i64) (result i32 i64)
  local.get $a
  local.get $b
  i32.const 2
  global.set $~argumentsLength
  local.get $fn
  i32.load
  call_indirect (type $0)
  return
 )
 (func $tuple-type/dropCall (param $a i32) (param $b i64)
  local.get $a
  local.get $b
  call $tuple-type/pair
  tuple.drop 2
 )
 (func $tuple-type/choosePair (result i32)
  global.get $tuple-type/order
  i32.const 10
  i32.mul
  i32.const 1
  i32.add
  global.set $tuple-type/order
  i32.const 32
  return
 )
 (func $tuple-type/argument (result i32)
  global.get $tuple-type/order
  i32.const 10
  i32.mul
  i32.const 2
  i32.add
  global.set $tuple-type/order
  i32.const 7
  return
 )
 (func $tuple-type/evaluationOrder (result i32)
  global.get $tuple-type/order
  return
 )
 (func $tuple-type/stackPointer (result i32)
  global.get $~lib/memory/__stack_pointer
  return
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 32832
   i32.const 32880
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $tuple-type/indirectOrder (result i32 i64)
  (local $0 i32)
  (local $1 (tuple i32 i64))
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  global.set $tuple-type/order
  global.get $~lib/memory/__stack_pointer
  call $tuple-type/choosePair
  local.tee $0
  i32.store
  call $tuple-type/argument
  i64.const 9
  i32.const 2
  global.set $~argumentsLength
  local.get $0
  i32.load
  call_indirect (type $0)
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $export:tuple-type/indirect (param $0 i32) (param $1 i32) (param $2 i64) (result i32 i64)
  (local $3 (tuple i32 i64))
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $2
  call $tuple-type/indirect
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
)
