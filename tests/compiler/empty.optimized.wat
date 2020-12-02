(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 2)
 (data (i32.const 1036) "\02\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00a")
 (data (i32.const 1068) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00s\00t\00a\00c\00k\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 1116) "\14\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (global $~lib/rt/__stackptr (mut i32) (i32.const 1156))
 (export "_start" (func $~start))
 (export "memory" (memory $0))
 (export "foo" (func $empty/foo))
 (func $empty/foo
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/rt/__stackptr
  local.tee $1
  i32.const 4
  i32.add
  local.tee $0
  i32.const 66692
  i32.gt_u
  if
   i32.const 1088
   i32.const 1136
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
  local.tee $0
  i32.const 1056
  i32.store
  local.get $0
  global.set $~lib/rt/__stackptr
 )
 (func $~start
  nop
 )
)
