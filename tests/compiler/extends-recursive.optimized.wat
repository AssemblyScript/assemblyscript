(module
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1052) "\1e\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00c\00m\00s\00.\00t\00s")
 (data (i32.const 1132) "\1e\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 1196) "(\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (global $~lib/rt/tcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/iter (mut i32) (i32.const 0))
 (global $extends-recursive/Child i32 (i32.const 3))
 (export "memory" (memory $0))
 (export "Child" (global $extends-recursive/Child))
 (export "Child#get:child" (func $extends-recursive/Parent#get:child))
 (export "Child#set:child" (func $extends-recursive/Parent#set:child))
 (func $~lib/rt/tcms/Object#set:next (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tcms/Object#makeGray (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  global.get $~lib/rt/tcms/iter
  i32.eq
  if
   local.get $0
   i32.load offset=8
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1072
    i32.const 130
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   global.set $~lib/rt/tcms/iter
  end
  local.get $0
  i32.load offset=8
  local.set $1
  block $__inlined_func$~lib/rt/tcms/Object#unlink
   local.get $0
   i32.load offset=4
   i32.const -4
   i32.and
   local.tee $2
   i32.eqz
   if
    local.get $1
    if
     i32.const 0
     i32.const 1072
     i32.const 120
     i32.const 7
     call $~lib/builtins/abort
     unreachable
    end
    br $__inlined_func$~lib/rt/tcms/Object#unlink
   end
   local.get $1
   i32.eqz
   if
    i32.const 0
    i32.const 1072
    i32.const 123
    i32.const 17
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $1
   i32.store offset=8
   local.get $1
   local.get $2
   call $~lib/rt/tcms/Object#set:next
  end
  local.get $0
  i32.const 1024
  i32.ne
  i32.const 0
  local.get $0
  i32.const 1104
  i32.ne
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1072
   i32.const 142
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1112
  i32.load
  local.set $1
  local.get $0
  i32.const 1104
  call $~lib/rt/tcms/Object#set:next
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 1072
   i32.const 145
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 1072
   i32.const 146
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  call $~lib/rt/tcms/Object#set:next
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 1072
   i32.const 147
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1112
  local.get $0
  i32.store
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const -4
  i32.and
  i32.const 2
  i32.or
  i32.store offset=4
 )
 (func $extends-recursive/Parent#set:child (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $1
  if
   global.get $~lib/rt/tcms/state
   i32.eqz
   if
    i32.const 1028
    i32.const 1024
    i32.store
    i32.const 1032
    i32.const 1024
    i32.store
    i32.const 1108
    i32.const 1104
    i32.store
    i32.const 1112
    i32.const 1104
    i32.store
    i32.const 1104
    global.set $~lib/rt/tcms/iter
    i32.const 1
    global.set $~lib/rt/tcms/state
   end
   local.get $0
   i32.eqz
   if
    i32.const 0
    i32.const 1072
    i32.const 294
    i32.const 14
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=4
   i32.const 3
   i32.and
   i32.const 1
   i32.eq
   if
    local.get $1
    i32.const 20
    i32.sub
    local.tee $0
    i32.load offset=4
    i32.const 3
    i32.and
    i32.eqz
    if
     local.get $0
     call $~lib/rt/tcms/Object#makeGray
    end
   end
  end
 )
 (func $extends-recursive/Parent#get:child (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
)
