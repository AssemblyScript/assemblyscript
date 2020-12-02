(module
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 2)
 (data (i32.const 1036) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00s\00t\00a\00c\00k\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 1084) "\14\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (global $~lib/rt/__stackptr (mut i32) (i32.const 1124))
 (export "memory" (memory $0))
 (export "test" (func $class-extends/test))
 (func $class-extends/test (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/rt/__stackptr
  local.tee $2
  i32.const 4
  i32.add
  local.tee $1
  i32.const 66660
  i32.gt_u
  if
   i32.const 1056
   i32.const 1104
   i32.const 118
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  global.set $~lib/rt/__stackptr
  loop $while-continue|0
   local.get $1
   i32.const 4
   i32.sub
   local.tee $1
   local.get $2
   i32.ge_u
   if
    local.get $1
    i32.const 0
    i32.store
    br $while-continue|0
   end
  end
  local.get $2
  local.tee $1
  local.get $0
  i32.store
  local.get $0
  i32.load
  drop
  local.get $0
  i32.load16_s offset=4
  drop
  local.get $0
  i32.const 2
  i32.store
  local.get $0
  i32.const 3
  i32.store16 offset=4
  local.get $1
  global.set $~lib/rt/__stackptr
 )
)
