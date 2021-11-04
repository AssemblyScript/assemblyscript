(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_none (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 17708))
 (memory $0 1)
 (data (i32.const 1036) "\1c")
 (data (i32.const 1048) "\01\00\00\00\06\00\00\00u\003\002")
 (data (i32.const 1068) ",")
 (data (i32.const 1080) "\01\00\00\00\1c\00\00\00N\00o\00n\00N\00u\00l\00l\00a\00b\00l\00e\00.\00t\00s")
 (data (i32.const 1116) "\1c")
 (data (i32.const 1128) "\01\00\00\00\0c\00\00\00S\00t\00r\00i\00n\00g")
 (data (i32.const 1148) "L")
 (data (i32.const 1160) "\01\00\00\002\00\00\00A\00r\00r\00a\00y\00<\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00/\00S\00t\00r\00i\00n\00g\00>")
 (data (i32.const 1228) "\1c")
 (data (i32.const 1240) "\01\00\00\00\02\00\00\00z")
 (data (i32.const 1260) "<")
 (data (i32.const 1272) "\01\00\00\00\1e\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l")
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
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
  local.tee $3
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
  local.get $0
  local.tee $2
  i32.const 7
  i32.and
  local.get $1
  i32.const 7
  i32.and
  i32.or
  i32.eqz
  local.get $3
  local.tee $0
  i32.const 4
  i32.ge_u
  i32.and
  if
   loop $do-loop|0
    local.get $2
    i64.load
    local.get $1
    i64.load
    i64.eq
    if
     local.get $2
     i32.const 8
     i32.add
     local.set $2
     local.get $1
     i32.const 8
     i32.add
     local.set $1
     local.get $0
     i32.const 4
     i32.sub
     local.tee $0
     i32.const 4
     i32.ge_u
     br_if $do-loop|0
    end
   end
  end
  block $__inlined_func$~lib/util/string/compareImpl
   loop $while-continue|1
    local.get $0
    local.tee $3
    i32.const 1
    i32.sub
    local.set $0
    local.get $3
    if
     local.get $2
     i32.load16_u
     local.tee $5
     local.get $1
     i32.load16_u
     local.tee $4
     i32.sub
     local.set $3
     local.get $4
     local.get $5
     i32.ne
     br_if $__inlined_func$~lib/util/string/compareImpl
     local.get $2
     i32.const 2
     i32.add
     local.set $2
     local.get $1
     i32.const 2
     i32.add
     local.set $1
     br $while-continue|1
    end
   end
   i32.const 0
   local.set $3
  end
  local.get $3
  i32.eqz
 )
 (func $~start
  (local $0 i32)
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   block $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 1324
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    i64.const 0
    i64.store
    local.get $0
    i32.const 0
    i32.store offset=8
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
    local.tee $0
    i32.const 1248
    i32.store offset=8
    local.get $0
    i32.const 1248
    i32.store
    i32.const 1248
    i32.const 0
    call $~lib/string/String.__eq
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    i32.const 1248
    i32.store
    local.get $0
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 1324
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.store
    i32.const 1248
    i32.const 0
    call $~lib/string/String.__eq
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 1248
     i32.store
     i32.const 1248
     i32.const 0
     call $~lib/string/String.__eq
     br_if $folding-inner1
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
    return
   end
   i32.const 17728
   i32.const 17776
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 1088
  i32.const 9
  i32.const 3
  call $~lib/builtins/abort
  unreachable
 )
)
