(module
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 2)
 (data (i32.const 1040) "\01\00\00\00\00\00\00\00\01")
 (data (i32.const 1068) "\02\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00a")
 (data (i32.const 1100) "\04\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00a\00b")
 (data (i32.const 1132) "\06\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00a\00b\00c")
 (data (i32.const 1164) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00s\00t\00a\00c\00k\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 1212) "\14\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (global $~lib/rt/__stackptr (mut i32) (i32.const 1252))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/util/hash/hashStr (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const -2128831035
  local.set $3
  call $~lib/rt/__stack_prepare
  local.tee $4
  local.get $0
  i32.store
  local.get $0
  if
   call $~lib/rt/__stack_prepare
   local.tee $1
   local.get $0
   i32.store
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   local.get $1
   global.set $~lib/rt/__stackptr
   i32.const 1
   i32.shl
   local.set $1
   loop $for-loop|0
    local.get $1
    local.get $2
    i32.gt_u
    if
     local.get $3
     local.get $0
     local.get $2
     i32.add
     i32.load8_u
     i32.xor
     i32.const 16777619
     i32.mul
     local.set $3
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
  end
  local.get $4
  global.set $~lib/rt/__stackptr
 )
 (func $~start
  (local $0 i32)
  call $~lib/rt/__stack_prepare
  local.tee $0
  i32.const 0
  i32.store
  i32.const 0
  call $~lib/util/hash/hashStr
  local.get $0
  i32.const 1056
  i32.store offset=4
  i32.const 1056
  call $~lib/util/hash/hashStr
  local.get $0
  i32.const 1088
  i32.store offset=4
  i32.const 1088
  call $~lib/util/hash/hashStr
  local.get $0
  i32.const 1120
  i32.store offset=4
  i32.const 1120
  call $~lib/util/hash/hashStr
  local.get $0
  i32.const 1152
  i32.store offset=4
  i32.const 1152
  call $~lib/util/hash/hashStr
  local.get $0
  global.set $~lib/rt/__stackptr
 )
 (func $~lib/rt/__stack_prepare (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/rt/__stackptr
  local.tee $1
  i32.const 4
  i32.add
  local.tee $0
  i32.const 66788
  i32.gt_u
  if
   i32.const 1184
   i32.const 1232
   i32.const 118
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  global.set $~lib/rt/__stackptr
  loop $while-continue|0
   local.get $1
   local.get $0
   i32.const 4
   i32.sub
   local.tee $0
   i32.le_u
   if
    local.get $0
    i32.const 0
    i32.store
    br $while-continue|0
   end
  end
  local.get $1
 )
)
