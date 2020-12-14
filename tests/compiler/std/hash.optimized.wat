(module
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (memory $0 1)
 (data (i32.const 1040) "\01\00\00\00\00\00\00\00\01")
 (data (i32.const 1068) "\02\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00a")
 (data (i32.const 1100) "\04\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00a\00b")
 (data (i32.const 1132) "\06\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00a\00b\00c")
 (data (i32.const 1164) "\08\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\08\00\00\00a\00b\00c\00d")
 (data (i32.const 1196) "\n\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\n\00\00\00a\00b\00c\00d\00e")
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/util/hash/hash<~lib/string/String|null> (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  i32.const -2128831035
  local.set $2
  local.get $0
  if
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.const 1
   i32.shl
   local.set $1
   loop $while-continue|0
    local.get $1
    i32.const 8
    i32.ge_s
    if
     local.get $2
     local.get $0
     local.get $3
     i32.add
     i64.load
     local.tee $4
     i32.wrap_i64
     local.tee $2
     i32.const 255
     i32.and
     i32.xor
     i32.const 16777619
     i32.mul
     local.get $2
     i32.const 8
     i32.shr_u
     i32.const 255
     i32.and
     i32.xor
     i32.const 16777619
     i32.mul
     local.get $2
     i32.const 16
     i32.shr_u
     i32.const 255
     i32.and
     i32.xor
     i32.const 16777619
     i32.mul
     local.get $2
     i32.const 24
     i32.shr_u
     i32.xor
     i32.const 16777619
     i32.mul
     local.get $4
     i64.const 32
     i64.shr_u
     i32.wrap_i64
     local.tee $2
     i32.const 255
     i32.and
     i32.xor
     i32.const 16777619
     i32.mul
     local.get $2
     i32.const 8
     i32.shr_u
     i32.const 255
     i32.and
     i32.xor
     i32.const 16777619
     i32.mul
     local.get $2
     i32.const 16
     i32.shr_u
     i32.const 255
     i32.and
     i32.xor
     i32.const 16777619
     i32.mul
     local.get $2
     i32.const 24
     i32.shr_u
     i32.xor
     i32.const 16777619
     i32.mul
     local.set $2
     local.get $3
     i32.const 8
     i32.add
     local.set $3
     local.get $1
     i32.const 8
     i32.sub
     local.set $1
     br $while-continue|0
    end
   end
   local.get $1
   i32.const 4
   i32.ge_s
   if (result i32)
    local.get $2
    local.get $0
    local.get $3
    i32.add
    i32.load
    local.tee $2
    i32.const 255
    i32.and
    i32.xor
    i32.const 16777619
    i32.mul
    local.get $2
    i32.const 8
    i32.shr_u
    i32.const 255
    i32.and
    i32.xor
    i32.const 16777619
    i32.mul
    local.get $2
    i32.const 16
    i32.shr_u
    i32.const 255
    i32.and
    i32.xor
    i32.const 16777619
    i32.mul
    local.get $2
    i32.const 24
    i32.shr_u
    i32.xor
    i32.const 16777619
    i32.mul
    local.set $2
    local.get $3
    i32.const 4
    i32.add
    local.set $3
    local.get $1
    i32.const 4
    i32.sub
   else
    local.get $1
   end
   i32.const 2
   i32.ge_s
   if (result i32)
    local.get $2
    local.get $0
    local.get $3
    i32.add
    i32.load16_u
    local.tee $0
    i32.const 255
    i32.and
    i32.xor
    i32.const 16777619
    i32.mul
    local.get $0
    i32.const 8
    i32.shr_u
    i32.xor
    i32.const 16777619
    i32.mul
   else
    local.get $2
   end
   drop
  end
 )
 (func $~start
  i32.const 0
  call $~lib/util/hash/hash<~lib/string/String|null>
  i32.const 1056
  call $~lib/util/hash/hash<~lib/string/String|null>
  i32.const 1088
  call $~lib/util/hash/hash<~lib/string/String|null>
  i32.const 1120
  call $~lib/util/hash/hash<~lib/string/String|null>
  i32.const 1152
  call $~lib/util/hash/hash<~lib/string/String|null>
  i32.const 1184
  call $~lib/util/hash/hash<~lib/string/String|null>
  i32.const 1216
  call $~lib/util/hash/hash<~lib/string/String|null>
 )
)
