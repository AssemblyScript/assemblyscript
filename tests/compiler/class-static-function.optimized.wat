(module
 (type $none_=>_i32 (func (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 2)
 (data (i32.const 1036) "\08\00\00\00\01\00\00\00\00\00\00\00\03\00\00\00\08\00\00\00\01")
 (data (i32.const 1068) "0\00\00\00\01\00\00\00\00\00\00\00\01\00\00\000\00\00\00c\00l\00a\00s\00s\00-\00s\00t\00a\00t\00i\00c\00-\00f\00u\00n\00c\00t\00i\00o\00n\00.\00t\00s")
 (data (i32.const 1148) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00s\00t\00a\00c\00k\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 1196) "\14\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (table $0 2 funcref)
 (elem (i32.const 1) $class-static-function/Example.staticFunc)
 (global $~lib/rt/__stackptr (mut i32) (i32.const 1236))
 (export "memory" (memory $0))
 (start $~start)
 (func $class-static-function/Example.staticFunc (result i32)
  i32.const 42
 )
 (func $~start
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/rt/__stackptr
  local.tee $1
  i32.const 4
  i32.add
  local.tee $0
  i32.const 66772
  i32.gt_u
  if
   i32.const 1168
   i32.const 1216
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
  i32.const 1056
  i32.store
  i32.const 1056
  i32.load
  call_indirect (type $none_=>_i32)
  local.get $1
  global.set $~lib/rt/__stackptr
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 11
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
)
