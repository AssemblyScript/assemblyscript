(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_none (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 17612))
 (memory $0 1)
 (data (i32.const 1036) "\1c")
 (data (i32.const 1048) "\01\00\00\00\06\00\00\00u\003\002")
 (data (i32.const 1068) ",")
 (data (i32.const 1080) "\01\00\00\00\1c\00\00\00N\00o\00n\00N\00u\00l\00l\00a\00b\00l\00e\00.\00t\00s")
 (data (i32.const 1116) "\1c")
 (data (i32.const 1128) "\01\00\00\00\0c\00\00\00S\00t\00r\00i\00n\00g")
 (data (i32.const 1148) "L")
 (data (i32.const 1160) "\01\00\00\002\00\00\00A\00r\00r\00a\00y\00<\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00/\00S\00t\00r\00i\00n\00g\00>")
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   return
  end
  local.get $1
  i32.const 0
  local.get $0
  select
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.tee $4
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.ne
  if
   i32.const 0
   return
  end
  block $__inlined_func$~lib/util/string/compareImpl (result i32)
   local.get $0
   local.set $2
   local.get $1
   local.set $3
   local.get $2
   i32.const 7
   i32.and
   local.get $3
   i32.const 7
   i32.and
   i32.or
   i32.const 1
   local.get $4
   local.tee $0
   i32.const 4
   i32.ge_u
   select
   i32.eqz
   if
    loop $do-continue|0
     local.get $2
     i64.load
     local.get $3
     i64.load
     i64.eq
     if
      local.get $2
      i32.const 8
      i32.add
      local.set $2
      local.get $3
      i32.const 8
      i32.add
      local.set $3
      local.get $0
      i32.const 4
      i32.sub
      local.tee $0
      i32.const 4
      i32.ge_u
      br_if $do-continue|0
     end
    end
   end
   loop $while-continue|1
    local.get $0
    local.tee $1
    i32.const 1
    i32.sub
    local.set $0
    local.get $1
    if
     local.get $2
     i32.load16_u
     local.tee $1
     local.get $3
     i32.load16_u
     local.tee $4
     i32.ne
     if
      local.get $1
      local.get $4
      i32.sub
      br $__inlined_func$~lib/util/string/compareImpl
     end
     local.get $2
     i32.const 2
     i32.add
     local.set $2
     local.get $3
     i32.const 2
     i32.add
     local.set $3
     br $while-continue|1
    end
   end
   i32.const 0
  end
  i32.eqz
 )
 (func $~start
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1228
  i32.lt_s
  if
   i32.const 17632
   i32.const 17680
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i64.const 0
  i64.store
  local.get $0
  i32.const 1056
  i32.store
  local.get $0
  i32.const 1056
  i32.store offset=4
  i32.const 1056
  i32.const 1056
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 3
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 1136
  i32.store
  local.get $0
  i32.const 1136
  i32.store offset=4
  i32.const 1136
  i32.const 1136
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 4
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 1168
  i32.store
  local.get $0
  i32.const 1168
  i32.store offset=4
  i32.const 1168
  i32.const 1168
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 5
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
