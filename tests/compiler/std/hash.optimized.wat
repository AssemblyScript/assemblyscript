(module
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (memory $0 1)
 (data (i32.const 1040) "\01\00\00\00\00\00\00\00\01")
 (data (i32.const 1068) "\02\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00a")
 (data (i32.const 1100) "\04\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00a\00b")
 (data (i32.const 1132) "\06\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00a\00b\00c")
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/util/hash/hashStr (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
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
  local.tee $3
  i32.const 16
  i32.ge_s
  if (result i32)
   i32.const 606290984
   local.set $1
   i32.const -2048144777
   local.set $6
   i32.const 1640531535
   local.set $7
   local.get $3
   i32.const 16
   i32.sub
   local.set $3
   loop $while-continue|0
    local.get $3
    local.get $5
    i32.ge_s
    if
     local.get $1
     local.get $0
     local.get $5
     i32.add
     local.tee $8
     i32.load
     i32.const -2048144777
     i32.mul
     i32.add
     i32.const 13
     i32.rotl
     i32.const -1640531535
     i32.mul
     local.set $1
     local.get $6
     local.get $8
     i32.load offset=4
     i32.const -2048144777
     i32.mul
     i32.add
     i32.const 13
     i32.rotl
     i32.const -1640531535
     i32.mul
     local.set $6
     local.get $4
     local.get $8
     i32.load offset=8
     i32.const -2048144777
     i32.mul
     i32.add
     i32.const 13
     i32.rotl
     i32.const -1640531535
     i32.mul
     local.set $4
     local.get $7
     local.get $8
     i32.load offset=12
     i32.const -2048144777
     i32.mul
     i32.add
     i32.const 13
     i32.rotl
     i32.const -1640531535
     i32.mul
     local.set $7
     local.get $5
     i32.const 16
     i32.add
     local.set $5
     br $while-continue|0
    end
   end
   local.get $3
   local.get $5
   i32.sub
   local.set $3
   local.get $1
   i32.const 1
   i32.rotl
   local.get $6
   i32.const 7
   i32.rotl
   i32.add
   local.get $4
   i32.const 12
   i32.rotl
   i32.add
   local.get $7
   i32.const 18
   i32.rotl
   i32.add
  else
   i32.const 374761393
  end
  local.set $1
  local.get $3
  i32.const 4
  i32.sub
  local.set $4
  loop $while-continue|1
   local.get $2
   local.get $4
   i32.le_s
   if
    local.get $1
    local.get $0
    local.get $2
    i32.add
    i32.load
    i32.const -1028477379
    i32.mul
    i32.add
    i32.const 17
    i32.rotl
    i32.const 668265263
    i32.mul
    local.set $1
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $while-continue|1
   end
  end
  loop $while-continue|2
   local.get $2
   local.get $4
   i32.lt_s
   if
    local.get $1
    local.get $0
    local.get $2
    i32.add
    i32.load8_u
    i32.const 374761393
    i32.mul
    i32.add
    i32.const 11
    i32.rotl
    i32.const -1640531535
    i32.mul
    local.set $1
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $while-continue|2
   end
  end
 )
 (func $~start
  (local $0 i32)
  (local $1 i64)
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
 )
)
