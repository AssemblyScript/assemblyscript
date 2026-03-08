(module
 (type $0 (func (param i32 i32 i32) (result i32)))
 (type $1 (func))
 (type $2 (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/__abort_impl (param i32 i32 i32 i32)))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/native/ASC_FEATURE_EXCEPTION_HANDLING i32 (i32.const 0))
 (global $call-optional/optIndirect (mut i32) (i32.const 96))
 (global $~lib/memory/__data_end i32 (i32.const 108))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 32876))
 (global $~lib/memory/__heap_base i32 (i32.const 32876))
 (memory $0 1)
 (data $0 (i32.const 12) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00 \00\00\00c\00a\00l\00l\00-\00o\00p\00t\00i\00o\00n\00a\00l\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $1 (i32.const 76) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 2 2 funcref)
 (elem $0 (i32.const 1) $call-optional/opt@varargs)
 (export "memory" (memory $0))
 (start $~start)
 (func $call-optional/opt (param $a i32) (param $b i32) (param $c i32) (result i32)
  local.get $a
  local.get $b
  i32.add
  local.get $c
  i32.add
  return
 )
 (func $call-optional/opt@varargs (param $a i32) (param $b i32) (param $c i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const -1
    local.set $b
   end
   i32.const -2
   local.set $c
  end
  local.get $a
  local.get $b
  local.get $c
  call $call-optional/opt
 )
 (func $start:call-optional
  i32.const 3
  i32.const 0
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  call $call-optional/opt@varargs
  i32.const 0
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
  i32.const 3
  i32.const 4
  i32.const 2
  global.set $~argumentsLength
  i32.const 0
  call $call-optional/opt@varargs
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 5
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 4
  i32.const 5
  call $call-optional/opt
  i32.const 12
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 6
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 0
  i32.const 0
  i32.const 1
  global.set $~argumentsLength
  global.get $call-optional/optIndirect
  i32.load
  call_indirect (type $0)
  i32.const 0
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
  i32.const 3
  i32.const 4
  i32.const 0
  i32.const 2
  global.set $~argumentsLength
  global.get $call-optional/optIndirect
  i32.load
  call_indirect (type $0)
  i32.const 5
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
  i32.const 3
  i32.const 4
  i32.const 5
  i32.const 3
  global.set $~argumentsLength
  global.get $call-optional/optIndirect
  i32.load
  call_indirect (type $0)
  i32.const 12
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
 )
 (func $~start
  call $start:call-optional
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 32896
   i32.const 32944
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/builtins/abort (param $message i32) (param $fileName i32) (param $lineNumber i32) (param $columnNumber i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 0
  drop
  local.get $message
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  local.get $fileName
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $lineNumber
  local.get $columnNumber
  call $~lib/builtins/__abort_impl
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
