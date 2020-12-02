(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_f32_i32_i32_=>_i32 (func (param i32 f32 i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $f32_=>_f32 (func (param f32) (result f32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 2)
 (data (i32.const 1036) " \00\00\00\01\00\00\00\00\00\00\00\01\00\00\00 \00\00\00i\00n\00f\00e\00r\00-\00g\00e\00n\00e\00r\00i\00c\00.\00t\00s")
 (data (i32.const 1100) "\0c\00\00\00\01")
 (data (i32.const 1116) "\0c\00\00\00\00\00\80?\00\00\00@\00\00@@")
 (data (i32.const 1132) "\10\00\00\00\01\00\00\00\00\00\00\00\03\00\00\00\10\00\00\00`\04\00\00`\04\00\00\0c\00\00\00\03")
 (data (i32.const 1180) "\08\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00\01")
 (data (i32.const 1212) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00s\00t\00a\00c\00k\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 1260) "\14\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (table $0 2 funcref)
 (elem (i32.const 1) $start:infer-generic~anonymous|0)
 (global $~lib/rt/__stackptr (mut i32) (i32.const 1300))
 (export "memory" (memory $0))
 (export "test1" (func $infer-generic/test1))
 (export "test2" (func $infer-generic/test2))
 (export "test3" (func $infer-generic/test2))
 (export "test4" (func $infer-generic/test2))
 (start $~start)
 (func $start:infer-generic~anonymous|0 (param $0 i32) (param $1 f32) (param $2 i32) (param $3 i32) (result i32)
  i32.const 4
  call $~lib/rt/__stack_prepare
  local.tee $2
  local.get $3
  i32.store
  local.get $2
  global.set $~lib/rt/__stackptr
  local.get $1
  f32.const 0
  f32.ne
  i32.const 0
  local.get $0
  select
 )
 (func $infer-generic/test1 (param $0 f32) (result f32)
  local.get $0
 )
 (func $infer-generic/test2 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 4
  call $~lib/rt/__stack_prepare
  local.tee $1
  local.get $0
  i32.store
  i32.const 4
  call $~lib/rt/__stack_prepare
  local.tee $2
  local.get $0
  i32.store
  local.get $2
  global.set $~lib/rt/__stackptr
  local.get $1
  global.set $~lib/rt/__stackptr
  local.get $0
 )
 (func $~start
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 8
  call $~lib/rt/__stack_prepare
  local.tee $2
  i32.const 1152
  i32.store
  local.get $2
  i32.const 1200
  i32.store offset=4
  i32.const 1164
  i32.load
  local.set $3
  loop $for-loop|0
   local.get $0
   local.get $3
   i32.const 1164
   i32.load
   local.tee $4
   local.get $3
   local.get $4
   i32.lt_s
   select
   i32.lt_s
   if
    local.get $1
    i32.const 1156
    i32.load
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.get $0
    i32.const 1152
    i32.const 1200
    i32.load
    call_indirect (type $i32_f32_i32_i32_=>_i32)
    local.set $1
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $2
  global.set $~lib/rt/__stackptr
 )
 (func $~lib/rt/__stack_prepare (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  global.get $~lib/rt/__stackptr
  local.tee $1
  i32.add
  local.tee $0
  i32.const 66836
  i32.gt_u
  if
   i32.const 1232
   i32.const 1280
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
