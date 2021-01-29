(module
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1036) "\1c")
 (data (i32.const 1048) "\01")
 (data (i32.const 1068) "\1c")
 (data (i32.const 1080) "\01\00\00\00\02\00\00\00a")
 (data (i32.const 1100) "\1c")
 (data (i32.const 1112) "\01\00\00\00\04\00\00\00a\00b")
 (data (i32.const 1132) "\1c")
 (data (i32.const 1144) "\01\00\00\00\06\00\00\00a\00b\00c")
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 17548))
 (export "memory" (memory $0))
 (start $~start)
 (func $~start
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  call $~lib/util/hash/hashStr
  global.get $~lib/memory/__stack_pointer
  i32.const 1056
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1056
  i32.store
  i32.const 1056
  call $~lib/util/hash/hashStr
  global.get $~lib/memory/__stack_pointer
  i32.const 1088
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1088
  i32.store
  i32.const 1088
  call $~lib/util/hash/hashStr
  global.get $~lib/memory/__stack_pointer
  i32.const 1120
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1120
  i32.store
  i32.const 1120
  call $~lib/util/hash/hashStr
  global.get $~lib/memory/__stack_pointer
  i32.const 1152
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1152
  i32.store
  i32.const 1152
  call $~lib/util/hash/hashStr
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 1164
  i32.lt_s
  if
   i32.const 17568
   i32.const 17616
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/util/hash/hashStr (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const -2128831035
  local.set $2
  local.get $0
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.const 1
   i32.shl
   local.set $3
   loop $for-loop|0
    local.get $1
    local.get $3
    i32.lt_u
    if
     local.get $2
     local.get $0
     local.get $1
     i32.add
     i32.load8_u
     i32.xor
     i32.const 16777619
     i32.mul
     local.set $2
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
