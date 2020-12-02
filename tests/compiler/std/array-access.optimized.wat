(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 2)
 (data (i32.const 1036) "$\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 1100) "\1a\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1148) "^\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data (i32.const 1280) "\01\00\00\00\00\00\00\00\01")
 (data (i32.const 1308) "\08\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\08\00\00\00n\00u\00l\00l")
 (data (i32.const 1340) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00s\00t\00a\00c\00k\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 1388) "\14\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (global $~lib/rt/__stackptr (mut i32) (i32.const 1428))
 (export "memory" (memory $0))
 (export "i32ArrayArrayElementAccess" (func $std/array-access/i32ArrayArrayElementAccess))
 (export "stringArrayPropertyAccess" (func $std/array-access/stringArrayPropertyAccess))
 (export "stringArrayMethodCall" (func $std/array-access/stringArrayMethodCall))
 (export "stringArrayArrayPropertyAccess" (func $std/array-access/stringArrayArrayPropertyAccess))
 (export "stringArrayArrayMethodCall" (func $std/array-access/stringArrayArrayMethodCall))
 (func $~lib/array/Array<~lib/array/Array<i32>>#__uget (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  i32.const 4
  call $~lib/rt/__stack_prepare
  local.tee $2
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.get $2
  global.set $~lib/rt/__stackptr
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  i32.const 4
  call $~lib/rt/__stack_prepare
  local.tee $2
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1056
   i32.const 1120
   i32.const 92
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/array/Array<i32>>#__uget
  local.tee $0
  i32.eqz
  if
   i32.const 1168
   i32.const 1120
   i32.const 96
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  global.set $~lib/rt/__stackptr
  local.get $0
 )
 (func $std/array-access/i32ArrayArrayElementAccess (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 4
  call $~lib/rt/__stack_prepare
  local.tee $1
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<i32>>#__get
  local.set $0
  i32.const 4
  call $~lib/rt/__stack_prepare
  local.tee $2
  local.get $0
  i32.store
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.le_u
  if
   i32.const 1056
   i32.const 1120
   i32.const 92
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/array/Array<~lib/array/Array<i32>>#__uget
  local.get $2
  global.set $~lib/rt/__stackptr
  local.get $1
  global.set $~lib/rt/__stackptr
 )
 (func $~lib/string/String#get:length (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 4
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
 )
 (func $std/array-access/stringArrayPropertyAccess (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 4
  call $~lib/rt/__stack_prepare
  local.tee $1
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<i32>>#__get
  call $~lib/string/String#get:length
  local.get $1
  global.set $~lib/rt/__stackptr
 )
 (func $~lib/util/string/compareImpl (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1296
  local.set $3
  i32.const 8
  call $~lib/rt/__stack_prepare
  local.tee $4
  local.get $0
  i32.store
  local.get $4
  i32.const 1296
  i32.store offset=4
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.tee $1
  i32.const 7
  i32.and
  i32.eqz
  i32.const 0
  local.get $2
  i32.const 4
  i32.ge_u
  select
  if
   loop $do-continue|0
    local.get $1
    i64.load
    local.get $3
    i64.load
    i64.eq
    if
     local.get $1
     i32.const 8
     i32.add
     local.set $1
     local.get $3
     i32.const 8
     i32.add
     local.set $3
     local.get $2
     i32.const 4
     i32.sub
     local.tee $2
     i32.const 4
     i32.ge_u
     br_if $do-continue|0
    end
   end
  end
  loop $while-continue|1
   local.get $2
   local.tee $0
   i32.const 1
   i32.sub
   local.set $2
   local.get $0
   if
    local.get $1
    i32.load16_u
    local.tee $0
    local.get $3
    i32.load16_u
    local.tee $5
    i32.ne
    if
     local.get $4
     global.set $~lib/rt/__stackptr
     local.get $0
     local.get $5
     i32.sub
     return
    end
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    local.get $3
    i32.const 2
    i32.add
    local.set $3
    br $while-continue|1
   end
  end
  local.get $4
  global.set $~lib/rt/__stackptr
  i32.const 0
 )
 (func $~lib/string/String#startsWith (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 8
  call $~lib/rt/__stack_prepare
  local.tee $2
  local.get $0
  i32.store
  local.get $2
  i32.const 1296
  i32.store offset=4
  local.get $0
  call $~lib/string/String#get:length
  local.tee $1
  i32.const 0
  local.get $1
  local.get $1
  i32.const 0
  i32.gt_s
  select
  local.tee $1
  i32.const 1296
  call $~lib/string/String#get:length
  local.tee $3
  i32.add
  i32.lt_s
  if
   local.get $2
   global.set $~lib/rt/__stackptr
   i32.const 0
   return
  end
  local.get $0
  local.get $1
  local.get $3
  call $~lib/util/string/compareImpl
  i32.eqz
  local.get $2
  global.set $~lib/rt/__stackptr
 )
 (func $std/array-access/stringArrayMethodCall (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 4
  call $~lib/rt/__stack_prepare
  local.tee $1
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<i32>>#__get
  call $~lib/string/String#startsWith
  local.get $1
  global.set $~lib/rt/__stackptr
 )
 (func $std/array-access/stringArrayArrayPropertyAccess (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 4
  call $~lib/rt/__stack_prepare
  local.tee $1
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<i32>>#__get
  i32.const 1
  call $~lib/array/Array<~lib/array/Array<i32>>#__get
  call $~lib/string/String#get:length
  local.get $1
  global.set $~lib/rt/__stackptr
 )
 (func $std/array-access/stringArrayArrayMethodCall (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 4
  call $~lib/rt/__stack_prepare
  local.tee $1
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<i32>>#__get
  i32.const 1
  call $~lib/array/Array<~lib/array/Array<i32>>#__get
  call $~lib/string/String#startsWith
  local.get $1
  global.set $~lib/rt/__stackptr
 )
 (func $~lib/rt/__stack_prepare (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  global.get $~lib/rt/__stackptr
  local.tee $1
  i32.add
  local.tee $0
  i32.const 66964
  i32.gt_u
  if
   i32.const 1360
   i32.const 1408
   i32.const 118
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  global.set $~lib/rt/__stackptr
  loop $while-continue|0
   local.get $0
   i32.const 4
   i32.sub
   local.tee $0
   local.get $1
   i32.ge_u
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
