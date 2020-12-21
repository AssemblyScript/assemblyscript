(module
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (memory $0 1)
 (data (i32.const 1036) "\1c\00\00\00\01\00\00\00\00\00\00\00\01")
 (data (i32.const 1068) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00a")
 (data (i32.const 1100) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00a\00b")
 (data (i32.const 1132) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00a\00b\00c")
 (data (i32.const 1164) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\08\00\00\00a\00b\00c\00d")
 (data (i32.const 1196) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\n\00\00\00a\00b\00c\00d\00e")
 (data (i32.const 1228) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\0c\00\00\00a\00b\00c\00d\00e\00f")
 (data (i32.const 1260) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\0e\00\00\00a\00b\00c\00d\00e\00f\00g")
 (data (i32.const 1308) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\10\00\00\00a\00b\00c\00d\00e\00f\00g\00h")
 (data (i32.const 1356) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\12\00\00\00a\00b\00c\00d\00e\00f\00g\00h\00i")
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/util/hash/hashStr (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.shl
  local.tee $2
  i32.const 32
  i32.ge_s
  if (result i64)
   i64.const 6983438078262162902
   local.set $4
   i64.const -4417276706812531889
   local.set $5
   i64.const 7046029288634856825
   local.set $6
   local.get $2
   local.tee $3
   i32.const 32
   i32.sub
   local.set $9
   loop $while-continue|0
    local.get $7
    local.get $9
    i32.le_s
    if
     local.get $4
     local.get $0
     local.get $7
     i32.add
     local.tee $2
     i64.load
     i64.const -4417276706812531889
     i64.mul
     i64.add
     i64.const 31
     i64.rotl
     i64.const -7046029288634856825
     i64.mul
     local.set $4
     local.get $5
     local.get $2
     i64.load offset=8
     i64.const -4417276706812531889
     i64.mul
     i64.add
     i64.const 31
     i64.rotl
     i64.const -7046029288634856825
     i64.mul
     local.set $5
     local.get $8
     local.get $2
     i64.load offset=16
     i64.const -4417276706812531889
     i64.mul
     i64.add
     i64.const 31
     i64.rotl
     i64.const -7046029288634856825
     i64.mul
     local.set $8
     local.get $6
     local.get $2
     i64.load offset=24
     i64.const -4417276706812531889
     i64.mul
     i64.add
     i64.const 31
     i64.rotl
     i64.const -7046029288634856825
     i64.mul
     local.set $6
     local.get $7
     i32.const 32
     i32.add
     local.set $7
     br $while-continue|0
    end
   end
   local.get $9
   local.get $7
   i32.sub
   local.set $2
   local.get $3
   i64.extend_i32_s
   local.get $4
   i64.const 1
   i64.rotl
   local.get $5
   i64.const 7
   i64.rotl
   i64.add
   local.get $8
   i64.const 12
   i64.rotl
   i64.add
   local.get $6
   i64.const 18
   i64.rotl
   i64.add
   local.get $4
   i64.const -4417276706812531889
   i64.mul
   i64.const 31
   i64.rotl
   i64.const -7046029288634856825
   i64.mul
   i64.xor
   i64.const -7046029288634856825
   i64.mul
   i64.const -8796714831421723037
   i64.add
   local.get $5
   i64.const -4417276706812531889
   i64.mul
   i64.const 31
   i64.rotl
   i64.const -7046029288634856825
   i64.mul
   i64.xor
   i64.const -7046029288634856825
   i64.mul
   i64.const -8796714831421723037
   i64.add
   local.get $8
   i64.const -4417276706812531889
   i64.mul
   i64.const 31
   i64.rotl
   i64.const -7046029288634856825
   i64.mul
   i64.xor
   i64.const -7046029288634856825
   i64.mul
   i64.const -8796714831421723037
   i64.add
   local.get $6
   i64.const -4417276706812531889
   i64.mul
   i64.const 31
   i64.rotl
   i64.const -7046029288634856825
   i64.mul
   i64.xor
   i64.const -7046029288634856825
   i64.mul
   i64.const -8796714831421723037
   i64.add
   i64.add
  else
   local.get $2
   i64.extend_i32_s
   i64.const 2870177450012600261
   i64.add
  end
  local.set $4
  local.get $2
  i32.const 8
  i32.sub
  local.set $2
  loop $while-continue|1
   local.get $1
   local.get $2
   i32.le_s
   if
    local.get $4
    local.get $0
    local.get $1
    i32.add
    i64.load
    i64.const -4417276706812531889
    i64.mul
    i64.const 31
    i64.rotl
    i64.const -7046029288634856825
    i64.mul
    i64.xor
    i64.const 27
    i64.rotl
    i64.const -7046029288634856825
    i64.mul
    i64.const -8796714831421723037
    i64.add
    local.set $4
    local.get $1
    i32.const 8
    i32.add
    local.set $1
    br $while-continue|1
   end
  end
  local.get $2
  local.get $1
  i32.const 4
  i32.add
  i32.ge_s
  if
   local.get $4
   local.get $0
   local.get $1
   i32.add
   i64.load32_u
   i64.const -7046029288634856825
   i64.mul
   i64.xor
   i64.const 23
   i64.rotl
   i64.const -4417276706812531889
   i64.mul
   i64.const 1609587929392839161
   i64.add
   local.set $4
   local.get $1
   i32.const 4
   i32.add
   local.set $1
  end
  loop $while-continue|2
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $4
    local.get $0
    local.get $1
    i32.add
    i64.load8_u
    i64.const 2870177450012600261
    i64.mul
    i64.add
    i64.const 11
    i64.rotl
    i64.const -7046029288634856825
    i64.mul
    local.set $4
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $while-continue|2
   end
  end
 )
 (func $~start
  (local $0 i64)
  i32.const 0
  call $~lib/util/hash/hashStr
  i32.const 1056
  call $~lib/util/hash/hashStr
  i32.const 1088
  call $~lib/util/hash/hashStr
  i32.const 1120
  call $~lib/util/hash/hashStr
  i32.const 1152
  call $~lib/util/hash/hashStr
  i32.const 1184
  call $~lib/util/hash/hashStr
  i32.const 1216
  call $~lib/util/hash/hashStr
  i32.const 1248
  call $~lib/util/hash/hashStr
  i32.const 1280
  call $~lib/util/hash/hashStr
  i32.const 1328
  call $~lib/util/hash/hashStr
  i32.const 1376
  call $~lib/util/hash/hashStr
 )
)
