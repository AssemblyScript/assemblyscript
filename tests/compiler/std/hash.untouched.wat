(module
 (type $none_=>_none (func))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_=>_i64 (func (param i32) (result i64)))
 (type $i32_=>_none (func (param i32)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (type $i64_=>_i64 (func (param i64) (result i64)))
 (memory $0 1)
 (data (i32.const 12) "\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 44) "\02\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00a\00")
 (data (i32.const 76) "\04\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00a\00b\00")
 (data (i32.const 108) "\06\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00a\00b\00c\00")
 (data (i32.const 140) "\08\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\08\00\00\00a\00b\00c\00d\00")
 (data (i32.const 172) "\n\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\n\00\00\00a\00b\00c\00d\00e\00")
 (data (i32.const 204) "\0c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\0c\00\00\00a\00b\00c\00d\00e\00f\00")
 (data (i32.const 236) "\0e\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\0e\00\00\00a\00b\00c\00d\00e\00f\00g\00")
 (data (i32.const 284) "\10\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\10\00\00\00a\00b\00c\00d\00e\00f\00g\00h\00")
 (data (i32.const 332) "\12\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\12\00\00\00a\00b\00c\00d\00e\00f\00g\00h\00i\00")
 (table $0 1 funcref)
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/stub/__retain (param $0 i32) (result i32)
  local.get $0
 )
 (func $~lib/rt/stub/__release (param $0 i32)
  nop
 )
 (func $~lib/string/String#get:length (param $0 i32) (result i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/hash/hashStr (param $0 i32) (result i64)
  (local $1 i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i64)
  (local $11 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  i32.const 0
  i32.eq
  if
   i64.const 0
   local.set $1
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   return
  end
  local.get $0
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
   local.set $1
   i64.const 0
   i64.const -4417276706812531889
   i64.add
   local.set $4
   i64.const 0
   local.set $5
   i64.const 0
   i64.const -7046029288634856825
   i64.sub
   local.set $6
   i32.const 0
   local.set $7
   local.get $2
   i32.const 32
   i32.sub
   local.set $2
   loop $while-continue|0
    local.get $7
    local.get $2
    i32.le_s
    local.set $8
    local.get $8
    if
     local.get $1
     local.set $10
     local.get $0
     local.get $7
     i32.add
     i64.load
     local.set $9
     local.get $10
     local.get $9
     i64.const -4417276706812531889
     i64.mul
     i64.add
     i64.const 31
     i64.rotl
     i64.const -7046029288634856825
     i64.mul
     local.set $1
     local.get $4
     local.set $10
     local.get $0
     local.get $7
     i32.add
     i64.load offset=8
     local.set $9
     local.get $10
     local.get $9
     i64.const -4417276706812531889
     i64.mul
     i64.add
     i64.const 31
     i64.rotl
     i64.const -7046029288634856825
     i64.mul
     local.set $4
     local.get $5
     local.set $10
     local.get $0
     local.get $7
     i32.add
     i64.load offset=16
     local.set $9
     local.get $10
     local.get $9
     i64.const -4417276706812531889
     i64.mul
     i64.add
     i64.const 31
     i64.rotl
     i64.const -7046029288634856825
     i64.mul
     local.set $5
     local.get $6
     local.set $10
     local.get $0
     local.get $7
     i32.add
     i64.load offset=24
     local.set $9
     local.get $10
     local.get $9
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
   local.get $1
   i64.const 1
   i64.rotl
   local.get $4
   i64.const 7
   i64.rotl
   i64.add
   local.get $5
   i64.const 12
   i64.rotl
   i64.add
   local.get $6
   i64.const 18
   i64.rotl
   i64.add
   local.set $3
   local.get $1
   i64.const -4417276706812531889
   i64.mul
   local.set $1
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
   local.get $3
   local.set $10
   local.get $1
   local.set $9
   local.get $10
   local.get $9
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
   local.set $10
   local.get $4
   local.set $9
   local.get $10
   local.get $9
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
   local.set $10
   local.get $5
   local.set $9
   local.get $10
   local.get $9
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
   local.set $10
   local.get $6
   local.set $9
   local.get $10
   local.get $9
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
   local.get $2
   i64.extend_i32_s
   i64.add
   local.set $3
   local.get $2
   local.get $7
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
  local.set $11
  local.get $2
  i32.const 8
  i32.sub
  local.set $2
  loop $while-continue|1
   local.get $11
   local.get $2
   i32.le_s
   local.set $7
   local.get $7
   if
    local.get $3
    local.get $0
    local.get $11
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
    local.get $11
    i32.const 8
    i32.add
    local.set $11
    br $while-continue|1
   end
  end
  local.get $11
  i32.const 4
  i32.add
  local.get $2
  i32.le_s
  if
   local.get $3
   local.get $0
   local.get $11
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
   local.get $11
   i32.const 4
   i32.add
   local.set $11
  end
  loop $while-continue|2
   local.get $11
   local.get $2
   i32.lt_s
   local.set $7
   local.get $7
   if
    local.get $3
    local.get $0
    local.get $11
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
    local.get $11
    i32.const 1
    i32.add
    local.set $11
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
  local.set $6
  local.get $0
  call $~lib/rt/stub/__release
  local.get $6
 )
 (func $std/hash/check (param $0 i64) (result i32)
  i32.const 1
 )
 (func $~lib/util/hash/hash32 (param $0 i32) (result i64)
  (local $1 i64)
  i64.const 0
  i64.const 2870177450012600261
  i64.add
  i64.const 4
  i64.add
  local.set $1
  local.get $1
  local.get $0
  i64.extend_i32_u
  i64.const -7046029288634856825
  i64.mul
  i64.xor
  local.set $1
  local.get $1
  i64.const 23
  i64.rotl
  i64.const -4417276706812531889
  i64.mul
  i64.const 1609587929392839161
  i64.add
  local.set $1
  local.get $1
  local.get $1
  i64.const 33
  i64.shr_u
  i64.xor
  local.set $1
  local.get $1
  i64.const -4417276706812531889
  i64.mul
  local.set $1
  local.get $1
  local.get $1
  i64.const 29
  i64.shr_u
  i64.xor
  local.set $1
  local.get $1
  i64.const 1609587929392839161
  i64.mul
  local.set $1
  local.get $1
  local.get $1
  i64.const 32
  i64.shr_u
  i64.xor
  local.set $1
  local.get $1
 )
 (func $~lib/util/hash/hash64 (param $0 i64) (result i64)
  (local $1 i64)
  i64.const 0
  i64.const 2870177450012600261
  i64.add
  i64.const 8
  i64.add
  local.set $1
  local.get $1
  local.get $0
  i64.const -4417276706812531889
  i64.mul
  i64.const 31
  i64.rotl
  i64.const -7046029288634856825
  i64.mul
  i64.xor
  local.set $1
  local.get $1
  i64.const 27
  i64.rotl
  i64.const -7046029288634856825
  i64.mul
  i64.const -8796714831421723037
  i64.add
  local.set $1
  local.get $1
  local.get $1
  i64.const 33
  i64.shr_u
  i64.xor
  local.set $1
  local.get $1
  i64.const -4417276706812531889
  i64.mul
  local.set $1
  local.get $1
  local.get $1
  i64.const 29
  i64.shr_u
  i64.xor
  local.set $1
  local.get $1
  i64.const 1609587929392839161
  i64.mul
  local.set $1
  local.get $1
  local.get $1
  i64.const 32
  i64.shr_u
  i64.xor
  local.set $1
  local.get $1
 )
 (func $start:std/hash
  (local $0 i32)
  (local $1 i64)
  (local $2 f32)
  (local $3 f64)
  block $~lib/util/hash/HASH<~lib/string/String|null>|inlined.0 (result i64)
   i32.const 0
   call $~lib/rt/stub/__retain
   local.set $0
   i32.const 1
   drop
   local.get $0
   call $~lib/util/hash/hashStr
   local.set $1
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   br $~lib/util/hash/HASH<~lib/string/String|null>|inlined.0
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<~lib/string/String>|inlined.0 (result i64)
   i32.const 32
   local.set $0
   i32.const 1
   drop
   local.get $0
   call $~lib/util/hash/hashStr
   local.set $1
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   br $~lib/util/hash/HASH<~lib/string/String>|inlined.0
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<~lib/string/String>|inlined.1 (result i64)
   i32.const 64
   local.set $0
   i32.const 1
   drop
   local.get $0
   call $~lib/util/hash/hashStr
   local.set $1
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   br $~lib/util/hash/HASH<~lib/string/String>|inlined.1
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<~lib/string/String>|inlined.2 (result i64)
   i32.const 96
   local.set $0
   i32.const 1
   drop
   local.get $0
   call $~lib/util/hash/hashStr
   local.set $1
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   br $~lib/util/hash/HASH<~lib/string/String>|inlined.2
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<~lib/string/String>|inlined.3 (result i64)
   i32.const 128
   local.set $0
   i32.const 1
   drop
   local.get $0
   call $~lib/util/hash/hashStr
   local.set $1
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   br $~lib/util/hash/HASH<~lib/string/String>|inlined.3
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<~lib/string/String>|inlined.4 (result i64)
   i32.const 160
   local.set $0
   i32.const 1
   drop
   local.get $0
   call $~lib/util/hash/hashStr
   local.set $1
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   br $~lib/util/hash/HASH<~lib/string/String>|inlined.4
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<~lib/string/String>|inlined.5 (result i64)
   i32.const 192
   local.set $0
   i32.const 1
   drop
   local.get $0
   call $~lib/util/hash/hashStr
   local.set $1
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   br $~lib/util/hash/HASH<~lib/string/String>|inlined.5
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<~lib/string/String>|inlined.6 (result i64)
   i32.const 224
   local.set $0
   i32.const 1
   drop
   local.get $0
   call $~lib/util/hash/hashStr
   local.set $1
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   br $~lib/util/hash/HASH<~lib/string/String>|inlined.6
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<~lib/string/String>|inlined.7 (result i64)
   i32.const 256
   local.set $0
   i32.const 1
   drop
   local.get $0
   call $~lib/util/hash/hashStr
   local.set $1
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   br $~lib/util/hash/HASH<~lib/string/String>|inlined.7
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<~lib/string/String>|inlined.8 (result i64)
   i32.const 304
   local.set $0
   i32.const 1
   drop
   local.get $0
   call $~lib/util/hash/hashStr
   local.set $1
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   br $~lib/util/hash/HASH<~lib/string/String>|inlined.8
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<~lib/string/String>|inlined.9 (result i64)
   i32.const 352
   local.set $0
   i32.const 1
   drop
   local.get $0
   call $~lib/util/hash/hashStr
   local.set $1
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   br $~lib/util/hash/HASH<~lib/string/String>|inlined.9
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<f32>|inlined.0 (result i64)
   f32.const 0
   local.set $2
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
   local.get $2
   i32.reinterpret_f32
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<f32>|inlined.0
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<f32>|inlined.1 (result i64)
   f32.const 1
   local.set $2
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
   local.get $2
   i32.reinterpret_f32
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<f32>|inlined.1
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<f32>|inlined.2 (result i64)
   f32.const 1.100000023841858
   local.set $2
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
   local.get $2
   i32.reinterpret_f32
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<f32>|inlined.2
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<f32>|inlined.3 (result i64)
   f32.const 0
   local.set $2
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
   local.get $2
   i32.reinterpret_f32
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<f32>|inlined.3
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<f32>|inlined.4 (result i64)
   f32.const inf
   local.set $2
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
   local.get $2
   i32.reinterpret_f32
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<f32>|inlined.4
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<f32>|inlined.5 (result i64)
   f32.const nan:0x400000
   local.set $2
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
   local.get $2
   i32.reinterpret_f32
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<f32>|inlined.5
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<f64>|inlined.0 (result i64)
   f64.const 0
   local.set $3
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
   local.get $3
   i64.reinterpret_f64
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<f64>|inlined.0
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<f64>|inlined.1 (result i64)
   f64.const 1
   local.set $3
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
   local.get $3
   i64.reinterpret_f64
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<f64>|inlined.1
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<f64>|inlined.2 (result i64)
   f64.const 1.1
   local.set $3
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
   local.get $3
   i64.reinterpret_f64
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<f64>|inlined.2
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<f64>|inlined.3 (result i64)
   f64.const 0
   local.set $3
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
   local.get $3
   i64.reinterpret_f64
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<f64>|inlined.3
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<f64>|inlined.4 (result i64)
   f64.const inf
   local.set $3
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
   local.get $3
   i64.reinterpret_f64
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<f64>|inlined.4
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<f64>|inlined.5 (result i64)
   f64.const nan:0x8000000000000
   local.set $3
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
   local.get $3
   i64.reinterpret_f64
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<f64>|inlined.5
  end
  call $std/hash/check
  drop
 )
 (func $~start
  call $start:std/hash
 )
)
