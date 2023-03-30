(module
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_none (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 33884))
 (memory $0 1)
 (data (i32.const 1036) ",")
 (data (i32.const 1048) "\02\00\00\00\1c\00\00\00i\00s\00s\00u\00e\00s\00/\001\007\001\004\00.\00t\00s")
 (data (i32.const 1084) "\1c")
 (data (i32.const 1096) "\02\00\00\00\06\00\00\00i\003\002")
 (export "memory" (memory $0))
 (start $~start)
 (func $~start
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 1116
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store $0 align=4
   local.get $0
   i32.const 1104
   i32.store $0
   local.get $0
   i32.const 1104
   i32.store $0 offset=4
   local.get $0
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1116
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store $0 align=4
   local.get $0
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 33904
  i32.const 33952
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
)
