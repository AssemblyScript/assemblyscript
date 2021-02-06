(module
 (type $none_=>_none (func))
 (type $i32_=>_i64 (func (param i32) (result i64)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (type $f32_=>_i64 (func (param f32) (result i64)))
 (type $f64_=>_i64 (func (param f64) (result i64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 12) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 44) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00a\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 76) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00a\00b\00\00\00\00\00\00\00\00\00")
 (data (i32.const 108) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00a\00b\00c\00\00\00\00\00\00\00")
 (data (i32.const 140) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\08\00\00\00a\00b\00c\00d\00\00\00\00\00")
 (data (i32.const 172) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\n\00\00\00a\00b\00c\00d\00e\00\00\00")
 (data (i32.const 204) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\0c\00\00\00a\00b\00c\00d\00e\00f\00")
 (data (i32.const 236) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\0e\00\00\00a\00b\00c\00d\00e\00f\00g\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 284) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\10\00\00\00a\00b\00c\00d\00e\00f\00g\00h\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 332) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\12\00\00\00a\00b\00c\00d\00e\00f\00g\00h\00i\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 1 funcref)
 (global $~lib/memory/__data_end i32 (i32.const 380))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16764))
 (global $~lib/memory/__heap_base i32 (i32.const 16764))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/string/String#get:length (param $0 i32) (result i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
 )
 (func $std/hash/check (param $0 i64) (result i32)
  i32.const 1
 )
 (func $~lib/util/hash/HASH<f32> (param $0 f32) (result i64)
  (local $1 i32)
  (local $2 i64)
  (local $3 i64)
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 1
  drop
  i32.const 4
  i32.const 4
  i32.eq
  drop
  local.get $0
  i32.reinterpret_f32
  local.set $1
  i64.const 4
  local.set $2
  i64.const 0
  i64.const 2870177450012600261
  i64.add
  local.get $2
  i64.add
  local.set $3
  local.get $3
  local.get $1
  i64.extend_i32_u
  i64.const -7046029288634856825
  i64.mul
  i64.xor
  local.set $3
  local.get $3
  i64.const 23
  i64.rotl
  i64.const -4417276706812531889
  i64.mul
  i64.const 1609587929392839161
  i64.add
  local.set $3
  local.get $3
  local.get $3
  i64.const 33
  i64.shr_u
  i64.xor
  local.set $3
  local.get $3
  i64.const -4417276706812531889
  i64.mul
  local.set $3
  local.get $3
  local.get $3
  i64.const 29
  i64.shr_u
  i64.xor
  local.set $3
  local.get $3
  i64.const 1609587929392839161
  i64.mul
  local.set $3
  local.get $3
  local.get $3
  i64.const 32
  i64.shr_u
  i64.xor
  local.set $3
  local.get $3
  return
 )
 (func $~lib/util/hash/HASH<f64> (param $0 f64) (result i64)
  (local $1 i64)
  (local $2 i64)
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 1
  drop
  i32.const 8
  i32.const 4
  i32.eq
  drop
  i32.const 8
  i32.const 8
  i32.eq
  drop
  local.get $0
  i64.reinterpret_f64
  local.set $1
  i64.const 0
  i64.const 2870177450012600261
  i64.add
  i64.const 8
  i64.add
  local.set $2
  local.get $2
  local.get $1
  i64.const -4417276706812531889
  i64.mul
  i64.const 31
  i64.rotl
  i64.const -7046029288634856825
  i64.mul
  i64.xor
  local.set $2
  local.get $2
  i64.const 27
  i64.rotl
  i64.const -7046029288634856825
  i64.mul
  i64.const -8796714831421723037
  i64.add
  local.set $2
  local.get $2
  local.get $2
  i64.const 33
  i64.shr_u
  i64.xor
  local.set $2
  local.get $2
  i64.const -4417276706812531889
  i64.mul
  local.set $2
  local.get $2
  local.get $2
  i64.const 29
  i64.shr_u
  i64.xor
  local.set $2
  local.get $2
  i64.const 1609587929392839161
  i64.mul
  local.set $2
  local.get $2
  local.get $2
  i64.const 32
  i64.shr_u
  i64.xor
  local.set $2
  local.get $2
  return
 )
 (func $~start
  call $start:std/hash
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 16784
   i32.const 16832
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/util/hash/HASH<~lib/string/String|null> (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i64)
  (local $13 i64)
  (local $14 i32)
  (local $15 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 1
  drop
  block $~lib/util/hash/hashStr|inlined.0 (result i64)
   global.get $~lib/memory/__stack_pointer
   local.get $0
   local.tee $1
   i32.store
   local.get $1
   i32.const 0
   i32.eq
   if
    i64.const 0
    br $~lib/util/hash/hashStr|inlined.0
   end
   local.get $1
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store offset=4
   local.get $14
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   local.set $2
   i64.const 0
   local.set $3
   local.get $2
   i32.const 32
   i32.ge_s
   if
    i64.const 0
    i64.const -7046029288634856825
    i64.add
    i64.const -4417276706812531889
    i64.add
    local.set $4
    i64.const 0
    i64.const -4417276706812531889
    i64.add
    local.set $5
    i64.const 0
    local.set $6
    i64.const 0
    i64.const -7046029288634856825
    i64.sub
    local.set $7
    local.get $2
    local.set $8
    i32.const 0
    local.set $9
    local.get $2
    i32.const 32
    i32.sub
    local.set $10
    loop $while-continue|0
     local.get $9
     local.get $10
     i32.le_s
     local.set $11
     local.get $11
     if
      local.get $4
      local.set $13
      local.get $1
      local.get $9
      i32.add
      i64.load
      local.set $12
      local.get $13
      local.get $12
      i64.const -4417276706812531889
      i64.mul
      i64.add
      i64.const 31
      i64.rotl
      i64.const -7046029288634856825
      i64.mul
      local.set $4
      local.get $5
      local.set $13
      local.get $1
      local.get $9
      i32.add
      i64.load offset=8
      local.set $12
      local.get $13
      local.get $12
      i64.const -4417276706812531889
      i64.mul
      i64.add
      i64.const 31
      i64.rotl
      i64.const -7046029288634856825
      i64.mul
      local.set $5
      local.get $6
      local.set $13
      local.get $1
      local.get $9
      i32.add
      i64.load offset=16
      local.set $12
      local.get $13
      local.get $12
      i64.const -4417276706812531889
      i64.mul
      i64.add
      i64.const 31
      i64.rotl
      i64.const -7046029288634856825
      i64.mul
      local.set $6
      local.get $7
      local.set $13
      local.get $1
      local.get $9
      i32.add
      i64.load offset=24
      local.set $12
      local.get $13
      local.get $12
      i64.const -4417276706812531889
      i64.mul
      i64.add
      i64.const 31
      i64.rotl
      i64.const -7046029288634856825
      i64.mul
      local.set $7
      local.get $9
      i32.const 32
      i32.add
      local.set $9
      br $while-continue|0
     end
    end
    local.get $4
    i64.const 1
    i64.rotl
    local.get $5
    i64.const 7
    i64.rotl
    i64.add
    local.get $6
    i64.const 12
    i64.rotl
    i64.add
    local.get $7
    i64.const 18
    i64.rotl
    i64.add
    local.set $3
    local.get $4
    i64.const -4417276706812531889
    i64.mul
    local.set $4
    local.get $5
    i64.const -4417276706812531889
    i64.mul
    local.set $5
    local.get $6
    i64.const -4417276706812531889
    i64.mul
    local.set $6
    local.get $7
    i64.const -4417276706812531889
    i64.mul
    local.set $7
    local.get $3
    local.set $13
    local.get $4
    local.set $12
    local.get $13
    local.get $12
    i64.const 31
    i64.rotl
    i64.const -7046029288634856825
    i64.mul
    i64.xor
    i64.const -7046029288634856825
    i64.mul
    i64.const -8796714831421723037
    i64.add
    local.set $3
    local.get $3
    local.set $13
    local.get $5
    local.set $12
    local.get $13
    local.get $12
    i64.const 31
    i64.rotl
    i64.const -7046029288634856825
    i64.mul
    i64.xor
    i64.const -7046029288634856825
    i64.mul
    i64.const -8796714831421723037
    i64.add
    local.set $3
    local.get $3
    local.set $13
    local.get $6
    local.set $12
    local.get $13
    local.get $12
    i64.const 31
    i64.rotl
    i64.const -7046029288634856825
    i64.mul
    i64.xor
    i64.const -7046029288634856825
    i64.mul
    i64.const -8796714831421723037
    i64.add
    local.set $3
    local.get $3
    local.set $13
    local.get $7
    local.set $12
    local.get $13
    local.get $12
    i64.const 31
    i64.rotl
    i64.const -7046029288634856825
    i64.mul
    i64.xor
    i64.const -7046029288634856825
    i64.mul
    i64.const -8796714831421723037
    i64.add
    local.set $3
    local.get $3
    local.get $8
    i64.extend_i32_s
    i64.add
    local.set $3
    local.get $2
    local.get $9
    i32.sub
    local.set $2
   else
    local.get $2
    i64.extend_i32_s
    i64.const 0
    i64.add
    i64.const 2870177450012600261
    i64.add
    local.set $3
   end
   i32.const 0
   local.set $10
   local.get $2
   i32.const 8
   i32.sub
   local.set $9
   loop $while-continue|1
    local.get $10
    local.get $9
    i32.le_s
    local.set $8
    local.get $8
    if
     local.get $3
     local.get $1
     local.get $10
     i32.add
     i64.load
     i64.const -4417276706812531889
     i64.mul
     i64.const 31
     i64.rotl
     i64.const -7046029288634856825
     i64.mul
     i64.xor
     local.set $3
     local.get $3
     i64.const 27
     i64.rotl
     i64.const -7046029288634856825
     i64.mul
     i64.const -8796714831421723037
     i64.add
     local.set $3
     local.get $10
     i32.const 8
     i32.add
     local.set $10
     br $while-continue|1
    end
   end
   local.get $10
   i32.const 4
   i32.add
   local.get $2
   i32.le_s
   if
    local.get $3
    local.get $1
    local.get $10
    i32.add
    i64.load32_u
    i64.const -7046029288634856825
    i64.mul
    i64.xor
    local.set $3
    local.get $3
    i64.const 23
    i64.rotl
    i64.const -4417276706812531889
    i64.mul
    i64.const 1609587929392839161
    i64.add
    local.set $3
    local.get $10
    i32.const 4
    i32.add
    local.set $10
   end
   loop $while-continue|2
    local.get $10
    local.get $2
    i32.lt_s
    local.set $8
    local.get $8
    if
     local.get $3
     local.get $1
     local.get $10
     i32.add
     i64.load8_u
     i64.const 2870177450012600261
     i64.mul
     i64.add
     local.set $3
     local.get $3
     i64.const 11
     i64.rotl
     i64.const -7046029288634856825
     i64.mul
     local.set $3
     local.get $10
     i32.const 1
     i32.add
     local.set $10
     br $while-continue|2
    end
   end
   local.get $3
   local.get $3
   i64.const 33
   i64.shr_u
   i64.xor
   local.set $3
   local.get $3
   i64.const -4417276706812531889
   i64.mul
   local.set $3
   local.get $3
   local.get $3
   i64.const 29
   i64.shr_u
   i64.xor
   local.set $3
   local.get $3
   i64.const 1609587929392839161
   i64.mul
   local.set $3
   local.get $3
   local.get $3
   i64.const 32
   i64.shr_u
   i64.xor
   local.set $3
   local.get $3
  end
  local.set $15
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $15
  return
 )
 (func $~lib/util/hash/HASH<~lib/string/String> (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i64)
  (local $13 i64)
  (local $14 i32)
  (local $15 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 1
  drop
  block $~lib/util/hash/hashStr|inlined.1 (result i64)
   global.get $~lib/memory/__stack_pointer
   local.get $0
   local.tee $1
   i32.store
   local.get $1
   i32.const 0
   i32.eq
   if
    i64.const 0
    br $~lib/util/hash/hashStr|inlined.1
   end
   local.get $1
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store offset=4
   local.get $14
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   local.set $2
   i64.const 0
   local.set $3
   local.get $2
   i32.const 32
   i32.ge_s
   if
    i64.const 0
    i64.const -7046029288634856825
    i64.add
    i64.const -4417276706812531889
    i64.add
    local.set $4
    i64.const 0
    i64.const -4417276706812531889
    i64.add
    local.set $5
    i64.const 0
    local.set $6
    i64.const 0
    i64.const -7046029288634856825
    i64.sub
    local.set $7
    local.get $2
    local.set $8
    i32.const 0
    local.set $9
    local.get $2
    i32.const 32
    i32.sub
    local.set $10
    loop $while-continue|0
     local.get $9
     local.get $10
     i32.le_s
     local.set $11
     local.get $11
     if
      local.get $4
      local.set $13
      local.get $1
      local.get $9
      i32.add
      i64.load
      local.set $12
      local.get $13
      local.get $12
      i64.const -4417276706812531889
      i64.mul
      i64.add
      i64.const 31
      i64.rotl
      i64.const -7046029288634856825
      i64.mul
      local.set $4
      local.get $5
      local.set $13
      local.get $1
      local.get $9
      i32.add
      i64.load offset=8
      local.set $12
      local.get $13
      local.get $12
      i64.const -4417276706812531889
      i64.mul
      i64.add
      i64.const 31
      i64.rotl
      i64.const -7046029288634856825
      i64.mul
      local.set $5
      local.get $6
      local.set $13
      local.get $1
      local.get $9
      i32.add
      i64.load offset=16
      local.set $12
      local.get $13
      local.get $12
      i64.const -4417276706812531889
      i64.mul
      i64.add
      i64.const 31
      i64.rotl
      i64.const -7046029288634856825
      i64.mul
      local.set $6
      local.get $7
      local.set $13
      local.get $1
      local.get $9
      i32.add
      i64.load offset=24
      local.set $12
      local.get $13
      local.get $12
      i64.const -4417276706812531889
      i64.mul
      i64.add
      i64.const 31
      i64.rotl
      i64.const -7046029288634856825
      i64.mul
      local.set $7
      local.get $9
      i32.const 32
      i32.add
      local.set $9
      br $while-continue|0
     end
    end
    local.get $4
    i64.const 1
    i64.rotl
    local.get $5
    i64.const 7
    i64.rotl
    i64.add
    local.get $6
    i64.const 12
    i64.rotl
    i64.add
    local.get $7
    i64.const 18
    i64.rotl
    i64.add
    local.set $3
    local.get $4
    i64.const -4417276706812531889
    i64.mul
    local.set $4
    local.get $5
    i64.const -4417276706812531889
    i64.mul
    local.set $5
    local.get $6
    i64.const -4417276706812531889
    i64.mul
    local.set $6
    local.get $7
    i64.const -4417276706812531889
    i64.mul
    local.set $7
    local.get $3
    local.set $13
    local.get $4
    local.set $12
    local.get $13
    local.get $12
    i64.const 31
    i64.rotl
    i64.const -7046029288634856825
    i64.mul
    i64.xor
    i64.const -7046029288634856825
    i64.mul
    i64.const -8796714831421723037
    i64.add
    local.set $3
    local.get $3
    local.set $13
    local.get $5
    local.set $12
    local.get $13
    local.get $12
    i64.const 31
    i64.rotl
    i64.const -7046029288634856825
    i64.mul
    i64.xor
    i64.const -7046029288634856825
    i64.mul
    i64.const -8796714831421723037
    i64.add
    local.set $3
    local.get $3
    local.set $13
    local.get $6
    local.set $12
    local.get $13
    local.get $12
    i64.const 31
    i64.rotl
    i64.const -7046029288634856825
    i64.mul
    i64.xor
    i64.const -7046029288634856825
    i64.mul
    i64.const -8796714831421723037
    i64.add
    local.set $3
    local.get $3
    local.set $13
    local.get $7
    local.set $12
    local.get $13
    local.get $12
    i64.const 31
    i64.rotl
    i64.const -7046029288634856825
    i64.mul
    i64.xor
    i64.const -7046029288634856825
    i64.mul
    i64.const -8796714831421723037
    i64.add
    local.set $3
    local.get $3
    local.get $8
    i64.extend_i32_s
    i64.add
    local.set $3
    local.get $2
    local.get $9
    i32.sub
    local.set $2
   else
    local.get $2
    i64.extend_i32_s
    i64.const 0
    i64.add
    i64.const 2870177450012600261
    i64.add
    local.set $3
   end
   i32.const 0
   local.set $10
   local.get $2
   i32.const 8
   i32.sub
   local.set $9
   loop $while-continue|1
    local.get $10
    local.get $9
    i32.le_s
    local.set $8
    local.get $8
    if
     local.get $3
     local.get $1
     local.get $10
     i32.add
     i64.load
     i64.const -4417276706812531889
     i64.mul
     i64.const 31
     i64.rotl
     i64.const -7046029288634856825
     i64.mul
     i64.xor
     local.set $3
     local.get $3
     i64.const 27
     i64.rotl
     i64.const -7046029288634856825
     i64.mul
     i64.const -8796714831421723037
     i64.add
     local.set $3
     local.get $10
     i32.const 8
     i32.add
     local.set $10
     br $while-continue|1
    end
   end
   local.get $10
   i32.const 4
   i32.add
   local.get $2
   i32.le_s
   if
    local.get $3
    local.get $1
    local.get $10
    i32.add
    i64.load32_u
    i64.const -7046029288634856825
    i64.mul
    i64.xor
    local.set $3
    local.get $3
    i64.const 23
    i64.rotl
    i64.const -4417276706812531889
    i64.mul
    i64.const 1609587929392839161
    i64.add
    local.set $3
    local.get $10
    i32.const 4
    i32.add
    local.set $10
   end
   loop $while-continue|2
    local.get $10
    local.get $2
    i32.lt_s
    local.set $8
    local.get $8
    if
     local.get $3
     local.get $1
     local.get $10
     i32.add
     i64.load8_u
     i64.const 2870177450012600261
     i64.mul
     i64.add
     local.set $3
     local.get $3
     i64.const 11
     i64.rotl
     i64.const -7046029288634856825
     i64.mul
     local.set $3
     local.get $10
     i32.const 1
     i32.add
     local.set $10
     br $while-continue|2
    end
   end
   local.get $3
   local.get $3
   i64.const 33
   i64.shr_u
   i64.xor
   local.set $3
   local.get $3
   i64.const -4417276706812531889
   i64.mul
   local.set $3
   local.get $3
   local.get $3
   i64.const 29
   i64.shr_u
   i64.xor
   local.set $3
   local.get $3
   i64.const 1609587929392839161
   i64.mul
   local.set $3
   local.get $3
   local.get $3
   i64.const 32
   i64.shr_u
   i64.xor
   local.set $3
   local.get $3
  end
  local.set $15
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $15
  return
 )
 (func $start:std/hash
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  call $~lib/util/hash/HASH<~lib/string/String|null>
  call $std/hash/check
  drop
  i32.const 32
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/util/hash/HASH<~lib/string/String>
  call $std/hash/check
  drop
  i32.const 64
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/util/hash/HASH<~lib/string/String>
  call $std/hash/check
  drop
  i32.const 96
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/util/hash/HASH<~lib/string/String>
  call $std/hash/check
  drop
  i32.const 128
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/util/hash/HASH<~lib/string/String>
  call $std/hash/check
  drop
  i32.const 160
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/util/hash/HASH<~lib/string/String>
  call $std/hash/check
  drop
  i32.const 192
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/util/hash/HASH<~lib/string/String>
  call $std/hash/check
  drop
  i32.const 224
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/util/hash/HASH<~lib/string/String>
  call $std/hash/check
  drop
  i32.const 256
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/util/hash/HASH<~lib/string/String>
  call $std/hash/check
  drop
  i32.const 304
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/util/hash/HASH<~lib/string/String>
  call $std/hash/check
  drop
  i32.const 352
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/util/hash/HASH<~lib/string/String>
  call $std/hash/check
  drop
  f32.const 0
  call $~lib/util/hash/HASH<f32>
  call $std/hash/check
  drop
  f32.const 1
  call $~lib/util/hash/HASH<f32>
  call $std/hash/check
  drop
  f32.const 1.100000023841858
  call $~lib/util/hash/HASH<f32>
  call $std/hash/check
  drop
  f32.const 0
  call $~lib/util/hash/HASH<f32>
  call $std/hash/check
  drop
  f32.const inf
  call $~lib/util/hash/HASH<f32>
  call $std/hash/check
  drop
  f32.const nan:0x400000
  call $~lib/util/hash/HASH<f32>
  call $std/hash/check
  drop
  f64.const 0
  call $~lib/util/hash/HASH<f64>
  call $std/hash/check
  drop
  f64.const 1
  call $~lib/util/hash/HASH<f64>
  call $std/hash/check
  drop
  f64.const 1.1
  call $~lib/util/hash/HASH<f64>
  call $std/hash/check
  drop
  f64.const 0
  call $~lib/util/hash/HASH<f64>
  call $std/hash/check
  drop
  f64.const inf
  call $~lib/util/hash/HASH<f64>
  call $std/hash/check
  drop
  f64.const nan:0x8000000000000
  call $~lib/util/hash/HASH<f64>
  call $std/hash/check
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
