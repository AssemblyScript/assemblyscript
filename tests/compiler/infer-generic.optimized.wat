(module
 (type $i32_f32_i32_i32_=>_i32 (func (param i32 f32 i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $f32_=>_f32 (func (param f32) (result f32)))
 (memory $0 1)
 (data (i32.const 1024) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00i\00n\00f\00e\00r\00-\00g\00e\00n\00e\00r\00i\00c\00.\00t\00s")
 (data (i32.const 1072) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\00\00\80?\00\00\00@\00\00@@")
 (data (i32.const 1104) "\10\00\00\00\01\00\00\00\03\00\00\00\10\00\00\00@\04\00\00@\04\00\00\0c\00\00\00\03")
 (data (i32.const 1136) "\08\00\00\00\01\00\00\00\04\00\00\00\08\00\00\00\01")
 (table $0 2 funcref)
 (elem (i32.const 1) $start:infer-generic~anonymous|0)
 (export "memory" (memory $0))
 (export "test1" (func $infer-generic/test1))
 (export "test2" (func $infer-generic/test2))
 (export "test3" (func $infer-generic/test2))
 (export "test4" (func $infer-generic/test2))
 (start $~start)
 (func $start:infer-generic~anonymous|0 (param $0 i32) (param $1 f32) (param $2 i32) (param $3 i32) (result i32)
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
  local.get $0
 )
 (func $~start
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 1200
  memory.size
  local.tee $2
  i32.const 16
  i32.shl
  local.tee $0
  i32.gt_u
  if
   local.get $2
   i32.const 66735
   local.get $0
   i32.sub
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $0
   local.get $2
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
  i32.const 1168
  i32.const 16
  i32.store
  i32.const 1172
  i32.const 1
  i32.store
  i32.const 1176
  i32.const 4
  i32.store
  i32.const 1180
  i32.const 8
  i32.store
  i32.const 1184
  i32.const 1152
  i32.load
  i32.store
  i32.const 1188
  i32.const 0
  i32.store
  i32.const 1132
  i32.load
  local.set $1
  loop $for-loop|0
   local.get $1
   i32.const 1132
   i32.load
   local.tee $2
   i32.lt_s
   local.set $0
   local.get $3
   local.get $1
   local.get $2
   local.get $0
   select
   i32.lt_s
   if
    local.get $4
    i32.const 1124
    i32.load
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.get $3
    i32.const 1120
    i32.const 1184
    i32.load
    call_indirect (type $i32_f32_i32_i32_=>_i32)
    local.set $4
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
 )
)
