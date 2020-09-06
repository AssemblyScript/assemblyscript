(module
 (type $none_=>_none (func))
 (import "env" "table" (table $0 2 funcref))
 (elem (i32.const 1) $start:exportimport-table~anonymous|0)
 (memory $0 1)
 (data (i32.const 1024) "\08\00\00\00\01\00\00\00\03\00\00\00\08\00\00\00\01")
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $~start)
 (func $start:exportimport-table~anonymous|0
  nop
 )
 (func $~start
  (local $0 i32)
  (local $1 i32)
  i32.const 1088
  memory.size
  local.tee $1
  i32.const 16
  i32.shl
  local.tee $0
  i32.gt_u
  if
   local.get $1
   i32.const 66623
   local.get $0
   i32.sub
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $0
   local.get $1
   local.get $0
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $0
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  i32.const 1056
  i32.const 16
  i32.store
  i32.const 1060
  i32.const 1
  i32.store
  i32.const 1064
  i32.const 3
  i32.store
  i32.const 1068
  i32.const 8
  i32.store
  i32.const 1072
  i32.const 1040
  i32.load
  i32.store
  i32.const 1076
  i32.const 0
  i32.store
 )
)
