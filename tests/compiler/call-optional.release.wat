(module
 (type $0 (func (param i32 i32 i32) (result i32)))
 (type $1 (func (param i32 i32 i32 i32)))
 (type $2 (func))
 (type $3 (func (param i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/__abort_impl (param i32 i32 i32 i32)))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 33900))
 (memory $0 1)
 (data $0 (i32.const 1036) "<")
 (data $0.1 (i32.const 1048) "\02\00\00\00 \00\00\00c\00a\00l\00l\00-\00o\00p\00t\00i\00o\00n\00a\00l\00.\00t\00s")
 (data $1 (i32.const 1100) "\1c")
 (data $1.1 (i32.const 1112) "\04\00\00\00\08\00\00\00\01")
 (table $0 2 2 funcref)
 (elem $0 (i32.const 1) $call-optional/opt@varargs)
 (export "memory" (memory $0))
 (start $~start)
 (func $call-optional/opt@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
    local.set $1
   end
   i32.const -2
   local.set $2
  end
  local.get $1
  i32.const 3
  i32.add
  local.get $2
  i32.add
 )
 (func $~start
  i32.const 1
  global.set $~argumentsLength
  i32.const 2
  global.set $~argumentsLength
  i32.const 1
  global.set $~argumentsLength
  i32.const 3
  i32.const 0
  i32.const 0
  i32.const 1120
  i32.load
  call_indirect (type $0)
  if
   i32.const 0
   i32.const 1056
   i32.const 9
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  global.set $~argumentsLength
  i32.const 3
  i32.const 4
  i32.const 0
  i32.const 1120
  i32.load
  call_indirect (type $0)
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  global.set $~argumentsLength
  i32.const 3
  i32.const 4
  i32.const 5
  i32.const 1120
  i32.load
  call_indirect (type $0)
  i32.const 12
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 11
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/builtins/abort (param $0 i32) (param $1 i32) (param $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1132
  i32.lt_s
  if
   i32.const 33920
   i32.const 33968
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  local.get $2
  i32.const 1
  call $~lib/builtins/__abort_impl
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
