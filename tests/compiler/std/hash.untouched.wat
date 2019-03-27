(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$ij (func (param i64) (result i32)))
 (type $FUNCSIG$v (func))
 (memory $0 1)
 (data (i32.const 8) "\01\00\00\00\00\00\00\00")
 (data (i32.const 16) "\01\00\00\00\02\00\00\00a\00")
 (data (i32.const 32) "\01\00\00\00\04\00\00\00a\00b\00")
 (data (i32.const 48) "\01\00\00\00\06\00\00\00a\00b\00c\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/runtime/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/runtime/HEADER_MAGIC i32 (i32.const -1520547049))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 64))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/string/String#get:length (; 0 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  global.get $~lib/runtime/HEADER_SIZE
  i32.sub
  i32.load offset=4
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/hash/hashStr (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const -2128831035
  local.set $1
  local.get $0
  i32.const 0
  i32.ne
  if
   block $break|0
    block
     i32.const 0
     local.set $2
     local.get $0
     call $~lib/string/String#get:length
     i32.const 1
     i32.shl
     local.set $3
    end
    loop $repeat|0
     local.get $2
     local.get $3
     i32.lt_u
     i32.eqz
     br_if $break|0
     local.get $1
     local.get $0
     local.get $2
     i32.add
     i32.load8_u
     i32.xor
     i32.const 16777619
     i32.mul
     local.set $1
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $repeat|0
     unreachable
    end
    unreachable
   end
  end
  local.get $1
 )
 (func $std/hash/check (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 1
 )
 (func $~lib/util/hash/hash32 (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const -2128831035
  local.set $1
  local.get $1
  local.get $0
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $1
  local.get $1
  local.get $0
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $1
  local.get $1
  local.get $0
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $1
  local.get $1
  local.get $0
  i32.const 24
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $1
  local.get $1
 )
 (func $~lib/util/hash/hash64 (; 4 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.wrap_i64
  local.set $1
  local.get $0
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.set $2
  i32.const -2128831035
  local.set $3
  local.get $3
  local.get $1
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $3
  local.get $3
  local.get $1
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $3
  local.get $3
  local.get $1
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $3
  local.get $3
  local.get $1
  i32.const 24
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $3
  local.get $3
  local.get $2
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $3
  local.get $3
  local.get $2
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $3
  local.get $3
  local.get $2
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $3
  local.get $3
  local.get $2
  i32.const 24
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $3
  local.get $3
 )
 (func $start:std/hash (; 5 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 f32)
  (local $2 f64)
  block $~lib/util/hash/HASH<~lib/string/String>|inlined.0 (result i32)
   i32.const 0
   local.set $0
   local.get $0
   call $~lib/util/hash/hashStr
   br $~lib/util/hash/HASH<~lib/string/String>|inlined.0
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<~lib/string/String>|inlined.1 (result i32)
   i32.const 16
   local.set $0
   local.get $0
   call $~lib/util/hash/hashStr
   br $~lib/util/hash/HASH<~lib/string/String>|inlined.1
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<~lib/string/String>|inlined.2 (result i32)
   i32.const 24
   local.set $0
   local.get $0
   call $~lib/util/hash/hashStr
   br $~lib/util/hash/HASH<~lib/string/String>|inlined.2
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<~lib/string/String>|inlined.3 (result i32)
   i32.const 40
   local.set $0
   local.get $0
   call $~lib/util/hash/hashStr
   br $~lib/util/hash/HASH<~lib/string/String>|inlined.3
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<~lib/string/String>|inlined.4 (result i32)
   i32.const 56
   local.set $0
   local.get $0
   call $~lib/util/hash/hashStr
   br $~lib/util/hash/HASH<~lib/string/String>|inlined.4
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<f32>|inlined.0 (result i32)
   f32.const 0
   local.set $1
   local.get $1
   i32.reinterpret_f32
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<f32>|inlined.0
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<f32>|inlined.1 (result i32)
   f32.const 1
   local.set $1
   local.get $1
   i32.reinterpret_f32
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<f32>|inlined.1
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<f32>|inlined.2 (result i32)
   f32.const 1.100000023841858
   local.set $1
   local.get $1
   i32.reinterpret_f32
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<f32>|inlined.2
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<f32>|inlined.3 (result i32)
   f32.const 0
   local.set $1
   local.get $1
   i32.reinterpret_f32
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<f32>|inlined.3
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<f32>|inlined.4 (result i32)
   f32.const inf
   local.set $1
   local.get $1
   i32.reinterpret_f32
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<f32>|inlined.4
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<f32>|inlined.5 (result i32)
   f32.const nan:0x400000
   local.set $1
   local.get $1
   i32.reinterpret_f32
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<f32>|inlined.5
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<f64>|inlined.0 (result i32)
   f64.const 0
   local.set $2
   local.get $2
   i64.reinterpret_f64
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<f64>|inlined.0
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<f64>|inlined.1 (result i32)
   f64.const 1
   local.set $2
   local.get $2
   i64.reinterpret_f64
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<f64>|inlined.1
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<f64>|inlined.2 (result i32)
   f64.const 1.1
   local.set $2
   local.get $2
   i64.reinterpret_f64
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<f64>|inlined.2
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<f64>|inlined.3 (result i32)
   f64.const 0
   local.set $2
   local.get $2
   i64.reinterpret_f64
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<f64>|inlined.3
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<f64>|inlined.4 (result i32)
   f64.const inf
   local.set $2
   local.get $2
   i64.reinterpret_f64
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<f64>|inlined.4
  end
  call $std/hash/check
  drop
  block $~lib/util/hash/HASH<f64>|inlined.5 (result i32)
   f64.const nan:0x8000000000000
   local.set $2
   local.get $2
   i64.reinterpret_f64
   call $~lib/util/hash/hash64
   br $~lib/util/hash/HASH<f64>|inlined.5
  end
  call $std/hash/check
  drop
 )
 (func $start (; 6 ;) (type $FUNCSIG$v)
  call $start:std/hash
 )
 (func $null (; 7 ;) (type $FUNCSIG$v)
 )
)
