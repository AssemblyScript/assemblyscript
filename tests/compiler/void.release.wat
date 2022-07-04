(module
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_none (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $void/foo (mut i32) (i32.const -1))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 17500))
 (memory $0 1)
 (data (i32.const 1036) "\1c")
 (data (i32.const 1048) "\03\00\00\00\08\00\00\00\01")
 (data (i32.const 1068) ",")
 (data (i32.const 1080) "\01\00\00\00\0e\00\00\00v\00o\00i\00d\00.\00t\00s")
 (table $0 2 2 funcref)
 (elem $0 (i32.const 1) $start:void~anonymous|0)
 (export "memory" (memory $0))
 (start $~start)
 (func $start:void~anonymous|0 (param $0 i32)
  local.get $0
  global.set $void/foo
 )
 (func $~start
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1116
  i32.lt_s
  if
   i32.const 17520
   i32.const 17568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 1056
  i32.store
  i32.const 1
  local.set $0
  loop $for-loop|0
   local.get $0
   i32.const 8
   i32.le_s
   if
    local.get $0
    i32.const 1056
    i32.load
    call_indirect $0 (type $i32_=>_none)
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  global.get $void/foo
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 22
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 9
  global.set $void/foo
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
