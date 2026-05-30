(module
 (type $0 (func (param i32 i32 i32 i32)))
 (type $1 (func))
 (import "env" "abort" (func $~lib/builtins/__abort_impl (param i32 i32 i32 i32)))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 33852))
 (memory $0 1)
 (data $0 (i32.const 1036) ",")
 (data $0.1 (i32.const 1048) "\02\00\00\00\1c\00\00\00i\00s\00s\00u\00e\00s\00/\002\008\002\005\00.\00t\00s")
 (export "init" (func $issues/2825/init))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/builtins/abort (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1084
  i32.lt_s
  if
   i32.const 33872
   i32.const 33920
   i32.const 1
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
  local.get $3
  call $~lib/builtins/__abort_impl
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~start
  (local $0 i32)
  loop $for-loop|0
   local.get $0
   i32.const 10
   i32.lt_s
   if
    local.get $0
    i32.const 1234
    i32.eq
    if
     i32.const 0
     i32.const 1056
     i32.const 2
     i32.const 3
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $issues/2825/init
  loop $for-loop|0
   br $for-loop|0
  end
  unreachable
 )
)
