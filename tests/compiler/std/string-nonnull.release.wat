(module
 (type $none_=>_i32 (func (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 33836))
 (memory $0 1)
 (data (i32.const 1036) "\1c")
 (data (i32.const 1048) "\02")
 (export "memory" (memory $0))
 (start $~start)
 (func $~start
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 1068
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store $0
   local.get $0
   i32.const 1056
   i32.store $0
   local.get $0
   i32.const 1056
   i32.store $0 offset=4
   call $~lib/string/String.__ne
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 1056
    i32.store $0 offset=4
    i32.const 1052
    i32.load $0
    drop
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 1056
   i32.store $0 offset=4
   call $~lib/string/String.__ne
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 1056
    i32.store $0 offset=4
    i32.const 1052
    i32.load $0
    drop
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 1056
   i32.store $0 offset=4
   i32.const 1052
   i32.load $0
   drop
   local.get $0
   i32.const 1056
   i32.store $0 offset=4
   call $~lib/string/String.__eq
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 1056
    i32.store $0 offset=4
    i32.const 1052
    i32.load $0
    drop
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 1056
   i32.store $0 offset=4
   call $~lib/string/String.__eq
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 1056
    i32.store $0 offset=4
    i32.const 1052
    i32.load $0
    drop
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 1056
   i32.store $0 offset=4
   local.get $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1068
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store $0
   local.get $0
   i32.const 1056
   i32.store $0
   i32.const 1052
   i32.load $0
   i32.const 1
   i32.shr_u
   i32.eqz
   local.set $1
   local.get $0
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 1056
    i32.store $0 offset=4
    i32.const 1052
    i32.load $0
    drop
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 33856
  i32.const 33904
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/string/String.__eq (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
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
  local.tee $0
  i64.const 0
  i64.store $0
  local.get $0
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $~lib/string/String.__ne (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
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
  local.tee $0
  i64.const 0
  i64.store $0
  local.get $0
  i32.const 1056
  i32.store $0
  local.get $0
  i32.const 0
  i32.store $0 offset=4
  call $~lib/string/String.__eq
  i32.eqz
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
)
