(module
 (type $none_=>_none (func))
 (memory $0 0)
 (export "memory" (memory $0))
 (start $~start)
 (func $~start
  (local $0 i32)
  (local $1 i32)
  memory.size
  local.tee $1
  i32.const 16
  i32.shl
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $0
  i32.const 1068
  i32.lt_u
  if
   local.get $1
   i32.const 66603
   local.get $0
   i32.sub
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $0
   local.get $0
   local.get $1
   i32.lt_s
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
  i32.const 1036
  i32.const 28
  i32.store
  i32.const 1040
  i32.const 0
  i32.store
  i32.const 1044
  i32.const 0
  i32.store
  i32.const 1048
  i32.const 3
  i32.store
  i32.const 1052
  i32.const 8
  i32.store
  i32.const 1056
  i32.const 1
  i32.store
  i32.const 1060
  f32.const 2
  f32.store
  i32.const 1056
  i32.const 1056
  i32.load
  i32.const 1
  i32.add
  i32.store
  i32.const 1060
  f32.const 3
  f32.store
 )
)
