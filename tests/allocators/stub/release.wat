(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 1036) "<")
 (data (i32.const 1048) "\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1100) "<")
 (data (i32.const 1112) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s")
 (export "heap_alloc" (func $assembly/index/heap_alloc))
 (export "heap_free" (func $assembly/index/heap_free))
 (export "heap_reset" (func $assembly/index/heap_reset))
 (export "memory_fill" (func $assembly/index/memory_fill))
 (export "memory" (memory $0))
 (start $~start)
 (func $assembly/index/heap_alloc (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1056
   i32.const 1120
   i32.const 33
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/stub/offset
  local.tee $1
  i32.const 4
  i32.add
  local.tee $2
  local.get $0
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.tee $0
  i32.add
  local.tee $3
  memory.size
  local.tee $4
  i32.const 16
  i32.shl
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $5
  i32.gt_u
  if
   local.get $4
   local.get $3
   local.get $5
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $5
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $3
  global.set $~lib/rt/stub/offset
  local.get $1
  local.get $0
  i32.store
  local.get $2
 )
 (func $assembly/index/heap_free (param $0 i32)
  global.get $~lib/rt/stub/offset
  local.get $0
  local.get $0
  i32.const 4
  i32.sub
  local.tee $0
  i32.load
  i32.add
  i32.eq
  if
   local.get $0
   global.set $~lib/rt/stub/offset
  end
 )
 (func $assembly/index/heap_reset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
 )
 (func $assembly/index/memory_fill (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  local.get $1
  local.get $2
  memory.fill
 )
 (func $~start
  i32.const 1164
  global.set $~lib/rt/stub/startOffset
  i32.const 1164
  global.set $~lib/rt/stub/offset
 )
)
