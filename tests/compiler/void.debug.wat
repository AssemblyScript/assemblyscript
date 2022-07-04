(module
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $void/u8Val1 (mut i32) (i32.const 1))
 (global $void/u8Val2 (mut i32) (i32.const 255))
 (global $void/foo (mut i32) (i32.const -1))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/memory/__data_end i32 (i32.const 92))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16476))
 (global $~lib/memory/__heap_base i32 (i32.const 16476))
 (memory $0 1)
 (data (i32.const 12) "\1c\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\08\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 44) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\0e\00\00\00v\00o\00i\00d\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 2 2 funcref)
 (elem $0 (i32.const 1) $start:void~anonymous|0)
 (export "memory" (memory $0))
 (start $~start)
 (func $void/anInt (result i32)
  i32.const 2
 )
 (func $start:void~anonymous|0 (param $0 i32)
  local.get $0
  global.set $void/foo
 )
 (func $void/oneToEight (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 1
  local.set $1
  loop $for-loop|0
   local.get $1
   i32.const 8
   i32.le_s
   local.set $2
   local.get $2
   if
    local.get $1
    i32.const 1
    global.set $~argumentsLength
    local.get $0
    i32.load
    call_indirect $0 (type $i32_=>_none)
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
 )
 (func $void/aVoid
  i32.const 9
  global.set $void/foo
 )
 (func $~start
  call $start:void
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 16496
   i32.const 16544
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start:void
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 1
  drop
  call $void/anInt
  drop
  global.get $void/u8Val1
  global.get $void/u8Val2
  i32.add
  drop
  i32.const 32
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $void/oneToEight
  global.get $void/foo
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 22
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $void/aVoid
  global.get $void/foo
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 29
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
