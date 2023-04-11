(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_=>_none (func (param i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 34172))
 (memory $0 1)
 (data $0 (i32.const 1036) "\1c")
 (data $0.1 (i32.const 1048) "\02")
 (data $1 (i32.const 1068) "\1c")
 (data $1.1 (i32.const 1080) "\02\00\00\00\02\00\00\00a")
 (data $2 (i32.const 1100) "\1c")
 (data $2.1 (i32.const 1112) "\02\00\00\00\04\00\00\00a\00b")
 (data $3 (i32.const 1132) "\1c")
 (data $3.1 (i32.const 1144) "\02\00\00\00\06\00\00\00a\00b\00c")
 (data $4 (i32.const 1164) "\1c")
 (data $4.1 (i32.const 1176) "\02\00\00\00\08\00\00\00a\00b\00c\00d")
 (data $5 (i32.const 1196) "\1c")
 (data $5.1 (i32.const 1208) "\02\00\00\00\n\00\00\00a\00b\00c\00d\00e")
 (data $6 (i32.const 1228) "\1c")
 (data $6.1 (i32.const 1240) "\02\00\00\00\0c\00\00\00a\00b\00c\00d\00e\00f")
 (data $7 (i32.const 1260) ",")
 (data $7.1 (i32.const 1272) "\02\00\00\00\0e\00\00\00a\00b\00c\00d\00e\00f\00g")
 (data $8 (i32.const 1308) ",")
 (data $8.1 (i32.const 1320) "\02\00\00\00\10\00\00\00a\00b\00c\00d\00e\00f\00g\00h")
 (data $9 (i32.const 1356) ",")
 (data $9.1 (i32.const 1368) "\02\00\00\00\12\00\00\00a\00b\00c\00d\00e\00f\00g\00h\00i")
 (export "memory" (memory $0))
 (start $~start)
 (func $~start
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1404
  i32.lt_s
  if
   i32.const 34192
   i32.const 34240
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  i32.const 0
  call $~lib/util/hash/HASH<~lib/string/String|null>
  global.get $~lib/memory/__stack_pointer
  i32.const 1056
  i32.store $0
  i32.const 1056
  call $~lib/util/hash/HASH<~lib/string/String|null>
  global.get $~lib/memory/__stack_pointer
  i32.const 1088
  i32.store $0
  i32.const 1088
  call $~lib/util/hash/HASH<~lib/string/String|null>
  global.get $~lib/memory/__stack_pointer
  i32.const 1120
  i32.store $0
  i32.const 1120
  call $~lib/util/hash/HASH<~lib/string/String|null>
  global.get $~lib/memory/__stack_pointer
  i32.const 1152
  i32.store $0
  i32.const 1152
  call $~lib/util/hash/HASH<~lib/string/String|null>
  global.get $~lib/memory/__stack_pointer
  i32.const 1184
  i32.store $0
  i32.const 1184
  call $~lib/util/hash/HASH<~lib/string/String|null>
  global.get $~lib/memory/__stack_pointer
  i32.const 1216
  i32.store $0
  i32.const 1216
  call $~lib/util/hash/HASH<~lib/string/String|null>
  global.get $~lib/memory/__stack_pointer
  i32.const 1248
  i32.store $0
  i32.const 1248
  call $~lib/util/hash/HASH<~lib/string/String|null>
  global.get $~lib/memory/__stack_pointer
  i32.const 1280
  i32.store $0
  i32.const 1280
  call $~lib/util/hash/HASH<~lib/string/String|null>
  global.get $~lib/memory/__stack_pointer
  i32.const 1328
  i32.store $0
  i32.const 1328
  call $~lib/util/hash/HASH<~lib/string/String|null>
  global.get $~lib/memory/__stack_pointer
  i32.const 1376
  i32.store $0
  i32.const 1376
  call $~lib/util/hash/HASH<~lib/string/String|null>
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/util/hash/HASH<~lib/string/String|null> (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1404
  i32.lt_s
  if
   i32.const 34192
   i32.const 34240
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store $0
  local.get $1
  local.get $0
  i32.store $0
  local.get $0
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   local.tee $1
   i32.store $0 offset=4
   local.get $1
   i32.const 20
   i32.sub
   i32.load $0 offset=16
   i32.const -2
   i32.and
   local.tee $3
   i32.const 16
   i32.ge_u
   if (result i32)
    i32.const 606290984
    local.set $2
    i32.const -2048144777
    local.set $4
    i32.const 1640531535
    local.set $5
    local.get $1
    local.get $3
    i32.add
    i32.const 16
    i32.sub
    local.set $7
    loop $while-continue|0
     local.get $1
     local.get $7
     i32.le_u
     if
      local.get $2
      local.get $1
      i32.load $0
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $2
      local.get $4
      local.get $1
      i32.load $0 offset=4
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $4
      local.get $6
      local.get $1
      i32.load $0 offset=8
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $6
      local.get $5
      local.get $1
      i32.load $0 offset=12
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $5
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      br $while-continue|0
     end
    end
    local.get $3
    local.get $2
    i32.const 1
    i32.rotl
    local.get $4
    i32.const 7
    i32.rotl
    i32.add
    local.get $6
    i32.const 12
    i32.rotl
    i32.add
    local.get $5
    i32.const 18
    i32.rotl
    i32.add
    i32.add
   else
    local.get $3
    i32.const 374761393
    i32.add
   end
   local.set $2
   local.get $0
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.set $4
   loop $while-continue|1
    local.get $1
    local.get $4
    i32.le_u
    if
     local.get $2
     local.get $1
     i32.load $0
     i32.const -1028477379
     i32.mul
     i32.add
     i32.const 17
     i32.rotl
     i32.const 668265263
     i32.mul
     local.set $2
     local.get $1
     i32.const 4
     i32.add
     local.set $1
     br $while-continue|1
    end
   end
   local.get $0
   local.get $3
   i32.add
   local.set $0
   loop $while-continue|2
    local.get $0
    local.get $1
    i32.gt_u
    if
     local.get $2
     local.get $1
     i32.load8_u $0
     i32.const 374761393
     i32.mul
     i32.add
     i32.const 11
     i32.rotl
     i32.const -1640531535
     i32.mul
     local.set $2
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $while-continue|2
    end
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
