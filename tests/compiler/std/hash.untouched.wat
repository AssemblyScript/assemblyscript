(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
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
 (func $~lib/util/hash/hashStr (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  i32.const 0
  i32.eq
  if
   i32.const 0
   local.set $1
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   return
  end
  i32.const 0
  i32.const 374761393
  i32.add
  local.set $2
  local.get $0
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $3
  local.get $3
  i32.const 16
  i32.ge_s
  if
   i32.const 0
   i32.const -1640531535
   i32.add
   i32.const -2048144777
   i32.add
   local.set $1
   i32.const 0
   i32.const -2048144777
   i32.add
   local.set $4
   i32.const 0
   local.set $5
   i32.const 0
   i32.const -1640531535
   i32.sub
   local.set $6
   i32.const 0
   local.set $7
   local.get $3
   i32.const 16
   i32.sub
   local.set $3
   loop $while-continue|0
    local.get $7
    local.get $3
    i32.le_s
    local.set $8
    local.get $8
    if
     local.get $1
     local.set $10
     local.get $0
     local.get $7
     i32.add
     i32.load
     local.set $9
     local.get $10
     local.get $9
     i32.const -2048144777
     i32.mul
     i32.add
     local.set $10
     local.get $10
     i32.const 13
     i32.rotl
     local.set $10
     local.get $10
     i32.const -1640531535
     i32.mul
     local.set $1
     local.get $4
     local.set $10
     local.get $0
     local.get $7
     i32.add
     i32.load offset=4
     local.set $9
     local.get $10
     local.get $9
     i32.const -2048144777
     i32.mul
     i32.add
     local.set $10
     local.get $10
     i32.const 13
     i32.rotl
     local.set $10
     local.get $10
     i32.const -1640531535
     i32.mul
     local.set $4
     local.get $5
     local.set $10
     local.get $0
     local.get $7
     i32.add
     i32.load offset=8
     local.set $9
     local.get $10
     local.get $9
     i32.const -2048144777
     i32.mul
     i32.add
     local.set $10
     local.get $10
     i32.const 13
     i32.rotl
     local.set $10
     local.get $10
     i32.const -1640531535
     i32.mul
     local.set $5
     local.get $6
     local.set $10
     local.get $0
     local.get $7
     i32.add
     i32.load offset=12
     local.set $9
     local.get $10
     local.get $9
     i32.const -2048144777
     i32.mul
     i32.add
     local.set $10
     local.get $10
     i32.const 13
     i32.rotl
     local.set $10
     local.get $10
     i32.const -1640531535
     i32.mul
     local.set $6
     local.get $7
     i32.const 16
     i32.add
     local.set $7
     br $while-continue|0
    end
   end
   local.get $1
   i32.const 1
   i32.rotl
   local.get $4
   i32.const 7
   i32.rotl
   i32.add
   local.get $5
   i32.const 12
   i32.rotl
   i32.add
   local.get $6
   i32.const 18
   i32.rotl
   i32.add
   local.set $2
   local.get $3
   local.get $7
   i32.sub
   local.set $3
  end
  i32.const 0
  local.set $11
  local.get $3
  i32.const 4
  i32.sub
  local.set $3
  loop $while-continue|1
   local.get $11
   local.get $3
   i32.le_s
   local.set $7
   local.get $7
   if
    local.get $2
    local.get $0
    local.get $11
    i32.add
    i32.load
    i32.const -1028477379
    i32.mul
    i32.add
    local.set $2
    local.get $2
    i32.const 17
    i32.rotl
    i32.const 668265263
    i32.mul
    local.set $2
    local.get $11
    i32.const 4
    i32.add
    local.set $11
    br $while-continue|1
   end
  end
  loop $while-continue|2
   local.get $11
   local.get $3
   i32.lt_s
   local.set $7
   local.get $7
   if
    local.get $2
    local.get $0
    local.get $11
    i32.add
    i32.load8_u
    i32.const 374761393
    i32.mul
    i32.add
    local.set $2
    local.get $2
    i32.const 11
    i32.rotl
    i32.const -1640531535
    i32.mul
    local.set $2
    local.get $11
    i32.const 1
    i32.add
    local.set $11
    br $while-continue|2
   end
  end
  local.get $2
  local.get $2
  i32.const 15
  i32.shr_u
  i32.xor
  local.set $2
  local.get $2
  i32.const -2048144777
  i32.mul
  local.set $2
  local.get $2
  local.get $2
  i32.const 13
  i32.shr_u
  i32.xor
  local.set $2
  local.get $2
  i32.const -1028477379
  i32.mul
  local.set $2
  local.get $2
  local.get $2
  i32.const 16
  i32.shr_u
  i32.xor
  local.set $2
  local.get $2
  local.set $7
  local.get $0
  call $~lib/rt/stub/__release
  local.get $7
 )
 (func $std/hash/check (param $0 i32) (result i32)
  i32.const 1
 )
 (func $~lib/util/hash/hash32 (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 0
  i32.const 374761393
  i32.add
  local.set $1
  local.get $1
  local.get $0
  i32.const -1028477379
  i32.mul
  i32.add
  local.set $1
  local.get $1
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.set $1
  local.get $1
  local.get $1
  i32.const 15
  i32.shr_u
  i32.xor
  local.set $1
  local.get $1
  i32.const -2048144777
  i32.mul
  local.set $1
  local.get $1
  local.get $1
  i32.const 13
  i32.shr_u
  i32.xor
  local.set $1
  local.get $1
  i32.const -1028477379
  i32.mul
  local.set $1
  local.get $1
  local.get $1
  i32.const 16
  i32.shr_u
  i32.xor
  local.set $1
  local.get $1
 )
 (func $~lib/util/hash/hash64 (param $0 i64) (result i32)
  (local $1 i32)
  i32.const 0
  i32.const 374761393
  i32.add
  local.set $1
  local.get $1
  local.get $0
  i32.wrap_i64
  i32.const -1028477379
  i32.mul
  i32.add
  local.set $1
  local.get $1
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.set $1
  local.get $1
  local.get $0
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  i32.const -1028477379
  i32.mul
  i32.add
  local.set $1
  local.get $1
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.set $1
  local.get $1
  local.get $1
  i32.const 15
  i32.shr_u
  i32.xor
  local.set $1
  local.get $1
  i32.const -2048144777
  i32.mul
  local.set $1
  local.get $1
  local.get $1
  i32.const 13
  i32.shr_u
  i32.xor
  local.set $1
  local.get $1
  i32.const -1028477379
  i32.mul
  local.set $1
  local.get $1
  local.get $1
  i32.const 16
  i32.shr_u
  i32.xor
  local.set $1
  local.get $1
 )
 (func $start:std/hash
  (local $0 i32)
  (local $1 i32)
  (local $2 f32)
  (local $3 f64)
  block $~lib/util/hash/HASH<~lib/string/String|null>|inlined.0 (result i32)
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
  block $~lib/util/hash/HASH<~lib/string/String>|inlined.0 (result i32)
   i32.const 32
   local.set $1
   i32.const 1
   drop
   local.get $1
   call $~lib/util/hash/hashStr
   local.set $0
   local.get $1
   call $~lib/rt/stub/__release
   local.get $0
   br $~lib/util/hash/HASH<~lib/string/String>|inlined.0
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<~lib/string/String>|inlined.1 (result i32)
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
  block $~lib/util/hash/HASH<~lib/string/String>|inlined.2 (result i32)
   i32.const 96
   local.set $1
   i32.const 1
   drop
   local.get $1
   call $~lib/util/hash/hashStr
   local.set $0
   local.get $1
   call $~lib/rt/stub/__release
   local.get $0
   br $~lib/util/hash/HASH<~lib/string/String>|inlined.2
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<~lib/string/String>|inlined.3 (result i32)
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
  block $~lib/util/hash/HASH<~lib/string/String>|inlined.4 (result i32)
   i32.const 160
   local.set $1
   i32.const 1
   drop
   local.get $1
   call $~lib/util/hash/hashStr
   local.set $0
   local.get $1
   call $~lib/rt/stub/__release
   local.get $0
   br $~lib/util/hash/HASH<~lib/string/String>|inlined.4
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<~lib/string/String>|inlined.5 (result i32)
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
  block $~lib/util/hash/HASH<~lib/string/String>|inlined.6 (result i32)
   i32.const 224
   local.set $1
   i32.const 1
   drop
   local.get $1
   call $~lib/util/hash/hashStr
   local.set $0
   local.get $1
   call $~lib/rt/stub/__release
   local.get $0
   br $~lib/util/hash/HASH<~lib/string/String>|inlined.6
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<~lib/string/String>|inlined.7 (result i32)
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
  block $~lib/util/hash/HASH<~lib/string/String>|inlined.8 (result i32)
   i32.const 304
   local.set $1
   i32.const 1
   drop
   local.get $1
   call $~lib/util/hash/hashStr
   local.set $0
   local.get $1
   call $~lib/rt/stub/__release
   local.get $0
   br $~lib/util/hash/HASH<~lib/string/String>|inlined.8
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<~lib/string/String>|inlined.9 (result i32)
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
  block $~lib/util/hash/HASH<f32>|inlined.0 (result i32)
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
  block $~lib/util/hash/HASH<f32>|inlined.1 (result i32)
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
  block $~lib/util/hash/HASH<f32>|inlined.2 (result i32)
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
  block $~lib/util/hash/HASH<f32>|inlined.3 (result i32)
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
  block $~lib/util/hash/HASH<f32>|inlined.4 (result i32)
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
  block $~lib/util/hash/HASH<f32>|inlined.5 (result i32)
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
  block $~lib/util/hash/HASH<f64>|inlined.0 (result i32)
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
  block $~lib/util/hash/HASH<f64>|inlined.1 (result i32)
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
  block $~lib/util/hash/HASH<f64>|inlined.2 (result i32)
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
  block $~lib/util/hash/HASH<f64>|inlined.3 (result i32)
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
  block $~lib/util/hash/HASH<f64>|inlined.4 (result i32)
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
  block $~lib/util/hash/HASH<f64>|inlined.5 (result i32)
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
