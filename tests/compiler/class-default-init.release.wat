(module
 (type $0 (func))
 (memory $0 1)
 (data $0 (i32.const 1036) "<")
 (data $0.1 (i32.const 1048) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data $1 (i32.const 1100) "<")
 (data $1.1 (i32.const 1112) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s")
 (data $2 (i32.const 1164) "\1c")
 (data $2.1 (i32.const 1176) "\02")
 (export "memory" (memory $0))
 (start $~start)
 (func $~start
  (local $0 i32)
  (local $1 i32)
  memory.size
  local.tee $0
  i32.const 16
  i32.shl
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $1
  i32.const 1228
  i32.lt_u
  if
   local.get $0
   i32.const 66763
   local.get $1
   i32.sub
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $1
   local.get $0
   local.get $1
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $1
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  i32.const 1196
  i32.const 28
  i32.store
  i32.const 1200
  i32.const 0
  i32.store
  i32.const 1204
  i32.const 0
  i32.store
  i32.const 1208
  i32.const 4
  i32.store
  i32.const 1212
  i32.const 4
  i32.store
  i32.const 1216
  i32.const 0
  i32.store
 )
)
